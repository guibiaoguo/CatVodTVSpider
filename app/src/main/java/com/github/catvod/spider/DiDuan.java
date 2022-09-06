package com.github.catvod.spider;

import android.content.Context;
import android.os.Build;
import com.github.catvod.utils.StringUtil;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.spider.DiDuan;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class DiDuan extends Spider {
    private final Pattern g = Pattern.compile("\"(https://ddys.tv/.*)\"");
    private final Pattern l = Pattern.compile("^https://ddys.tv/([^/]+)/");
    private final Pattern J = Pattern.compile("url\\(([^\\)]+)\\)");
    private final Pattern dV = Pattern.compile("/page/(\\d+)/");
    private String rl = "";
    private WebView cY = null;

    private void cY(String str) {
        CookieManager instance = CookieManager.getInstance();
        if (Build.VERSION.SDK_INT >= 21) {
            instance.flush();
            instance.removeAllCookies(null);
            instance.removeSessionCookies(null);
        } else {
            CookieSyncManager createInstance = CookieSyncManager.createInstance(Init.getContext());
            createInstance.startSync();
            instance.removeAllCookie();
            instance.removeSessionCookie();
            createInstance.stopSync();
        }
        Init.run(new Runnable() { // from class: com.github.catvod.spider.merge.A
            public final  String l = "";

            @Override // java.lang.Runnable
            public final void run() {
                DiDuan.this.dV(this.l);
            }
        });
        int i = 0;
        while (true) {
            if (i >= 10) {
                break;
            }
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            String cookie = instance.getCookie(str);
            if (cookie != null && cookie.contains("cf_clearance")) {
                this.rl = cookie;
                break;
            }
            i++;
        }
        if (this.cY != null) {
            Init.run(new Runnable() { // from class: com.github.catvod.spider.merge.Gg
                @Override // java.lang.Runnable
                public final void run() {
                    DiDuan.this.rl();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void dV(String str) {
        WebView dV = Misc.dV();
        this.cY = dV;
        dV.setWebViewClient(new WebViewClient() { // from class: com.github.catvod.spider.DiDuan.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str2) {
                return false;
            }
        });
        this.cY.loadUrl(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void rl() {
        this.cY.destroy();
        this.cY = null;
    }

    protected void HL() {
        try {
            if (OkHttpUtil.string("https://ddys.tv", J()).contains("Checking your browser before accessing")) {
                cY("https://ddys.tv");
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }

    protected HashMap<String, String> J() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36");
        hashMap.put("Referer", "https://ddys.tv/");
        hashMap.put("Cookie", this.rl);
        return hashMap;
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        int parseInt;
        try {
            Document g = Jsoup.parse(OkHttpUtil.string("https://ddys.tv/category/" + str + "/page/" + str2, J()));
            JSONObject jSONObject = new JSONObject();
            int parseInt2 = Integer.parseInt(str2);
            Elements o = g.select(".page-numbers");
            int i = parseInt2;
            for (int i2 = 0; i2 < o.size(); i2++) {
                Matcher matcher = this.dV.matcher(o.get(i2).attr("href"));
                if (matcher.find() && (parseInt = Integer.parseInt(matcher.group(1))) > i) {
                    i = parseInt;
                }
            }
            Elements o2 = g.select("article");
            JSONArray jSONArray = new JSONArray();
            for (int i3 = 0; i3 < o2.size(); i3++) {
                Element ik = o2.get(i3);
                Matcher matcher2 = this.l.matcher(ik.attr("data-href"));
                if (matcher2.find()) {
                    String group = matcher2.group(1);
                    Matcher matcher3 = this.J.matcher(ik.selectFirst(".post-box-image").attr("style"));
                    if (matcher3.find()) {
                        String group2 = matcher3.group(1);
                        String trim = ik.selectFirst(".post-box-title").text().trim();
                        String trim2 = ik.selectFirst(".post-box-meta").text().trim();
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("vod_id", group);
                        jSONObject2.put("vod_name", trim);
                        jSONObject2.put("vod_pic", group2);
                        jSONObject2.put("vod_remarks", trim2);
                        jSONArray.put(jSONObject2);
                    }
                }
            }
            jSONObject.put("page", parseInt2);
            jSONObject.put("pagecount", i);
            jSONObject.put("limit", 28);
            jSONObject.put("total", i * 28);
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            SpiderDebug.log(e);
            return "";
        }
    }

    public String detailContent(List<String> list) {
        String str;
        Document w4;
        String str2 = "https://ddys.tv/";
        String str3 = "/";
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            String str4 = list.get(0);
            jSONObject2.put("vod_id", str4);
            Document g = Jsoup.parse(OkHttpUtil.string(str2 + str4 + str3, J()));
            jSONObject2.put("vod_name", g.selectFirst("h1.post-title").text().trim());
            jSONObject2.put("vod_pic", g.selectFirst("div.post > img").attr("src"));
            jSONObject2.put("vod_remarks", g.selectFirst("time").text().trim());
            for (String str5 : g.selectFirst("div.abstract").html().split("\n")) {
                String replace = str5.replace("<br>", "").replace("<p></p>", "");
                if (replace.indexOf("类型") == 0) {
                    jSONObject2.put("type_name", replace.substring(4));
                } else if (replace.indexOf("导演") == 0) {
                    jSONObject2.put("vod_director", replace.substring(4));
                } else if (replace.indexOf("演员") == 0) {
                    jSONObject2.put("vod_actor", replace.substring(4));
                } else if (replace.indexOf("年份") == 0) {
                    jSONObject2.put("vod_year", replace.substring(4));
                } else if (replace.indexOf("制片国家/地区") == 0) {
                    jSONObject2.put("vod_area", replace.substring(8));
                } else if (replace.indexOf("简介") == 0) {
                    jSONObject2.put("vod_content", replace.substring(4));
                }
            }
            Iterator<Element> it = g.select(".post-page-numbers").iterator();
            int i = 1;
            int i2 = 1;
            while (it.hasNext()) {
                int parseInt = Integer.parseInt(it.next().text().trim());
                if (parseInt > i2) {
                    i2 = parseInt;
                }
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int i3 = 1;
            while (i3 <= i2) {
                if (i3 == i) {
                    str = str2;
                    w4 = g;
                } else {
                    str = str2;
                    w4 = Jsoup.parse(OkHttpUtil.string(str2 + str4 + str3 + i3 + str3, J()));
                }
                JSONArray jSONArray = new JSONObject(w4.select("script.wp-playlist-script").html()).optJSONArray("tracks");
                int i4 = 0;
                while (i4 < jSONArray.length()) {
                    JSONObject jSONObject3 = jSONArray.optJSONObject(i4);
                    arrayList.add(jSONObject3.optString("caption") + "$" + jSONObject3.optString("src1"));
                    arrayList2.add(jSONObject3.optString("caption") + "$https://w.ddrk.me" + jSONObject3.optString("src0") + "?ddrkey=" + jSONObject3.optString("src2"));
                    i4++;
                    jSONArray = jSONArray;
                    str4 = str4;
                }
                i3++;
                str2 = str;
                str3 = str3;
                i = 1;
            }
            linkedHashMap.put("國內", StringUtil.join("#", arrayList));
            linkedHashMap.put("海外", StringUtil.join("#", arrayList2));
            String join = StringUtil.join("$$$", linkedHashMap.keySet());
            String join2 = StringUtil.join("$$$", linkedHashMap.values());
            jSONObject2.put("vod_play_from", join);
            jSONObject2.put("vod_play_url", join2);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(jSONObject2);
            jSONObject.put("list", jSONArray2);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String homeContent(boolean z) {
        try {
            Document g = Jsoup.parse(OkHttpUtil.string("https://ddys.tv", J()));
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            Iterator<Element> it = g.select("li").select("[href*=category]").iterator();
            while (it.hasNext()) {
                Element next = it.next();
                String dV = next.attr("title");
                String str = next.attr("href").split("category")[1];
                String substring = str.substring(1, str.length() - 1);
                if (!substring.equals("vip")) {
                    if (substring.equals("drama/other")) {
                        dV = "其他剧";
                    }
                    if (substring.equals("movie")) {
                        dV = "电影";
                    }
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("type_id", substring);
                    jSONObject2.put("type_name", dV);
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("class", jSONArray);
            Elements o = g.select("article");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < o.size(); i++) {
                Element ik = o.get(i);
                Matcher matcher = this.l.matcher(ik.attr("data-href"));
                if (matcher.find()) {
                    String group = matcher.group(1);
                    Matcher matcher2 = this.J.matcher(ik.selectFirst(".post-box-image").attr("style"));
                    if (matcher2.find()) {
                        String group2 = matcher2.group(1);
                        String trim = ik.selectFirst(".post-box-title").text().trim();
                        String trim2 = ik.selectFirst(".post-box-meta").text().trim();
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("vod_id", group);
                        jSONObject3.put("vod_name", trim);
                        jSONObject3.put("vod_pic", group2);
                        jSONObject3.put("vod_remarks", trim2);
                        jSONArray2.put(jSONObject3);
                    }
                }
            }
            jSONObject.put("list", jSONArray2);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public void init(Context context) {
        DiDuan.super.init(context);
        HL();
    }

    public String playerContent(String str, String str2, List<String> list) {
        if (str2.startsWith("http")) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("url", str2);
                jSONObject.put("parse", "0");
                jSONObject.put("playUrl", "");
                jSONObject.put("header", "");
                return jSONObject.toString();
            } catch (Exception e) {
                e.printStackTrace();
                SpiderDebug.log(e);
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("https://ddys.tv/getvddr/video?id=");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            try {
                JSONObject jSONObject2 = new JSONObject(OkHttpUtil.string(str3 + str2 + "&type=mix", J()));
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("parse", "0");
                jSONObject3.put("playUrl", "");
                jSONObject3.put("url", jSONObject2.optString("url"));
                jSONObject3.put("header", "");
                return jSONObject3.toString();
            } catch (Exception e2) {
                e2.printStackTrace();
                SpiderDebug.log(e2);
            }
        }
        return "";
    }

    public String searchContent(String str, boolean z) {
        try {
            Elements o = Jsoup.parse(OkHttpUtil.string("https://www.sogou.com/web?query=site%3Addrk.me+" + URLEncoder.encode(str), J())).select("div.results > div.vrwrap");
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < o.size(); i++) {
                try {
                    Element ik = o.get(i);
                    Element Xq = ik.selectFirst("h3.vr-title");
                    if (Xq != null && Xq.text().trim().contains(str)) {
                        Matcher matcher = this.g.matcher(Jsoup.parse(OkHttpUtil.string("https://www.sogou.com" + ik.selectFirst("a").attr("href"), J())).html());
                        if (matcher.find()) {
                            Document g = Jsoup.parse(OkHttpUtil.string(matcher.group(1), J()));
                            Matcher matcher2 = this.l.matcher(g.selectFirst("link[rel=canonical]").attr("href"));
                            if (matcher2.find()) {
                                String group = matcher2.group(1);
                                String trim = g.selectFirst("h1.post-title").text().trim();
                                String dV = g.selectFirst("div.post > img").attr("src");
                                String trim2 = g.selectFirst("time").text().trim();
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("vod_id", group);
                                jSONObject.put("vod_name", trim);
                                jSONObject.put("vod_pic", dV);
                                jSONObject.put("vod_remarks", trim2);
                                jSONArray.put(jSONObject);
                            }
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    SpiderDebug.log(e);
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("list", jSONArray);
            return jSONObject2.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            SpiderDebug.log(e2);
            return "";
        }
    }
}