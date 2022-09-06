package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.utils.Base64;
import com.github.catvod.utils.StringUtil;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class Juhuang extends Spider {
    protected JSONObject g;
    protected JSONObject l;
    protected Pattern J = Pattern.compile("/type/(\\d+)_type.html");
    protected Pattern dV = Pattern.compile("/play/(\\d+)_play_\\d+_\\d+.html");
    protected Pattern rl = Pattern.compile("/play/(\\d+)_play_(\\d+)_(\\d+).html");
    protected Pattern cY = Pattern.compile("/type/\\d+_type_(\\d+).html");

    public String detailContent(List<String> list) {
        String str;
        try {
            String str2 = "https://juhuang.tv/vod/" + list.get(0) + "_vod.html";
            Document g = Jsoup.parse(OkHttpUtil.string(str2, g(str2)));
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            String dV = g.selectFirst("div.module-item-pic > img").attr("data-src");
            String H = g.selectFirst("div.video-info-header > h1.page-title").text();
            String H2 = g.selectFirst("p.zkjj_a").text();
            jSONObject2.put("vod_id", list.get(0));
            jSONObject2.put("vod_name", H);
            jSONObject2.put("vod_pic", dV);
            jSONObject2.put("vod_content", H2);
            TreeMap treeMap = new TreeMap(new Comparator<String>() { // from class: com.github.catvod.spider.Juhuang.1
                public int compare(String str3, String str4) {
                    try {
                        int i = Juhuang.this.g.optJSONObject(str3).getInt("or");
                        int i2 = Juhuang.this.g.optJSONObject(str4).getInt("or");
                        if (i != i2 && i - i2 <= 0) {
                            return -1;
                        }
                        return 1;
                    } catch (JSONException e) {
                        SpiderDebug.log(e);
                        return 1;
                    }
                }
            });
            Elements o = g.select("div.module");
            for (int i = 0; i < o.size() - 1; i++) {
                Element ik = o.get(i);
                String lN = ik.select("div.module-heading > h2.module-title").text();
                ArrayList arrayList = new ArrayList();
                Elements o2 = ik.select("div.module-list > div.module-blocklist > div.scroll-content > a");
                for (int i2 = 0; i2 < o2.size(); i2++) {
                    Element ik2 = o2.get(i2);
                    String dV2 = ik2.attr("href");
                    String substring = dV2.substring(6, dV2.indexOf(".html"));
                    arrayList.add(ik2.select("span").text() + "$" + substring);
                }
                if (arrayList.size() > 0) {
                    str = StringUtil.join("#", arrayList);
                } else {
                    str = "";
                }
                treeMap.put(lN, str);
            }
            if (treeMap.size() > 0) {
                String join = StringUtil.join("$$$", treeMap.keySet());
                String join2 = StringUtil.join("$$$", treeMap.values());
                jSONObject2.put("vod_play_from", join);
                jSONObject2.put("vod_play_url", join2);
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject2);
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    protected HashMap<String, String> g(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("method", "GET");
        hashMap.put("Host", "juhuang.tv");
        hashMap.put("Upgrade-Insecure-Requests", "1");
        hashMap.put("DNT", "1");
        hashMap.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        hashMap.put("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8");
        hashMap.put("Accept-Language", "zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2");
        return hashMap;
    }

    public String homeContent(boolean z) {
        int i;
        try {
            Document g = Jsoup.parse(OkHttpUtil.string("https://juhuang.tv", g("https://juhuang.tv")));
            Elements o = g.select("ul.nav-menu-items > li > a");
            JSONArray jSONArray = new JSONArray();
            Iterator<Element> it = o.iterator();
            while (true) {
                i = 0;
                if (!it.hasNext()) {
                    break;
                }
                Element next = it.next();
                String H = next.text();
                if (H.equals("电影") || H.equals("剧集") || H.equals("综艺") || H.equals("动漫") || H.equals("纪录片")) {
                    i = 1;
                }
                if (i != 0) {
                    Matcher matcher = this.J.matcher(next.attr("href"));
                    if (matcher.find()) {
                        String trim = matcher.group(1).trim();
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("type_id", trim);
                        jSONObject.put("type_name", H);
                        jSONArray.put(jSONObject);
                    }
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            if (z) {
                jSONObject2.put("filters", this.l);
            }
            jSONObject2.put("class", jSONArray);
            try {
                Elements o2 = g.select("div.module-items>div");
                JSONArray jSONArray2 = new JSONArray();
                while (i < o2.size()) {
                    Element ik = o2.get(i);
                    String dV = ik.selectFirst("div.module-item-cover > div.module-item-pic > a").attr("title");
                    String dV2 = ik.selectFirst("div.module-item-cover > div.module-item-pic > img").attr("data-src");
                    String H2 = ik.selectFirst("div.module-item-text").text();
                    Matcher matcher2 = this.dV.matcher(ik.selectFirst("div.module-item-cover > div.module-item-pic > a").attr("href"));
                    if (matcher2.find()) {
                        String group = matcher2.group(1);
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("vod_id", group);
                        jSONObject3.put("vod_name", dV);
                        jSONObject3.put("vod_pic", dV2);
                        jSONObject3.put("vod_remarks", H2);
                        jSONArray2.put(jSONObject3);
                    }
                    i++;
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

    public void init(Context context) {
        Juhuang.super.init(context);
        try {
            this.g = new JSONObject("{\"xg\":{\"sh\":\"xg播放器\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"dplayer\":{\"sh\":\"dplayer播放器\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"videojs\":{\"sh\":\"videojs-H5播放器\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"iva\":{\"sh\":\"iva-H5播放器\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"iframe\":{\"sh\":\"iframe外链数据\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"link\":{\"sh\":\"外链数据\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"swf\":{\"sh\":\"Flash文件\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"flv\":{\"sh\":\"Flv文件\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"plyr\":{\"sh\":\"plyr\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"H5player\":{\"sh\":\"H5player\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"playerjs\":{\"sh\":\"playerjs\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"aliplayer\":{\"sh\":\"阿里播放器\",\"or\":999,\"sn\":0,\"pu\":\"\"}}");
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
    }

    public String playerContent(String str, String str2, List<String> list) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("origin", " https://juhuang.tv");
            jSONObject.put("User-Agent", " Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
            jSONObject.put("Accept", " */*");
            jSONObject.put("Accept-Language", " zh-CN,zh;q=0.9,en-US;q=0.3,en;q=0.7");
            jSONObject.put("Accept-Encoding", " gzip, deflate");
            jSONObject.put("Referer", " https://juhuang.tv/");
            String str3 = "https://juhuang.tv/play/" + str2 + ".html";
            Elements o = Jsoup.parse(OkHttpUtil.string(str3, g(str3))).select("script");
            JSONObject jSONObject2 = new JSONObject();
            int i = 0;
            while (true) {
                if (i >= o.size()) {
                    break;
                }
                String trim = o.get(i).html().trim();
                if (trim.startsWith("var player_aaaa")) {
                    JSONObject jSONObject3 = new JSONObject(trim.substring(trim.indexOf(123), trim.lastIndexOf(125) + 1));
                    if (this.g.has(jSONObject3.optString("from"))) {
                        String string = jSONObject3.optString("url");
                        if (jSONObject3.has("encrypt")) {
                            int i2 = jSONObject3.getInt("encrypt");
                            if (i2 == 1) {
                                string = URLDecoder.decode(string,"utf-8");
                            } else if (i2 == 2) {
                                string = URLDecoder.decode(new String(Base64.decode(string, 0)),"utf-8");
                            }
                        }
                        String str4 = "https://web-webapi-tsjqsvyzyx.cn-shenzhen.fcapp.run/?url=" + string;
                        HashMap hashMap = new HashMap();
                        hashMap.put("Referer", " https://juhuang.tv/");
                        hashMap.put("User-Agent", " Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
                        jSONObject2.put("url", "https://" + new JSONObject(OkHttpUtil.string(str4, hashMap)).optString("url"));
                        jSONObject2.put("parse", "0");
                        jSONObject2.put("playUrl", "");
                        jSONObject2.put("header", "{\"User-Agent\", \" Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36\"}");
                    }
                } else {
                    i++;
                }
            }
            return jSONObject2.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String searchContent(String str, boolean z) {
        if (z) {
            return "";
        }
        try {
            String str2 = "https://juhuang.tv/index.php/ajax/suggest?mid=1&wd=" + URLEncoder.encode(str) + "&limit=10&timestamp=" + System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string(str2, g(str2)));
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (jSONObject.getInt("total") > 0) {
                JSONArray jSONArray2 = new JSONArray(jSONObject.optString("list"));
                for (int i = 0; i < jSONArray2.length(); i++) {
                    JSONObject jSONObject3 = jSONArray2.optJSONObject(i);
                    String string = jSONObject3.optString("id");
                    String string2 = jSONObject3.optString("name");
                    String string3 = jSONObject3.optString("pic");
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("vod_id", string);
                    jSONObject4.put("vod_name", string2);
                    jSONObject4.put("vod_pic", string3);
                    jSONObject4.put("vod_remarks", "");
                    jSONArray.put(jSONObject4);
                }
            }
            jSONObject2.put("list", jSONArray);
            return jSONObject2.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }
}