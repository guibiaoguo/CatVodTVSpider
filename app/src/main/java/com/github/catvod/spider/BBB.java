package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;

import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class BBB extends Spider {
    protected JSONObject g;

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        String str3;
            try {
                if (extend != null) {
                    if (extend.size() <= 0 || !extend.containsKey("tid") || extend.get("tid").length() <= 0) {
                        str3 = "https://api.bilibili.com/x/web-interface/search/type?search_type=video&keyword=" + tid;
                    } else {
                        str3 = "https://api.bilibili.com/x/web-interface/search/type?search_type=video&keyword=" + extend.get("tid");
                    }
                    if (extend.size() > 0) {
                        for (String str4 : extend.keySet()) {
                            String str5 = extend.get(str4);
                            if (str5.length() > 0) {
                                str3 = str3 + "&" + str4 + "=" + URLEncoder.encode(str5);
                            }
                        }
                    }
                } else {
                    str3 = "https://api.bilibili.com/x/web-interface/search/type?search_type=video&keyword=" + tid;
                }

                JSONObject jSONObject = new JSONObject(OkHttpUtil.string(str3 + tid +"&page=" + pg, getHeaders())).optJSONObject("data");
                JSONArray jSONArray = new JSONArray();
                JSONArray jSONArray2 = jSONObject.optJSONArray("result");
                for (int i = 0; i < jSONArray2.length(); i++) {
                    JSONObject jSONObject2 = jSONArray2.optJSONObject(i);
                    JSONObject jSONObject3 = new JSONObject();
                    String string = jSONObject2.optString("pic");
                    if (string.startsWith("//")) {
                        string = "https:" + string;
                    }
                    jSONObject3.put("vod_id", jSONObject2.optString("bvid")+"@"+jSONObject2.optString("aid"));
                    jSONObject3.put("vod_name", jSONObject2.optString("title"));
                    jSONObject3.put("vod_pic", string);
                    jSONObject3.put("vod_remarks", jSONObject2.optString("duration").split(":")[0] + "分钟");
                    jSONArray.put(jSONObject3);
                }
                JSONObject jSONObject4 = new JSONObject();
                int parseInt = Integer.parseInt(pg);
                jSONObject4.put("page", parseInt);
                if (jSONArray.length() == 20) {
                    parseInt++;
                }
                jSONObject4.put("pagecount", parseInt);
                jSONObject4.put("limit", 20);
                jSONObject4.put("total", Integer.MAX_VALUE);
                jSONObject4.put("list", jSONArray);
                return jSONObject4.toString();
            } catch (Exception e) {
                e.printStackTrace();
            }
        return "";
    }

    @Override
    public String detailContent(List<String> ids) throws Exception {
        String[] split = ids.get(0).split("@");
        String bvid = split[0];
        String aid = split[1];

        String api = "https://api.bilibili.com/x/web-interface/view?aid=" + aid;
        String json = OkHttpUtil.string(api, getHeaders());
//        System.out.println("************Resp 前****************" + json);
//        Data detail = Resp.objectFrom(json).getData();
        JsonObject jsonObject = new Gson().fromJson(json, JsonObject.class);
//        System.out.println(jsonObject.getAsJsonObject("data").toString());
//        Data detail1 = new Gson().fromJson(jsonObject.getAsJsonObject("data").toString(),Data.class);
//        System.out.println("************Resp detail 后****************" + new Gson().toJson(detail));
        Vod vod = new Vod();
        vod.setVodId(ids.get(0));
//        vod.setVodPic(detail.getPic());
//        vod.setVodName(detail.getTitle());
//        vod.setTypeName(detail.getType());
//        vod.setVodContent(detail.getDesc());
//        vod.setVodRemarks(detail.getDuration() / 60 + "分鐘");
        JsonObject detail = jsonObject.getAsJsonObject("data");
        vod.setVodPic(detail.get("pic").toString());
        vod.setVodName(detail.get("title").toString());
        vod.setTypeName(detail.get("tname").toString());
        vod.setVodContent(detail.get("desc").toString());
        vod.setVodRemarks(detail.get("duration").getAsDouble() / 60 + "分鐘");

        List<String> acceptDesc = new ArrayList<>();
        List<Integer> acceptQuality = new ArrayList<>();
        api = "https://api.bilibili.com/x/player/playurl?avid=" + aid + "&cid=" + detail.get("cid").toString() + "&qn=127&fnval=4048&fourk=1";
        json = OkHttpUtil.string(api, getHeaders());
//        Data play = Resp.objectFrom(json).getData();
        jsonObject = new Gson().fromJson(json, JsonObject.class);
//        Data play = new Gson().fromJson(jsonObject.getAsJsonObject("data"),Data.class);
        JsonObject play = jsonObject.getAsJsonObject("data");
//        System.out.println("************Resp play 后****************" + new Gson().toJson(play));
//        for (int i = 0; i < play.getAcceptQuality().size(); i++) {
//            int qn = play.getAcceptQuality().get(i);
//            acceptQuality.add(play.getAcceptQuality().get(i));
//            acceptDesc.add(play.getAcceptDescription().get(i));
//        }
        JsonArray acceptQualitys = play.getAsJsonArray("accept_quality");
        for (int i = 0; i < acceptQualitys.size(); i++) {
            int qn = acceptQualitys.get(i).getAsInt();
            acceptQuality.add(acceptQualitys.get(i).getAsInt());
            acceptDesc.add(play.getAsJsonArray("accept_description").get(i).toString());
        }
        List<String> episode = new ArrayList<>();
        LinkedHashMap<String, String> flag = new LinkedHashMap<>();
//        for (Page page : detail.getPages()) episode.add(page.getPart() + "$" + aid + "+" + page.getCid() + "+" + TextUtils.join(":", acceptQuality) + "+" + TextUtils.join(":", acceptDesc));
        JsonArray pages = detail.getAsJsonArray("pages");
        for (JsonElement element : pages) {
            JsonObject page = element.getAsJsonObject();
            episode.add(page.get("part").toString() + "$" + aid + "+" + page.get("cid").toString() + "+" + TextUtils.join(":", acceptQuality) + "+" + TextUtils.join(":", acceptDesc));
        }
//        for (Page page : detail.getAsJsonArray("pages")) {
//            episode.add(page.getPart() + "$" + aid + "+" + page.getCid() + "+" + TextUtils.join(":", acceptQuality) + "+" + TextUtils.join(":", acceptDesc));
//        }
        flag.put("B站", TextUtils.join("#", episode));

        episode = new ArrayList<>();
        api = "https://api.bilibili.com/x/web-interface/archive/related?bvid=" + bvid;
        json = OkHttpUtil.string(api, getHeaders());
        JsonArray array = JsonParser.parseString(json).getAsJsonObject().getAsJsonArray("data");
        for (int i = 0; i < array.size(); i++) {
            JsonObject object = array.get(i).getAsJsonObject();
            episode.add(object.get("title").getAsString() + "$" + object.get("aid").getAsInt() + "+" + object.get("cid").getAsInt() + "+" + TextUtils.join(":", acceptQuality) + "+" + TextUtils.join(":", acceptDesc));
        }
        flag.put("相关", TextUtils.join("#", episode));

        vod.setVodPlayFrom(TextUtils.join("$$$", flag.keySet()));
        vod.setVodPlayUrl(TextUtils.join("$$$", flag.values()));
        return Result.string(vod);
    }

    public String homeContent(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("class", this.g.optJSONArray("classes"));
            if (z) {
                jSONObject.put("filters", this.g.optJSONObject("filter"));
            }
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String homeVideoContent() {
        try {
            JSONArray jSONArray = new JSONArray();
            JSONArray jSONArray2 = new JSONObject(OkHttpUtil.string("https://api.bilibili.com/x/web-interface/popular?ps=20", getHeaders())).optJSONObject("data").optJSONArray("list");
            for (int i = 0; i < jSONArray2.length(); i++) {
                JSONObject jSONObject = jSONArray2.optJSONObject(i);
                JSONObject jSONObject2 = new JSONObject();
                String string = jSONObject.optString("pic");
                if (string.startsWith("//")) {
                    string = "https:" + string;
                }
                jSONObject2.put("vod_id", jSONObject.optString("bvid")+"@"+jSONObject.optString("aid"));
                jSONObject2.put("vod_name", jSONObject.optString("title"));
                jSONObject2.put("vod_pic", string);
                jSONObject2.put("vod_remarks", jSONObject.optString("duration").split(":")[0] + "分钟");
                jSONArray.put(jSONObject2);
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("list", jSONArray);
            return jSONObject3.toString();
        } catch (Throwable e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public void init(Context context) {
        BBB.super.init(context);
        try {
            this.g = new JSONObject("{\"class\":[{\"type_name\":\"电影\",\"type_id\":\"电影\"}]}");
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }

    public void init(Context context,String extend) {
        BBB.super.init(context,extend);
        try {
            String conntent = OkHttpUtil.string(extend);
            this.g = new JSONObject(conntent);
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }

    public String playerContent(String str, String str2, List<String> list) {
        try {
            String[] split = str2.split("\\+");
            String str3 = split[0];
            String str4 = split[1];
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string("https://api.bilibili.com/x/player/playurl?avid=" + str3 + "&cid= " + str4 + "&qn=120", getHeaders()));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("parse", "0");
            jSONObject2.put("playUrl", "");
            jSONObject2.put("url", jSONObject.optJSONObject("data").optJSONArray("durl").optJSONObject(0).optString("url"));
            jSONObject2.put("header", "{\"Referer\":\"https://www.bilibili.com\",\"User-Agent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\"}");
            jSONObject2.put("contentType", "video/x-flv");
            return jSONObject2.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    protected HashMap<String, String> getHeaders() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("cookie","_uuid=555CC917-FB7A-4C29-E9E9-1FAB7F64C34F35647infoc; buvid3=251BC434-0158-4CF2-9689-415B90DBFD8B167627infoc; b_nut=1639843737; blackside_state=1; rpdid=|(J|kYlJuJm)0J'uYRklkY~Yk; buvid_fp=4c5ef178dbfca047f6f761107813e366; buvid4=62069D91-F760-49DF-A5E3-620800017C4872307-022021107-Up95BNeOMznhkE74VzsPjQ%3D%3D; CURRENT_FNVAL=4048; nostalgia_conf=-1");
        hashMap.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.102 Safari/537.36 Edg/104.0.1293.70");
        return hashMap;
    }

    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        return categoryContent(key, "1", true, new HashMap<>());
    }
}