package com.github.catvod.spider;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import okhttp3.Call;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Mjxq extends Spider {
    private final String f = "https://kjxq.api.wlnps.com";
    private String x = "";
    private String Kr = "";

    private String AS(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() < 2) {
                    sb.append(0);
                }
                sb.append(hexString);
            }
            return sb.toString().toLowerCase();
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            return "";
        }
    }

    private String f(HashMap<String, Object> hashMap) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (hashMap != null) {
                for (String str : hashMap.keySet()) {
                    jSONObject.put(str, hashMap.get(str));
                }
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    private HashMap<String, String> x(String str, boolean z) {
        HashMap<String, String> hashMap = new HashMap<>();
        if (!z || StringUtil.isEmpty(this.x)) {
            hashMap.put("Authorization", "");
        } else {
            hashMap.put("Authorization", this.x);
        }
        hashMap.put("X-API-Language", "Ch");
        hashMap.put("X-API-Version", "1");
        hashMap.put("X-Client-Type", "APP");
        hashMap.put("X-Client-OS", "Android");
        hashMap.put("X-Client-App-Id", "com.mjxq.app");
        hashMap.put("X-Client-Model", Build.BRAND + Build.MODEL + "");
        hashMap.put("X-Client-Version", "1.5.2");
        hashMap.put("X-Device-Flag", this.Kr);
        String str2 = System.currentTimeMillis() + "";
        hashMap.put("X-Client-Time", str2);
        hashMap.put("X-API-Matching", AS("Android-com.mjxq.app-1.5.2-" + str2 + "ZHst5Rgvr5zvIfeoFoRtMom+pE0=OxTfowZXgb").toLowerCase());
        hashMap.put("User-Agent", "okhttp/4.9.0");
        return hashMap;
    }

    protected void Kr() {
        if (this.x.isEmpty()) {
            this.x = "82b7b174e37c943008135a3894b24394";
        }
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        Kr();
        final JSONObject jSONObject = new JSONObject();
        HashMap<String, Object> hashMap2 = new HashMap<>();
        hashMap2.put("platform_type", Integer.valueOf(Integer.parseInt(str)));
        hashMap2.put("page", Integer.valueOf(Integer.parseInt(str2)));
        if (!hashMap.containsKey("sort_type")) {
            hashMap2.put("sort_type", 1);
        } else {
            hashMap2.put("sort_type", Integer.valueOf(Integer.parseInt(hashMap.get("sort_type"))));
        }
        if (!hashMap.containsKey("movies_type")) {
            hashMap2.put("movies_type", 0);
        } else {
            hashMap2.put("movies_type", Integer.valueOf(Integer.parseInt(hashMap.get("movies_type"))));
        }
        if (!hashMap.containsKey("year")) {
            hashMap2.put("year", 0);
        } else {
            hashMap2.put("year", Integer.valueOf(Integer.parseInt(hashMap.get("year"))));
        }
        if (!hashMap.containsKey("complete_type")) {
            hashMap2.put("complete_type", 0);
        } else {
            hashMap2.put("complete_type", Integer.valueOf(Integer.parseInt(hashMap.get("complete_type"))));
        }
        OkHttpUtil.postJson(OkHttpUtil.defaultClient(), "https://kjxq.api.wlnps.com/filter/movies", f(hashMap2), x("https://kjxq.api.wlnps.com/filter/movies", false), new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.Mjxq.1
            @Override // com.github.catvod.spider.merge.a6
            public void onFailure(Call call, Exception exc) {
            }

            public void onResponse(String str3) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    JSONObject jSONObject2 = new JSONObject(str3).optJSONObject("data");
                    JSONArray jSONArray2 = jSONObject2.optJSONArray("data");
                    for (int i = 0; i < jSONArray2.length(); i++) {
                        JSONObject jSONObject3 = jSONArray2.optJSONObject(i);
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put("vod_id", jSONObject3.optString("id"));
                        jSONObject4.put("vod_name", jSONObject3.optString("name"));
                        jSONObject4.put("vod_pic", jSONObject3.optString("cover_image"));
                        String trim = jSONObject3.optString("desc").trim();
                        jSONObject4.put("vod_remarks", (trim.isEmpty() ? jSONObject3.optString("rate").trim() : trim + " " + jSONObject3.optString("rate").trim()).trim());
                        jSONArray.put(jSONObject4);
                    }
                    int i2 = jSONObject2.getInt("total_count");
                    int i3 = jSONObject2.getInt("total_page");
                    int i4 = jSONObject2.getInt("size");
                    jSONObject.put("page", jSONObject2.getInt("page"));
                    jSONObject.put("pagecount", i3);
                    jSONObject.put("limit", i4);
                    jSONObject.put("total", i2);
                    jSONObject.put("list", jSONArray);
                } catch (JSONException unused) {
                }
            }
        });
        return jSONObject.toString();
    }

    public String detailContent(final List<String> list) {
        Kr();
        final JSONObject jSONObject = new JSONObject();
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("movie_id", Integer.valueOf(Integer.parseInt(list.get(0))));
        OkHttpUtil.postJson(OkHttpUtil.defaultClient(), "https://kjxq.api.wlnps.com/movie/info", f(hashMap), x("https://kjxq.api.wlnps.com/movie/info", false), new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.Mjxq.2
            @Override // com.github.catvod.spider.merge.a6
            public void onFailure(Call call, Exception exc) {
            }

            public void onResponse(String str) {
                try {
                    JSONObject jSONObject2 = new JSONObject(str).optJSONObject("data");
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("vod_id", list.get(0));
                    jSONObject3.put("vod_name", jSONObject2.optString("name"));
                    jSONObject3.put("vod_pic", jSONObject2.optString("cover_image"));
                    jSONObject3.put("type_name", Mjxq.this.jf(jSONObject2.optJSONArray("movie_types")));
                    jSONObject3.put("vod_year", jSONObject2.optString("release_year"));
                    jSONObject3.put("vod_area", jSONObject2.optString("area"));
                    jSONObject3.put("vod_remarks", "");
                    jSONObject3.put("vod_actor", "");
                    jSONObject3.put("vod_director", "");
                    jSONObject3.put("vod_content", jSONObject2.optString("intro"));
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList.add("mjxq");
                    ArrayList arrayList3 = new ArrayList();
                    JSONArray jSONArray = jSONObject2.optJSONArray("episode");
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject4 = jSONArray.optJSONObject(i);
                        String string = jSONObject4.optString("movie_id");
                        String string2 = jSONObject4.optString("episode");
                        arrayList3.add(string2 + "$" + string2 + ".." + string);
                    }
                    arrayList2.add(StringUtil.join("#", arrayList3));
                    String join = StringUtil.join("$$$", arrayList);
                    String join2 = StringUtil.join("$$$", arrayList2);
                    jSONObject3.put("vod_play_from", join);
                    jSONObject3.put("vod_play_url", join2);
                    JSONArray jSONArray2 = new JSONArray();
                    jSONArray2.put(jSONObject3);
                    jSONObject.put("list", jSONArray2);
                } catch (JSONException unused) {
                }
            }
        });
        return jSONObject.toString();
    }

    public String homeContent(boolean z) {
        JSONObject jSONObject;
        JSONArray jSONArray;
        JSONObject jSONObject2;
        String str = "value";
        String str2 = "key";
        Kr();
        try {
            JSONArray jSONArray2 = new JSONArray();
            JSONObject jSONObject3 = new JSONObject();
            JSONArray jSONArray3 = new JSONArray();
            int i = 0;
            JSONObject jSONObject4 = new JSONObject(OkHttpUtil.string("https://kjxq.api.wlnps.com/types/screen", x("https://kjxq.api.wlnps.com/types/screen", false))).optJSONObject("data");
            JSONArray jSONArray4 = jSONObject4.optJSONArray("sort_types");
            JSONArray jSONArray5 = jSONObject4.optJSONArray("movie_types");
            JSONArray jSONArray6 = jSONObject4.optJSONArray("time_types");
            JSONArray jSONArray7 = jSONObject4.optJSONArray("movie_status");
            JSONArray jSONArray8 = new JSONArray();
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put(str2, "sort_type");
            jSONObject5.put("name", "排序");
            JSONArray jSONArray9 = new JSONArray();
            while (true) {
                jSONObject = jSONObject3;
                if (i >= jSONArray4.length()) {
                    break;
                }
                JSONObject jSONObject6 = jSONArray4.optJSONObject(i);
                JSONObject jSONObject7 = new JSONObject();
                jSONObject7.put("n", jSONObject6.optString("name"));
                jSONObject7.put("v", jSONObject6.optString("id"));
                jSONArray9.put(jSONObject7);
                i++;
                jSONObject3 = jSONObject;
                jSONArray2 = jSONArray2;
                jSONArray3 = jSONArray3;
                jSONArray5 = jSONArray5;
                jSONObject4 = jSONObject4;
                str = str;
                jSONArray4 = jSONArray4;
                str2 = str2;
            }
            jSONObject5.put(str, jSONArray9);
            jSONArray8.put(jSONObject5);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put(str2, "movies_type");
            jSONObject8.put("name", "类型");
            JSONArray jSONArray10 = new JSONArray();
            int i2 = 0;
            while (i2 < jSONArray5.length()) {
                JSONObject jSONObject9 = jSONArray5.optJSONObject(i2);
                JSONObject jSONObject10 = new JSONObject();
                jSONObject10.put("n", jSONObject9.optString("name"));
                jSONObject10.put("v", jSONObject9.optString("id"));
                jSONArray10.put(jSONObject10);
                i2++;
                jSONArray5 = jSONArray5;
                jSONArray2 = jSONArray2;
            }
            JSONArray jSONArray11 = jSONArray2;
            jSONObject8.put(str, jSONArray10);
            jSONArray8.put(jSONObject8);
            JSONObject jSONObject11 = new JSONObject();
            jSONObject11.put(str2, "year");
            jSONObject11.put("name", "年份");
            JSONArray jSONArray12 = new JSONArray();
            for (int i3 = 0; i3 < jSONArray6.length(); i3++) {
                JSONObject jSONObject12 = jSONArray6.optJSONObject(i3);
                JSONObject jSONObject13 = new JSONObject();
                jSONObject13.put("n", jSONObject12.optString("name"));
                jSONObject13.put("v", jSONObject12.optString("id"));
                jSONArray12.put(jSONObject13);
            }
            jSONObject11.put(str, jSONArray12);
            jSONArray8.put(jSONObject11);
            JSONObject jSONObject14 = new JSONObject();
            jSONObject14.put(str2, "complete_type");
            jSONObject14.put("name", "状态");
            JSONArray jSONArray13 = new JSONArray();
            for (int i4 = 0; i4 < jSONArray7.length(); i4++) {
                JSONObject jSONObject15 = jSONArray7.optJSONObject(i4);
                JSONObject jSONObject16 = new JSONObject();
                jSONObject16.put("n", jSONObject15.optString("name"));
                jSONObject16.put("v", jSONObject15.optString("id"));
                jSONArray13.put(jSONObject16);
            }
            jSONObject14.put(str, jSONArray13);
            jSONArray8.put(jSONObject14);
            JSONArray jSONArray14 = jSONObject4.optJSONArray("platform_types");
            int i5 = 0;
            while (i5 < jSONArray14.length()) {
                JSONObject jSONObject17 = jSONArray14.optJSONObject(i5);
                String trim = jSONObject17.optString("id").trim();
                if (trim.isEmpty()) {
                    jSONObject2 = jSONObject;
                    jSONArray = jSONArray11;
                } else {
                    JSONObject jSONObject18 = new JSONObject();
                    jSONObject18.put("type_id", trim);
                    jSONObject18.put("type_name", jSONObject17.optString("name"));
                    jSONArray = jSONArray11;
                    jSONArray.put(jSONObject18);
                    jSONObject2 = jSONObject;
                    jSONObject2.put(trim, jSONArray8);
                }
                i5++;
                jSONObject = jSONObject2;
                jSONArray11 = jSONArray;
            }
            JSONObject jSONObject19 = new JSONObject();
            jSONObject19.put("class", jSONArray11);
            if (z) {
                jSONObject19.put("filters", jSONObject);
            }
            jSONObject19.put("list", jSONArray3);
            return jSONObject19.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String homeVideoContent() {
        Kr();
        try {
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = new JSONObject(OkHttpUtil.string("https://kjxq.api.wlnps.com/home/recommend/v2", x("https://kjxq.api.wlnps.com/home/recommend/v2", false))).optJSONObject("data").optJSONArray("movie_blocks");
            for (int i = 0; i < jSONArray2.length(); i++) {
                JSONArray jSONArray3 = jSONArray2.optJSONObject(i).optJSONArray("movies");
                int i2 = 0;
                while (i2 < jSONArray3.length() && i2 < 6) {
                    JSONObject jSONObject = jSONArray3.optJSONObject(i2);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("vod_id", jSONObject.optString("id"));
                    jSONObject2.put("vod_name", jSONObject.optString("name"));
                    jSONObject2.put("vod_pic", jSONObject.optString("cover_image"));
                    String trim = jSONObject.optString("desc").trim();
                    jSONObject2.put("vod_remarks", (trim.isEmpty() ? jSONObject.optString("rate").trim() : trim + " " + jSONObject.optString("rate").trim()).trim());
                    jSONArray.put(jSONObject2);
                    i2++;
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("list", jSONArray);
            return jSONObject3.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void init(Context context) {
        Mjxq.super.init(context);
        SharedPreferences sharedPreferences = context.getSharedPreferences("spider_MjxqApp", 0);
        String string = sharedPreferences.getString("uuid", null);
        this.Kr = string;
        if (string == null) {
            this.Kr = UUID.randomUUID().toString();
            sharedPreferences.edit().putString("uuid", this.Kr).commit();
        }
    }

    public String jf(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.optString(i));
        }
        return StringUtil.join(",", arrayList);
    }

    public String playerContent(String str, String str2, List<String> list) {
        Kr();
        final JSONObject jSONObject = new JSONObject();
        HashMap<String, Object> hashMap = new HashMap<>();
        String[] split = str2.split("\\.\\.");
        hashMap.put("episode", Integer.valueOf(Integer.parseInt(split[0])));
        hashMap.put("id", Integer.valueOf(Integer.parseInt(split[1])));
        OkHttpUtil.postJson(OkHttpUtil.defaultClient(), "https://kjxq.api.wlnps.com/movie/path", f(hashMap), x("https://kjxq.api.wlnps.com/movie/path", true), new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.Mjxq.3
            @Override // com.github.catvod.spider.merge.a6
            public void onFailure(Call call, Exception exc) {
            }

            public void onResponse(String str3) {
                try {
                    JSONObject jSONObject2 = new JSONObject(str3).optJSONObject("data");
                    jSONObject.put("parse", 0);
                    jSONObject.put("playUrl", "");
                    jSONObject.put("url", jSONObject2.optString("play_path"));
                } catch (JSONException unused) {
                }
            }
        });
        return jSONObject.toString();
    }

    public String searchContent(String str, boolean z) {
        Kr();
        if (z) {
            return "";
        }
        final JSONObject jSONObject = new JSONObject();
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("name", str);
        hashMap.put("size", 0);
        hashMap.put("page", 1);
        OkHttpUtil.postJson(OkHttpUtil.defaultClient(), "https://kjxq.api.wlnps.com/filter/name", f(hashMap), x("https://kjxq.api.wlnps.com/filter/name", false), new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.Mjxq.4
            @Override // com.github.catvod.spider.merge.a6
            public void onFailure(Call call, Exception exc) {
            }

            public void onResponse(String str2) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    JSONArray jSONArray2 = new JSONObject(str2).optJSONArray("data");
                    for (int i = 0; i < jSONArray2.length(); i++) {
                        JSONObject jSONObject2 = jSONArray2.optJSONObject(i);
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("vod_id", jSONObject2.optString("id"));
                        jSONObject3.put("vod_name", jSONObject2.optString("name"));
                        jSONObject3.put("vod_pic", jSONObject2.optString("cover_image"));
                        String trim = jSONObject2.optString("episode_desc").trim();
                        jSONObject3.put("vod_remarks", (trim.isEmpty() ? jSONObject2.optString("rate").trim() : trim + " " + jSONObject2.optString("rate").trim()).trim());
                        jSONArray.put(jSONObject3);
                    }
                    jSONObject.put("list", jSONArray);
                } catch (JSONException unused) {
                }
            }
        });
        return jSONObject.toString();
    }
}