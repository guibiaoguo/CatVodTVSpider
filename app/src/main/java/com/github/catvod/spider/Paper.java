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
import com.github.catvod.net.OkHttp;
import com.github.catvod.utils.Utils;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

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
        Document doc = Jsoup.parse(OkHttp.string(siteUrl, getHeaders()));
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
        JSONObject homeData = new JSONObject(OkHttp.string(siteUrl + "home.json", getHeaders()));
        List<Data> items = Data.arrayFrom(homeData.getJSONObject("info").getJSONArray("new").toString());
        for (Data item : items) if (types.contains(item.getCat())) list.add(item.getVod());
        return Result.string(list);
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        String type = extend.containsKey("type") ? extend.get("type") : tid;
        List<Vod> list = new ArrayList<>();
        Map<String, String> params = new HashMap<>();
        params.put("action", "viewcat");
        params.put("cat", type);
        params.put("num", pg);
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
                }
                list.add(vod);
            }
        } else {
            String result = OkHttp.post(api, params, getHeaders());
            result = new Gson().fromJson(result, JsonObject.class).get("data").toString();
            for (Data item : Data.arrayFrom(result)) {
                Vod vod = item.getVod();
                Map<String, Object> data = new HashMap<>();
                data.put("share_id", item.getKey());
                String json = OkHttp.postJson("https://api.aliyundrive.com/adrive/v3/share_link/get_share_by_anonymous", new Gson().toJson(data), API.get().getHeader());
                JsonArray fileInfos = new Gson().fromJson(json, JsonObject.class).getAsJsonArray("file_infos");
                if (fileInfos != null && fileInfos.get(0).getAsJsonObject().get("type").getAsString().equals("folder")) {
                    vod.setVodTag("folder");
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
        String result = OkHttp.post(api, params, getHeaders());
//        for (Data item : Data.arrayFrom(result)) if (types.contains(item.getCat()) && item.getTitle().contains(key)) list.add(item.getVod());
        JsonObject jsonObject = new Gson().fromJson(result, JsonObject.class);
        for (JsonElement jsonElement : jsonObject.getAsJsonArray("data")) {
            String id = jsonElement.getAsJsonObject().get("key").getAsString();
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

    private String getToken() throws JSONException {
        if (TextUtils.isEmpty(token) || new Date().compareTo(date) > 0) {
            Map<String, String> params = new HashMap<>();
            params.put("action", "get_token");
            params.put("from", "web");
            String content = OkHttp.post(siteUrl, params, getHeaders());
            JSONObject object = new JSONObject(content);
            if (object.getBoolean("success")) {
                token = object.getString("data");
                date = new Date(System.currentTimeMillis() + 24 * 60 * 60 * 1000);
            }
        }
        return token;
    }
}
