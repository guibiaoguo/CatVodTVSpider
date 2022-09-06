package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.utils.Misc;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.okhttp.OkHttpUtil;

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
public class Zxzj extends Spider {
    private JSONObject g;
    private final Pattern l = Pattern.compile("/list/(\\d+).html");
    private final Pattern J = Pattern.compile("/detail/(\\d+).html");
    private final Pattern dV = Pattern.compile("/video/(\\d+)-(\\d+)-(\\d+).html");
    private final Pattern rl = Pattern.compile("/list/\\d+-(\\d+).html");
    private final Pattern cY = Pattern.compile("var urls = 'https://(.*?)';");

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        int i;
        int i2;
        try {
            String V = OkHttpUtil.string("https://zxzj.vip/list/" + str + "-" + str2 + ".html", l());
            Document g = Jsoup.parse(V);
            JSONObject jSONObject = new JSONObject();
            Elements o = g.select("ul.stui-page__item>li");
            if (o.size() == 0) {
                i = Integer.parseInt(str2);
                i2 = i;
            } else {
                i2 = -1;
                int i3 = 0;
                while (i3 < o.size()) {
                    Element ik = o.get(i3);
                    Element Xq = ik.selectFirst("a");
                    if (Xq != null) {
                        String H = Xq.text();
                        if (i2 == -1 && ik.hasClass("active")) {
                            Matcher matcher = this.rl.matcher(Xq.attr("href"));
                            i2 = matcher.find() ? Integer.parseInt(matcher.group(1)) : 0;
                        }
                        if (H.equals("尾页")) {
                            Matcher matcher2 = this.rl.matcher(Xq.attr("href"));
                            if (matcher2.find()) {
                                i = Integer.parseInt(matcher2.group(1));
                            }
                        }
                    }
                    i3++;
                }
                i = 0;
            }
            JSONArray jSONArray = new JSONArray();
            if (!V.contains("没有找到您想要的结果哦")) {
                Elements o2 = g.select("ul.stui-vodlist>li>div>a");
                for (int i4 = 0; i4 < o2.size(); i4++) {
                    Element ik2 = o2.get(i4);
                    String dV = ik2.attr("title");
                    String dV2 = ik2.attr("data-original");
                    String H2 = ik2.selectFirst("span.pic-text").text();
                    Matcher matcher3 = this.J.matcher(ik2.attr("href"));
                    if (matcher3.find()) {
                        String group = matcher3.group(1);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("vod_id", group);
                        jSONObject2.put("vod_name", dV);
                        jSONObject2.put("vod_pic", dV2);
                        jSONObject2.put("vod_remarks", H2);
                        jSONArray.put(jSONObject2);
                    }
                }
            }
            jSONObject.put("page", i2);
            jSONObject.put("pagecount", i);
            jSONObject.put("limit", 30);
            jSONObject.put("total", i <= 1 ? jSONArray.length() : i * 30);
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String detailContent(List<String> list) {
        boolean z;
        Elements mPVar;
        String str;
        Elements mPVar2;
        Elements mPVar3;
        Zxzj zxzj = this;
        try {
            Document g = Jsoup.parse(OkHttpUtil.string("https://zxzj.vip/detail/" + list.get(0) + ".html", l()));
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            String dV = g.selectFirst("div.stui-content__thumb>a.pic>img").attr("data-original");
            if (!StringUtil.isEmpty(dV) && !dV.startsWith("http")) {
                dV = "http://" + dV;
            }
            String trim = g.selectFirst("div.stui-content__detail>h1.title").text().trim();
            String H = Jsoup.parse(g.selectFirst("meta[name=description]").attr("content")).text();
            jSONObject2.put("vod_id", list.get(0));
            jSONObject2.put("vod_name", trim);
            jSONObject2.put("vod_pic", dV);
            jSONObject2.put("vod_content", H);
            // from class: com.github.catvod.spider.Zxzj.1
            TreeMap treeMap = new TreeMap((Comparator<String>) (str2, str3) -> {
                try {
                    int i = Zxzj.this.g.optJSONObject(str2).getInt("or");
                    int i2 = Zxzj.this.g.optJSONObject(str3).getInt("or");
                    if (i != i2 && i - i2 <= 0) {
                        return -1;
                    }
                    return 1;
                } catch (JSONException e) {
                    SpiderDebug.log(e);
                    return 1;
                }
            });
            Elements o = g.select("div.stui-vodlist__head>h3:contains(DP播放)");
            Elements o2 = g.select("ul.stui-content__playlist");
            int i = 0;
            while (i < o.size()) {
                String H2 = o.get(i).text();
                Iterator<String> keys = zxzj.g.keys();
                while (true) {
                    if (!keys.hasNext()) {
                        z = false;
                        break;
                    }
                    String next = keys.next();
                    if (zxzj.g.optJSONObject(next).optString("sh").equals(H2)) {
                        H2 = next;
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    mPVar = o2;
                } else {
                    Elements o3 = o2.get(i).select("li > a");
                    ArrayList arrayList = new ArrayList();
                    int i2 = 0;
                    while (i2 < o3.size()) {
                        Element ik = o3.get(i2);
                        Matcher matcher = zxzj.dV.matcher(ik.attr("href"));
                        if (!matcher.find()) {
                            mPVar3 = o2;
                            mPVar2 = o3;
                        } else {
                            StringBuilder sb = new StringBuilder();
                            mPVar3 = o2;
                            mPVar2 = o3;
                            sb.append(matcher.group(1));
                            sb.append("-");
                            sb.append(matcher.group(2));
                            sb.append("-");
                            sb.append(matcher.group(3));
                            arrayList.add(ik.text() + "$" + sb);
                        }
                        i2++;
                        zxzj = this;
                        o3 = mPVar2;
                        o2 = mPVar3;
                    }
                    mPVar = o2;
                    if (arrayList.size() > 0) {
                        str = StringUtil.join("#", arrayList);
                    } else {
                        str = "";
                    }
                    if (str.length() != 0) {
                        treeMap.put(H2, str);
                    }
                }
                i++;
                zxzj = this;
                o2 = mPVar;
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

    public String homeContent(boolean z) {
        try {
            Document g = Jsoup.parse(OkHttpUtil.string("https://zxzj.vip", l()));
            Elements o = g.select("ul.stui-header__menu > li a");
            JSONArray jSONArray = new JSONArray();
            for (Element next : o) {
                String H = next.text();
                Matcher matcher = this.l.matcher(next.attr("href"));
                if (matcher.find()) {
                    String trim = matcher.group(1).trim();
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("type_id", trim);
                    jSONObject.put("type_name", H);
                    jSONArray.put(jSONObject);
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("class", jSONArray);
            try {
                Elements o2 = g.select("ul.stui-vodlist>li>div>a");
                JSONArray jSONArray2 = new JSONArray();
                for (int i = 0; i < o2.size(); i++) {
                    Element ik = o2.get(i);
                    String dV = ik.attr("title");
                    String dV2 = ik.attr("data-original");
                    String H2 = ik.selectFirst("span.pic-text").text();
                    Matcher matcher2 = this.J.matcher(ik.attr("href"));
                    if (matcher2.find()) {
                        String group = matcher2.group(1);
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("vod_id", group);
                        jSONObject3.put("vod_name", dV);
                        jSONObject3.put("vod_pic", dV2);
                        jSONObject3.put("vod_remarks", H2);
                        jSONArray2.put(jSONObject3);
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

    public void init(Context context) {
        Zxzj.super.init(context);
        try {
            this.g = new JSONObject("{ \"dpp\": { \"sh\": \"DP播放\", \"or\": 999, \"sn\": 0, \"pu\": \"\", \"parse\": \"https://pic.zxzjtv.com/dplayer.php?url=\" }, \"ckk\": { \"sh\": \"CK播放\", \"or\": 999, \"sn\": 0, \"pu\": \"\", \"parse\": \"https://zxzj.vip/ckplayer.php?url=\" }, \"lep\": { \"sh\": \"播放线路3\", \"or\": 999, \"sn\": 0, \"pu\": \"\", \"parse\": \"\" }, \"ty2\": { \"sh\": \"播放线路2\", \"or\": 999, \"sn\": 0, \"pu\": \"\", \"parse\": \"\" }, \"ty189\": { \"sh\": \"播放线路1\", \"or\": 999, \"sn\": 0, \"pu\": \"\", \"parse\": \"\" }, \"xunleiyp\": { \"sh\": \"迅雷云盘\", \"or\": 999, \"sn\": 0, \"pu\": \"\", \"parse\": \"\" }, \"yunpan\": { \"sh\": \"百度网盘\", \"or\": 999, \"sn\": 0, \"pu\": \"\", \"parse\": \"\" } }");
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
    }

    protected HashMap<String, String> l() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("method", "GET");
        hashMap.put("Host", "zxzj.vip");
        hashMap.put("Referer", "https://zxzj.vip");
        hashMap.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36");
        return hashMap;
    }

    public String playerContent(String str, String str2, List<String> list) {
        try {
            JSONObject jSONObject = new JSONObject();
            String str3 = "https://zxzj.vip/video/" + str2 + ".html";
            jSONObject.put("parse", 1);
            jSONObject.put("playUrl", "");
            jSONObject.put("url", str3);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public String searchContent(String str, boolean z) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string("https://zxzj.vip/index.php/ajax/suggest?mid=1&wd=" + URLEncoder.encode(str, "utf-8") + "&limit=10&timestamp=" + currentTimeMillis, l()));
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