package com.github.catvod.spider;

import android.os.Build;
import com.github.catvod.utils.StringUtil;
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

public class Kunyu77 extends Spider {
    private String X = "Dalvik/2.1.0 (Linux; U; Android " + Build.VERSION.RELEASE + "; " + Build.MODEL + " Build/" + Build.ID + ")";

    private HashMap<String, String> K(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("Referer",str);
        hashMap.put("user-agent", this.X);
        return hashMap;
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        try {
            String str3 = "http://api.kunyu77.com/api.php/provide/searchFilter?type_id=" + str + "&pagenum=" + str2 + "&pagesize=24";
            for (String str4 : hashMap.keySet()) {
                String trim = hashMap.get(str4).trim();
                if (trim.length() != 0) {
                    str3 = str3 + "&" + str4 + "=" + URLEncoder.encode(trim);
                }
            }
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string(str3, K(str3))).optJSONObject("data");
            JSONArray jSONArray = jSONObject.optJSONArray("result");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.optJSONObject(i);
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
            String str = "http://api.kunyu77.com/api.php/provide/videoDetail?ids=" + list.get(0);
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string(str, K(str))).optJSONObject("data");
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
            String str2 = "http://api.kunyu77.com/api.php/provide/videoPlaylist?ids=" + list.get(0);
            JSONArray jSONArray2 = new JSONObject(OkHttpUtil.string(str2, K(str2))).optJSONObject("data").optJSONArray("episodes");
            LinkedHashMap<String,ArrayList> linkedHashMap = new LinkedHashMap();
            for (int i = 0; i < jSONArray2.length(); i++) {
                JSONArray jSONArray3 = jSONArray2.optJSONObject(i).optJSONArray("playurls");
                for (int i2 = 0; i2 < jSONArray3.length(); i2++) {
                    JSONObject jSONObject4 = jSONArray3.optJSONObject(i2);
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
            String join = StringUtil.join("$$$", linkedHashMap.keySet());
            StringBuilder sb = new StringBuilder();
            short size = (short) linkedHashMap.size();
            for (ArrayList arrayList2 : linkedHashMap.values()) {
                size = (short) (size - 1);
                sb.append(StringUtil.join("#", arrayList2));
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
        JSONArray jSONArray = null;
        String str = null;
        String str2;
        String str3;
        JSONObject jSONObject;
        Kunyu77 kunyu77 = this;
        String str4 = "2021";
        String str5 = "2022";
        String str6 = "data";
        try {
            JSONObject jSONObject2 = new JSONObject(OkHttpUtil.string("http://api.kunyu77.com/api.php/provide/filter", kunyu77.K("http://api.kunyu77.com/api.php/provide/filter"))).optJSONObject(str6);
            Iterator<String> keys = jSONObject2.keys();
            JSONArray jSONArray2 = new JSONArray();
            JSONObject jSONObject3 = new JSONObject();
            JSONArray jSONArray3 = null;
            while (keys.hasNext()) {
                String next = keys.next();
                String string = jSONObject2.optJSONArray(next).optJSONObject(0).optString("cat");
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("type_id", next);
                jSONObject4.put("type_name", string);
                jSONArray2.put(jSONObject4);
                if (jSONArray3 == null) {
                    try {
                        JSONObject jSONObject5 = new JSONObject(OkHttpUtil.string("http://api.kunyu77.com/api.php/provide/searchFilter?type_id=0&pagenum=1&pagesize=1", kunyu77.K("http://api.kunyu77.com/api.php/provide/searchFilter?type_id=0&pagenum=1&pagesize=1"))).optJSONObject(str6).optJSONObject("conditions");
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
                            JSONObject jSONObject8 = new JSONObject();
                            jSONObject8.put("n", str5);
                            jSONObject8.put("v", str5);
                            jSONArray5.put(jSONObject8);
                            JSONObject jSONObject9 = new JSONObject();
                            jSONObject9.put("n", str4);
                            jSONObject9.put("v", str4);
                            jSONArray5.put(jSONObject9);
                            JSONArray jSONArray6 = jSONObject5.optJSONArray("y");
                            str3 = str4;
                            str2 = str5;
                            int i = 0;
                            while (true) {
                                try {
                                    str = str6;
                                    if (i >= jSONArray6.length()) {
                                        break;
                                    }
                                    try {
                                        JSONObject jSONObject10 = jSONArray6.optJSONObject(i);
                                        JSONObject jSONObject11 = new JSONObject();
                                        jSONArray = jSONArray2;
                                        try {
                                            jSONObject11.put("n", jSONObject10.optString("name"));
                                            jSONObject11.put("v", jSONObject10.optString("value"));
                                            jSONArray5.put(jSONObject11);
                                            i++;
                                            str6 = str;
                                            jSONArray6 = jSONArray6;
                                            jSONArray2 = jSONArray;
                                        } catch (Exception e) {
                                            e = e;
                                            jSONArray3 = jSONArray4;
                                            jSONObject = jSONObject3;
                                            SpiderDebug.log(e);
                                            jSONObject3 = jSONObject;
                                            keys = keys;
                                            jSONObject2 = jSONObject2;
                                            str4 = str3;
                                            str5 = str2;
                                            str6 = str;
                                            jSONArray2 = jSONArray;
                                            kunyu77 = this;
                                        }
                                    } catch (Exception e2) {
                                        jSONArray = jSONArray2;
                                        jSONArray3 = jSONArray4;
                                        jSONObject = jSONObject3;
                                        SpiderDebug.log(e2);
                                        jSONObject3 = jSONObject;
                                        keys = keys;
                                        jSONObject2 = jSONObject2;
                                        str4 = str3;
                                        str5 = str2;
                                        str6 = str;
                                        jSONArray2 = jSONArray;
                                        kunyu77 = this;
                                    }
                                } catch (Exception e3) {
                                    str = str6;
                                    jSONArray = jSONArray2;
                                    jSONArray3 = jSONArray4;
                                    jSONObject = jSONObject3;
                                    SpiderDebug.log(e3);
                                    jSONObject3 = jSONObject;
                                    keys = keys;
                                    jSONObject2 = jSONObject2;
                                    str4 = str3;
                                    str5 = str2;
                                    str6 = str;
                                    jSONArray2 = jSONArray;
                                    kunyu77 = this;
                                }
                            }
                            jSONArray = jSONArray2;
                            jSONObject6.put("value", jSONArray5);
                            jSONArray4.put(jSONObject6);
                            JSONObject jSONObject12 = new JSONObject();
                            jSONObject12.put("key", "area");
                            jSONObject12.put("name", "地区");
                            JSONArray jSONArray7 = new JSONArray();
                            JSONObject jSONObject13 = new JSONObject();
                            jSONObject13.put("n", "全部");
                            jSONObject13.put("v", "");
                            jSONArray7.put(jSONObject13);
                            int i2 = 0;
                            for (JSONArray jSONArray8 = jSONObject5.optJSONArray("a"); i2 < jSONArray8.length(); jSONArray8 = jSONArray8) {
                                JSONObject jSONObject14 = jSONArray8.optJSONObject(i2);
                                JSONObject jSONObject15 = new JSONObject();
                                jSONObject15.put("n", jSONObject14.optString("name"));
                                jSONObject15.put("v", jSONObject14.optString("value"));
                                jSONArray7.put(jSONObject15);
                                i2++;
                            }
                            jSONObject12.put("value", jSONArray7);
                            jSONArray4.put(jSONObject12);
                            JSONObject jSONObject16 = new JSONObject();
                            jSONObject16.put("key", "category");
                            jSONObject16.put("name", "类型");
                            JSONArray jSONArray9 = new JSONArray();
                            JSONObject jSONObject17 = new JSONObject();
                            jSONObject17.put("n", "全部");
                            jSONObject17.put("v", "");
                            jSONArray9.put(jSONObject17);
                            JSONArray jSONArray10 = jSONObject5.optJSONArray("scat");
                            for (int i3 = 0; i3 < jSONArray10.length(); i3++) {
                                JSONObject jSONObject18 = jSONArray10.optJSONObject(i3);
                                JSONObject jSONObject19 = new JSONObject();
                                jSONObject19.put("n", jSONObject18.optString("name"));
                                jSONObject19.put("v", jSONObject18.optString("value"));
                                jSONArray9.put(jSONObject19);
                            }
                            jSONObject16.put("value", jSONArray9);
                            jSONArray4.put(jSONObject16);
                            jSONArray3 = jSONArray4;
                        } catch (Exception e4) {
                            SpiderDebug.log(e4);
                            str3 = str4;
                            str2 = str5;
                        }
                    } catch (Exception e5) {
                        SpiderDebug.log(e5);
                        str3 = str4;
                        str2 = str5;
                        str = str6;
                        jSONArray = jSONArray2;
                    }
                } else {
                    str3 = str4;
                    str2 = str5;
                    str = str6;
                    jSONArray = jSONArray2;
                }
                try {
                    if (jSONArray3.length() > 0) {
                        jSONObject = jSONObject3;
                        try {
                            jSONObject.put(next, jSONArray3);
                        } catch (Exception e6) {
                            SpiderDebug.log(e6);
                            jSONObject3 = jSONObject;
                            keys = keys;
                            jSONObject2 = jSONObject2;
                            str4 = str3;
                            str5 = str2;
                            str6 = str;
                            jSONArray2 = jSONArray;
                            kunyu77 = this;
                        }
                    } else {
                        jSONObject = jSONObject3;
                    }
                } catch (Exception e7) {
                    jSONObject = jSONObject3;
                    SpiderDebug.log(e7);
                    jSONObject3 = jSONObject;
                    keys = keys;
                    jSONObject2 = jSONObject2;
                    str4 = str3;
                    str5 = str2;
                    str6 = str;
                    jSONArray2 = jSONArray;
                    kunyu77 = this;
                }
                jSONObject3 = jSONObject;
                keys = keys;
                jSONObject2 = jSONObject2;
                str4 = str3;
                str5 = str2;
                str6 = str;
                jSONArray2 = jSONArray;
                kunyu77 = this;
            }
            JSONObject jSONObject20 = new JSONObject();
            jSONObject20.put("class", jSONArray2);
            if (z) {
                jSONObject20.put("filters", jSONObject3);
            }
            return jSONObject20.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public String homeVideoContent() {
        try {
            JSONArray jSONArray = new JSONArray();
            try {
                JSONArray jSONArray2 = new JSONObject(OkHttpUtil.string("http://api.kunyu77.com/api.php/provide/homeBlock?type_id=0", K("http://api.kunyu77.com/api.php/provide/homeBlock?type_id=0"))).optJSONObject("data").optJSONArray("blocks");
                for (int i = 0; i < jSONArray2.length(); i++) {
                    JSONObject jSONObject = jSONArray2.optJSONObject(i);
                    if (jSONObject.optString("block_name").startsWith("热播")) {
                        JSONArray jSONArray3 = jSONObject.optJSONArray("contents");
                        int i2 = 0;
                        while (i2 < jSONArray3.length()) {
                            JSONObject jSONObject2 = jSONArray3.optJSONObject(i2);
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("vod_id", jSONObject2.optInt("id"));
                            jSONObject3.put("vod_name", jSONObject2.optString("title"));
                            jSONObject3.put("vod_pic", jSONObject2.optString("videoCover"));
                            jSONObject3.put("vod_remarks", jSONObject2.optString("msg"));
                            jSONArray.put(jSONObject3);
                            i2++;
                        }
                    }
                }
            } catch (Exception e) {
                SpiderDebug.log(e);
            }
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("list", jSONArray);
            return jSONObject4.toString();
        } catch (Throwable unused2) {
            return "";
        }
    }

    public String playerContent(String str, String str2, List<String> list) {
        try {
            String str3 = "http://api.kunyu77.com/api.php/provide/parserUrl?url=" + str2;
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string(str3, K(str3))).optJSONObject("data");
            JSONObject optJSONObject = jSONObject.optJSONObject("playHeader");
            String string = jSONObject.optString("url");
            JSONObject lN = Misc.jsonParse(string, OkHttpUtil.string(string, K(string)));
            if (lN != null) {
                lN.put("parse", 0);
                lN.put("playUrl", "");
                if (optJSONObject != null) {
                    JSONObject jSONObject2 = lN.optJSONObject("header");
                    Iterator<String> keys = optJSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        jSONObject2.put(next, " " + optJSONObject.optString(next));
                    }
                    lN.put("header", jSONObject2.toString());
                }
                return lN.toString();
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
        if (z) {
            return "";
        }
        try {
            String str2 = "http://api.kunyu77.com/api.php/provide/searchVideo?searchName=" + URLEncoder.encode(str);
            JSONArray jSONArray = new JSONObject(OkHttpUtil.string(str2, K(str2))).optJSONArray("data");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.optJSONObject(i);
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