package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;

import com.github.catvod.ali.API;
import com.github.catvod.bean.Class;
import com.github.catvod.bean.Filter;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.bean.ali.Item;
import com.github.catvod.bean.paper.Data;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Utils;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import cn.hutool.core.util.ReUtil;
import cn.hutool.core.util.StrUtil;

/**
 * @author ColaMint & FongMi
 */
@Deprecated
public class Paper extends Ali {

    private final String siteUrl = "https://gitcafe.net/alipaper/";
    private final String api = "https://gitcafe.net/tool/alipaper/";
    private List<String> types;
    private String token;
    private Date date;
    private HashMap<String, String> getHeaders() {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", Utils.CHROME);
        return headers;
    }

    @Override
    public void init(Context context, String extend) {
        super.init(context, extend);
        types = Arrays.asList("hyds", "rhds", "omds", "qtds", "hydy", "rhdy", "omdy", "qtdy", "hydm", "rhdm", "omdm", "jlp", "zyp", "jypx", "qtsp");
    }

    @Override
    public String homeContent(boolean filter) {
        String content = OkHttpUtil.string(siteUrl, getHeaders());
        System.out.println(content);
        Document doc = Jsoup.parse(content);
        Elements trs = doc.select("table.tableizer-table > tbody > tr");
        LinkedHashMap<String, List<Filter>> filters = new LinkedHashMap<>();
        List<Class> classes = new ArrayList<>();
        for (Element tr : trs) {
            List<Filter.Value> values = new ArrayList<>();
            for (Element td : tr.select("td")) {
                if (td.hasClass("tableizer-title")) {
                    String typeId = td.select("a").attr("href").replace("#", "");
                    if (!types.contains(typeId)) continue;
                    classes.add(new Class(typeId, td.text(),"1"));
                    filters.put(typeId, Arrays.asList(new Filter("type", "類型", values)));
                } else {
                    String value = td.select("a").attr("onclick").split("'")[1];
                    values.add(new Filter.Value(td.text(), value));
                }
            }
        }
        return Result.string(classes, filters);
    }

    @Override
    public String homeVideoContent() throws Exception {
        List<Vod> list = new ArrayList<>();
        String content = OkHttpUtil.string(siteUrl + "home.json", getHeaders());
        System.out.println(content);
        JSONObject homeData = new JSONObject(content);
        List<Data> items = Data.arrayFrom(homeData.getJSONObject("info").getJSONArray("new").toString());
        for (Data item : items) if (types.contains(item.getCat())) list.add(item.getVod());
        return Result.string(list);
    }

    public HashMap<String, String> getHeader() {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", Utils.CHROME);
        headers.put("Referer", "https://www.aliyundrive.com/");
        return headers;
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws JSONException {
        String type = extend.containsKey("type") ? extend.get("type") : tid;
        List<Vod> list = new ArrayList<>();
        Map<String, String> params = new HashMap<>();
        params.put("action", "viewcat");
        params.put("cat", type);
        params.put("num", pg);
        params.put("token",getToken());
        if (StringUtils.contains(tid,"aliyundrive.com")) {
            Map<String,Object> body = new HashMap<>();
            String shareId = ReUtil.get(pattern, tid,1);
            String fileId = ReUtil.get(pattern, tid, 3);
            fileId = StrUtil.isNotEmpty(fileId)? fileId: "root";
            API.get().setShareId(shareId);
            String result = API.get().getList(fileId);
            Item item = Item.objectFrom(result);
            for (Item file:item.getItems()) {
                Vod vod = new Vod(StrUtil.format("https://www.aliyundrive.com/s/{}/folder/{}",shareId,file.getFileId()),file.getName(),"https://www.lgstatic.com/i/image2/M01/15/7E/CgoB5lysLXCADg6ZAABapAHUnQM321.jpg","", file.getType());
                if (file.getType().equals("file")) {
                    vod.setVodId(StrUtil.format("https://www.aliyundrive.com/s/{}/folder/{}",shareId,file.getParentFileId()));
                } else {
                    vod.setVodPic("http://img1.3png.com/281e284a670865a71d91515866552b5f172b.png");
                }
                list.add(vod);
            }
        } else {
            String result = OkHttpUtil.post(api, params, getHeaders());
            result = new Gson().fromJson(result, JsonObject.class).get("data").toString();
            for (Data item : Data.arrayFrom(result)) {
                Vod vod = item.getVod();
                Map<String, Object> data = new HashMap<>();
                data.put("share_id", item.getKey());
                String json = OkHttpUtil.postJson("https://api.aliyundrive.com/adrive/v3/share_link/get_share_by_anonymous", new Gson().toJson(data), getHeader());
                JsonObject object = JsonParser.parseString(json).getAsJsonObject();
                if (object.has("code") && object.get("code").getAsString().contains("ShareLink")) {
                    continue;
                }
                JsonArray fileInfos = object.getAsJsonArray("file_infos");
                if (object.has("code") && object.get("code").getAsString().equals("TooManyRequests") || fileInfos != null &&fileInfos.size() > 0 && fileInfos.get(0).getAsJsonObject().get("type").getAsString().equals("folder")) {
                    vod.setVodPic("http://img1.3png.com/281e284a670865a71d91515866552b5f172b.png");
                    vod.setVodTag("folder");
                } else {
                    vod.setVodTag("file");
                }
                list.add(vod);
            }
        }
        return Result.string(list);
    }

    @Override
    public String searchContent(String key, boolean quick) throws JSONException {
        List<Vod> list = new ArrayList<>();
        Map<String, String> params = new HashMap<>();
        params.put("action", "search");
        params.put("from","web");
        params.put("keyword", key);
        params.put("token", getToken());
        String result = OkHttpUtil.post(api, params, getHeaders());
//        for (Data item : Data.arrayFrom(result)) if (types.contains(item.getCat()) && item.getTitle().contains(key)) list.add(item.getVod());
        JsonObject jsonObject = new Gson().fromJson(result, JsonObject.class);
        if (!jsonObject.get("success").getAsBoolean()) return "";
        for (JsonElement jsonElement : jsonObject.getAsJsonArray("data")) {
            String id = jsonElement.getAsJsonObject().get("alikey").getAsString();
            String name = jsonElement.getAsJsonObject().get("title").getAsString();
            String remarks = jsonElement.getAsJsonObject().get("des").getAsString();
            String img = "https://www.lgstatic.com/i/image2/M01/15/7E/CgoB5lysLXCADg6ZAABapAHUnQM321.jpg";
            id = "https://www.aliyundrive.com/s/" + id;
            if (types.contains(jsonElement.getAsJsonObject().get("cat").getAsString()) || name.contains(key)) {
                list.add(new Vod(id, name, img, remarks));
            }
        }
        return Result.string(list);
    }

    private String getToken() {
        try {
            if (TextUtils.isEmpty(token) || new Date().compareTo(date) > 0) {
                Map<String, String> params = new HashMap<>();
                params.put("action", "get_token");
                params.put("from", "web");
                String content = OkHttpUtil.post(api, params, getHeaders());
                JSONObject object = new JSONObject(content);
                if (object.getBoolean("success")) {
                    token = object.getString("data");
                    date = new Date(System.currentTimeMillis() + 24 * 60 * 60 * 1000);
                }
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return token;
    }
}
