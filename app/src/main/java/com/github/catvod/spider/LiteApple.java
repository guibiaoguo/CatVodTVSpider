package com.github.catvod.spider;

import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;


public class LiteApple extends Spider {
    private HashMap<String, String> zM(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("User-Agent", "okhttp/4.9.1");
        return hashMap;
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        try {
            String str3 = "http://app.grelighting.cn/api.php/v1.vod/androidfilter?page=" + str2 + "&type=" + str;
            for (String str4 : hashMap.keySet()) {
                String trim = hashMap.get(str4).trim();
                if (trim.length() != 0) {
                    str3 = str3 + "&" + str4 + "=" + URLEncoder.encode(trim);
                }
            }
            JSONArray jSONArray = new JSONObject(l9(OkHttpUtil.string(str3, zM(str3)))).optJSONArray("data");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.optJSONObject(i);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("vod_id", jSONObject.optString("id"));
                jSONObject2.put("vod_name", jSONObject.optString("name"));
                jSONObject2.put("vod_pic", jSONObject.optString("pic"));
                jSONObject2.put("vod_remarks", jSONObject.optString("updateInfo"));
                jSONArray2.put(jSONObject2);
            }
            JSONObject jSONObject3 = new JSONObject();
            int parseInt = Integer.parseInt(str2);
            jSONObject3.put("page", parseInt);
            if (jSONArray2.length() == 20) {
                parseInt++;
            }
            jSONObject3.put("pagecount", parseInt);
            jSONObject3.put("limit", 20);
            jSONObject3.put("total", Integer.MAX_VALUE);
            jSONObject3.put("list", jSONArray2);
            return jSONObject3.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String detailContent(List<String> list) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("http://app.grelighting.cn/api.php/v1.vod/androiddetail?vod_id=");
            sb.append(list.get(0));
            String sb2 = sb.toString();
            JSONObject jSONObject = new JSONObject(l9(OkHttpUtil.string(sb2, zM(sb2)))).optJSONObject("data");
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("vod_id", jSONObject.optString("id"));
            jSONObject3.put("vod_name", jSONObject.optString("name"));
            jSONObject3.put("vod_pic", jSONObject.optString("pic"));
            jSONObject3.put("type_name", jSONObject.optString("className"));
            jSONObject3.put("vod_year", jSONObject.optString("year"));
            jSONObject3.put("vod_area", jSONObject.optString("area"));
            jSONObject3.put("vod_remarks", jSONObject.optString("updateInfo"));
            jSONObject3.put("vod_actor", jSONObject.optString("actor"));
            jSONObject3.put("vod_content", jSONObject.optString("content").trim());
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray2 = jSONObject.optJSONArray("urls");
            for (int i = 0; i < jSONArray2.length(); i++) {
                JSONObject jSONObject4 = jSONArray2.optJSONObject(i);
                arrayList.add(jSONObject4.optString("key") + "$" + jSONObject4.optString("url"));
            }
            jSONObject3.put("vod_play_from", "LiteApple");
            jSONObject3.put("vod_play_url", StringUtil.join("#", arrayList));
            jSONArray.put(jSONObject3);
            jSONObject2.put("list", jSONArray);
            return jSONObject2.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String homeContent(boolean z) {
        String str = "type_id";
        String str2 = "type_name";
        try {
            JSONArray jSONArray = new JSONObject(l9(OkHttpUtil.string("http://app.grelighting.cn/api.php/v1.vod/androidtypes", zM("http://app.grelighting.cn/api.php/v1.vod/androidtypes")))).optJSONArray("data");
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray2 = new JSONArray();
            int i = 0;
            JSONObject jSONObject2 = jSONObject;
            while (i < jSONArray.length()) {
                JSONObject jSONObject3 = jSONArray.optJSONObject(i);
                String string = jSONObject3.optString(str2);
                String string2 = jSONObject3.optString(str);
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put(str, string2);
                jSONObject4.put(str2, string);
                jSONArray2.put(jSONObject4);
                JSONArray jSONArray3 = jSONObject3.optJSONArray("areas");
                JSONArray jSONArray4 = jSONObject3.optJSONArray("years");
                JSONArray jSONArray5 = new JSONArray();
                JSONObject jSONObject5 = new JSONObject();
                jSONObject5.put("key", "class");
                jSONObject5.put("name", "类型");
                JSONArray jSONArray6 = new JSONArray();
                int i2 = 0;
                JSONObject jSONObject6 = jSONObject2;
                for (JSONArray jSONArray7 = jSONObject3.optJSONArray("classes"); i2 < jSONArray7.length(); jSONArray7 = jSONArray7) {
                    String string3 = jSONArray7.optString(i2);
                    JSONObject jSONObject7 = new JSONObject();
                    jSONObject7.put("n", string3);
                    jSONObject7.put("v", string3);
                    jSONArray6.put(jSONObject7);
                    i2++;
                    i = i;
                    jSONObject6 = jSONObject6;
                }
                jSONObject5.put("value", jSONArray6);
                jSONArray5.put(jSONObject5);
                JSONObject jSONObject8 = new JSONObject();
                jSONObject8.put("key", "area");
                jSONObject8.put("name", "地区");
                JSONArray jSONArray8 = new JSONArray();
                JSONObject jSONObject9 = new JSONObject();
                jSONObject9.put("n", "全部");
                jSONObject9.put("v", "");
                jSONArray8.put(jSONObject9);
                for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                    String string4 = jSONArray3.optString(i3);
                    JSONObject jSONObject10 = new JSONObject();
                    jSONObject10.put("n", string4);
                    jSONObject10.put("v", string4);
                    jSONArray8.put(jSONObject10);
                }
                jSONObject8.put("value", jSONArray8);
                jSONArray5.put(jSONObject8);
                JSONObject jSONObject11 = new JSONObject();
                jSONObject11.put("key", "year");
                jSONObject11.put("name", "年份");
                JSONArray jSONArray9 = new JSONArray();
                JSONObject jSONObject12 = new JSONObject();
                jSONObject12.put("n", "全部");
                jSONObject12.put("v", "");
                jSONArray9.put(jSONObject12);
                for (int i4 = 0; i4 < jSONArray4.length(); i4++) {
                    String string5 = jSONArray4.optString(i4);
                    JSONObject jSONObject13 = new JSONObject();
                    jSONObject13.put("n", string5);
                    jSONObject13.put("v", string5);
                    jSONArray9.put(jSONObject13);
                }
                jSONObject11.put("value", jSONArray9);
                jSONArray5.put(jSONObject11);
                jSONObject6.put(string2, jSONArray5);
                JSONObject jSONObject14 = new JSONObject();
                jSONObject14.put("key", "sortby");
                jSONObject14.put("name", "排序");
                JSONArray jSONArray10 = new JSONArray();
                JSONObject jSONObject15 = new JSONObject();
                jSONObject15.put("n", "时间");
                jSONObject15.put("v", "updatetime");
                jSONArray10.put(jSONObject15);
                JSONObject jSONObject16 = new JSONObject();
                jSONObject16.put("n", "人气");
                jSONObject16.put("v", "hits");
                jSONArray10.put(jSONObject16);
                JSONObject jSONObject17 = new JSONObject();
                jSONObject17.put("n", "评分");
                jSONObject17.put("v", "score");
                jSONArray10.put(jSONObject17);
                jSONObject14.put("value", jSONArray10);
                jSONArray5.put(jSONObject14);
                i++;
                jSONObject2 = jSONObject6;
                str = str;
                str2 = str2;
                jSONArray = jSONArray;
                jSONArray2 = jSONArray2;
            }
            JSONObject jSONObject18 = new JSONObject();
            jSONObject18.put("class", jSONArray2);
            if (z) {
                jSONObject18.put("filters", jSONObject2);
            }
            return jSONObject18.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String homeVideoContent() {
        try {
            JSONArray jSONArray = new JSONArray();
            for (int i = 1; i < 5; i++) {
                try {
                    JSONArray jSONArray2 = new JSONObject(l9(OkHttpUtil.string("http://app.grelighting.cn/api.php/v1.main/androidhome", zM("http://app.grelighting.cn/api.php/v1.main/androidhome")))).optJSONObject("data").optJSONArray("list");
                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                        JSONArray jSONArray3 = jSONArray2.optJSONObject(i2).optJSONArray("list");
                        int i3 = 0;
                        while (i3 < jSONArray3.length() && i3 < 4) {
                            JSONObject jSONObject = jSONArray3.optJSONObject(i3);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("vod_id", jSONObject.optString("id"));
                            jSONObject2.put("vod_name", jSONObject.optString("name"));
                            jSONObject2.put("vod_pic", jSONObject.optString("pic"));
                            jSONObject2.put("vod_remarks", jSONObject.optString("updateInfo"));
                            jSONArray.put(jSONObject2);
                            i3++;
                        }
                    }
                } catch (Exception unused) {
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("list", jSONArray);
            return jSONObject3.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    protected String l9(String str) {
        return str;
    }

    public String playerContent(String str, String str2, List<String> list) {
        try {
            if (!Misc.isVideoFormat(str2)) {
                return "";
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("parse", 0);
            jSONObject.put("header", "");
            jSONObject.put("playUrl", "");
            jSONObject.put("url", str2);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String searchContent(String str, boolean z) {
        try {
            String str2 = "http://app.grelighting.cn/api.php/v1.vod/androidsearch?page=1&wd=" + URLEncoder.encode(str);
            JSONArray jSONArray = new JSONObject(l9(OkHttpUtil.string(str2, zM(str2)))).optJSONArray("data");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.optJSONObject(i);
                String string = jSONObject.optString("name");
                if (string.contains(str)) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("vod_id", jSONObject.optString("id"));
                    jSONObject2.put("vod_name", string);
                    jSONObject2.put("vod_pic", jSONObject.optString("pic"));
                    jSONObject2.put("vod_remarks", jSONObject.optString("updateInfo"));
                    jSONArray2.put(jSONObject2);
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("list", jSONArray2);
            return jSONObject3.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }
}