package com.github.catvod.spider;

import android.content.Context;
import android.net.Uri;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.CipherUtil;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.net.URLEncoder;
import java.security.KeyFactory;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.crypto.Cipher;

import okhttp3.Call;
import okhttp3.Response;


public class Kmys extends Spider {
    private static final Pattern O = Pattern.compile("(\\S+.ts)|(#EXT-X-KEY:\\S+\")(\\S+)(\")");
    private static HashMap<String, String> jG = null;
    private static String t = "234051fe9d";
    private String H = "";
    private String G8 = "";
    private String x5 = "5";
    private String k6 = "f41a63788529f0133525d94e9cc0677b";

    static String Fi(String str) {
        if (str.startsWith("http://")) {
            return str.substring(0, str.substring(7).indexOf(47) + 7);
        }
        return str.substring((str.startsWith("https://") ? str.substring(0, str.substring(8).indexOf(47) + 8) : "").length());
    }

    static Object[] G8(String str) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        String str2 = str + "?key=" + CipherUtil.md5(Fi(str) + t + valueOf, Misc.UTF8).toLowerCase() + "&v=350&i=5&p=7&ed=f41a63788529f0133525d94e9cc0677b&time=" + valueOf;
        OKCallBack.OKCallBackDefault callBack = new OKCallBack.OKCallBackDefault() {
            @Override
            protected void onFailure(Call call, Exception e) {

            }

            @Override
            protected void onResponse(Response response) {

            }
        };

