package com.github.catvod.parser;

import com.github.catvod.analyzeRules.AnalyzeRule;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OKCallBack;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONObject;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import okhttp3.Response;

public class PlayerParser {

    private static final PlayerParser playerParser = new PlayerParser();
    private String url;

    private PlayerParser() {

    }

    public static PlayerParser getInstance() {
        return playerParser;
    }
    private AnalyzeRule analyzeRule;

    public PlayerParser setUrl(String url) {
        this.url = url;
        return this;
    }

    public PlayerParser setAnalyzeRule(AnalyzeRule analyzeRule) {
        this.analyzeRule = analyzeRule;
        return this;
    }

    public String parses () {
        if (isParse(url)) {
            url = url.replace(".*?(url|jx)=","");
            return url;
        }
        OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(url);
        try {
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                String html = HttpParser.getContent(url, callBack.getResult().body().bytes());

                String srcurl = "";
                String from = "";
                if (Pattern.compile("r player_.*?=(.*?)<").matcher(html).find()) {
                    Pattern pattern = Pattern.compile("r player_.*?=(.*?)<");
                    Matcher matcher = pattern.matcher(html);
                    String jsHtml = "";
                    if (matcher.find()) { jsHtml = matcher.group(1);}
                    JSONObject jsonObject = new JSONObject(jsHtml);
                    srcurl = jsonObject.optString("url");
                    from = jsonObject.optString("from");
                    if (jsonObject.optString("encrypt").equals("1")) {
                        srcurl = StringUtil.decode(srcurl);
                    } else if (jsonObject.optString("encrypt").equals("2")) {
                        srcurl = StringUtil.decode(new String(Base64.decode(srcurl,Base64.DEFAULT),"utf-8"));
                    }

                } else if (Pattern.compile("<iframe.*?src=\"(.*?)\"").matcher(html).find()) {
                    analyzeRule.setContent(html);
                    srcurl = analyzeRule.getString("tag.iframe@src||tag.mip-iframe@data-src||tag.iframe@data-play");
                } else if (Pattern.compile("mac_url\\w*\\s*=(.*?);").matcher(html).find()) {
                    Pattern pattern = Pattern.compile("mac_url\\w*\\s*=[\"\'](.*?)[\"\'];");
                    Matcher matcher = pattern.matcher(html);
                    String macUrl = "";
                    if (matcher.find()) { macUrl = matcher.group(1);}
                    pattern = Pattern.compile("mac_link\\w*\\s*=[\"\'](.*?)[\"\'];");
                    matcher = pattern.matcher(html);
                    String macLink = "";
                    if (matcher.find()) { macLink = matcher.group(1);}
                    pattern = Pattern.compile(macLink.replace("{src}","(\\d+)").replace("{num}","\\d+"));
                    matcher = pattern.matcher(url);
                    int num1 = 0;
                    if (matcher.find()) { num1 = Integer.parseInt(matcher.group(1)) - 1;}
                    pattern = Pattern.compile(macLink.replace("{src}","\\d+").replace("{num}","(\\d+)"));
                    matcher = pattern.matcher(url);
                    int num2 = 0;
                    if (matcher.find()) { num2 = Integer.parseInt(matcher.group(1)) - 1;}
                    srcurl = macUrl.split("$$$")[num1].split("#")[num2].split("$")[1];
                } else if (Pattern.compile("now\\w*\\s*=(.*?);").matcher(html).find()) {
                    Pattern pattern = Pattern.compile("now\\w*\\s*=[\"\'](.*?)[\"\']");
                    Matcher matcher = pattern.matcher(html);
                    if (matcher.find()) { srcurl = matcher.group(1); }
                }
                System.out.println(srcurl);
                if (Pattern.compile("\\w+aHR0").matcher(srcurl).find()) {
                    Pattern pattern = Pattern.compile("\\w+aHR0");
                    Matcher matcher = pattern.matcher(html);
                    if (matcher.find()) {srcurl = new String(Base64.decode(matcher.group(1), Base64.NO_WRAP));}
                }
                if (isParse(srcurl)) {
                    srcurl = srcurl.replaceFirst(".*?(url|jx)=","");
                    return srcurl;
                }
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return url;
    }

    public boolean isParse(String url) {
        String[] videoFormatList = {".M3U8", ".3G2", ".3GP", ".3GP2", ".3GPP", ".AMV", ".ASF", ".AVI", ".DIVX", ".DPG", ".DVR-MS", ".EVO", ".F4V", ".FLV", ".IFO", ".K3G", ".M1V", ".M2T", ".M2TS", ".M2V", ".M4B", ".M4P", ".M4V", ".MKV", ".MOV", ".MP2V", ".MP4", ".MPE", ".MPEG", ".MPG", ".MPV2", ".MTS", ".MXF", ".NSR", ".NSV", ".OGM", ".OGV", ".QT", ".RAM", ".RM", ".RMVB", ".RPM", ".SKM", ".TP", ".TPR", ".TRP", ".TS", ".VOB", ".WEBM", ".WM", ".WMP", ".WMV", ".WTV"};
        url = url.toLowerCase();
        boolean parse = StringUtils.endsWithAny(url.toUpperCase(), videoFormatList);
        if (parse || Misc.isVip(url)) {
            return true;
        }
        return false;
    }
}
