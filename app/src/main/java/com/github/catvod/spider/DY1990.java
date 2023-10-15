package com.github.catvod.spider;

import android.text.TextUtils;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cn.hutool.core.util.StrUtil;

public class DY1990 extends Spider {

    private static String siteUrl="https://dy1990.com/";
    private static String siteHost="dy1990.com/";
    private final Pattern regexCategory = Pattern.compile("vods/(\\w+)");
    private final Pattern regexVoddetail = Pattern.compile("vod/(\\w+)");
    private final Pattern regexPlay = Pattern.compile("play/(\\d+)-(\\d+)-(\\d+)");
    private final Pattern regexPage = Pattern.compile("vodshow/1--------(\\d+)---.html");
    private final Pattern rl = Pattern.compile("\"url\": *\"([^\"]*)\",");

    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        int total = 0;
        int page = 0;
        try {
            String weburl = siteUrl + "/vodshow/"+ tid +"--------" + pg + "---.html";
            String V = OkHttpUtil.string(weburl, getHeaders());
            Document g = Jsoup.parse(V);
            JSONObject jSONObject = new JSONObject();
            Elements o = g.select(".ewave-page a");
            if (o.size() == 0) {
                total = Integer.parseInt(pg);
                page = total;
            } else {
                page = -1;
                int i3 = 0;
                while (true) {
                    if (i3 >= o.size()) {
                        break;
                    }
                    Element ik = o.get(i3);
                    Element Xq = ik.selectFirst("a");
                    if (Xq != null) {
                        String H = Xq.text();
                        if (page == -1 && ik.hasClass("active")) {
                            Matcher matcher = this.regexPage.matcher(Xq.attr("href"));
                            page = matcher.find() ? Integer.parseInt(matcher.group(1)) : 0;
                        }
                        if (H.equals("尾页")) {
                            Matcher matcher2 = this.regexPage.matcher(Xq.attr("href"));
                            if (matcher2.find()) {
                                total = Integer.parseInt(matcher2.group(1));
                            }
                        }
                    }
                    i3++;
                }
            }

            JSONArray jSONArray = new JSONArray();
            if (!V.contains("没有找到您想要的结果哦")) {
                try {
                    Elements o2 = g.select(".ewave-vodlist__box");
                    JSONArray jSONArray2 = new JSONArray();
                    HashMap hashMap = new HashMap();
                    for (int i = 0; i < o2.size(); i++) {
                        Element ik = o2.get(i);
                        String href = ik.select("h4 a").attr("href");
                        Matcher matcher2 = this.regexVoddetail.matcher(href);
                        if (matcher2.find()) {
                            String group = matcher2.group(1);
                            if (!hashMap.containsKey(group)) {
                                String title = ik.select(".ewave-vodlist__thumb").attr("title");
                                String cover = ik.select(".ewave-vodlist__thumb").attr("data-original");
                                String remark = ik.selectFirst(".pic-text").text();
                                JSONObject jSONObject3 = new JSONObject();
                                jSONObject3.put("vod_id", group);
                                jSONObject3.put("vod_name", title);
                                jSONObject3.put("vod_pic", cover);
                                jSONObject3.put("vod_remarks", remark);
                                jSONArray2.put(jSONObject3);
                                hashMap.put(group, Boolean.TRUE);
                            }
                        }
                    }
                    jSONObject.put("list", jSONArray2);
                } catch (Exception e) {
                    SpiderDebug.log(e);
                }
            }
            jSONObject.put("page", page == -1 ?pg : page);
            jSONObject.put("pagecount", total);
            jSONObject.put("limit", 36);
            jSONObject.put("total", total <= 1 ? jSONArray.length() : total * 36);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String detailContent(List<String> list) {
        String str;
        Exception e;
        String str2;
        DY1990 dy1990 = this;
        String str3 = "href";
        String str4 = "";
        try {
            String str5 = siteUrl + "/vod/" + list.get(0) + ".html";
            Document doc = Jsoup.parse(OkHttpUtil.string(str5, dy1990.getHeaders()));
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            String vod_pic = doc.select(".lazyload").attr("data-original");
            String vod_name = doc.selectFirst("h1 span").text();
            String vod_content = doc.select(".desc").text();
            Elements span_text_muted = doc.select(".data span");
            String type_name = "";
            String vod_year = "";
            String vod_area = "";
            String vod_remarks = "";
            String vod_actor = "";
            String vod_director = "";
            for (int i = 0; i < span_text_muted.size(); i++) {
                Element text = span_text_muted.get(i);
                String info = text.text();
                switch (info) {
                    case "类型：":
                        type_name = text.nextElementSibling().text();
                        break;
                    case "年份：":
                        vod_year = text.nextElementSibling().text();
                        break;
                    case "地区：":
                        vod_area = text.nextElementSibling().text();
                        break;
                    case "状态：":
                        vod_remarks = text.nextElementSibling().text();
                        break;
                    case "导演：": {
                        List<String> directors = new ArrayList<>();
                        Elements aa = text.parent().select("a");
                        for (int j = 0; j < aa.size(); j++) {
                            directors.add(aa.get(j).text());
                        }
                        vod_director = TextUtils.join(",", directors);
                        break;
                    }
                    case "主演：": {
                        List<String> actors = new ArrayList<>();
                        Elements aa = text.parent().select("a");
                        for (int j = 0; j < aa.size(); j++) {
                            actors.add(aa.get(j).text());
                        }
                        vod_actor = TextUtils.join(",", actors);
                        break;
                    }
                }
            }
            jSONObject2.put("vod_id", list.get(0));
            jSONObject2.put("vod_name", vod_name);
            jSONObject2.put("vod_pic", vod_pic);
            jSONObject2.put("type_name", type_name);
            jSONObject2.put("vod_year", vod_year);
            jSONObject2.put("vod_area", vod_area);
            jSONObject2.put("vod_remarks", vod_remarks);
            jSONObject2.put("vod_actor", vod_actor);
            jSONObject2.put("vod_director", vod_director);
            jSONObject2.put("vod_content", vod_content);
            HashMap hashMap = new HashMap();
            Elements o2 = doc.select(".nav-tabs li");
            int i2 = 0;
            while (i2 < o2.size()) {
                Element ik2 = o2.get(i2);
                String trim = ik2.text().trim();
                Elements o3 = doc.select(".ewave-content__playlist li > a");
                ArrayList arrayList = new ArrayList();
                int i3 = 0;
                while (i3 < o3.size()) {
                    Element ik3 = o3.get(i3);
                    Matcher matcher = dy1990.regexPlay.matcher(ik3.attr(str3));
                    if (!matcher.find()) {
                        str2 = str3;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        str2 = str3;
                        sb.append(matcher.group(1));
                        sb.append("-");
                        sb.append(matcher.group(2));
                        sb.append("-");
                        sb.append(matcher.group(3));
                        arrayList.add(ik3.text() + "$" + sb);
                    }
                    i3++;
                    dy1990 = this;
                    str3 = str2;
                }
                String join = arrayList.size() > 0 ? StringUtil.join("#", arrayList) : "";
                if (join.length() != 0) {
                    hashMap.put(trim, join);
                }
                i2++;
                dy1990 = this;
            }
            if (hashMap.size() > 0) {
                String join2 = StringUtil.join("$$$", hashMap.keySet());
                String join3 = StringUtil.join("$$$", hashMap.values());
                jSONObject2.put("vod_play_from", join2);
                jSONObject2.put("vod_play_url", join3);
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject2);
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (Exception e1) {
            SpiderDebug.log(e1);
        }
        return "";
    }

    protected HashMap<String, String> getHeaders() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("Upgrade-Insecure-Requests", "1");
        hashMap.put("DNT", "1");
        hashMap.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36");
        hashMap.put("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8");
        hashMap.put("Accept-Language", "zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2");
        return hashMap;
    }

    public String getDetail(Element ik) {
        Element fq = ik.selectFirst("span");
        return (fq == null || !fq.tagName().trim().equals("span")) ? "" : fq.text().trim();
    }

    public String homeContent(boolean z) {
        try {
            Document g = Jsoup.parse(OkHttpUtil.string(siteUrl, getHeaders()));
            Elements o = g.select(".ewave-header__menu li:gt(0) a");
            JSONArray jSONArray = new JSONArray();
            for (Element next : o) {
                String H = next.text();
                String href = next.attr("href");
                Matcher matcher = this.regexCategory.matcher(href);
                if (matcher.find()) {
                    String type_id = matcher.group(1).trim();
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("type_id", type_id);
                    jSONObject.put("type_name", H);
                    jSONArray.put(jSONObject);
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("class", jSONArray);
            try {
                Elements o2 = g.select(".ewave-vodlist__box");
                JSONArray jSONArray2 = new JSONArray();
                HashMap hashMap = new HashMap();
                for (int i = 0; i < o2.size(); i++) {
                    Element ik = o2.get(i);
                    String href = ik.select("h4 a").attr("href");
                    Matcher matcher2 = this.regexVoddetail.matcher(href);
                    if (matcher2.find()) {
                        String group = matcher2.group(1);
                        if (!hashMap.containsKey(group)) {
                            String title = ik.select(".ewave-vodlist__thumb").attr("title");
                            String cover = ik.select(".ewave-vodlist__thumb").attr("data-original");
                            String remark = ik.selectFirst(".pic-text").text();
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("vod_id", group);
                            jSONObject3.put("vod_name", title);
                            jSONObject3.put("vod_pic", cover);
                            jSONObject3.put("vod_remarks", remark);
                            jSONArray2.put(jSONObject3);
                            hashMap.put(group, Boolean.TRUE);
                        }
                    }
                }
                jSONObject2.put("list", jSONArray2);
            } catch (Exception e) {
                SpiderDebug.log(e);
            }
            return jSONObject2.toString();
        } catch (Exception e2) {
            SpiderDebug.log(e2);
            return "";
        }
    }

    @Override
    public String homeVideoContent() {
        try {
            Document g = Jsoup.parse(OkHttpUtil.string(siteUrl, getHeaders()));
            JSONObject jSONObject2 = new JSONObject();
            try {
                Elements o2 = g.select(".ewave-vodlist__box");
                JSONArray jSONArray2 = new JSONArray();
                HashMap hashMap = new HashMap();
                for (int i = 0; i < o2.size(); i++) {
                    Element ik = o2.get(i);
                    String href = ik.select("h4 a").attr("href");
                    Matcher matcher2 = this.regexVoddetail.matcher(href);
                    if (matcher2.find()) {
                        String group = matcher2.group(1);
                        if (!hashMap.containsKey(group)) {
                            String title = ik.select(".ewave-vodlist__thumb").attr("title");
                            String cover = ik.select(".ewave-vodlist__thumb").attr("data-original");
                            String remark = ik.selectFirst(".pic-text").text();
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("vod_id", group);
                            jSONObject3.put("vod_name", title);
                            jSONObject3.put("vod_pic", cover);
                            jSONObject3.put("vod_remarks", remark);
                            jSONArray2.put(jSONObject3);
                            hashMap.put(group, Boolean.TRUE);
                        }
                    }
                }
                jSONObject2.put("list", jSONArray2);
            } catch (Exception e) {
                SpiderDebug.log(e);
            }
            return jSONObject2.toString();
        } catch (Exception e2) {
            SpiderDebug.log(e2);
            return "";
        }
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
        String webUrl = siteUrl + "/play/" + id + ".html";
        String videoUrl = null;
        // 尝试分析直连
            try {
                Document doc = Jsoup.parse(OkHttpUtil.string(webUrl, getHeaders()));
                Elements allScript = doc.select("script");
                for (int i = 0; i < allScript.size(); i++) {
                    String scContent = allScript.get(i).html().trim();
                    if (scContent.startsWith("var player_")) {
                        int start = scContent.indexOf('{');
                        int end = scContent.lastIndexOf('}') + 1;
                        String json = scContent.substring(start, end);
                        JSONObject player = new JSONObject(json);
                        String videoUrlTmp = player.optString("url");
                        if (player.has("encrypt")) {
                            int encrypt = player.getInt("encrypt");
                            if (encrypt == 1) {
                                videoUrlTmp = URLDecoder.decode(videoUrlTmp,"utf-8");
                            } else if (encrypt == 2) {
                                videoUrlTmp = new String(Base64.decode(videoUrlTmp, Base64.DEFAULT));
                                videoUrlTmp = URLDecoder.decode(videoUrlTmp,"utf-8");
                            }
                        }
                        videoUrl = videoUrlTmp;
                        break;
                    }
                }
            } catch (Exception e) {
                SpiderDebug.log(e);
            }
        if (videoUrl != null) {
            // 适配2.0.6的调用应用内解析列表的支持, 需要配合直连分析和匹配官源解析一起使用，参考cjt影视和极品直连
            if (Misc.isVip(videoUrl)) { // 使用jx:1
                try {
                    JSONObject result = new JSONObject();
                    result.put("parse", 1);
                    result.put("jx", "1");
                    result.put("url", videoUrl);
                    return result.toString();
                } catch (Exception e) {
                    SpiderDebug.log(e);
                }
            } else if (vipFlags.contains(flag)) { // 是否使用应用内解析列表解析官源
                try {
                    JSONObject result = new JSONObject();
                    result.put("parse", 1);
                    result.put("playUrl", "");
                    result.put("url", videoUrl);
                    result.put("header", "");
                    return result.toString();
                } catch (Exception e) {
                    SpiderDebug.log(e);
                }
            }
            // 如果是视频直连 直接返回免解
            else if (isVideoFormat(videoUrl)) {
                try {
                    JSONObject result = new JSONObject();
                    result.put("parse", 0);
                    result.put("playUrl", "");
                    result.put("url", videoUrl);
                    result.put("header", "");
                    return result.toString();
                } catch (Exception e) {
                    SpiderDebug.log(e);
                }
            }
        }
        // 上述都失败了就按默认模式走
        return super.playerContent(flag, id, vipFlags);
    }

    @Override
    public boolean isVideoFormat(String url) {
        String[] videoFormatList = {".M3U8", ".3G2", ".3GP", ".3GP2", ".3GPP", ".AMV", ".ASF", ".AVI", ".DIVX", ".DPG", ".DVR-MS", ".EVO", ".F4V", ".FLV", ".IFO", ".K3G", ".M1V", ".M2T", ".M2TS", ".M2V", ".M4B", ".M4P", ".M4V", ".MKV", ".MOV", ".MP2V", ".MP4", ".MPE", ".MPEG", ".MPG", ".MPV2", ".MTS", ".MXF", ".NSR", ".NSV", ".OGM", ".OGV", ".QT", ".RAM", ".RM", ".RMVB", ".RPM", ".SKM", ".TP", ".TPR", ".TRP", ".TS", ".VOB", ".WEBM", ".WM", ".WMP", ".WMV", ".WTV"};
        url = url.toLowerCase();
        if (url.contains("=http") || url.contains("=https") || url.contains("=https%3a%2f") || url.contains("=http%3a%2f")) {
            return false;
        }
        if(StrUtil.endWithAny(url.toUpperCase(),videoFormatList)) {
            return true;
        }
        return false;
    }


    public String searchContent(String str, boolean z) {
        try {
            String str2 = siteUrl + "/vodsearch/-------------.html?wd=" + URLEncoder.encode(str,"utf-8");
            Document document = Jsoup.parse(OkHttpUtil.string(str2, getHeaders()));
            Elements o = document.select(".ewave-vodlist__media li");
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < o.size(); i++) {
                Element ik = o.get(i);
                Matcher matcher = this.regexVoddetail.matcher(ik.selectFirst(".ewave-vodlist__thumb").attr("href"));
                if (matcher.find()) {
                    String vod_name = ik.selectFirst("h3.title a").text();
                    String vod_pic = ik.selectFirst(".ewave-vodlist__thumb").attr("data-original");
                    String vod_remarks = ik.selectFirst(".pic-text").text();
                    String group = matcher.group(1);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("vod_id", group);
                    jSONObject.put("vod_name", vod_name);
                    jSONObject.put("vod_pic", vod_pic);
                    jSONObject.put("vod_remarks", vod_remarks);
                    jSONArray.put(jSONObject);
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("list", jSONArray);
            return jSONObject2.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }
}