        OkHttpUtil.get(OkHttpUtil.defaultClient(), str2, null, jG, callBack);
        if (callBack.getResult().code() != 200) {
            return null;
        }
        String str3 = callBack.getResult().headers().get("Content-Type");
        if (str3 == null) {
            str3 = "application/octet-stream";
        }
        return new Object[]{200, str3, callBack.getResult().body().byteStream()};
    }

    static Object[] H(String str) {
        String valueOf = String.valueOf(System.currentTimeMillis());
        String lowerCase = CipherUtil.md5(Fi(str) + t + valueOf, Misc.UTF8).toLowerCase();
        return new Object[]{200, "application/octet-stream", new ByteArrayInputStream(OkHttpUtil.string(str + "?key=" + lowerCase + "&v=350&i=5&p=7&ed=f41a63788529f0133525d94e9cc0677b&time=" + valueOf, jG).getBytes(Misc.UTF8))};
    }

    private HashMap<String, String> O() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("versionNumber", "350");
        hashMap.put("versionName", "3.5.0");
        hashMap.put("ed", "f41a63788529f0133525d94e9cc0677b");
        hashMap.put("device", this.k6);
        hashMap.put("appId", this.x5);
        hashMap.put("platformId", "7");
        hashMap.put("User-Agent", "okhttp/3.14.7");
        return hashMap;
    }

    private void jG() {
        if (this.G8.isEmpty()) {
            String str = "http://feigua2021.oss-cn-beijing.aliyuncs.com/static/config/video/" + this.x5 + ".json";
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", "okhttp/3.14.7");
            hashMap.put("ed", "f41a63788529f0133525d94e9cc0677b");
            try {
                JSONObject jSONObject = new JSONObject(OkHttpUtil.string(str, hashMap));
                this.H = jSONObject.optString("apiDomain");
                this.G8 = jSONObject.optString("staticDomain");
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public static Object[] vod(Map<String, String> map) {
        String str = map.get("type");
        String str2 = new String(Base64.decode(map.get("url"), 10), Misc.UTF8);
        if (jG == null) {
            HashMap<String, String> hashMap = new HashMap<>();
            jG = hashMap;
            hashMap.put("User-Agent", "okhttp/p2p-1.6/normal");
            jG.put("ed", "f41a63788529f0133525d94e9cc0677b");
            jG.put("Connection", "close");
        }
        if (str.equals("m3u8")) {
            return x5(str2);
        }
        if (str.equals("key")) {
            return H(str2);
        }
        if (str.equals("ts")) {
            return G8(str2);
        }
        return null;
    }

    static Object[] x5(String str) {
        Uri parse = Uri.parse(str);
        String valueOf = String.valueOf(System.currentTimeMillis());
        String lowerCase = CipherUtil.md5(Fi(str) + t + valueOf, Misc.UTF8).toLowerCase();
        String V = OkHttpUtil.string(str + "?key=" + lowerCase + "&v=350&i=5&p=7&ed=f41a63788529f0133525d94e9cc0677b&time=" + valueOf, jG);
        String substring = str.substring(0, str.indexOf(parse.getLastPathSegment()));
        StringBuilder sb = new StringBuilder();
        Matcher matcher = O.matcher(V);
        int i = 0;
        while (matcher.find()) {
            sb.append(V, i, matcher.start());
            if (matcher.group().contains("EXT-X-KEY")) {
                String sb3 = Proxy.localProxyUrl() +
                        "?do=kmys&type=key&url=" +
                        Base64.encodeToString((substring + matcher.group(3)).getBytes(Misc.UTF8), 10);
                sb.append(matcher.group(2)).append(sb3).append(matcher.group(4));
            } else {
                String sb4 = Proxy.localProxyUrl() +
                        "?do=kmys&type=ts&url=" +
                        Base64.encodeToString((substring + matcher.group(1)).getBytes(Misc.UTF8), 10);
                sb.append(sb4);
            }
            i = matcher.end();
        }
        sb.append(V, i, V.length());
        return new Object[]{200, "application/octet-stream", new ByteArrayInputStream(sb.toString().getBytes(Misc.UTF8))};
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        try {
            jG();
            JSONObject jSONObject = new JSONObject();
            String str3 = this.H + "/videolibrary/v2/" + this.x5 + "/" + str;
            if (hashMap == null) {
                hashMap = new HashMap<>();
            }
            if (!hashMap.containsKey("area")) {
                hashMap.put("area", "-1");
            }
            if (!hashMap.containsKey("type")) {
                hashMap.put("type", "-1");
            }
            if (!hashMap.containsKey("sort")) {
                hashMap.put("sort", "2");
            }
            if (!hashMap.containsKey("year")) {
                hashMap.put("year", "-1");
            }
            String str4 = (((((str3 + "/" + hashMap.get("area")) + "/" + hashMap.get("type")) + "/" + hashMap.get("sort")) + "/-1") + "/" + hashMap.get("year")) + "/-1/" + str2 + ".json";
            JSONObject jSONObject2 = new JSONObject(OkHttpUtil.string(str4, O())).optJSONObject("data");
            JSONArray jSONArray = jSONObject2.optJSONArray("list");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.optJSONObject(i);
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("vod_id", jSONObject3.optString("id"));
                jSONObject4.put("vod_name", jSONObject3.optString("vodName"));
                jSONObject4.put("vod_pic", t(jSONObject3.optString("vodPicThumb")));
                jSONObject4.put("vod_remarks", jSONObject3.optString("lastName"));
                jSONArray2.put(jSONObject4);
            }
            int i2 = jSONObject2.getInt("count");
            int i3 = jSONObject2.getInt("pageSize");
            int i4 = i2 % i3 == 0 ? i2 / i3 : (i2 / i3) + 1;
            jSONObject.put("page", jSONObject2.getInt("pageIndex"));
            jSONObject.put("pagecount", i4);
            jSONObject.put("limit", i3);
            jSONObject.put("total", i2);
            jSONObject.put("list", jSONArray2);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public String detailContent(List<String> list) {
        String str;
        JSONObject jSONObject;
        boolean z;
        String str2 = "";
        try {
            jG();
            JSONObject jSONObject2 = new JSONObject();
            String str3 = this.G8 + "/static/video/detail/" + list.get(0) + ".json";
            JSONObject jSONObject3 = new JSONObject(OkHttpUtil.string(str3, O())).optJSONObject("data");
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("vod_id", jSONObject3.optString("id"));
            jSONObject4.put("vod_name", jSONObject3.optString("vodName"));
            jSONObject4.put("vod_pic", t(jSONObject3.optString("vodPic")));
            jSONObject4.put("type_name", jSONObject3.optString("typeName"));
            jSONObject4.put("vod_year", jSONObject3.optString("vodYear"));
            jSONObject4.put("vod_area", jSONObject3.optString("vodArea"));
            jSONObject4.put("vod_remarks", str2);
            jSONObject4.put("vod_actor", jSONObject3.optString("vodActor"));
            jSONObject4.put("vod_director", str2);
            jSONObject4.put("vod_content", jSONObject3.optString("vodBlurb"));
            String string = jSONObject3.optString("vodPlayUrl");
            String k6 = k6(string.substring(0, 10) + string.substring(16));
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            JSONArray jSONArray = new JSONArray(k6);
            int i = 0;
            while (i < jSONArray.length()) {
                JSONObject jSONObject5 = jSONArray.optJSONObject(i);
                String string2 = jSONObject5.optString("name");
                boolean equals = string2.equals("高速线路");
                ArrayList arrayList3 = new ArrayList();
                JSONArray jSONArray2 = jSONObject5.optJSONArray("list");
                int i2 = 0;
                while (i2 < jSONArray2.length()) {
                    JSONObject jSONObject6 = jSONArray2.optJSONObject(i2);
                    str = str2;
                    if (equals) {
                        z = true;
                        try {
                            StringBuilder sb = new StringBuilder();
                            jSONObject = jSONObject2;
                            sb.append(jSONObject6.optString("name"));
                            sb.append("$");
                            sb.append(Proxy.localProxyUrl());
                            sb.append("?do=kmys&type=m3u8&url=");
                            sb.append(Base64.encodeToString(jSONObject6.optString("url").getBytes(Misc.UTF8), 10));
                            sb.append("..");
                            sb.append(jSONObject6.getInt("isParse"));
                            arrayList3.add(sb.toString());
                        } catch (Throwable unused) {
                            return str;
                        }
                    } else {
                        jSONObject = jSONObject2;
                        z = false;
                        arrayList3.add(jSONObject6.optString("name") + "$" + jSONObject6.optString("url") + ".." + jSONObject6.getInt("isParse"));
                    }
                    i2++;
                    str2 = str;
                    equals = z;
                    jSONObject2 = jSONObject;
                }
                if (!arrayList3.isEmpty()) {
                    arrayList.add(string2);
                    arrayList2.add(StringUtil.join("#", arrayList3));
                }
                i++;
            }
            String join = StringUtil.join("$$$", arrayList);
            String join2 = StringUtil.join("$$$", arrayList2);
            jSONObject4.put("vod_play_from", join);
            jSONObject4.put("vod_play_url", join2);
            JSONArray jSONArray3 = new JSONArray();
            jSONArray3.put(jSONObject4);
            jSONObject2.put("list", jSONArray3);
            return jSONObject2.toString();
        } catch (Throwable unused2) {
            return str2;
        }
    }

    public String homeContent(boolean z) {
        Object obj;
        JSONArray jSONArray;
        int i;
        JSONArray jSONArray2;
        String str;
        JSONObject jSONObject;
        Object obj2;
        String str2 = "year";
        String str3 = "-1";
        try {
            jG();
            String str4 = this.G8 + "/static/" + this.x5 + "/config/lib-new.json";
            JSONObject jSONObject2 = new JSONObject(OkHttpUtil.string(str4, O())).optJSONObject("data");
            JSONArray jSONArray3 = jSONObject2.optJSONArray(str2);
            JSONArray jSONArray4 = jSONObject2.optJSONArray("types");
            JSONArray jSONArray5 = new JSONArray();
            JSONObject jSONObject3 = new JSONObject();
            int i2 = 0;
            while (i2 < jSONArray4.length()) {
                JSONObject jSONObject4 = jSONArray4.optJSONObject(i2);
                String trim = jSONObject4.optString("typeId").trim();
                if (trim.isEmpty()) {
                    obj = str2;
                    jSONArray = jSONArray5;
                    jSONObject = jSONObject3;
                    i = i2;
                    jSONArray2 = jSONArray3;
                    str = str3;
                } else {
                    i = i2;
                    String string = jSONObject4.optString("typeName");
                    JSONObject jSONObject5 = new JSONObject();
                    jSONObject5.put("type_id", trim);
                    jSONObject5.put("type_name", string);
                    jSONArray5.put(jSONObject5);
                    JSONArray jSONArray7 = jSONObject4.optJSONArray("tags");
                    JSONArray jSONArray8 = new JSONArray();
                    JSONObject jSONObject6 = new JSONObject();
                    jSONArray = jSONArray5;
                    jSONObject6.put("key", "type");
                    jSONObject6.put("name", "类型");
                    JSONArray jSONArray9 = new JSONArray();
                    JSONObject jSONObject7 = new JSONObject();
                    jSONObject7.put("n", "全部");
                    jSONObject7.put("v", str3);
                    jSONArray9.put(jSONObject7);
                    int i3 = 0;
                    while (i3 < jSONArray7.length()) {
                        JSONObject jSONObject8 = jSONArray7.optJSONObject(i3);
                        JSONObject jSONObject9 = new JSONObject();
                        jSONObject9.put("n", jSONObject8.optString("typeName"));
                        jSONObject9.put("v", jSONObject8.optString("typeId"));
                        jSONArray9.put(jSONObject9);
                        i3++;
                    }
                    jSONObject6.put("value", jSONArray9);
                    jSONArray8.put(jSONObject6);
                    JSONObject jSONObject10 = new JSONObject();
                    jSONObject10.put("key", "sort");
                    jSONObject10.put("name", "排序");
                    JSONArray jSONArray10 = new JSONArray();
                    JSONObject jSONObject11 = new JSONObject();
                    jSONObject11.put("n", "最热");
                    jSONObject11.put("v", "2");
                    jSONArray10.put(jSONObject11);
                    JSONObject jSONObject12 = new JSONObject();
                    jSONObject12.put("n", "最新");
                    jSONObject12.put("v", "1");
                    jSONArray10.put(jSONObject12);
                    JSONObject jSONObject13 = new JSONObject();
                    jSONObject13.put("n", "好评");
                    jSONObject13.put("v", "3");
                    jSONArray10.put(jSONObject13);
                    jSONObject10.put("value", jSONArray10);
                    jSONArray8.put(jSONObject10);
                    JSONObject jSONObject14 = new JSONObject();
                    jSONObject14.put("key", "area");
                    jSONObject14.put("name", "地区");
                    JSONArray jSONArray11 = new JSONArray();
                    JSONObject jSONObject15 = new JSONObject();
                    jSONObject15.put("n", "全部");
                    str = str3;
                    jSONObject15.put("v", str);
                    jSONArray11.put(jSONObject15);
                    int i4 = 0;
                    for (JSONArray jSONArray12 = jSONObject4.optJSONArray("children"); i4 < jSONArray12.length(); ) {
                        JSONObject jSONObject16 = jSONArray12.optJSONObject(i4);
                        JSONObject jSONObject17 = new JSONObject();
                        jSONObject17.put("n", jSONObject16.optString("typeName"));
                        jSONObject17.put("v", jSONObject16.optString("typeId"));
                        jSONArray11.put(jSONObject17);
                        i4++;
                    }
                    jSONObject14.put("value", jSONArray11);
                    jSONArray8.put(jSONObject14);
                    JSONObject jSONObject18 = new JSONObject();
                    Object obj3 = str2;
                    jSONObject18.put("key", obj3);
                    jSONObject18.put("name", "年份");
                    JSONArray jSONArray13 = new JSONArray();
                    JSONObject jSONObject19 = new JSONObject();
                    jSONObject19.put("n", "全部");
                    jSONObject19.put("v", str);
                    jSONArray13.put(jSONObject19);
                    int i5 = 0;
                    while (i5 < jSONArray3.length()) {
                        String trim2 = jSONArray3.optString(i5).trim();
                        if (trim2.isEmpty()) {
                            obj2 = obj3;
                        } else {
                            obj2 = obj3;
                            JSONObject jSONObject20 = new JSONObject();
                            jSONObject20.put("n", trim2);
                            jSONObject20.put("v", trim2);
                            jSONArray13.put(jSONObject20);
                        }
                        i5++;
                        obj3 = obj2;
                    }
                    obj = obj3;
                    jSONArray2 = jSONArray3;
                    jSONObject18.put("value", jSONArray13);
                    jSONArray8.put(jSONObject18);
                    jSONObject = jSONObject3;
                    jSONObject.put(trim, jSONArray8);
                }
                i2 = i + 1;
                jSONObject3 = jSONObject;
                str3 = str;
                jSONArray3 = jSONArray2;
                jSONArray5 = jSONArray;
                str2 = obj.toString();
            }
            JSONObject jSONObject21 = new JSONObject();
            jSONObject21.put("class", jSONArray5);
            if (z) {
                jSONObject21.put("filters", jSONObject3);
            }
            return jSONObject21.toString();
        } catch (Throwable e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String homeVideoContent() {
        try {
            jG();
            String str = this.G8 + "/static/" + this.x5 + "/index/cloumn/1.json";
            JSONArray jSONArray = new JSONObject(OkHttpUtil.string(str, O())).optJSONObject("data").optJSONArray("list");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONArray jSONArray3 = jSONArray.optJSONObject(i).optJSONArray("videoList");
                for (int i2 = 0; i2 < jSONArray3.length(); i2++) {
                    JSONObject jSONObject = jSONArray3.optJSONObject(i2);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("vod_id", jSONObject.optString("id"));
                    jSONObject2.put("vod_name", jSONObject.optString("vodName"));
                    jSONObject2.put("vod_pic", t(jSONObject.optString("vodPicThumb")));
                    jSONObject2.put("vod_remarks", jSONObject.optString("lastName"));
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

    public void init(Context context) {
        Kmys.super.init(context);
        this.k6 = "f41a63788529f0133525d94e9cc0677b";
    }

    String k6(String str) {
        try {
            Cipher instance = Cipher.getInstance("RSA/None/PKCS1Padding");
            instance.init(2, KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA3VLHgbkFN0ebMaR4e0D\nz6Z2mFexPBFKGqK0tuRhzu7XOrG92nKWfnublf2p1i22UN81whBLINjMttOuqW6\nfM9DCnAPTelud1zCXWYWIsv5Z19inJSG8vytJ7xg1dnfuRSRUkx11IE7bm0T/sM\n0sI4GgcktQJNSizyirHtuJjUUxxQabEhFkFeqQ5r+A69KjB5QkotCc4pG5lENyT\nARHGSsfaiJthaiH0yJ/8tUlyMgJ9H6/jbQg0wlLcEUzdfe2KuCPrTRzIzx4Cjm1\nJogT6JV2byvXpzAMC3O48LDiekJdVztg2Cj7E0cGrOsGs+IK6F7TWsKD/cIELTF\nhLz6dExQIDAQAB", 0))));
            byte[] decode = Base64.decode(str, 0);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            if (decode.length <= 256) {
                byteArrayOutputStream.write(instance.doFinal(decode));
            } else {
                for (int i = 0; i < decode.length; i += 256) {
                    byteArrayOutputStream.write(instance.doFinal(decode, i, 256));
                }
            }
            byteArrayOutputStream.flush();
            String str2 = new String(byteArrayOutputStream.toByteArray(), Misc.UTF8);
            byteArrayOutputStream.close();
            return str2;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public String playerContent(String str, String str2, List<String> list) {
        try {
            JSONObject jSONObject = new JSONObject();
            String[] split = str2.split("\\.\\.");
            String str3 = split[0];
            if (Integer.parseInt(split[1]) == 2) {
                jSONObject.put("parse", 0);
                jSONObject.put("playUrl", "");
                jSONObject.put("url", str3);
            } else {
                jSONObject.put("parse", 0);
                jSONObject.put("playUrl", "");
                jSONObject.put("url", str3);
            }
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public String searchContent(String str, boolean z) {
        if (z) {
            return "";
        }
        try {
            jG();
            JSONObject jSONObject = new JSONObject();
            String str2 = this.H + "/api/v2/index/search?pageIndex=1&wd=" + URLEncoder.encode(str) + "&limit=10&type=1";
            String V = OkHttpUtil.string(str2, O());
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = new JSONObject(V).optJSONObject("data").optJSONArray("list");
            for (int i = 0; i < jSONArray2.length(); i++) {
                JSONObject jSONObject2 = jSONArray2.optJSONObject(i);
                JSONObject jSONObject3 = new JSONObject();
                String string = jSONObject2.optString("vodName");
                if (string.contains(str)) {
                    jSONObject3.put("vod_id", jSONObject2.optString("id"));
                    jSONObject3.put("vod_name", string);
                    jSONObject3.put("vod_pic", t(jSONObject2.optString("vodPicThumb")));
                    jSONObject3.put("vod_remarks", jSONObject2.optString("lastName"));
                    jSONArray.put(jSONObject3);
                }
            }
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    protected String t(String str) {
        try {
            if (str.startsWith("//")) {
                Uri parse = Uri.parse(this.G8);
                return parse.getScheme() + ":" + str;
            } else if (str.contains("://")) {
                return str;
            } else {
                Uri parse2 = Uri.parse(this.G8);
                if (!str.startsWith("/")) {
                    str = "/" + str;
                }
                return parse2.getScheme() + "://" + parse2.getHost() + str;
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
            return str;
        }
    }
}