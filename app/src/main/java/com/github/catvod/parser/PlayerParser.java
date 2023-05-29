package com.github.catvod.parser;

import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cn.hutool.core.util.StrUtil;
import okhttp3.Response;

public class PlayerParser {

    private static final PlayerParser playerParser = new PlayerParser();
    private String url;
    private String from;
    private String subtitle;
    private JSONObject header;
    private String subtitleName;

    private String playUrl;

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

    public PlayerParser setFrom(String from) {
        this.from = from;
        return this;
    }

    public PlayerParser setSubtitle(String subtitle) {
        this.subtitle = subtitle;
        return this;
    }

    public PlayerParser setSubtitleName(String subtitleName) {
        this.subtitleName = subtitleName;
        return this;
    }

    public PlayerParser setHeader(JSONObject header) {
        this.header = header;
        return this;
    }

    public String parses () throws JSONException, IOException {
        JSONArray urls = new JSONArray();
        JSONArray names = new JSONArray();
        JSONArray headers = new JSONArray();
        if (from.contains("阿里云盘") || url.contains("yun-play")) {
            String content = analyzeRule.getString("@get:{playUrl}<js></js>@Fun:base64Decode&&urlDecode<js></js>");
            analyzeRule.setContent(content);
            String drive_id = analyzeRule.getString("$.drive_id");
            String file_id = analyzeRule.getString("$.file_id");
            String share_id = analyzeRule.getString("$.share_id");
            String webUrl;
            if (StringUtil.isNotEmpty(drive_id)) {
                webUrl = "https://api.aliyundrive.com/v2/file/get_video_preview_play_info?jsonBody={\"drive_id\":\"@get:{drive_id}\",\"file_id\":\"{{$.file_id}}\",\"template_id\":\"\",\"category\":\"live_transcoding\"};post;utf-8;{authorization@@get:{access_token}&&User-Agent@PC_UA}";
            } else {
                webUrl = "https://api.aliyundrive.com/v2/file/get_share_link_video_preview_play_info?jsonBody={\"share_id\":\"{{$.share_id}}\",\"file_id\":\"{{$.file_id}}\",\"template_id\":\"\",\"category\":\"live_transcoding\"};post;utf-8;{x-share-token@@get:{share_token}&&authorization@@get:{access_token}&&User-Agent@PC_UA}";
            }
            webUrl = analyzeRule.getString(webUrl);
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                String s = HttpParser.getContent(webUrl, callBack.getResult().body());
                String baseUrl = callBack.getResult().request().url().toString();
                analyzeRule.setContent(s, baseUrl);
                analyzeRule.setRedirectUrl(baseUrl);
                if (StringUtil.isNotEmpty(analyzeRule.getString("video_preview_play_info"))) {
                    List nameList = analyzeRule.getElements("$.video_preview_play_info.live_transcoding_task_list[*].template_id");
                    Collections.reverse(nameList);
                    names = new JSONArray(nameList);
                    if (StringUtil.isNotEmpty(drive_id)) {
                        List<String> list = analyzeRule.getStringList(playUrl);
                        Collections.reverse(list);
                        urls = new JSONArray(list);
                    }
                    else {
                        List<String> list = analyzeRule.getStringList(playUrl);
                        Collections.reverse(list);
                        urls = new JSONArray(list);
                    }
                }
            } else {
                callBack.getResult().close();
            }
            analyzeRule.setContent(content);
            if (StringUtil.isNotEmpty(drive_id)) {
                webUrl = "https://api.aliyundrive.com/v2/file/get_download_url?jsonBody={\"drive_id\":\"{{$.drive_id}}\",\"file_id\":\"{{$.file_id}}\"};post;utf-8;{authorization@@get:{access_token}&&User-Agent@PC_UA}";
            } else {
                webUrl = "https://api.aliyundrive.com/v2/file/get_share_link_download_url?jsonBody={\"share_id\":\"{{$.share_id}}\",\"file_id\":\"{{$.file_id}}\"};post;utf-8;{x-share-token@@get:{share_token}&&authorization@@get:{access_token}&&User-Agent@PC_UA}";
            }
            webUrl=analyzeRule.getString(webUrl);
            callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                String s = HttpParser.getContent(webUrl, callBack.getResult().body());
                String baseUrl = callBack.getResult().request().url().toString();
                analyzeRule.setContent(s, baseUrl);
                analyzeRule.setRedirectUrl(baseUrl);
                if (StringUtil.isNotEmpty(analyzeRule.getString("download_url"))) {
                    String link = analyzeRule.getString("download_url");
                    Map<String, List<String>> respHeaders = new TreeMap<>();
                    HashMap<String, String> header = new HashMap<>();
                    header.put("referer", "https://www.aliyundrive.com/");
                    OkHttpUtil.stringNoRedirect(link, header, respHeaders);
                    link =  OkHttpUtil.getRedirectLocation(respHeaders);
                    names.put("原画");
                    urls.put(link);
                } else {
                    names.put("原画");
                    urls.put(analyzeRule.getString("$.url"));
                }
            } else {
                callBack.getResult().close();
            }
            for (int i = 0; i < names.length(); i++) {
                headers.put(header);
            }
        } else if (isParse(url)) {
            url = url.replace(".*?(url|jx)=","");
            urls.put(url);
            names.put(from);
            headers.put(header);
        } else {
            url = StringUtil.encode(StringUtil.decode(url));
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(url);
            try {
                if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                    String html = HttpParser.getContent(url, callBack.getResult().body());

                    String srcurl = "";
                    String from = "";
                    if (Pattern.compile("r player_.*?=(.*?)<").matcher(html).find()) {
                        Pattern pattern = Pattern.compile("r player_.*?=(.*?)<");
                        Matcher matcher = pattern.matcher(html);
                        String jsHtml = "";
                        if (matcher.find()) {
                            jsHtml = matcher.group(1);
                        }
                        JSONObject jsonObject = new JSONObject(jsHtml);
                        srcurl = jsonObject.optString("url");
                        from = jsonObject.optString("from");
                        if (jsonObject.optString("encrypt").equals("1")) {
                            srcurl = StringUtil.decode(srcurl);
                        } else if (jsonObject.optString("encrypt").equals("2")) {
                            srcurl = StringUtil.decode(new String(Base64.decode(srcurl, Base64.NO_WRAP), "utf-8"));
                        }

                    } else if (Pattern.compile("<iframe.*?src=\"(.*?)\"").matcher(html).find()) {
                        analyzeRule.setContent(html);
                        srcurl = analyzeRule.getString("tag.iframe@src||tag.mip-iframe@data-src||tag.iframe@data-play");
                    } else if (Pattern.compile("mac_url\\w*\\s*=(.*?);").matcher(html).find()) {
                        Pattern pattern = Pattern.compile("mac_url\\w*\\s*=[\"\'](.*?)[\"\'];");
                        Matcher matcher = pattern.matcher(html);
                        String macUrl = "";
                        if (matcher.find()) {
                            macUrl = matcher.group(1);
                        }
                        pattern = Pattern.compile("mac_link\\w*\\s*=[\"\'](.*?)[\"\'];");
                        matcher = pattern.matcher(html);
                        String macLink = "";
                        if (matcher.find()) {
                            macLink = matcher.group(1);
                        }
                        pattern = Pattern.compile(macLink.replace("{src}", "(\\d+)").replace("{num}", "\\d+"));
                        matcher = pattern.matcher(url);
                        int num1 = 0;
                        if (matcher.find()) {
                            num1 = Integer.parseInt(matcher.group(1)) - 1;
                        }
                        pattern = Pattern.compile(macLink.replace("{src}", "\\d+").replace("{num}", "(\\d+)"));
                        matcher = pattern.matcher(url);
                        int num2 = 0;
                        if (matcher.find()) {
                            num2 = Integer.parseInt(matcher.group(1)) - 1;
                        }
                        srcurl = macUrl.split("$$$")[num1].split("#")[num2].split("$")[1];
                    } else if (Pattern.compile("now\\w*\\s*=(.*?);").matcher(html).find()) {
                        Pattern pattern = Pattern.compile("now\\w*\\s*=[\"\'](.*?)[\"\']");
                        Matcher matcher = pattern.matcher(html);
                        if (matcher.find()) {
                            srcurl = matcher.group(1);
                        }
                    }
                    System.out.println(srcurl);
                    if (Pattern.compile("\\w+aHR0").matcher(srcurl).find()) {
                        Pattern pattern = Pattern.compile("\\w+aHR0");
                        Matcher matcher = pattern.matcher(html);
                        if (matcher.find()) {
                            srcurl = new String(Base64.decode(matcher.group(1), Base64.NO_WRAP));
                        }
                    }
                    if (isParse(srcurl)) {
                        srcurl = srcurl.replaceFirst(".*?(url|jx)=", "");
                        urls.put(srcurl);
                        names.put(from);
                        headers.put(header);
                    }
                } else {
                    callBack.getResult().close();
                }
            } catch (Exception e) {
                SpiderDebug.log(e);
            }
        }
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("urls", urls);
        if (subtitle.startsWith("https://api.aliyundrive.com/")) {
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(subtitle);
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                analyzeRule.setContent(HttpParser.getContent(subtitle, callBack.getResult().body()));
                subtitle = analyzeRule.getString("$.download_url||$.url");
            } else if (callBack.getResult() != null){
                callBack.getResult().close();
            }
        }
        jsonObject.put("subtitle", subtitle);
        jsonObject.put("subtitleName", subtitleName);
        jsonObject.put("headers",headers);
        jsonObject.put("names",names);
        return jsonObject.toString();
    }

    public boolean isParse(String url) {
        String[] videoFormatList = {".CUE",".APE",".M3U8", ".3G2", ".3GP", ".3GP2", ".3GPP", ".AMV", ".ASF", ".AVI", ".DIVX", ".DPG", ".DVR-MS", ".EVO", ".F4V", ".FLV", ".IFO", ".K3G", ".M1V", ".M2T", ".M2TS", ".M2V", ".M4B", ".M4P", ".M4V", ".MKV", ".MOV", ".MP2V", ".MP4", ".MPE", ".MPEG", ".MPG", ".MPV2", ".MTS", ".MXF", ".NSR", ".NSV", ".OGM", ".OGV", ".QT", ".RAM", ".RM", ".RMVB", ".RPM", ".SKM", ".TP", ".TPR", ".TRP", ".TS", ".VOB", ".WEBM", ".WM", ".WMP", ".WMV", ".WTV"};
        url = url.toLowerCase();
        boolean parse = StrUtil.endWithAny(url.toUpperCase(), videoFormatList);
        if (parse || Misc.isVip(url)) {
            return true;
        }
        return false;
    }

    public PlayerParser setPlayUrl(String playUrl) {
        this.playUrl = playUrl;
        return this;
    }
}
