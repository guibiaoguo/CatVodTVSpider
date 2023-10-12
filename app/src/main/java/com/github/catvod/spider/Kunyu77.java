package com.github.catvod.spider;

import android.os.Build;
import android.text.TextUtils;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Kunyu77 extends Spider {

    private static final String siteUrl = "http://api.tyun77.cn";

    /* renamed from: W */
    private String f87W = "Dalvik/2.1.0 (Linux; U; Android " + Build.VERSION.RELEASE + "; " + Build.MODEL + " Build/" + Build.ID + ")";

    /* renamed from: Eg */
    private HashMap<String, String> m3946Eg(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("user-agent", this.f87W);
        return hashMap;
    }

    /* renamed from: Ku */
    private HashMap<String, String> m3945Ku(String str, String str2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("user-agent", "okhttp/3.12.0");
        hashMap.put("TK", Misc.MD5(str, Misc.CharsetUTF8));
        hashMap.put("t", str2);
        return hashMap;
    }

    /* renamed from: W */
    protected String m3944W(String str) {
        return str;
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        try {
            String valueOf = String.valueOf(System.currentTimeMillis() / 1000);
            JSONObject jSONObject = new JSONObject(m3944W(OkHttpUtil.string(siteUrl + "/api.php/provide/searchFilter?brand=realme&devid=4ac3fe96a6133de96904b8d3c8cfe16d&lat=40.954705&lon=116.801239&model=RMX1931&package=com.sevenVideo.app.android&pagenum=" + str2 + "&pagesize=24&pcode=010110005&sj=" + valueOf + "&sys=android&sysver=7.1.2&type_id=" + str + "&version=2.1.4", m3945Ku("/api.php/provide/videoDetailrealme4ac3fe96a6133de96904b8d3c8cfe16d40.954705116.801239RMX1931com.sevenVideo.app.android" + str2 + "24010110005" + valueOf + "android7.1.2" + str + "2.1.4" + valueOf + "XSpeUFjJ", valueOf)))).getJSONObject("data");
            JSONArray jSONArray = jSONObject.getJSONArray("result");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("vod_id", jSONObject2.optString("id"));
                jSONObject3.put("vod_name", jSONObject2.optString("title"));
                jSONObject3.put("vod_pic", jSONObject2.optString("videoCover"));
                jSONObject3.put("vod_remarks", jSONObject2.optString("msg"));
                jSONArray2.put(jSONObject3);
            }
            JSONObject jSONObject4 = new JSONObject();
            int parseInt = Integer.parseInt(jSONObject.optString("page"));
            int i2 = jSONObject.getInt("total");
            int i3 = jSONObject.getInt("pagesize");
            jSONObject4.put("page", parseInt);
            jSONObject4.put("pagecount", i3);
            jSONObject4.put("limit", 24);
            jSONObject4.put("total", i2);
            jSONObject4.put("list", jSONArray2);
            return jSONObject4.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public String detailContent(List<String> list) {
        try {
            String valueOf = String.valueOf(System.currentTimeMillis() / 1000);
            JSONObject jSONObject = new JSONObject(m3944W(OkHttpUtil.string(siteUrl + "/api.php/provide/videoDetail?brand=realme&devid=4ac3fe96a6133de96904b8d3c8cfe16d&ids=" + list.get(0) + "&lat=40.954705&lon=116.801239&model=RMX1931&package=com.sevenVideo.app.android&pcode=010110005&sj=" + valueOf + "&sys=android&sysver=7.1.2&version=2.1.4", m3945Ku("/api.php/provide/videoDetailrealme4ac3fe96a6133de96904b8d3c8cfe16d" + list.get(0) + "40.954705116.801239RMX1931com.sevenVideo.app.android010110005" + valueOf + "android7.1.22.1.4" + valueOf + "XSpeUFjJ", valueOf)))).getJSONObject("data");
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject3 = new JSONObject();
            String string = jSONObject.optString("videoName");
            jSONObject3.put("vod_id", jSONObject.optString("id"));
            jSONObject3.put("vod_name", string);
            jSONObject3.put("vod_pic", jSONObject.optString("videoCover"));
            jSONObject3.put("type_name", jSONObject.optString("subCategory"));
            jSONObject3.put("vod_year", jSONObject.optString("year"));
            jSONObject3.put("vod_area", jSONObject.optString("area"));
            jSONObject3.put("vod_remarks", jSONObject.optString("msg"));
            jSONObject3.put("vod_actor", jSONObject.optString("actor"));
            jSONObject3.put("vod_director", jSONObject.optString("director"));
            jSONObject3.put("vod_content", jSONObject.optString("brief").trim());
            String valueOf2 = String.valueOf(System.currentTimeMillis() / 1000);
            JSONArray jSONArray2 = new JSONObject(OkHttpUtil.string(siteUrl + "/api.php/provide/videoPlaylist?brand=realme&devid=4ac3fe96a6133de96904b8d3c8cfe16d&ids=" + list.get(0) + "&lat=40.954705&lon=116.801239&model=RMX1931&package=com.sevenVideo.app.android&pcode=010110005&sj=" + valueOf2 + "&sys=android&sysver=7.1.2&version=2.1.4", m3945Ku("/api.php/provide/videoPlaylistrealme4ac3fe96a6133de96904b8d3c8cfe16d" + list.get(0) + "40.954705116.801239RMX1931com.sevenVideo.app.android010110005" + valueOf2 + "android7.1.22.1.4" + valueOf2 + "XSpeUFjJ", valueOf2))).getJSONObject("data").getJSONArray("episodes");
            LinkedHashMap<String, ArrayList> linkedHashMap = new LinkedHashMap<>();
            for (int i = 0; i < jSONArray2.length(); i++) {
                JSONArray jSONArray3 = jSONArray2.getJSONObject(i).getJSONArray("playurls");
                for (int i2 = 0; i2 < jSONArray3.length(); i2++) {
                    JSONObject jSONObject4 = jSONArray3.getJSONObject(i2);
                    String string2 = jSONObject4.optString("playfrom");
                    ArrayList arrayList = (ArrayList) linkedHashMap.get(string2);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        linkedHashMap.put(string2, arrayList);
                    }
                    String trim = jSONObject4.optString("title").replace(string, "").trim();
                    if (trim.isEmpty()) {
                        trim = (i + 1) + "";
                    }
                    arrayList.add(trim + "$" + jSONObject4.optString("playurl"));
                }
            }
            String join = TextUtils.join("$$$", linkedHashMap.keySet());
            StringBuilder sb = new StringBuilder();
            short size = (short) linkedHashMap.size();
            for (ArrayList arrayList2 : linkedHashMap.values()) {
                size = (short) (size - 1);
                sb.append(TextUtils.join("#", arrayList2));
                if (size > 0) {
                    sb.append("$$$");
                }
            }
            jSONObject3.put("vod_play_from", join);
            jSONObject3.put("vod_play_url", sb.toString());
            jSONArray.put(jSONObject3);
            jSONObject2.put("list", jSONArray);
            return jSONObject2.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public String homeContent(boolean z) {
        String str;
        Iterator<String> it;
        JSONArray jSONArray = null;
        String str2 = null;
        Kunyu77 kunyu77 = this;
        String str3 = "data";
        Exception e = null;
        try {
            JSONObject jSONObject = new JSONObject(kunyu77.m3944W(OkHttpUtil.string(siteUrl + "/api.php/provide/filter", kunyu77.m3946Eg(siteUrl + "/api.php/provide/filter")))).getJSONObject("data");
            Iterator<String> keys = jSONObject.keys();
            JSONArray jSONArray2 = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray3 = null;
            while (keys.hasNext()) {
                String next = keys.next();
                String string = jSONObject.getJSONArray(next).getJSONObject(0).optString("cat");
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = jSONObject;
                jSONObject3.put("type_id", next);
                jSONObject3.put("type_name", string);
                jSONArray2.put(jSONObject3);
                if (jSONArray3 == null) {
                    try {
                        JSONObject jSONObject5 = new JSONObject(OkHttpUtil.string(siteUrl + "/api.php/provide/searchFilter?type_id=0&pagenum=1&pagesize=1", kunyu77.m3946Eg(siteUrl + "/api.php/provide/searchFilter?type_id=0&pagenum=1&pagesize=1"))).getJSONObject(str3).getJSONObject("conditions");
                        JSONArray jSONArray4 = new JSONArray();
                        try {
                            JSONObject jSONObject6 = new JSONObject();
                            jSONObject6.put("key", "year");
                            jSONObject6.put("name", "年份");
                            JSONArray jSONArray5 = new JSONArray();
                            JSONObject jSONObject7 = new JSONObject();
                            jSONObject7.put("n", "全部");
                            jSONObject7.put("v", "");
                            jSONArray5.put(jSONObject7);
                            JSONArray jSONArray6 = jSONObject5.getJSONArray("y");
                            str = str3;
                            it = keys;
                            int i = 0;
                            while (true) {
                                try {
                                    jSONArray = jSONArray2;
                                    if (i >= jSONArray6.length()) {
                                        break;
                                    }
                                    try {
                                        JSONObject jSONObject8 = jSONArray6.getJSONObject(i);
                                        JSONArray jSONArray7 = jSONArray6;
                                        JSONObject jSONObject9 = new JSONObject();
                                        jSONObject9.put("n", jSONObject8.optString("name"));
                                        jSONObject9.put("v", jSONObject8.optString("value"));
                                        jSONArray5.put(jSONObject9);
                                        i++;
                                        jSONArray2 = jSONArray;
                                        jSONArray6 = jSONArray7;
                                        next = next;
                                    } catch (Exception e5) {
                                        e = e5;
                                        jSONArray3 = jSONArray4;
                                        SpiderDebug.log(e);
                                        kunyu77 = this;
                                        jSONObject = jSONObject4;
                                        str3 = str;
                                        keys = it;
                                        jSONArray2 = jSONArray;
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                    jSONArray = jSONArray2;
                                    jSONArray3 = jSONArray4;
                                    SpiderDebug.log(e2);
                                    kunyu77 = this;
                                    jSONObject = jSONObject4;
                                    str3 = str;
                                    keys = it;
                                    jSONArray2 = jSONArray;
                                }
                            }
                            str2 = next;
                            jSONObject6.put("value", jSONArray5);
                            jSONArray4.put(jSONObject6);
                            JSONObject jSONObject10 = new JSONObject();
                            jSONObject10.put("key", "area");
                            jSONObject10.put("name", "地区");
                            JSONArray jSONArray8 = new JSONArray();
                            JSONObject jSONObject11 = new JSONObject();
                            jSONObject11.put("n", "全部");
                            jSONObject11.put("v", "");
                            jSONArray8.put(jSONObject11);
                            int i2 = 0;
                            for (JSONArray jSONArray9 = jSONObject5.getJSONArray("a"); i2 < jSONArray9.length(); jSONArray9 = jSONArray9) {
                                JSONObject jSONObject12 = jSONArray9.getJSONObject(i2);
                                JSONObject jSONObject13 = new JSONObject();
                                jSONObject13.put("n", jSONObject12.optString("name"));
                                jSONObject13.put("v", jSONObject12.optString("value"));
                                jSONArray8.put(jSONObject13);
                                i2++;
                            }
                            jSONObject10.put("value", jSONArray8);
                            jSONArray4.put(jSONObject10);
                            JSONObject jSONObject14 = new JSONObject();
                            jSONObject14.put("key", "category");
                            jSONObject14.put("name", "类型");
                            JSONArray jSONArray10 = new JSONArray();
                            JSONObject jSONObject15 = new JSONObject();
                            jSONObject15.put("n", "全部");
                            jSONObject15.put("v", "");
                            jSONArray10.put(jSONObject15);
                            JSONArray jSONArray11 = jSONObject5.getJSONArray("scat");
                            for (int i3 = 0; i3 < jSONArray11.length(); i3++) {
                                JSONObject jSONObject16 = jSONArray11.getJSONObject(i3);
                                JSONObject jSONObject17 = new JSONObject();
                                jSONObject17.put("n", jSONObject16.optString("name"));
                                jSONObject17.put("v", jSONObject16.optString("value"));
                                jSONArray10.put(jSONObject17);
                            }
                            jSONObject14.put("value", jSONArray10);
                            jSONArray4.put(jSONObject14);
                            jSONArray3 = jSONArray4;
                        } catch (Exception e3) {
                            e = e3;
                            str = str3;
                            it = keys;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        str = str3;
                        it = keys;
                        jSONArray = jSONArray2;
                    }
                } else {
                    str2 = next;
                    str = str3;
                    it = keys;
                    jSONArray = jSONArray2;
                }
                try {
                    if (jSONArray3.length() > 0) {
                        jSONObject2.put(str2, jSONArray3);
                    }
                } catch (Exception e5) {
                    e = e5;
                    SpiderDebug.log(e);
                    kunyu77 = this;
                    jSONObject = jSONObject4;
                    str3 = str;
                    keys = it;
                    jSONArray2 = jSONArray;
                }
                kunyu77 = this;
                jSONObject = jSONObject4;
                str3 = str;
                keys = it;
                jSONArray2 = jSONArray;
            }
            JSONObject jSONObject18 = new JSONObject();
            jSONObject18.put("class", jSONArray2);
            if (z) {
                jSONObject18.put("filters", jSONObject2);
            }
            return jSONObject18.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public String homeVideoContent() {
        try {
            JSONArray jSONArray = new JSONArray();
            try {
                String valueOf = String.valueOf(System.currentTimeMillis() / 1000);
                JSONArray jSONArray2 = new JSONObject(m3944W(OkHttpUtil.string(siteUrl + "/api.php/provide/homeBlock?brand=realme&devid=4ac3fe96a6133de96904b8d3c8cfe16d&lat=40.954705&lon=116.801239&model=RMX1931&package=com.sevenVideo.app.android&type_id=0&pcode=010110005&sys=android&sysver=7.1.2&version=2.1.4&sj=" + valueOf, m3945Ku("/api.php/provide/homeBlockrealme4ac3fe96a6133de96904b8d3c8cfe16d40.954705116.801239RMX1931com.sevenVideo.app.android010110005" + valueOf + "android7.1.22.1.4" + valueOf + "XSpeUFjJ", valueOf)))).getJSONObject("data").getJSONArray("blocks");
                for (int i = 0; i < jSONArray2.length(); i++) {
                    JSONObject jSONObject = jSONArray2.getJSONObject(i);
                    if (jSONObject.optString("block_name").startsWith("热播")) {
                        JSONArray jSONArray3 = jSONObject.getJSONArray("contents");
                        for (int i2 = 0; i2 < jSONArray3.length() && i2 < 3; i2++) {
                            JSONObject jSONObject2 = jSONArray3.getJSONObject(i2);
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("vod_id", jSONObject2.optString("id"));
                            jSONObject3.put("vod_name", jSONObject2.optString("title"));
                            jSONObject3.put("vod_pic", jSONObject2.optString("videoCover"));
                            jSONObject3.put("vod_remarks", jSONObject2.optString("msg"));
                            jSONArray.put(jSONObject3);
                        }
                    }
                }
            } catch (Exception unused) {
            }
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("list", jSONArray);
            return jSONObject4.toString();
        } catch (Throwable unused2) {
            return "";
        }
    }

    public String playerContent(String str, String str2, List<String> list) {
        String next = null;
        try {
            String valueOf = String.valueOf(System.currentTimeMillis() / 1000);
            JSONObject jSONObject = new JSONObject(m3944W(OkHttpUtil.string(siteUrl + "/api.php/provide/parserUrl?brand=realme&devid=4ac3fe96a6133de96904b8d3c8cfe16d&lat=40.954705&lon=116.801239&model=RMX1931&package=com.sevenVideo.app.android&pcode=010110005&retryNum=0&sj=" + valueOf + "&sys=android&sysver=7.1.2&url=" + str2 + "&version=2.1.4", m3945Ku("/api.php/provide/parserUrlrealme4ac3fe96a6133de96904b8d3c8cfe16d40.954705116.801239RMX1931com.sevenVideo.app.android0101100050" + valueOf + "android7.1.2" + URLEncoder.encode(str2) + "2.1.4" + valueOf + "XSpeUFjJ", valueOf)))).getJSONObject("data");
            JSONObject optJSONObject = jSONObject.optJSONObject("playHeader");
            String string = jSONObject.optString("url");
            JSONObject m2775A = Misc.jsonParse(string, OkHttpUtil.string(string, m3946Eg(string)));
            if (m2775A != null) {
                m2775A.put("parse", 0);
                m2775A.put("playUrl", "");
                if (optJSONObject != null) {
                    JSONObject jSONObject2 = m2775A.getJSONObject("header");
                    Iterator<String> keys = optJSONObject.keys();
                    while (keys.hasNext()) {
                        jSONObject2.put(keys.next(), " " + optJSONObject.optString(next));
                    }
                    m2775A.put("header", jSONObject2.toString());
                }
                return m2775A.toString();
            }
        } catch (Throwable unused) {
        }
        try {
            if (Misc.isVip(str2)) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("parse", 1);
                jSONObject3.put("jx", "1");
                jSONObject3.put("url", str2);
                return jSONObject3.toString();
            }
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("parse", 0);
            jSONObject4.put("playUrl", "");
            jSONObject4.put("url", str2);
            return jSONObject4.toString();
        } catch (Throwable unused2) {
            return "";
        }
    }

    public String searchContent(String str, boolean z) {
        try {
            String valueOf = String.valueOf(System.currentTimeMillis() / 1000);
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", "okhttp/3.12.0");
            hashMap.put("TK", Misc.MD5("/api.php/provide/searchVideorealme4ac3fe96a6133de96904b8d3c8cfe16d40.954705116.801239RMX1931com.sevenVideo.app.android0101100051" + URLEncoder.encode(str) + valueOf + "android7.1.22.1.4" + valueOf + "XSpeUFjJ", Misc.CharsetUTF8));
            hashMap.put("t", valueOf);
            JSONArray jSONArray = new JSONObject(m3944W(OkHttpUtil.string(siteUrl + "/api.php/provide/searchVideo?brand=realme&devid=4ac3fe96a6133de96904b8d3c8cfe16d&lat=40.954705&lon=116.801239&model=RMX1931&package=com.sevenVideo.app.android&pcode=010110005&pg=1&searchName=" + URLEncoder.encode(str) + "&sj=" + valueOf + "&sys=android&sysver=7.1.2&version=2.1.4", hashMap))).getJSONArray("data");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                JSONObject jSONObject2 = new JSONObject();
                String string = jSONObject.optString("videoName");
                if (string.contains(str)) {
                    jSONObject2.put("vod_id", jSONObject.optString("id"));
                    jSONObject2.put("vod_name", string);
                    jSONObject2.put("vod_pic", jSONObject.optString("videoCover"));
                    jSONObject2.put("vod_remarks", jSONObject.optString("msg"));
                    jSONArray2.put(jSONObject2);
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("list", jSONArray2);
            return jSONObject3.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}