//package com.github.catvod.spider;
//
//import com.github.catvod.utils.StringUtil;
//import com.github.catvod.crawler.Spider;
//import com.github.catvod.crawler.SpiderDebug;
//import com.github.catvod.utils.okhttp.OkHttpUtil;
//
//import java.net.URLEncoder;
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.List;
//import org.json.JSONArray;
//import org.json.JSONObject;
//import org.jsoup.Jsoup;
//
///* loaded from: classes.dex */
//public class Bli extends Spider {
//    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
//        try {
//            String str3 = "0";
//            if (hashMap.containsKey("duration")) {
//                str3 = hashMap.get("duration");
//            }
//            JSONObject jSONObject = new JSONObject(OkHttpUtil.string("https://api.bilibili.com/x/web-interface/search/type?search_type=video&keyword=" + URLEncoder.encode(str,"utf-8") + "&duration=" + str3 + "&page=" + str2, getHeaders())).optJSONObject("data");
//            JSONArray jSONArray = new JSONArray();
//            JSONArray jSONArray2 = jSONObject.optJSONArray("result");
//            for (int i = 0; i < jSONArray2.length(); i++) {
//                JSONObject jSONObject2 = jSONArray2.optJSONObject(i);
//                JSONObject jSONObject3 = new JSONObject();
//                String string = jSONObject2.optString("pic");
//                if (string.startsWith("//")) {
//                    string = "https:" + string;
//                }
//                jSONObject3.put("vod_id", jSONObject2.optString("bvid"));
//                jSONObject3.put("vod_name", Jsoup.parse(jSONObject2.optString("title")).text());
//                jSONObject3.put("vod_pic", string);
//                jSONObject3.put("vod_remarks", jSONObject2.optString("duration").split(":")[0] + "分钟");
//                jSONArray.put(jSONObject3);
//            }
//            JSONObject jSONObject4 = new JSONObject();
//            jSONObject4.put("page", str2);
//            jSONObject4.put("pagecount", jSONObject.getInt("numPages"));
//            jSONObject4.put("limit", jSONObject.getInt("pagesize"));
//            jSONObject4.put("total", jSONObject.getInt("numResults"));
//            jSONObject4.put("list", jSONArray);
//            return jSONObject4.toString();
//        } catch (Throwable unused) {
//            return "";
//        }
//    }
//
//    public String detailContent(List<String> list) {
//        try {
//            String str = list.get(0);
//            JSONObject jSONObject = new JSONObject(OkHttpUtil.string("https://api.bilibili.com/x/web-interface/archive/stat?bvid=" + str, getHeaders()));
//            String str2 = jSONObject.optJSONObject("data").getLong("aid") + "";
//            JSONObject jSONObject2 = new JSONObject(OkHttpUtil.string("https://api.bilibili.com/x/web-interface/view?aid=" + str2, getHeaders())).optJSONObject("data");
//            JSONObject jSONObject3 = new JSONObject();
//            jSONObject3.put("vod_id", str);
//            jSONObject3.put("vod_name", jSONObject2.optString("title"));
//            jSONObject3.put("vod_pic", jSONObject2.optString("pic"));
//            jSONObject3.put("type_name", jSONObject2.optString("tname"));
//            jSONObject3.put("vod_year", "");
//            jSONObject3.put("vod_area", "");
//            jSONObject3.put("vod_remarks", (jSONObject2.getLong("duration") / 60) + "分钟");
//            jSONObject3.put("vod_actor", "");
//            jSONObject3.put("vod_director", "");
//            jSONObject3.put("vod_content", jSONObject2.optString("desc"));
//            jSONObject3.put("vod_play_from", "baddychen");
//            ArrayList arrayList = new ArrayList();
//            JSONArray jSONArray = jSONObject2.optJSONArray("pages");
//            for (int i = 0; i < jSONArray.length(); i++) {
//                JSONObject jSONObject4 = jSONArray.optJSONObject(i);
//                arrayList.add(jSONObject4.optString("part").replace("$", "_").replace("#", "_") + "$" + str2 + "+ " + jSONObject4.getLong("cid"));
//            }
//            jSONObject3.put("vod_play_url", StringUtil.join("#", arrayList));
//            JSONArray jSONArray2 = new JSONArray();
//            jSONArray2.put(jSONObject3);
//            JSONObject jSONObject5 = new JSONObject();
//            jSONObject5.put("list", jSONArray2);
//            return jSONObject5.toString();
//        } catch (Exception e) {
//            SpiderDebug.log(e);
//            return "";
//        }
//    }
//
//    public String playerContent(String str, String str2, List<String> list) {
//        try {
//            String[] split = str2.split("\\+");
//            String str3 = split[0];
//            String str4 = split[1];
//            JSONObject jSONObject = new JSONObject(OkHttpUtil.string("https://api.bilibili.com/x/player/playurl?avid=" + str3 + "&cid= " + str4 + "&qn=112", getHeaders()));
//            JSONObject jSONObject2 = new JSONObject();
//            jSONObject2.put("parse", "0");
//            jSONObject2.put("playUrl", "");
//            jSONObject2.put("url", jSONObject.optJSONObject("data").optJSONArray("durl").optJSONObject(0).optString("url"));
//            jSONObject2.put("header", "{\"Referer\":\"https://www.bilibili.com\",\"User-Agent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\"}");
//            return jSONObject2.toString();
//        } catch (Exception e) {
//            SpiderDebug.log(e);
//            return "";
//        }
//    }
//
//    protected HashMap<String, String> getHeaders() {
//        HashMap<String, String> hashMap = new HashMap<>();
//        hashMap.put("cookie","_uuid=555CC917-FB7A-4C29-E9E9-1FAB7F64C34F35647infoc; buvid3=251BC434-0158-4CF2-9689-415B90DBFD8B167627infoc; b_nut=1639843737; blackside_state=1; rpdid=|(J|kYlJuJm)0J'uYRklkY~Yk; buvid_fp=4c5ef178dbfca047f6f761107813e366; buvid4=62069D91-F760-49DF-A5E3-620800017C4872307-022021107-Up95BNeOMznhkE74VzsPjQ%3D%3D; CURRENT_FNVAL=4048; nostalgia_conf=-1");
//        hashMap.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70");
//        return hashMap;
//    }
//}