//package com.github.catvod.spider;
//
//import com.github.catvod.utils.StringUtil;
//import com.github.catvod.crawler.Spider;
//import com.github.catvod.crawler.SpiderDebug;
//import com.github.catvod.utils.CipherUtil;
//import com.github.catvod.utils.okhttp.OKCallBack;
//import com.github.catvod.utils.okhttp.OkHttpUtil;
//
//import java.nio.charset.Charset;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//import java.util.TreeMap;
//import okhttp3.Call;
//import org.json.JSONArray;
//import org.json.JSONObject;
//
///* loaded from: classes.dex */
//public class Nbys extends Spider {
//    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
//        try {
//            int i = 1;
//            if (!StringUtil.isEmpty(str2) && Integer.parseInt(str2.trim()) > 1) {
//                i = Integer.parseInt(str2.trim());
//            }
//            HashMap hashMap2 = new HashMap();
//            hashMap2.put("id", str);
//            hashMap2.put("pg", "" + i);
//            if (hashMap != null && hashMap.size() > 0) {
//                hashMap2.putAll(hashMap);
//            }
//            if (hashMap2.get("by") == null || "".equals(hashMap2.get("by"))) {
//                hashMap2.put("by", "1");
//            }
//            if (hashMap2.get("area") == null || "".equals(hashMap2.get("area"))) {
//                hashMap2.put("area", "0");
//            }
//            if (hashMap2.get("lang") == null || "".equals(hashMap2.get("lang"))) {
//                hashMap2.put("lang", "0");
//            }
//            if (hashMap2.get("year") == null || "".equals(hashMap2.get("year"))) {
//                hashMap2.put("year", "");
//            }
//            if (hashMap2.get("class") == null || "".equals(hashMap2.get("class"))) {
//                hashMap2.put("class", "0");
//            }
//            TreeMap treeMap = new TreeMap();
//            treeMap.put("sort_by", (String) hashMap2.get("by"));
//            treeMap.put("channel_id", str);
//            treeMap.put("show_type_id", (String) hashMap2.get("class"));
//            treeMap.put("region_id", (String) hashMap2.get("area"));
//            treeMap.put("lang_id", (String) hashMap2.get("lang"));
//            treeMap.put("year_range", (String) hashMap2.get("year"));
//            treeMap.put("start", ((i - 1) * 10) + "");
//            final JSONObject jSONObject = new JSONObject();
//            OkHttpUtil.post(OkHttpUtil.defaultClient(), genUrl("https://api.mudvod.tv/show/filter/WEB/3.0", treeMap), treeMap, g("https://m.nbys.tv/"), new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.Nbys.3
//                @Override // com.github.catvod.spider.merge.a6
//                protected void onFailure(Call call, Exception exc) {
//                }
//
//                /* JADX INFO: Access modifiers changed from: protected */
//                public void onResponse(String str3) {
//                    try {
//                        JSONObject jSONObject2 = new JSONObject(CipherUtil.J(str3, "diao.com"));
//                        SpiderDebug.log("" + jSONObject2);
//                        JSONArray jSONArray = new JSONArray();
//                        JSONArray jSONArray2 = jSONObject2.optJSONArray("list");
//                        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
//                            JSONObject jSONObject3 = jSONArray2.optJSONObject(i2);
//                            JSONObject jSONObject4 = new JSONObject();
//                            jSONObject4.put("vod_id", jSONObject3.optString("showIdCode"));
//                            jSONObject4.put("vod_name", jSONObject3.optString("showTitle"));
//                            jSONObject4.put("vod_pic", jSONObject3.optString("showImg"));
//                            jSONObject4.put("vod_remarks", jSONObject3.optString("episodesTxt"));
//                            jSONArray.put(jSONObject4);
//                        }
//                        jSONObject.put("list", jSONArray);
//                    } catch (Exception e) {
//                        SpiderDebug.log(e);
//                    }
//                }
//            });
//            jSONObject.put("page", i);
//            jSONObject.put("pagecount", 9999);
//            jSONObject.put("limit", 36);
//            jSONObject.put("total", 359964);
//            return jSONObject.toString();
//        } catch (Exception e) {
//            SpiderDebug.log(e);
//            return "";
//        }
//    }
//
//    public String detailContent(List<String> list) {
//        JSONObject jSONObject = new JSONObject();
//        try {
//            JSONArray jSONArray = new JSONArray();
//            jSONObject.put("list", jSONArray);
//            final JSONObject jSONObject2 = new JSONObject();
//            jSONArray.put(jSONObject2);
//            TreeMap treeMap = new TreeMap();
//            treeMap.put("show_id_code", list.get(0));
//            OkHttpUtil.post(OkHttpUtil.defaultClient(), genUrl("https://api.mudvod.tv/show/detail/WEB/3.0", treeMap), treeMap, g("https://m.nbys.tv/"), new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.Nbys.4
//                @Override // com.github.catvod.spider.merge.a6
//                protected void onFailure(Call call, Exception exc) {
//                }
//
//                /* JADX INFO: Access modifiers changed from: protected */
//                public void onResponse(String str) {
//                    try {
//                        JSONObject jSONObject3 = new JSONObject(CipherUtil.J(str, "diao.com")).optJSONObject("entity");
//                        String optString = jSONObject3.optString("showIdCode");
//                        jSONObject2.put("vod_id", optString);
//                        jSONObject2.put("vod_name", jSONObject3.optString("showTitle"));
//                        jSONObject2.put("vod_pic", jSONObject3.optString("showImg"));
//                        jSONObject2.put("vod_content", jSONObject3.optString("showDesc"));
//                        jSONObject2.put("vod_director", jSONObject3.optString("director"));
//                        jSONObject2.put("vod_remarks", jSONObject3.optString("episodesTxt"));
//                        jSONObject2.put("vod_actor", jSONObject3.optString("actors"));
//                        jSONObject2.put("vod_year", jSONObject3.optString("postYear"));
//                        jSONObject2.put("vod_area", jSONObject3.optString("regionName"));
//                        jSONObject2.put("type_name", jSONObject3.optString("channelName"));
//                        jSONObject2.put("vod_play_from", "泥巴影视");
//                        JSONArray jSONArray2 = jSONObject3.optJSONArray("plays");
//                        ArrayList arrayList = new ArrayList();
//                        for (int i = 0; i < jSONArray2.length(); i++) {
//                            JSONObject jSONObject4 = jSONArray2.optJSONObject(i);
//                            arrayList.add(jSONObject4.optString("episodeName") + "$" + optString + "_" + jSONObject4.optString("playIdCode"));
//                        }
//                        jSONObject2.put("vod_play_url", StringUtil.join("#", arrayList));
//                    } catch (Exception e) {
//                        SpiderDebug.log(e);
//                    }
//                }
//            });
//        } catch (Exception e) {
//            SpiderDebug.log(e);
//        }
//        return jSONObject.toString();
//    }
//
//    protected HashMap<String, String> g(String str) {
//        HashMap<String, String> hashMap = new HashMap<>();
//        if (!StringUtil.isEmpty(str)) {
//            hashMap.put("Referer", str);
//        }
//        hashMap.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
//        return hashMap;
//    }
//
//    public String genUrl(String str, Map<String, String> map) {
//        String dV = CipherUtil.dV(((new Date().getTime() - 600000) + "") + "_AABBCC", "diao.com");
//        TreeMap<String, String> treeMap = new TreeMap();
//        treeMap.put("_ts", new Date().getTime() + "");
//        treeMap.put("app_version", "1.0");
//        treeMap.put("platform", "3");
//        treeMap.put("market_id", "web_default");
//        treeMap.put("device_code", "web");
//        treeMap.put("versioncode", "1");
//        treeMap.put("oid", dV);
//        StringBuilder sb = new StringBuilder("__QUERY::");
//        for (Map.Entry entry : treeMap.entrySet()) {
//            if (!((String) entry.getValue()).equals("")) {
//                sb.append((String) entry.getKey());
//                sb.append("=");
//                sb.append((String) entry.getValue());
//                sb.append("&");
//            }
//        }
//        StringBuilder sb2 = new StringBuilder("__BODY::");
//        for (Map.Entry<String, String> entry2 : map.entrySet()) {
//            if (!entry2.getValue().equals("")) {
//                sb2.append(entry2.getKey());
//                sb2.append("=");
//                sb2.append(entry2.getValue());
//                sb2.append("&");
//            }
//        }
//        return str + "?_ts=" + ((String) treeMap.get("_ts")) + "&app_version=" + ((String) treeMap.get("app_version")) + "&platform=" + ((String) treeMap.get("platform")) + "&market_id=" + ((String) treeMap.get("market_id")) + "&device_code=" + ((String) treeMap.get("device_code")) + "&versioncode=" + ((String) treeMap.get("versioncode")) + "&oid=" + ((String) treeMap.get("oid")) + "&sign=" + CipherUtil.md5(((Object) sb) + sb2.toString() + "__KEY::2x_Give_it_a_shot", Charset.defaultCharset());
//    }
//
//    public String homeContent(boolean z) {
//        try {
//            final JSONArray jSONArray = new JSONArray();
//            OkHttpUtil.post(OkHttpUtil.defaultClient(), genUrl("https://api.mudvod.tv/show/channel/list/WEB/3.0", new HashMap()), new HashMap(), g("https://m.nbys.tv/"), new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.Nbys.1
//                @Override // com.github.catvod.spider.merge.a6
//                protected void onFailure(Call call, Exception exc) {
//                }
//
//                /* JADX INFO: Access modifiers changed from: protected */
//                public void onResponse(String str) {
//                    try {
//                        JSONArray jSONArray2 = new JSONObject(CipherUtil.J(str, "diao.com")).optJSONArray("list");
//                        for (int i = 0; i < jSONArray2.length(); i++) {
//                            JSONObject jSONObject = jSONArray2.optJSONObject(i);
//                            if (jSONObject.getInt("catId") == 1) {
//                                JSONObject jSONObject2 = new JSONObject();
//                                jSONObject2.put("type_id", jSONObject.optString("channelId"));
//                                jSONObject2.put("type_name", jSONObject.optString("channelName"));
//                                jSONArray.put(jSONObject2);
//                            }
//                        }
//                    } catch (Exception e) {
//                        SpiderDebug.log(e);
//                    }
//                }
//            });
//            final JSONObject jSONObject = new JSONObject();
//            if (z) {
//                jSONObject.put("filters", new JSONObject("{\"1\":[{\"name\":\"剧情\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"喜剧\",\"n\":\"喜剧\"},{\"v\":\"爱情\",\"n\":\"爱情\"},{\"v\":\"恐怖\",\"n\":\"恐怖\"},{\"v\":\"动作\",\"n\":\"动作\"},{\"v\":\"科幻\",\"n\":\"科幻\"},{\"v\":\"剧情\",\"n\":\"剧情\"},{\"v\":\"战争\",\"n\":\"战争\"},{\"v\":\"警匪\",\"n\":\"警匪\"},{\"v\":\"犯罪\",\"n\":\"犯罪\"},{\"v\":\"动画\",\"n\":\"动画\"},{\"v\":\"奇幻\",\"n\":\"奇幻\"},{\"v\":\"冒险\",\"n\":\"冒险\"}],\"key\":\"class\"},{\"name\":\"地区\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"大陆\",\"n\":\"大陆\"},{\"v\":\"香港\",\"n\":\"香港\"},{\"v\":\"欧美\",\"n\":\"欧美\"},{\"v\":\"台湾\",\"n\":\"台湾\"},{\"v\":\"韩国\",\"n\":\"韩国\"},{\"v\":\"日本\",\"n\":\"日本\"},{\"v\":\"泰国\",\"n\":\"泰国\"},{\"v\":\"印度\",\"n\":\"印度\"},{\"v\":\"俄罗斯\",\"n\":\"俄罗斯\"},{\"v\":\"其它\",\"n\":\"其它\"}],\"key\":\"area\"},{\"name\":\"年份\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"2022\",\"n\":\"2022\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"2020\",\"n\":\"2020\"},{\"v\":\"2019\",\"n\":\"2019\"},{\"v\":\"2018\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"2016\",\"n\":\"2016\"},{\"v\":\"2015\",\"n\":\"2015\"},{\"v\":\"2014\",\"n\":\"2014\"},{\"v\":\"2013\",\"n\":\"2013\"},{\"v\":\"2012\",\"n\":\"2012\"},{\"v\":\"2011\",\"n\":\"2011\"},{\"v\":\"2010\",\"n\":\"2010\"},{\"v\":\"2009\",\"n\":\"2009\"},{\"v\":\"2008\",\"n\":\"2008\"},{\"v\":\"2007\",\"n\":\"2007\"},{\"v\":\"2006\",\"n\":\"2006\"},{\"v\":\"2005\",\"n\":\"2005\"},{\"v\":\"2004\",\"n\":\"2004\"},{\"v\":\"2003\",\"n\":\"2003\"},{\"v\":\"2002\",\"n\":\"2002\"},{\"v\":\"2001\",\"n\":\"2001\"},{\"v\":\"2000\",\"n\":\"2000\"}],\"key\":\"year\"},{\"name\":\"排序\",\"value\":[{\"v\":\"time\",\"n\":\"时间\"},{\"v\":\"hits\",\"n\":\"人气\"},{\"v\":\"score\",\"n\":\"评分\"}],\"key\":\"by\"}],\"2\":[{\"name\":\"剧情\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"喜剧\",\"n\":\"喜剧\"},{\"v\":\"爱情\",\"n\":\"爱情\"},{\"v\":\"恐怖\",\"n\":\"恐怖\"},{\"v\":\"动作\",\"n\":\"动作\"},{\"v\":\"科幻\",\"n\":\"科幻\"},{\"v\":\"剧情\",\"n\":\"剧情\"},{\"v\":\"战争\",\"n\":\"战争\"},{\"v\":\"警匪\",\"n\":\"警匪\"},{\"v\":\"犯罪\",\"n\":\"犯罪\"},{\"v\":\"动画\",\"n\":\"动画\"},{\"v\":\"奇幻\",\"n\":\"奇幻\"},{\"v\":\"冒险\",\"n\":\"冒险\"}],\"key\":\"class\"},{\"name\":\"地区\",\"value\":[{\"v\":\"欧美\",\"n\":\"欧美\"}],\"key\":\"area\"},{\"name\":\"年份\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"2022\",\"n\":\"2022\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"2020\",\"n\":\"2020\"},{\"v\":\"2019\",\"n\":\"2019\"},{\"v\":\"2018\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"2016\",\"n\":\"2016\"},{\"v\":\"2015\",\"n\":\"2015\"},{\"v\":\"2014\",\"n\":\"2014\"},{\"v\":\"2013\",\"n\":\"2013\"},{\"v\":\"2012\",\"n\":\"2012\"},{\"v\":\"2011\",\"n\":\"2011\"},{\"v\":\"2010\",\"n\":\"2010\"},{\"v\":\"2009\",\"n\":\"2009\"},{\"v\":\"2008\",\"n\":\"2008\"},{\"v\":\"2007\",\"n\":\"2007\"},{\"v\":\"2006\",\"n\":\"2006\"},{\"v\":\"2005\",\"n\":\"2005\"},{\"v\":\"2004\",\"n\":\"2004\"},{\"v\":\"2003\",\"n\":\"2003\"},{\"v\":\"2002\",\"n\":\"2002\"},{\"v\":\"2001\",\"n\":\"2001\"},{\"v\":\"2000\",\"n\":\"2000\"}],\"key\":\"year\"},{\"name\":\"排序\",\"value\":[{\"v\":\"time\",\"n\":\"时间\"},{\"v\":\"hits\",\"n\":\"人气\"},{\"v\":\"score\",\"n\":\"评分\"}],\"key\":\"by\"}],\"3\":[{\"name\":\"剧情\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"喜剧\",\"n\":\"喜剧\"},{\"v\":\"爱情\",\"n\":\"爱情\"},{\"v\":\"恐怖\",\"n\":\"恐怖\"},{\"v\":\"动作\",\"n\":\"动作\"},{\"v\":\"科幻\",\"n\":\"科幻\"},{\"v\":\"剧情\",\"n\":\"剧情\"},{\"v\":\"战争\",\"n\":\"战争\"},{\"v\":\"警匪\",\"n\":\"警匪\"},{\"v\":\"犯罪\",\"n\":\"犯罪\"},{\"v\":\"动画\",\"n\":\"动画\"},{\"v\":\"奇幻\",\"n\":\"奇幻\"},{\"v\":\"冒险\",\"n\":\"冒险\"}],\"key\":\"class\"},{\"name\":\"地区\",\"value\":[{\"v\":\"韩国\",\"n\":\"韩国\"}],\"key\":\"area\"},{\"name\":\"年份\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"2022\",\"n\":\"2022\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"2020\",\"n\":\"2020\"},{\"v\":\"2019\",\"n\":\"2019\"},{\"v\":\"2018\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"2016\",\"n\":\"2016\"},{\"v\":\"2015\",\"n\":\"2015\"},{\"v\":\"2014\",\"n\":\"2014\"},{\"v\":\"2013\",\"n\":\"2013\"},{\"v\":\"2012\",\"n\":\"2012\"},{\"v\":\"2011\",\"n\":\"2011\"},{\"v\":\"2010\",\"n\":\"2010\"},{\"v\":\"2009\",\"n\":\"2009\"},{\"v\":\"2008\",\"n\":\"2008\"},{\"v\":\"2007\",\"n\":\"2007\"},{\"v\":\"2006\",\"n\":\"2006\"},{\"v\":\"2005\",\"n\":\"2005\"},{\"v\":\"2004\",\"n\":\"2004\"},{\"v\":\"2003\",\"n\":\"2003\"},{\"v\":\"2002\",\"n\":\"2002\"},{\"v\":\"2001\",\"n\":\"2001\"},{\"v\":\"2000\",\"n\":\"2000\"}],\"key\":\"year\"},{\"name\":\"排序\",\"value\":[{\"v\":\"time\",\"n\":\"时间\"},{\"v\":\"hits\",\"n\":\"人气\"},{\"v\":\"score\",\"n\":\"评分\"}],\"key\":\"by\"}],\"4\":[{\"name\":\"剧情\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"喜剧\",\"n\":\"喜剧\"},{\"v\":\"爱情\",\"n\":\"爱情\"},{\"v\":\"恐怖\",\"n\":\"恐怖\"},{\"v\":\"动作\",\"n\":\"动作\"},{\"v\":\"科幻\",\"n\":\"科幻\"},{\"v\":\"剧情\",\"n\":\"剧情\"},{\"v\":\"战争\",\"n\":\"战争\"},{\"v\":\"警匪\",\"n\":\"警匪\"},{\"v\":\"犯罪\",\"n\":\"犯罪\"},{\"v\":\"动画\",\"n\":\"动画\"},{\"v\":\"奇幻\",\"n\":\"奇幻\"},{\"v\":\"冒险\",\"n\":\"冒险\"}],\"key\":\"class\"},{\"name\":\"地区\",\"value\":[{\"v\":\"日本\",\"n\":\"日本\"}],\"key\":\"area\"},{\"name\":\"年份\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"2022\",\"n\":\"2022\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"2020\",\"n\":\"2020\"},{\"v\":\"2019\",\"n\":\"2019\"},{\"v\":\"2018\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"2016\",\"n\":\"2016\"},{\"v\":\"2015\",\"n\":\"2015\"},{\"v\":\"2014\",\"n\":\"2014\"},{\"v\":\"2013\",\"n\":\"2013\"},{\"v\":\"2012\",\"n\":\"2012\"},{\"v\":\"2011\",\"n\":\"2011\"},{\"v\":\"2010\",\"n\":\"2010\"},{\"v\":\"2009\",\"n\":\"2009\"},{\"v\":\"2008\",\"n\":\"2008\"},{\"v\":\"2007\",\"n\":\"2007\"},{\"v\":\"2006\",\"n\":\"2006\"},{\"v\":\"2005\",\"n\":\"2005\"},{\"v\":\"2004\",\"n\":\"2004\"},{\"v\":\"2003\",\"n\":\"2003\"},{\"v\":\"2002\",\"n\":\"2002\"},{\"v\":\"2001\",\"n\":\"2001\"},{\"v\":\"2000\",\"n\":\"2000\"}],\"key\":\"year\"},{\"name\":\"排序\",\"value\":[{\"v\":\"time\",\"n\":\"时间\"},{\"v\":\"hits\",\"n\":\"人气\"},{\"v\":\"score\",\"n\":\"评分\"}],\"key\":\"by\"}],\"5\":[{\"name\":\"剧情\",\"value\":[{\"v\":\"\",\"n\":\"全部\"}],\"key\":\"class\"},{\"name\":\"地区\",\"value\":[],\"key\":\"area\"},{\"name\":\"年份\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"2022\",\"n\":\"2022\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"2020\",\"n\":\"2020\"},{\"v\":\"2019\",\"n\":\"2019\"},{\"v\":\"2018\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"2016\",\"n\":\"2016\"},{\"v\":\"2015\",\"n\":\"2015\"},{\"v\":\"2014\",\"n\":\"2014\"},{\"v\":\"2013\",\"n\":\"2013\"},{\"v\":\"2012\",\"n\":\"2012\"},{\"v\":\"2011\",\"n\":\"2011\"},{\"v\":\"2010\",\"n\":\"2010\"},{\"v\":\"2009\",\"n\":\"2009\"},{\"v\":\"2008\",\"n\":\"2008\"},{\"v\":\"2007\",\"n\":\"2007\"},{\"v\":\"2006\",\"n\":\"2006\"},{\"v\":\"2005\",\"n\":\"2005\"},{\"v\":\"2004\",\"n\":\"2004\"},{\"v\":\"2003\",\"n\":\"2003\"},{\"v\":\"2002\",\"n\":\"2002\"},{\"v\":\"2001\",\"n\":\"2001\"},{\"v\":\"2000\",\"n\":\"2000\"}],\"key\":\"year\"},{\"name\":\"排序\",\"value\":[{\"v\":\"time\",\"n\":\"时间\"},{\"v\":\"hits\",\"n\":\"人气\"},{\"v\":\"score\",\"n\":\"评分\"}],\"key\":\"by\"}],\"6\":[{\"name\":\"剧情\",\"value\":[{\"v\":\"\",\"n\":\"全部\"}],\"key\":\"class\"},{\"name\":\"地区\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"国产\",\"n\":\"国产\"},{\"v\":\"欧美\",\"n\":\"欧美\"},{\"v\":\"日本\",\"n\":\"日本\"},{\"v\":\"其他\",\"n\":\"其他\"}],\"key\":\"area\"},{\"name\":\"年份\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"2022\",\"n\":\"2022\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"2020\",\"n\":\"2020\"},{\"v\":\"2019\",\"n\":\"2019\"},{\"v\":\"2018\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"2016\",\"n\":\"2016\"},{\"v\":\"2015\",\"n\":\"2015\"},{\"v\":\"2014\",\"n\":\"2014\"},{\"v\":\"2013\",\"n\":\"2013\"},{\"v\":\"2012\",\"n\":\"2012\"},{\"v\":\"2011\",\"n\":\"2011\"},{\"v\":\"2010\",\"n\":\"2010\"},{\"v\":\"2009\",\"n\":\"2009\"},{\"v\":\"2008\",\"n\":\"2008\"},{\"v\":\"2007\",\"n\":\"2007\"},{\"v\":\"2006\",\"n\":\"2006\"},{\"v\":\"2005\",\"n\":\"2005\"},{\"v\":\"2004\",\"n\":\"2004\"},{\"v\":\"2003\",\"n\":\"2003\"},{\"v\":\"2002\",\"n\":\"2002\"},{\"v\":\"2001\",\"n\":\"2001\"},{\"v\":\"2000\",\"n\":\"2000\"}],\"key\":\"year\"},{\"name\":\"排序\",\"value\":[{\"v\":\"time\",\"n\":\"时间\"},{\"v\":\"hits\",\"n\":\"人气\"},{\"v\":\"score\",\"n\":\"评分\"}],\"key\":\"by\"}]}"));
//            }
//            jSONObject.put("class", jSONArray);
//            OkHttpUtil.post(OkHttpUtil.defaultClient(), genUrl("https://api.mudvod.tv/index/ranking/list/WEB/3.0", new HashMap()), new HashMap(), g("https://m.nbys.tv/"), new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.Nbys.2
//                @Override // com.github.catvod.spider.merge.a6
//                protected void onFailure(Call call, Exception exc) {
//                }
//
//                /* JADX INFO: Access modifiers changed from: protected */
//                public void onResponse(String str) {
//                    try {
//                        JSONArray jSONArray2 = new JSONObject(CipherUtil.J(str, "diao.com")).optJSONArray("list");
//                        JSONArray jSONArray3 = new JSONArray();
//                        jSONObject.put("list", jSONArray3);
//                        for (int i = 0; i < jSONArray2.length(); i++) {
//                            JSONArray jSONArray4 = jSONArray2.optJSONArray(i);
//                            for (int i2 = 0; i2 < jSONArray4.length(); i2++) {
//                                JSONObject jSONObject2 = jSONArray4.optJSONObject(i2);
//                                JSONObject jSONObject3 = new JSONObject();
//                                jSONObject3.put("vod_id", jSONObject2.optString("showIdCode"));
//                                jSONObject3.put("vod_name", jSONObject2.optString("showTitle"));
//                                jSONObject3.put("vod_pic", jSONObject2.optString("showImg"));
//                                jSONObject3.put("vod_remarks", jSONObject2.optString("episodesTxt"));
//                                jSONArray3.put(jSONObject3);
//                            }
//                        }
//                    } catch (Exception e) {
//                        SpiderDebug.log(e);
//                    }
//                }
//            });
//            return jSONObject.toString();
//        } catch (Exception e) {
//            SpiderDebug.log(e);
//            return "";
//        }
//    }
//
//    public String playerContent(String str, String str2, List<String> list) {
//        try {
//            String[] split = str2.split("_");
//            final JSONObject jSONObject = new JSONObject();
//            TreeMap treeMap = new TreeMap();
//            treeMap.put("show_id_code", split[0]);
//            treeMap.put("play_id_code", split[1]);
//            treeMap.put("oid", "1");
//            OkHttpUtil.post(OkHttpUtil.defaultClient(), genUrl("https://api.mudvod.tv/show/play/info/WEB/3.0", treeMap), treeMap, g("https://m.nbys.tv/"), new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.Nbys.5
//                @Override // com.github.catvod.spider.merge.a6
//                protected void onFailure(Call call, Exception exc) {
//                }
//
//                /* JADX INFO: Access modifiers changed from: protected */
//                public void onResponse(String str3) {
//                    try {
//                        jSONObject.put("url", new JSONObject(CipherUtil.J(str3, "diao.com")).optJSONObject("entity").optString("playUrl"));
//                    } catch (Exception e) {
//                        SpiderDebug.log(e);
//                    }
//                }
//            });
//            HashMap hashMap = new HashMap();
//            hashMap.put("User-Agent", " Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36");
//            jSONObject.put("header", new JSONObject(hashMap).toString());
//            jSONObject.put("parse", "0");
//            jSONObject.put("playUrl", "");
//            return jSONObject.toString();
//        } catch (Exception e) {
//            SpiderDebug.log(e);
//            return "";
//        }
//    }
//
//    public String searchContent(String str, boolean z) {
//        try {
//            JSONObject jSONObject = new JSONObject();
//            final JSONArray jSONArray = new JSONArray();
//            TreeMap treeMap = new TreeMap();
//            treeMap.put("keyword", str);
//            treeMap.put("start", "0");
//            treeMap.put("cat_id", "1");
//            treeMap.put("keyword_type", "0");
//            OkHttpUtil.post(OkHttpUtil.defaultClient(), genUrl("https://api.mudvod.tv/show/search/WEB/3.0", treeMap), treeMap, g("https://m.nbys.tv/"), new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.Nbys.6
//                @Override // com.github.catvod.spider.merge.a6
//                protected void onFailure(Call call, Exception exc) {
//                }
//
//                /* JADX INFO: Access modifiers changed from: protected */
//                public void onResponse(String str2) {
//                    try {
//                        JSONArray jSONArray2 = new JSONObject(CipherUtil.J(str2, "diao.com")).optJSONArray("list");
//                        for (int i = 0; i < jSONArray2.length(); i++) {
//                            JSONObject jSONObject2 = jSONArray2.optJSONObject(i);
//                            JSONObject jSONObject3 = new JSONObject();
//                            jSONObject3.put("vod_id", jSONObject2.optString("showIdCode"));
//                            jSONObject3.put("vod_name", jSONObject2.optString("showTitle"));
//                            jSONObject3.put("vod_pic", jSONObject2.optString("showImg"));
//                            jSONObject3.put("vod_remarks", jSONObject2.optString("episodesTxt"));
//                            jSONArray.put(jSONObject3);
//                        }
//                    } catch (Exception e) {
//                        SpiderDebug.log(e);
//                    }
//                }
//            });
//            jSONObject.put("list", jSONArray);
//            return jSONObject.toString();
//        } catch (Exception e) {
//            SpiderDebug.log(e);
//            return "";
//        }
//    }
//}