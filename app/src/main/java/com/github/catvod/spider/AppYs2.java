package com.github.catvod.spider;

import android.content.Context;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AppYs2 extends Spider {
    private static final Pattern jE = Pattern.compile("api\\.php/.*?/vod");
    private static final Pattern td = Pattern.compile(".*(url|v|vid|php\\?id)=");
    private static final Pattern D = Pattern.compile("https?://[^/]*");
    private static final Pattern[] d = {Pattern.compile("player=new"), Pattern.compile("<div id=\"video\""), Pattern.compile("<div id=\"[^\"]*?player\""), Pattern.compile("//视频链接"), Pattern.compile("HlsJsPlayer\\("), Pattern.compile("<iframe[\\s\\S]*?src=\"[^\"]+?\""), Pattern.compile("<video[\\s\\S]*?src=\"[^\"]+?\"")};
    private String TL = "";
    protected String NV = null;
    boolean A = false;
    private final HashMap<String, ArrayList<String>> sd = new HashMap<>();

    private void D(JSONObject jSONObject, String str, ArrayList<JSONArray> arrayList) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                Object obj = jSONObject.get(next);
                if (next.equals(str) && (obj instanceof JSONArray)) {
                    arrayList.add((JSONArray) obj);
                }
                if (obj instanceof JSONObject) {
                    D((JSONObject) obj, str, arrayList);
                } else if (obj instanceof JSONArray) {
                    JSONArray jSONArray = (JSONArray) obj;
                    for (int i = 0; i < jSONArray.length(); i++) {
                        D(jSONArray.optJSONObject(i), str, arrayList);
                    }
                }
            } catch (JSONException e) {
                SpiderDebug.log(e);
            }
        }
    }

    private boolean On(String str) {
        return str.equals("伦理") || str.equals("情色") || str.equals("福利");
    }

    private String P(String str, String str2) {
        if (str.contains(".vod")) {
            return str + "?wd=" + str2 + "&page=";
        } else if (str.contains("api.php/app") || str.contains("xgapp")) {
            return str + "search?text=" + str2 + "&pg=";
        } else if (!jE.matcher(str).find()) {
            return "";
        } else {
            if (str.contains("esellauto") || str.contains("1.14.63.101") || str.contains("zjys") || str.contains("dcd") || str.contains("lxue") || str.contains("weetai.cn") || str.contains("haokanju1") || str.contains("fit:8") || str.contains("zjj.life") || str.contains("love9989") || str.contains("8d8q") || str.contains("lk.pxun") || str.contains("hgyx") || str.contains("521x5") || str.contains("lxyyy") || str.contains("0818tv") || str.contains("diyoui") || str.contains("diliktv") || str.contains("ppzhu") || str.contains("aitesucai") || str.contains("zz.ci") || str.contains("chxjon") || str.contains("watchmi") || str.contains("vipbp") || str.contains("bhtv") || str.contains("xfykl")) {
                return str + "?ac=list&wd=" + str2 + "&page=";
            }
            return str + "?ac=list&zm=" + str2 + "&page=";
        }
    }

    private HashMap<String, String> aM(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("User-Agent", jE(str));
        return hashMap;
    }

    private void d(String str, JSONObject jSONObject, String str2, JSONObject jSONObject2, String str3) throws JSONException {
        ArrayList arrayList;
        ArrayList arrayList2;
        Exception e;
        ArrayList arrayList3 = null;
        String str4;
        String str5;
        String str6 = "name";
        String str7 = "parse_api";
        String str8 = "code";
        String str9 = "url";
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        if (str.contains("api.php/app/")) {
            JSONObject jSONObject3 = jSONObject.optJSONObject("data");
            jSONObject2.put("vod_id", jSONObject3.optString("vod_id", str3));
            jSONObject2.put("vod_name", jSONObject3.optString("vod_name"));
            jSONObject2.put("vod_pic", jSONObject3.optString("vod_pic"));
            jSONObject2.put("type_name", jSONObject3.optString("vod_class"));
            jSONObject2.put("vod_year", jSONObject3.optString("vod_year"));
            jSONObject2.put("vod_area", jSONObject3.optString("vod_area"));
            jSONObject2.put("vod_remarks", jSONObject3.optString("vod_remarks"));
            jSONObject2.put("vod_actor", jSONObject3.optString("vod_actor"));
            jSONObject2.put("vod_director", jSONObject3.optString("vod_director"));
            jSONObject2.put("vod_content", jSONObject3.optString("vod_content"));
            JSONArray jSONArray = jSONObject3.optJSONArray("vod_url_with_player");
            int i = 0;
            while (i < jSONArray.length()) {
                JSONObject jSONObject4 = jSONArray.optJSONObject(i);
                String trim = jSONObject4.optString(str8).trim();
                if (trim.isEmpty()) {
                    str5 = str6;
                    trim = jSONObject4.optString(str5).trim();
                } else {
                    str5 = str6;
                }
                arrayList5.add(trim);
                arrayList4.add(jSONObject4.optString(str9));
                String trim2 = jSONObject4.optString(str7).trim();
                ArrayList<String> arrayList6 = this.sd.get(trim);
                if (arrayList6 == null) {
                    arrayList6 = new ArrayList<>();
                    this.sd.put(trim, arrayList6);
                }
                if (!trim2.isEmpty() && !arrayList6.contains(trim2)) {
                    arrayList6.add(trim2);
                }
                i++;
                str8 = str8;
                str6 = str5;
                arrayList5 = arrayList5;
                str9 = str9;
                str7 = str7;
                arrayList4 = arrayList4;
            }
        } else {
            String str10 = str7;
            String str11 = str9;
            if (str.contains("xgapp")) {
                JSONObject jSONObject5 = jSONObject.optJSONObject("data").optJSONObject("vod_info");
                jSONObject2.put("vod_id", jSONObject5.optString("vod_id", str3));
                jSONObject2.put("vod_name", jSONObject5.optString("vod_name"));
                jSONObject2.put("vod_pic", jSONObject5.optString("vod_pic"));
                jSONObject2.put("type_name", jSONObject5.optString("vod_class"));
                jSONObject2.put("vod_year", jSONObject5.optString("vod_year"));
                jSONObject2.put("vod_area", jSONObject5.optString("vod_area"));
                jSONObject2.put("vod_remarks", jSONObject5.optString("vod_remarks"));
                jSONObject2.put("vod_actor", jSONObject5.optString("vod_actor"));
                jSONObject2.put("vod_director", jSONObject5.optString("vod_director"));
                jSONObject2.put("vod_content", jSONObject5.optString("vod_content"));
                JSONArray jSONArray2 = jSONObject5.optJSONArray("vod_url_with_player");
                int i2 = 0;
                while (i2 < jSONArray2.length()) {
                    JSONObject jSONObject6 = jSONArray2.optJSONObject(i2);
                    String trim3 = jSONObject6.optString(str8).trim();
                    if (trim3.isEmpty()) {
                        str4 = str6;
                        trim3 = jSONObject6.optString(str4).trim();
                    } else {
                        str4 = str6;
                    }
                    arrayList5.add(trim3);
                    arrayList4.add(jSONObject6.optString(str11));
                    String trim4 = jSONObject6.optString(str10).trim();
                    ArrayList<String> arrayList7 = this.sd.get(trim3);
                    if (arrayList7 == null) {
                        arrayList7 = new ArrayList<>();
                        this.sd.put(trim3, arrayList7);
                    }
                    if (!trim4.isEmpty() && !arrayList7.contains(trim4)) {
                        arrayList7.add(trim4);
                    }
                    i2++;
                    str8 = str8;
                    str6 = str4;
                    str11 = str11;
                    str10 = str10;
                    arrayList4 = arrayList4;
                    arrayList5 = arrayList5;
                }
            } else {
                ArrayList arrayList8 = arrayList4;
                ArrayList arrayList9 = arrayList5;
                String str12 = str11;
                if (str.contains(".vod")) {
                    JSONObject jSONObject7 = jSONObject.optJSONObject("data");
                    jSONObject2.put("vod_id", jSONObject7.optString("vod_id", str3));
                    jSONObject2.put("vod_name", jSONObject7.optString("vod_name"));
                    jSONObject2.put("vod_pic", jSONObject7.optString("vod_pic"));
                    jSONObject2.put("type_name", jSONObject7.optString("vod_class"));
                    jSONObject2.put("vod_year", jSONObject7.optString("vod_year"));
                    jSONObject2.put("vod_area", jSONObject7.optString("vod_area"));
                    jSONObject2.put("vod_remarks", jSONObject7.optString("vod_remarks"));
                    jSONObject2.put("vod_actor", jSONObject7.optString("vod_actor"));
                    jSONObject2.put("vod_director", jSONObject7.optString("vod_director"));
                    jSONObject2.put("vod_content", jSONObject7.optString("vod_content"));
                    JSONArray jSONArray3 = jSONObject7.optJSONArray("vod_play_list");
                    int i3 = 0;
                    while (i3 < jSONArray3.length()) {
                        JSONObject jSONObject8 = jSONArray3.optJSONObject(i3);
                        String trim5 = jSONObject8.optJSONObject("player_info").optString("from").trim();
                        if (trim5.isEmpty()) {
                            trim5 = jSONObject8.optJSONObject("player_info").optString("show").trim();
                        }
                        arrayList9.add(trim5);
                        arrayList8.add(jSONObject8.optString(str12));
                        try {
                            arrayList3 = new ArrayList();
                            String[] split = jSONObject8.optJSONObject("player_info").optString("parse").split(",");
                            String[] split2 = jSONObject8.optJSONObject("player_info").optString("parse2").split(",");
                            arrayList3.addAll(Arrays.asList(split));
                            arrayList3.addAll(Arrays.asList(split2));
                        } catch (Exception e2) {
                            e = e2;
                        }
                        try {
                            ArrayList<String> arrayList10 = this.sd.get(trim5);
                            if (arrayList10 == null) {
                                arrayList10 = new ArrayList<>();
                                this.sd.put(trim5, arrayList10);
                            }
                            Iterator it = arrayList3.iterator();
                            while (it.hasNext()) {
                                String str13 = (String) it.next();
                                if (str13.contains("http")) {
                                    Matcher matcher = td.matcher(str13);
                                    if (matcher.find()) {
                                        str13 = matcher.group(0);
                                    }
                                } else if (str13.contains("//")) {
                                    Matcher matcher2 = td.matcher(str13);
                                    if (matcher2.find()) {
                                        str13 = "http:" + matcher2.group(0);
                                    }
                                } else {
                                    Matcher matcher3 = D.matcher(str);
                                    if (matcher3.find()) {
                                        Matcher matcher4 = td.matcher(str);
                                        if (matcher4.find()) {
                                            str13 = matcher3.group(0) + matcher4.group(0);
                                        }
                                    }
                                }
                                String trim6 = str13.replace("..", ".").trim();
                                if (!trim6.isEmpty() && !arrayList10.contains(trim6)) {
                                    arrayList10.add(trim6);
                                }
                            }
                        } catch (Exception e3) {
                            e = e3;
                            SpiderDebug.log(e);
                            i3++;
                            arrayList8 = arrayList8;
                            arrayList9 = arrayList9;
                            str12 = str12;
                        }
                        i3++;
                        arrayList8 = arrayList8;
                        arrayList9 = arrayList9;
                        str12 = str12;
                    }
                    arrayList2 = arrayList8;
                    arrayList = arrayList9;
                } else {
                    String str14 = str12;
                    if (jE.matcher(str).find()) {
                        jSONObject2.put("vod_id", jSONObject.optString("vod_id", str3));
                        jSONObject2.put("vod_name", jSONObject.optString("title"));
                        jSONObject2.put("vod_pic", jSONObject.optString("img_url"));
                        jSONObject2.put("type_name", xj(jSONObject.optJSONArray("type")));
                        jSONObject2.put("vod_year", jSONObject.optString("pubtime"));
                        jSONObject2.put("vod_area", xj(jSONObject.optJSONArray("area")));
                        jSONObject2.put("vod_remarks", jSONObject.optString("trunk"));
                        jSONObject2.put("vod_actor", xj(jSONObject.optJSONArray("actor")));
                        jSONObject2.put("vod_director", xj(jSONObject.optJSONArray("director")));
                        jSONObject2.put("vod_content", jSONObject.optString("intro"));
                        JSONObject jSONObject9 = jSONObject.optJSONObject("videolist");
                        Iterator<String> keys = jSONObject9.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            ArrayList<String> arrayList11 = this.sd.get(next);
                            if (arrayList11 == null) {
                                arrayList11 = new ArrayList<>();
                                this.sd.put(next, arrayList11);
                            }
                            JSONArray jSONArray4 = jSONObject9.optJSONArray(next);
                            ArrayList arrayList12 = new ArrayList();
                            int i4 = 0;
                            while (i4 < jSONArray4.length()) {
                                JSONObject jSONObject10 = jSONArray4.optJSONObject(i4);
                                String string = jSONObject10.optString(str14);
                                if (string.contains("url=")) {
                                    int indexOf = string.indexOf("url=") + 4;
                                    String trim7 = string.substring(0, indexOf).trim();
                                    if (!trim7.isEmpty() && !arrayList11.contains(trim7)) {
                                        arrayList11.add(trim7);
                                    }
                                    arrayList12.add(jSONObject10.optString("title") + "$" + string.substring(indexOf).trim());
                                } else {
                                    arrayList12.add(jSONObject10.optString("title") + "$" + string);
                                }
                                i4++;
                                str14 = str14;
                            }
                            arrayList9.add(next);
                            arrayList8.add(StringUtil.join("#", arrayList12));
                        }
                    }
                    arrayList = arrayList9;
                    arrayList2 = arrayList8;
                }
                jSONObject2.put("vod_play_from", StringUtil.join("$$$", arrayList));
                jSONObject2.put("vod_play_url", StringUtil.join("$$$", arrayList2));
            }
        }
        arrayList2 = arrayList4;
        arrayList = arrayList5;
        jSONObject2.put("vod_play_from", StringUtil.join("$$$", arrayList));
        jSONObject2.put("vod_play_url", StringUtil.join("$$$", arrayList2));
    }

    private String jE(String str) {
        if (str.contains("api.php/app") || str.contains("xgapp") || str.contains("freekan")) {
            return "Dart/2.14 (dart:io)";
        }
        if (str.contains("zsb") || str.contains("fkxs") || str.contains("xays") || str.contains("xcys") || str.contains("szys") || str.contains("dxys") || str.contains("ytys") || str.contains("qnys")) {
            return "Dart/2.15 (dart:io)";
        }
        return str.contains(".vod") ? "okhttp/4.1.0" : "Dalvik/2.1.0";
    }

    private JSONObject sd(String str, ArrayList<String> arrayList, String str2) throws JSONException {
        Iterator<String> it = arrayList.iterator();
        String str3 = "";
        while (true) {
            boolean z = true;
            JSONObject jSONObject = null;
            if (it.hasNext()) {
                String next = it.next();
                if (!next.isEmpty() && !next.equals("null")) {
                    String I = OkHttpUtil.string(next + str2, null);
                    try {
                        jSONObject = Misc.jsonParse(str2, I);
                    } catch (Throwable unused) {
                    }
                    if (jSONObject != null && jSONObject.has("url") && jSONObject.has("header")) {
                        jSONObject.put("header", jSONObject.optJSONObject("header").toString());
                        return jSONObject;
                    } else if (I.contains("<html")) {
                        Pattern[] patternArr = d;
                        int length = patternArr.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                z = false;
                                break;
                            } else if (patternArr[i].matcher(I).find()) {
                                break;
                            } else {
                                i++;
                            }
                        }
                        if (z) {
                            str3 = next;
                        }
                    }
                }
            } else if (str3.isEmpty()) {
                return null;
            } else {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("parse", 1);
                jSONObject2.put("playUrl", str3);
                jSONObject2.put("url", str2);
                return jSONObject2;
            }
        }
    }

    private String xj(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.optString(i));
        }
        return StringUtil.join(",", arrayList);
    }

    String A(String str, JSONObject jSONObject) {
        String str2 = "";
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next.equals("class") || next.equals("area") || next.equals("lang") || next.equals("year")) {
                    str2 = str2 + "筛选" + next + "+全部=+" + jSONObject.optString(next).replace(",", "+") + "\n";
                }
            }
        }
        if (!str.contains(".vod")) {
            return (str.contains("api.php/app") || str.contains("xgapp")) ? str2 : "分类+全部=+电影=movie+连续剧=tvplay+综艺=tvshow+动漫=comic+4K=movie_4k+体育=tiyu\n筛选class+全部=+喜剧+爱情+恐怖+动作+科幻+剧情+战争+警匪+犯罪+动画+奇幻+武侠+冒险+枪战+恐怖+悬疑+惊悚+经典+青春+文艺+微电影+古装+历史+运动+农村+惊悚+惊悚+伦理+情色+福利+三级+儿童+网络电影\n筛选area+全部=+大陆+香港+台湾+美国+英国+法国+日本+韩国+德国+泰国+印度+西班牙+加拿大+其他\n筛选year+全部=+2022+2021+2020+2019+2018+2017+2016+2015+2014+2013+2012+2011+2010+2009+2008+2007+2006+2005+2004+2003+2002+2001+2000";
        }
        return str2 + "\n排序+全部=+最新=time+最热=hits+评分=score";
    }

    String I(String str) {
        if (str.contains("api.php/app") || str.contains("xgapp")) {
            return str + "video?tid=";
        } else if (str.contains(".vod")) {
            return str + "?type=";
        } else {
            return str + "?ac=list&class=";
        }
    }

    String NV(String str) {
        if (str.contains("api.php/app") || str.contains("xgapp")) {
            return str + "nav?token=";
        } else if (!str.contains(".vod")) {
            return "";
        } else {
            if (str.contains("iopenyun.com")) {
                return str + "/list?type";
            }
            return str + "/types";
        }
    }

    String Q(String str) {
        if (str.contains("api.php/app") || str.contains("xgapp")) {
            return str + "video_detail?id=";
        } else if (!str.contains(".vod")) {
            return "";
        } else {
            return str + "/detail?vod_id=";
        }
    }

    String R(String str) {
        if (str.contains("api.php/app") || str.contains("xgapp")) {
            return str + "index_video?token=";
        } else if (!str.contains(".vod")) {
            return "";
        } else {
            return str + "/vodPhbAll";
        }
    }

    String TL(String str) {
        if (str.contains("api.php/app") || str.contains("xgapp")) {
            return "&class=筛选class&area=筛选area&lang=筛选lang&year=筛选year&limit=18&pg=#PN#";
        }
        return str.contains(".vod") ? "&class=筛选class&area=筛选area&lang=筛选lang&year=筛选year&by=排序&limit=18&page=#PN#" : "&page=#PN#&area=筛选area&type=筛选class&start=筛选year";
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        String str3;
        Exception e;
        String str4 = null;
        int i;
        try {
            str4 = this.TL;
            str3 = "";
        } catch (Exception e2) {
            e = e2;
            str3 = "";
        }
        try {
            StringBuilder sb = new StringBuilder();
            String str5 = "vod_id";
            sb.append(I(str4));
            sb.append(str);
            sb.append(TL(str4));
            String replace = sb.toString().replace("#PN#", str2).replace("筛选class", (hashMap == null || !hashMap.containsKey("class")) ? str3 : hashMap.get("class")).replace("筛选area", (hashMap == null || !hashMap.containsKey("area")) ? str3 : hashMap.get("area")).replace("筛选lang", (hashMap == null || !hashMap.containsKey("lang")) ? str3 : hashMap.get("lang")).replace("筛选year", (hashMap == null || !hashMap.containsKey("year")) ? str3 : hashMap.get("year")).replace("排序", (hashMap == null || !hashMap.containsKey("排序")) ? str3 : hashMap.get("排序"));
            SpiderDebug.log(replace);
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string(replace, aM(replace)));
            try {
            } catch (Exception e3) {
                SpiderDebug.log(e3);
            }
            if (jSONObject.has("totalpage") && (jSONObject.get("totalpage") instanceof Integer)) {
                i = jSONObject.getInt("totalpage");
            } else if (!jSONObject.has("pagecount") || !(jSONObject.get("pagecount") instanceof Integer)) {
                if (jSONObject.has("data") && (jSONObject.get("data") instanceof JSONObject) && jSONObject.optJSONObject("data").has("total") && (jSONObject.optJSONObject("data").get("total") instanceof Integer) && jSONObject.optJSONObject("data").has("limit") && (jSONObject.optJSONObject("data").get("limit") instanceof Integer)) {
                    int i2 = jSONObject.optJSONObject("data").getInt("limit");
                    int i3 = jSONObject.optJSONObject("data").getInt("total");
                    i = i3 % i2 == 0 ? i3 / i2 : (i3 / i2) + 1;
                }
                i = Integer.MAX_VALUE;
            } else {
                i = jSONObject.getInt("pagecount");
            }
            JSONArray jSONArray = null;
            JSONArray jSONArray2 = new JSONArray();
            if (jSONObject.has("list") && (jSONObject.get("list") instanceof JSONArray)) {
                jSONArray = jSONObject.optJSONArray("list");
            } else if (jSONObject.has("data") && (jSONObject.get("data") instanceof JSONObject) && jSONObject.optJSONObject("data").has("list") && (jSONObject.optJSONObject("data").get("list") instanceof JSONArray)) {
                jSONArray = jSONObject.optJSONObject("data").optJSONArray("list");
            } else if (jSONObject.has("data") && (jSONObject.get("data") instanceof JSONArray)) {
                jSONArray = jSONObject.optJSONArray("data");
            }
            if (jSONArray != null) {
                int i4 = 0;
                while (i4 < jSONArray.length()) {
                    JSONObject jSONObject2 = jSONArray.optJSONObject(i4);
                    if (jSONObject2.has(str5)) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put(str5, jSONObject2.optString(str5));
                        jSONObject3.put("vod_name", jSONObject2.optString("vod_name"));
                        jSONObject3.put("vod_pic", jSONObject2.optString("vod_pic"));
                        jSONObject3.put("vod_remarks", jSONObject2.optString("vod_remarks"));
                        jSONArray2.put(jSONObject3);
                    } else {
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put(str5, jSONObject2.optString("nextlink"));
                        jSONObject4.put("vod_name", jSONObject2.optString("title"));
                        jSONObject4.put("vod_pic", jSONObject2.optString("pic"));
                        jSONObject4.put("vod_remarks", jSONObject2.optString("state"));
                        jSONArray2.put(jSONObject4);
                    }
                    i4++;
                    str5 = str5;
                }
            }
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("page", str2);
            jSONObject5.put("pagecount", i);
            jSONObject5.put("limit", 90);
            jSONObject5.put("total", Integer.MAX_VALUE);
            jSONObject5.put("list", jSONArray2);
            return jSONObject5.toString();
        } catch (Exception e4) {
            e = e4;
            SpiderDebug.log(e);
            return str3;
        }
    }

    public String detailContent(List<String> list) {
        try {
            String str = this.TL;
            String str2 = Q(str) + list.get(0);
            SpiderDebug.log(str2);
            String I = OkHttpUtil.string(str2, aM(str2));
            JSONObject jSONObject = new JSONObject(I);
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            d(str, jSONObject, I, jSONObject3, list.get(0));
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject3);
            jSONObject2.put("list", jSONArray);
            return jSONObject2.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String homeContent(boolean z) {
        String str;
        Exception e;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        int i;
        JSONArray jSONArray;
        JSONObject jSONObject;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        String[] strArr;
        JSONObject jSONObject2;
        Object obj;
        JSONObject jSONObject3;
        String str18 = "筛选";
        String str19 = "";
        try {
            String NV = NV(this.TL);
            String str20 = "=";
            String str21 = "\\+";
            String str22 = "\n";
            JSONArray jSONArray2 = null;
            String str23 = "type_id";
            String str24 = "type_name";
            if (!NV.isEmpty()) {
                JSONObject jSONObject4 = new JSONObject(OkHttpUtil.string(td(NV), aM(NV)));
                if (jSONObject4.has("list") && (jSONObject4.get("list") instanceof JSONArray)) {
                    jSONArray2 = jSONObject4.optJSONArray("list");
                } else if (jSONObject4.has("data") && (jSONObject4.get("data") instanceof JSONObject) && jSONObject4.optJSONObject("data").has("list") && (jSONObject4.optJSONObject("data").get("list") instanceof JSONArray)) {
                    jSONArray2 = jSONObject4.optJSONObject("data").optJSONArray("list");
                } else if (jSONObject4.has("data") && (jSONObject4.get("data") instanceof JSONArray)) {
                    jSONArray2 = jSONObject4.optJSONArray("data");
                }
            } else {
                String[] split = A(NV, null).split(str22)[0].split(str21);
                jSONArray2 = new JSONArray();
                for (int i2 = 1; i2 < split.length; i2++) {
                    String[] split2 = split[i2].trim().split(str20);
                    if (split2.length >= 2) {
                        JSONObject jSONObject5 = new JSONObject();
                        jSONObject5.put(str24, split2[0].trim());
                        jSONObject5.put(str23, split2[1].trim());
                        jSONArray2.put(jSONObject5);
                    }
                }
            }
            JSONObject jSONObject6 = new JSONObject();
            JSONArray jSONArray3 = new JSONArray();
            String str25 = "class";
            if (jSONArray2 != null) {
                int i3 = 0;
                while (i3 < jSONArray2.length()) {
                    JSONObject jSONObject7 = jSONArray2.optJSONObject(i3);
                    String string = jSONObject7.optString(str24);
                    if (On(string)) {
                        str7 = str18;
                        str3 = str19;
                        jSONArray = jSONArray3;
                        str9 = NV;
                        str2 = str25;
                        str4 = str20;
                        str8 = str21;
                        str10 = str22;
                        str6 = str23;
                        str5 = str24;
                        i = i3;
                    } else {
                        i = i3;
                        String string2 = jSONObject7.optString(str23);
                        JSONObject jSONObject8 = new JSONObject();
                        jSONObject8.put(str23, string2);
                        jSONObject8.put(str24, string);
                        JSONObject optJSONObject = jSONObject7.optJSONObject("type_extend");
                        if (z) {
                            String[] split3 = A(NV, optJSONObject).split(str22);
                            JSONArray jSONArray4 = new JSONArray();
                            str9 = NV;
                            int i4 = NV.isEmpty() ? 1 : 0;
                            str10 = str22;
                            while (i4 < split3.length) {
                                String trim = split3[i4].trim();
                                if (trim.isEmpty()) {
                                    str16 = str18;
                                    str12 = str19;
                                    jSONObject2 = jSONObject8;
                                    str11 = str25;
                                    str13 = str20;
                                    str17 = str21;
                                    strArr = split3;
                                    str15 = str23;
                                    str14 = str24;
                                } else {
                                    String[] split4 = trim.split(str21);
                                    str17 = str21;
                                    String trim2 = split4[0].trim();
                                    if (trim2.contains(str18)) {
                                        strArr = split3;
                                        String replace = trim2.replace(str18, str19);
                                        if (replace.equals(str25)) {
                                            trim2 = "类型";
                                            str16 = str18;
                                        } else {
                                            str16 = str18;
                                            if (replace.equals("area")) {
                                                trim2 = "地区";
                                            } else if (replace.equals("lang")) {
                                                trim2 = "语言";
                                            } else if (replace.equals("year")) {
                                                trim2 = "年份";
                                            }
                                        }
                                        obj = trim2;
                                        trim2 = replace;
                                    } else {
                                        str16 = str18;
                                        strArr = split3;
                                        obj = trim2;
                                    }
                                    JSONObject jSONObject9 = new JSONObject();
                                    str15 = str23;
                                    jSONObject9.put("key", trim2);
                                    jSONObject9.put("name", obj);
                                    JSONArray jSONArray5 = new JSONArray();
                                    int i5 = 1;
                                    while (i5 < split4.length) {
                                        JSONObject jSONObject10 = new JSONObject();
                                        String trim3 = split4[i5].trim();
                                        int indexOf = trim3.indexOf(str20);
                                        str = str19;
                                        if (indexOf == -1) {
                                            try {
                                                if (On(trim3)) {
                                                    jSONObject3 = jSONObject8;
                                                    i5++;
                                                    jSONObject8 = jSONObject3;
                                                    str24 = str24;
                                                    split4 = split4;
                                                    str20 = str20;
                                                    str19 = str;
                                                    str25 = str25;
                                                } else {
                                                    jSONObject10.put("n", trim3);
                                                    jSONObject10.put("v", trim3);
                                                    jSONObject3 = jSONObject8;
                                                    jSONArray5.put(jSONObject10);
                                                    i5++;
                                                    jSONObject8 = jSONObject3;
                                                    str24 = str24;
                                                    split4 = split4;
                                                    str20 = str20;
                                                    str19 = str;
                                                    str25 = str25;
                                                }
                                            } catch (Exception e2) {
                                                e = e2;
                                                SpiderDebug.log(e);
                                                return str;
                                            }
                                        } else {
                                            jSONObject3 = jSONObject8;
                                            String substring = trim3.substring(0, indexOf);
                                            if (On(substring)) {
                                                i5++;
                                                jSONObject8 = jSONObject3;
                                                str24 = str24;
                                                split4 = split4;
                                                str20 = str20;
                                                str19 = str;
                                                str25 = str25;
                                            } else {
                                                jSONObject10.put("n", substring.trim());
                                                jSONObject10.put("v", trim3.substring(indexOf + 1).trim());
                                                jSONArray5.put(jSONObject10);
                                                i5++;
                                                jSONObject8 = jSONObject3;
                                                str24 = str24;
                                                split4 = split4;
                                                str20 = str20;
                                                str19 = str;
                                                str25 = str25;
                                            }
                                        }
                                    }
                                    str12 = str19;
                                    jSONObject2 = jSONObject8;
                                    str11 = str25;
                                    str13 = str20;
                                    str14 = str24;
                                    jSONObject9.put("value", jSONArray5);
                                    jSONArray4.put(jSONObject9);
                                }
                                i4++;
                                jSONObject8 = jSONObject2;
                                split3 = strArr;
                                str21 = str17;
                                str18 = str16;
                                str23 = str15;
                                str24 = str14;
                                str20 = str13;
                                str19 = str12;
                                str25 = str11;
                            }
                            str7 = str18;
                            str3 = str19;
                            str2 = str25;
                            str4 = str20;
                            str8 = str21;
                            str6 = str23;
                            str5 = str24;
                            if (!jSONObject6.has("filters")) {
                                jSONObject6.put("filters", new JSONObject());
                            }
                            jSONObject6.optJSONObject("filters").put(string2, jSONArray4);
                            jSONObject = jSONObject8;
                        } else {
                            str7 = str18;
                            str3 = str19;
                            str9 = NV;
                            str2 = str25;
                            str4 = str20;
                            str8 = str21;
                            str10 = str22;
                            str6 = str23;
                            str5 = str24;
                            jSONObject = jSONObject8;
                        }
                        jSONArray = jSONArray3;
                        jSONArray.put(jSONObject);
                    }
                    i3 = i + 1;
                    jSONArray3 = jSONArray;
                    jSONArray2 = jSONArray2;
                    str22 = str10;
                    NV = str9;
                    str21 = str8;
                    str18 = str7;
                    str23 = str6;
                    str24 = str5;
                    str20 = str4;
                    str19 = str3;
                    str25 = str2;
                }
            }
            str = str19;
            jSONObject6.put(str25, jSONArray3);
            return jSONObject6.toString();
        } catch (Exception e3) {
            e = e3;
            str = str19;
        }
        return "";
    }

    public String homeVideoContent() {
        boolean z;
        try {
            String str = this.TL;
            String R = R(str);
            if (R.isEmpty()) {
                R = I(str) + "movie&page=1&area=&type=&start=";
                z = true;
            } else {
                z = false;
            }
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string(R, aM(R)));
            JSONArray jSONArray = new JSONArray();
            if (z) {
                JSONArray jSONArray2 = jSONObject.optJSONArray("data");
                for (int i = 0; i < jSONArray2.length(); i++) {
                    JSONObject jSONObject2 = jSONArray2.optJSONObject(i);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("vod_id", jSONObject2.optString("nextlink"));
                    jSONObject3.put("vod_name", jSONObject2.optString("title"));
                    jSONObject3.put("vod_pic", jSONObject2.optString("pic"));
                    jSONObject3.put("vod_remarks", jSONObject2.optString("state"));
                    jSONArray.put(jSONObject3);
                }
            } else {
                ArrayList<JSONArray> arrayList = new ArrayList<>();
                D(jSONObject, "vlist", arrayList);
                if (arrayList.isEmpty()) {
                    D(jSONObject, "vod_list", arrayList);
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator<JSONArray> it = arrayList.iterator();
                while (it.hasNext()) {
                    JSONArray next = it.next();
                    for (int i2 = 0; i2 < next.length(); i2++) {
                        JSONObject jSONObject4 = next.optJSONObject(i2);
                        String string = jSONObject4.optString("vod_id");
                        if (!arrayList2.contains(string)) {
                            arrayList2.add(string);
                            JSONObject jSONObject5 = new JSONObject();
                            jSONObject5.put("vod_id", string);
                            jSONObject5.put("vod_name", jSONObject4.optString("vod_name"));
                            jSONObject5.put("vod_pic", jSONObject4.optString("vod_pic"));
                            jSONObject5.put("vod_remarks", jSONObject4.optString("vod_remarks"));
                            jSONArray.put(jSONObject5);
                        }
                    }
                }
            }
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("list", jSONArray);
            return jSONObject6.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public void init(Context context) {
        AppYs2.super.init(context);
    }

    public boolean isVideoFormat(String str) {
        return Misc.isVideoFormat(str);
    }

    public boolean manualVideoCheck() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0090 A[Catch: Exception -> 0x00c3, TryCatch #0 {Exception -> 0x00c3, blocks: (B:3:0x0002, B:5:0x000c, B:6:0x0011, B:8:0x0017, B:10:0x001d, B:12:0x0022, B:15:0x002f, B:17:0x0042, B:19:0x0047, B:21:0x0069, B:23:0x006f, B:26:0x007d, B:28:0x0082, B:30:0x008a, B:32:0x0090, B:34:0x00a3, B:36:0x00ac), top: B:41:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a3 A[Catch: Exception -> 0x00c3, TryCatch #0 {Exception -> 0x00c3, blocks: (B:3:0x0002, B:5:0x000c, B:6:0x0011, B:8:0x0017, B:10:0x001d, B:12:0x0022, B:15:0x002f, B:17:0x0042, B:19:0x0047, B:21:0x0069, B:23:0x006f, B:26:0x007d, B:28:0x0082, B:30:0x008a, B:32:0x0090, B:34:0x00a3, B:36:0x00ac), top: B:41:0x0002 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.String playerContent(java.lang.String r11, java.lang.String r12, java.util.List<java.lang.String> r13) {
        /*
            r10 = this;
            java.lang.String r13 = ""
            java.util.HashMap<java.lang.String, java.util.ArrayList<java.lang.String>> r0 = r10.sd     // Catch: Exception -> 0x00c3
            java.lang.Object r0 = r0.get(r11)     // Catch: Exception -> 0x00c3
            java.util.ArrayList r0 = (java.util.ArrayList) r0     // Catch: Exception -> 0x00c3
            if (r0 != 0) goto L_0x0011
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: Exception -> 0x00c3
            r0.<init>()     // Catch: Exception -> 0x00c3
        L_0x0011:
            boolean r1 = r0.isEmpty()     // Catch: Exception -> 0x00c3
            if (r1 != 0) goto L_0x0022
            org.json.JSONObject r0 = r10.sd(r11, r0, r12)     // Catch: Exception -> 0x00c3
            if (r0 == 0) goto L_0x0022
            java.lang.String r11 = r0.toString()     // Catch: Exception -> 0x00c3
            return r11
        L_0x0022:
            boolean r0 = com.github.catvod.spider.merge.Gov2.d(r12)     // Catch: Exception -> 0x00c3
            java.lang.String r1 = "playUrl"
            java.lang.String r2 = "url"
            r3 = 0
            java.lang.String r4 = "parse"
            if (r0 == 0) goto L_0x0042
            org.json.JSONObject r11 = new org.json.JSONObject     // Catch: Exception -> 0x00c3
            r11.<init>()     // Catch: Exception -> 0x00c3
            r11.put(r4, r3)     // Catch: Exception -> 0x00c3
            r11.put(r1, r13)     // Catch: Exception -> 0x00c3
            r11.put(r2, r12)     // Catch: Exception -> 0x00c3
            java.lang.String r11 = r11.toString()     // Catch: Exception -> 0x00c3
            return r11
        L_0x0042:
            boolean r0 = r10.A     // Catch: Exception -> 0x00c3
            r5 = 1
            if (r0 == 0) goto L_0x00ac
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: Exception -> 0x00c3
            r0.<init>()     // Catch: Exception -> 0x00c3
            org.json.JSONObject r6 = r10.I     // Catch: Exception -> 0x00c3
            java.lang.String r6 = r6.optString(r11)     // Catch: Exception -> 0x00c3
            r0.append(r6)     // Catch: Exception -> 0x00c3
            r0.append(r12)     // Catch: Exception -> 0x00c3
            java.lang.String r0 = r0.toString()     // Catch: Exception -> 0x00c3
            r6 = 0
            java.lang.String r0 = com.github.catvod.spider.merge.OkHttpUtil.string(r0, r6)     // Catch: Exception -> 0x00c3
            java.lang.String r6 = "<html"
            boolean r6 = r0.contains(r6)     // Catch: Exception -> 0x00c3
            if (r6 == 0) goto L_0x0089
            java.util.regex.Pattern[] r6 = com.github.catvod.spider.AppYs2.d     // Catch: Exception -> 0x00c3
            int r7 = r6.length     // Catch: Exception -> 0x00c3
            r8 = 0
        L_0x006d:
            if (r8 >= r7) goto L_0x0080
            r9 = r6[r8]     // Catch: Exception -> 0x00c3
            java.util.regex.Matcher r9 = r9.matcher(r0)     // Catch: Exception -> 0x00c3
            boolean r9 = r9.find()     // Catch: Exception -> 0x00c3
            if (r9 == 0) goto L_0x007d
            r3 = 1
            goto L_0x0080
        L_0x007d:
            int r8 = r8 + 1
            goto L_0x006d
        L_0x0080:
            if (r3 == 0) goto L_0x0089
            org.json.JSONObject r3 = r10.I     // Catch: Exception -> 0x00c3
            java.lang.String r11 = r3.optString(r11)     // Catch: Exception -> 0x00c3
            goto L_0x008a
        L_0x0089:
            r11 = r13
        L_0x008a:
            boolean r3 = r11.isEmpty()     // Catch: Exception -> 0x00c3
            if (r3 != 0) goto L_0x00a3
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: Exception -> 0x00c3
            r0.<init>()     // Catch: Exception -> 0x00c3
            r0.put(r4, r5)     // Catch: Exception -> 0x00c3
            r0.put(r1, r11)     // Catch: Exception -> 0x00c3
            r0.put(r2, r12)     // Catch: Exception -> 0x00c3
            java.lang.String r11 = r0.toString()     // Catch: Exception -> 0x00c3
            return r11
        L_0x00a3:
            org.json.JSONObject r11 = com.github.catvod.spider.merge.Gov2.TL(r12, r0)     // Catch: Exception -> 0x00c3
            java.lang.String r11 = r11.toString()     // Catch: Exception -> 0x00c3
            return r11
        L_0x00ac:
            org.json.JSONObject r11 = new org.json.JSONObject     // Catch: Exception -> 0x00c3
            r11.<init>()     // Catch: Exception -> 0x00c3
            r11.put(r4, r5)     // Catch: Exception -> 0x00c3
            java.lang.String r0 = "jx"
            java.lang.String r1 = "1"
            r11.put(r0, r1)     // Catch: Exception -> 0x00c3
            r11.put(r2, r12)     // Catch: Exception -> 0x00c3
            java.lang.String r11 = r11.toString()     // Catch: Exception -> 0x00c3
            return r11
        L_0x00c3:
            r11 = move-exception
            com.github.catvod.crawler.SpiderDebug.log(r11)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.catvod.spider.AppYs2.playerContent(java.lang.String, java.lang.String, java.util.List):java.lang.String");
    }

    public String searchContent(String str, boolean z) {
        try {
            String P = P(this.TL, URLEncoder.encode(str));
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string(P, aM(P)));
            JSONArray jSONArray = null;
            JSONArray jSONArray2 = new JSONArray();
            if (jSONObject.has("list") && (jSONObject.get("list") instanceof JSONArray)) {
                jSONArray = jSONObject.optJSONArray("list");
            } else if (jSONObject.has("data") && (jSONObject.get("data") instanceof JSONObject) && jSONObject.optJSONObject("data").has("list") && (jSONObject.optJSONObject("data").get("list") instanceof JSONArray)) {
                jSONArray = jSONObject.optJSONObject("data").optJSONArray("list");
            } else if (jSONObject.has("data") && (jSONObject.get("data") instanceof JSONArray)) {
                jSONArray = jSONObject.optJSONArray("data");
            }
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.optJSONObject(i);
                    if (jSONObject2.has("vod_id")) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("vod_id", jSONObject2.optString("vod_id"));
                        jSONObject3.put("vod_name", jSONObject2.optString("vod_name"));
                        jSONObject3.put("vod_pic", jSONObject2.optString("vod_pic"));
                        jSONObject3.put("vod_remarks", jSONObject2.optString("vod_remarks"));
                        jSONArray2.put(jSONObject3);
                    } else {
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put("vod_id", jSONObject2.optString("nextlink"));
                        jSONObject4.put("vod_name", jSONObject2.optString("title"));
                        jSONObject4.put("vod_pic", jSONObject2.optString("pic"));
                        jSONObject4.put("vod_remarks", jSONObject2.optString("state"));
                        jSONArray2.put(jSONObject4);
                    }
                }
            }
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("list", jSONArray2);
            return jSONObject5.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    protected String td(String str) {
        return str;
    }

    public void init(Context context, String str) {
        AppYs2.super.init(context, str);
        this.NV = str;
        if (str == null) {
            return;
        }
        if (str.contains(".json")) {
            try {
                JSONObject jSONObject = new JSONObject(OkHttpUtil.string(this.NV, null));
                this.TL = jSONObject.optString("extUrl");
                JSONObject i = jSONObject.optJSONObject("parser");
                this.A = true;
            } catch (Exception e) {
                SpiderDebug.log(e);
            }
        } else {
            this.TL = str;
        }
    }
}