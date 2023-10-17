package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.ali.API;
import com.github.catvod.bean.Class;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.bean.ali.Item;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.Utils;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cn.hutool.core.util.ReUtil;
import cn.hutool.core.util.StrUtil;

/**
 * @author ColaMint & FongMi
 */
public class Ahhhhfs extends Ali {

    private static final Pattern AliPLink = Pattern.compile("(https://www.aliyundrive.com/s/[^\"]+)");
    public static Pattern Folder = Pattern.compile("www.aliyundrive.com/s/([^/]+)(/folder/([^/]+))?");

    public static String siteUrl = "https://www.ahhhhfs.com";

    private String classConfig = "[{\"type_name\":\"影视\",\"type_id\":\"movie\"}]";

    @Override
    public void init(Context context,String extend) {
        super.init(context,extend);  
    }

    @Override
    public String homeContent(boolean filter) throws Exception {
        List<Vod> list = new ArrayList<>();
        List<Class> classes = Class.arrayFrom(classConfig);
        return Result.string(classes,list);
    }

    @Override
    public String homeVideoContent() throws Exception {
        return categoryContent("movie","1",false,new HashMap<>());
    }

    private HashMap<String, String> getHeaders() {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", Utils.CHROME);
        return headers;
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        String type = extend.containsKey("type") ? extend.get("type") : tid;
        List<Vod> list = new ArrayList<>();
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
            String result = OkHttpUtil.string(siteUrl + "/welfare/"+type+"/page/"+pg+"/", getHeaders());
            Document doc = Jsoup.parse(result);
            for (Element element:doc.select(".item-list")) {
                String title = element.select("h2 a").attr("title");
                String remark = element.select("time").attr("datetime");
                String img = element.select("a").attr("data-bg");
                String id = element.select("a").attr("href");
                String contentHtml = OkHttpUtil.string(id,getHeaders());
                Matcher matcher = AliPLink.matcher(contentHtml);
                if (matcher.find()) {
                    id = matcher.group(1);
                } else {
                    continue;
                }
                Vod vod = new Vod(id,title,img,remark);
                Map<String, Object> data = new HashMap<>();
                matcher = Folder.matcher(id);
                if (!matcher.find()) {
                    continue;
                }
                data.put("share_id", matcher.group(1));
                String json = OkHttpUtil.postJson("https://api.aliyundrive.com/adrive/v3/share_link/get_share_by_anonymous", new Gson().toJson(data), API.get().getHeader());
                JsonArray fileInfos = new Gson().fromJson(json, JsonObject.class).getAsJsonArray("file_infos");
                if (fileInfos != null &&fileInfos.size() > 0 && fileInfos.get(0).getAsJsonObject().get("type").getAsString().equals("folder")) {
                    vod.setVodTag("folder");
                }
                list.add(vod);
            }
        }
        return Result.string(list);
    }

    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        List<Vod> list = new ArrayList<>();
        String result = OkHttpUtil.string(siteUrl + "?cat=13&s="+ StringUtil.encode(key), getHeaders());
        Document doc = Jsoup.parse(result);
        for (Element element:doc.select(".item-list")) {
            String title = element.select("h2 a").attr("title");
            String remark = element.select("time").attr("datetime");
            String img = element.select("a").attr("data-bg");
            String id = element.select("a").attr("href");
            String contentHtml = OkHttpUtil.string(id,getHeaders());
            Matcher matcher = AliPLink.matcher(contentHtml);
            if (matcher.find()) {
                id = matcher.group(1);
            } else {
                continue;
            }
            Vod vod = new Vod(id,title,img,remark);
            list.add(vod);
        }
        return Result.string(list);
    }
}
