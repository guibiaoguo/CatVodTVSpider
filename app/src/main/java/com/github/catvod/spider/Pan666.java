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
import com.google.gson.JsonParser;

import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

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
public class Pan666 extends Ali {

    private static final Pattern AliPLink = Pattern.compile("href=\"(https://www.aliyundrive.com/s/[^\"]+)");
    public static Pattern Folder = Pattern.compile("www.aliyundrive.com/s/([^/]+)(/folder/([^/]+))?");

    public static String siteUrl = "https://pan666.net";

    private String classConfig = "[{\"type_name\":\"影视\",\"type_id\":\"video\",\"type_flag\":\"1\"},{\"type_name\":\"动漫\",\"type_id\":\"comic\",\"type_flag\":\"1\"}]";

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
        return categoryContent("video","1",false,new HashMap<>());
    }

    private HashMap<String, String> getHeaders() {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", Utils.CHROME);
        return headers;
    }

    public HashMap<String, String> getHeader() {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", Utils.CHROME);
        headers.put("Referer", "https://www.aliyundrive.com/");
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
                } else {
                    vod.setVodPic("http://img1.3png.com/281e284a670865a71d91515866552b5f172b.png");
                }
                list.add(vod);
            }
        } else {
            String result = OkHttpUtil.string(siteUrl + "/api/discussions?include=user%2ClastPostedUser%2Ctags%2Ctags.parent%2CfirstPost&filter%5Btag%5D="+type+"&sort&page%5Boffset%5D="+(Integer.parseInt(pg) -1) *20, getHeaders());
            JsonObject jsonObject = new Gson().fromJson(result, JsonObject.class);
            for (JsonElement jsonElement:jsonObject.getAsJsonArray("data")) {
                String postId = "";
                JsonObject relationships = jsonElement.getAsJsonObject().getAsJsonObject("relationships");
                JsonObject attributes = jsonElement.getAsJsonObject().getAsJsonObject("attributes");
                String title = attributes.get("title").getAsString();
                if (relationships.has("firstPost")) {
                    postId = relationships.getAsJsonObject("firstPost").getAsJsonObject("data").get("id").getAsString();
                } else if (relationships.has("lastPost")) {
                    postId = relationships.getAsJsonObject("lastPost").getAsJsonObject("data").get("id").getAsString();
                } else if (relationships.has("post")) {
                    postId = relationships.getAsJsonObject("post").getAsJsonObject("data").get("id").getAsString();
                } else if (relationships.has("posts")) {
                    postId = relationships.getAsJsonObject("posts").getAsJsonObject().getAsJsonArray("data").get(0).getAsJsonObject().get("id").getAsString();
                }
                String id = "";
                String remark = "";
                String img = "";
                List<String> ids = new ArrayList<>();
                for (JsonElement included:jsonObject.getAsJsonArray("included")) {
                    if (included.getAsJsonObject().get("id").getAsString().equals(postId) && included.getAsJsonObject().get("type").getAsString().equals("posts")) {
                        String contentHtml = included.getAsJsonObject().getAsJsonObject("attributes").get("contentHtml").getAsString();
                        Matcher matcher = AliPLink.matcher(contentHtml);
                        while (matcher.find()) {
                            id = matcher.group(1);
                            Vod vod = new Vod(id,title,img,remark);
                            Map<String, Object> data = new HashMap<>();
                            Matcher fmatcher = Folder.matcher(id);
                            if (!fmatcher.find()) {
                                continue;
                            }
                            data.put("share_id", fmatcher.group(1));
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
                        break;
                    }
                }
            }
        }
        return Result.string(list);
    }

    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        List<Vod> list = new ArrayList<>();
        String result = OkHttpUtil.string(siteUrl + "/api/discussions?include=user%2ClastPostedUser%2CmostRelevantPost%2CmostRelevantPost.user%2Ctags%2Ctags.parent%2CfirstPost&filter%5Bq%5D="+ StringUtil.encode(key)+"&sort&page%5Boffset%5D=0", getHeaders());
        JsonObject jsonObject = new Gson().fromJson(result, JsonObject.class);
        for (JsonElement jsonElement:jsonObject.getAsJsonArray("data")) {
            String postId = "";
            JsonObject relationships = jsonElement.getAsJsonObject().getAsJsonObject("relationships");
            JsonObject attributes = jsonElement.getAsJsonObject().getAsJsonObject("attributes");
            String title = attributes.get("title").getAsString();
            if (relationships.has("firstPost")) {
                postId = relationships.getAsJsonObject("firstPost").getAsJsonObject("data").get("id").getAsString();
            } else if (relationships.has("lastPost")) {
                postId = relationships.getAsJsonObject("lastPost").getAsJsonObject("data").get("id").getAsString();
            } else if (relationships.has("post")) {
                postId = relationships.getAsJsonObject("post").getAsJsonObject("data").get("id").getAsString();
            } else if (relationships.has("posts")) {
                postId = relationships.getAsJsonObject("posts").getAsJsonObject().getAsJsonArray("data").get(0).getAsJsonObject().get("id").getAsString();
            }
            String id = "";
            String remark = "";
            String img = "";
            for (JsonElement included:jsonObject.getAsJsonArray("included")) {
                if (included.getAsJsonObject().get("id").getAsString().equals(postId) && included.getAsJsonObject().get("type").getAsString().equals("posts")) {
                    String contentHtml = included.getAsJsonObject().getAsJsonObject("attributes").get("contentHtml").getAsString();
                    Matcher matcher = AliPLink.matcher(contentHtml);
                    if (matcher.find()) {
                        id = matcher.group(1);
                    }
                    break;
                }
            }
            Vod vod = new Vod(id,title,img,remark);
            list.add(vod);
        }
        return Result.string(list);
    }
}
