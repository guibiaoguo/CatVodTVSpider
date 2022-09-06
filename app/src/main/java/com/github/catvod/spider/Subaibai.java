package com.github.catvod.spider;

import com.github.catvod.utils.Base64;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.CipherUtil;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.Call;
import okhttp3.Response;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class Subaibai extends Spider {
    private final String g = "{}";
    private final Pattern l = Pattern.compile("https://www.subaibaiys.com/(\\S+)");
    private final Pattern J = Pattern.compile("https://www.subaibaiys.com/movie/(\\d+).html");
    private final Pattern dV = Pattern.compile("https://www.subaibaiys.com/v_play/(\\S+).html");
    private final Pattern rl = Pattern.compile("https://www.subaibaiys.com/\\S+/page/(\\d+)");
    private final Pattern cY = Pattern.compile("=\"(.*?)\";var");
    private final Pattern HL = Pattern.compile("md5.enc.Utf8.parse\\(\"(.*?)\"\\);var iv=md5.enc.Utf8.parse\\((.*?)\\);");
    private final Pattern lN = Pattern.compile("url: \"(.*?)\"");

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        int i;
        String str3;
        try {
            String str4 = "https://www.subaibaiys.com/" + str;
            if (str2 != null && Integer.parseInt(str2) > 1) {
                str4 = "https://www.subaibaiys.com" + String.format("/%s/page/%s", str, str2);
            }
            String V = OkHttpUtil.string(str4, g(str4));
            Document g = Jsoup.parse(V);
            JSONObject jSONObject = new JSONObject();
            Elements o = g.select("div.pagenavi_txt > a ");
            if (o.size() > 0) {
                int i2 = 0;
                while (true) {
                    if (i2 >= o.size()) {
                        break;
                    }
                    Element Xq = o.get(i2).selectFirst("a");
                    if (Xq != null && Xq.text().trim().equals("»")) {
                        Matcher matcher = this.rl.matcher(Xq.attr("href"));
                        if (matcher.find()) {
                            i = Integer.parseInt(matcher.group(1));
                        }
                    }
                    i2++;
                }
            }
            i = 1;
            JSONArray jSONArray = new JSONArray();
            if (!V.contains("没有找到您想要的结果哦")) {
                Elements o2 = g.select("div.bt_img > ul > li");
                for (int i3 = 0; i3 < o2.size(); i3++) {
                    Element ik = o2.get(i3);
                    String H = ik.selectFirst("h3.dytit > a").text();
                    String dV = ik.selectFirst("a > img ").attr("data-original");
                    Element Xq2 = ik.selectFirst("div.jidi > span");
                    if (Xq2 != null) {
                        str3 = Xq2.text();
                    } else {
                        str3 = "";
                    }
                    Matcher matcher2 = this.J.matcher(ik.selectFirst("h3.dytit > a").attr("href"));
                    if (matcher2.find()) {
                        String group = matcher2.group(1);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("vod_id", group);
                        jSONObject2.put("vod_name", H);
                        jSONObject2.put("vod_pic", dV);
                        jSONObject2.put("vod_remarks", str3);
                        jSONArray.put(jSONObject2);
                    }
                }
            }
            jSONObject.put("page", 1);
            jSONObject.put("pagecount", i);
            jSONObject.put("limit", 25);
            jSONObject.put("total", i <= 1 ? jSONArray.length() : i * 25);
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String detailContent(List<String> list) {
        String str;
        Exception e;
        Document g = null;
        JSONObject jSONObject = null;
        JSONObject jSONObject2 = null;
        String dV = null;
        String H = null;
        String H2 = null;
        Elements o = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        int i = 0;
        String str8;
        String str9 = "$$$";
        String str10 = "";
        try {
            String str11 = "https://www.subaibaiys.com/movie/" + list.get(0) + ".html";
            g = Jsoup.parse(OkHttpUtil.string(str11, g(str11)));
            jSONObject = new JSONObject();
            jSONObject2 = new JSONObject();
            dV = g.selectFirst("div.dyimg > img").attr("src");
            H = g.selectFirst("div.moviedteail_tt > h1").text();
            H2 = Jsoup.parse(g.selectFirst("meta[name=description]").attr("content")).text();
            o = g.select("ul.moviedteail_list > li");
            str2 = str10;
            str3 = str2;
            str4 = str3;
            str5 = str4;
            str6 = str5;
            str7 = str6;
            i = 0;
        } catch (Exception e2) {
            e = e2;
            str = str10;
        }
        while (true) {
            str = str10;
            if (i >= o.size()) {
                break;
            }
            try {
                Element ik = o.get(i);
                String H3 = ik.text();
                if (H3.contains("类型：")) {
                    str2 = ik.child(0).text();
                } else if (H3.contains("年份：")) {
                    str3 = ik.child(0).text();
                } else if (H3.contains("地区：")) {
                    str4 = ik.child(0).text();
                } else if (H3.contains("上映：")) {
                    str5 = ik.child(0).text();
                } else {
                    str8 = str9;
                    if (H3.contains("导演：")) {
                        ArrayList arrayList = new ArrayList();
                        Elements o2 = ik.select("a");
                        for (int i2 = 0; i2 < o2.size(); i2++) {
                            arrayList.add(o2.get(i2).text());
                        }
                        str7 = StringUtil.join(",", arrayList);
                    } else if (H3.contains("主演：")) {
                        ArrayList arrayList2 = new ArrayList();
                        Elements o3 = ik.select("a");
                        for (int i3 = 0; i3 < o3.size(); i3++) {
                            arrayList2.add(o3.get(i3).text());
                        }
                        str6 = StringUtil.join(",", arrayList2);
                    }
                    i++;
                    str10 = str;
                    o = o;
                    jSONObject = jSONObject;
                    str9 = str8;
                }
                str8 = str9;
                i++;
                str10 = str;
                o = o;
                jSONObject = jSONObject;
                str9 = str8;
            } catch (Exception e3) {
                SpiderDebug.log(e3);
            }
            return str;
        }
        try {
            jSONObject2.put("vod_id", list.get(0));
            jSONObject2.put("vod_name", H);
            jSONObject2.put("vod_pic", dV);
            jSONObject2.put("type_name", str2);
            jSONObject2.put("vod_year", str3);
            jSONObject2.put("vod_area", str4);
            jSONObject2.put("vod_remarks", str5);
            jSONObject2.put("vod_actor", str6);
            jSONObject2.put("vod_director", str7);
            jSONObject2.put("vod_content", H2);
            TreeMap treeMap = new TreeMap();
            Elements o4 = g.select("div.mi_paly_box > div > div.ypxingq_t");
            Elements o5 = g.select("div.paly_list_btn ");
            for (int i4 = 0; i4 < o4.size(); i4++) {
                String H4 = o4.get(i4).child(0).text();
                Elements o6 = o5.get(i4).select("a");
                ArrayList arrayList3 = new ArrayList();
                for (int i5 = 0; i5 < o6.size(); i5++) {
                    Element ik2 = o6.get(i5);
                    Matcher matcher = this.dV.matcher(ik2.attr("href"));
                    if (matcher.find()) {
                        arrayList3.add(ik2.text() + "$" + matcher.group(1));
                    }
                }
                String join = arrayList3.size() > 0 ? StringUtil.join("#", arrayList3) : str;
                if (join.length() != 0) {
                    treeMap.put(H4, join);
                }
            }
            if (treeMap.size() > 0) {
                String join2 = StringUtil.join(str9, treeMap.keySet());
                String join3 = StringUtil.join(str9, treeMap.values());
                jSONObject2.put("vod_play_from", join2);
                jSONObject2.put("vod_play_url", join3);
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject2);
            jSONObject.put("list", jSONArray);
        } catch (Exception e4) {
            SpiderDebug.log(e4);
        }
        return jSONObject.toString();
    }

    protected HashMap<String, String> g(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("method", "GET");
        hashMap.put("Host", "www.subaibaiys.com");
        hashMap.put("Referer", str);
        hashMap.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        return hashMap;
    }

    public String homeContent(boolean z) {
        int i;
        String str;
        try {
            Document g = Jsoup.parse(OkHttpUtil.string("https://www.subaibaiys.com/", g("https://www.subaibaiys.com")));
            Elements o = g.select("ul.navlist > li > a");
            JSONArray jSONArray = new JSONArray();
            Iterator<Element> it = o.iterator();
            while (true) {
                i = 0;
                if (!it.hasNext()) {
                    break;
                }
                Element next = it.next();
                String H = next.text();
                if (H.equals("香港经典电影")) {
                    H = "香港电影";
                }
                if (H.equals("电影") || H.equals("电视剧") || H.equals("热门电影") || H.equals("动漫电影") || H.equals("高分电影") || H.equals("香港电影")) {
                    i = 1;
                }
                if (i != 0) {
                    Matcher matcher = this.l.matcher(next.attr("href"));
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
                jSONObject2.put("filters", new JSONObject("{}"));
            }
            jSONObject2.put("class", jSONArray);
            try {
                Elements o2 = g.select("div.leibox > ul > li ");
                JSONArray jSONArray2 = new JSONArray();
                while (i < o2.size()) {
                    Element ik = o2.get(i);
                    String H2 = ik.selectFirst("h3.dytit > a").text();
                    String dV = ik.selectFirst("a > img").attr("data-original");
                    Element Xq = ik.selectFirst("div.jidi > span ");
                    if (Xq != null) {
                        str = Xq.text();
                    } else {
                        str = "";
                    }
                    Matcher matcher2 = this.J.matcher(ik.selectFirst("h3.dytit > a").attr("href"));
                    if (matcher2.find()) {
                        String group = matcher2.group(1);
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("vod_id", group);
                        jSONObject3.put("vod_name", H2);
                        jSONObject3.put("vod_pic", dV);
                        jSONObject3.put("vod_remarks", str);
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

    public String playerContent(String str, String str2, List<String> list) {
        try {
            String str3 = "https://www.subaibaiys.com/v_play/" + str2 + ".html";
            Document g = Jsoup.parse(OkHttpUtil.string(str3, g(str3)));
            final JSONObject jSONObject = new JSONObject();
            Matcher matcher = this.cY.matcher(g.toString());
            if (matcher.find()) {
                byte[] decode = Base64.decode(matcher.group(1), 0);
                Matcher matcher2 = this.HL.matcher(g.toString());
                if (!matcher2.find()) {
                    return "";
                }
                Matcher matcher3 = this.lN.matcher(CipherUtil.aes5(decode, matcher2.group(1).getBytes(), matcher2.group(2).getBytes()));
                if (matcher3.find()) {
                    String group = matcher3.group(1);
                    SpiderDebug.log("finalUrl = " + group);
                    HashMap hashMap = new HashMap();
                    hashMap.put("User-Agent", " Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36");
                    OkHttpUtil.get(OkHttpUtil.noRedirectClient(), group, hashMap, new OKCallBack() { // from class: com.github.catvod.spider.Subaibai.1
                        @Override // com.github.catvod.spider.merge.a6
                        protected void onFailure(Call call, Exception exc) {
                            SpiderDebug.log(exc);
                        }

                        @Override // com.github.catvod.spider.merge.a6
                        protected Object onParseResponse(Call call, Response response) {
                            try {
                                jSONObject.put("url", response.headers("location"));
                                return null;
                            } catch (JSONException e) {
                                SpiderDebug.log(e);
                                return null;
                            }
                        }

                        @Override // com.github.catvod.spider.merge.a6
                        protected void onResponse(Object obj) {
                        }
                    });
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("User-Agent", " Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36");
                    jSONObject.put("header", new JSONObject(hashMap2).toString());
                    jSONObject.put("parse", "0");
                    jSONObject.put("palyUrl", "");
                }
            }
            return jSONObject.toString();
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
            String str2 = "https://www.subaibaiys.com/grabble?q=" + URLEncoder.encode(str);
            Document g = Jsoup.parse(OkHttpUtil.string(str2, g(str2)));
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            Elements o = g.select("div.search_list > ul > li ");
            for (int i = 0; i < o.size(); i++) {
                Element ik = o.get(i);
                String H = ik.selectFirst("h3.dytit > a").text();
                String dV = ik.selectFirst("a > img ").attr("data-original");
                String H2 = ik.selectFirst("div.jidi > span").text();
                Matcher matcher = this.J.matcher(ik.selectFirst("h3.dytit > a").attr("href"));
                if (matcher.find()) {
                    String group = matcher.group(1);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("vod_id", group);
                    jSONObject2.put("vod_name", H);
                    jSONObject2.put("vod_pic", dV);
                    jSONObject2.put("vod_remarks", H2);
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }
}