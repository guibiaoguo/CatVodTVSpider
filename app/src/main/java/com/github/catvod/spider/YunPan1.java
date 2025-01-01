package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.utils.Json;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.Utils;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;

/**
 * @author ColaMint & FongMi
 */
public class YunPan1 extends NetworkDrive {

    public static String siteUrl = "https://yunpan1.cc";

    private String classConfig = "[{\"type_name\":\"影视\",\"type_id\":\"video1\",\"type_flag\":\"2\"},{\"type_name\":\"动漫\",\"type_id\":\"cartoon\",\"type_flag\":\"2\"}]";

    private JsonObject exts;

    @Override
    public void init(Context context,String extend) {
        try {
            if (extend.startsWith("http")) {
                exts = Json.safeObject(OkHttpUtil.string(extend));
            } else {
                exts = Json.safeObject(extend);
            }
        } catch (Exception e) {}
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
        return categoryContent("video1","1",false,new HashMap<>());
    }

    private HashMap<String, String> getHeaders() {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", Utils.CHROME);
        headers.put("x-csrf-token",exts.has("x-csrf-token")?exts.get("x-csrf-token").getAsString():"CqVsP32x5eH4oFQh7HAkrE9LealChGWxPopy3FFl");
        headers.put("Cookie",exts.has("cookie")?exts.get("cookie").getAsString():"sl-session=wP4rBxi0dGd7AsXvt6Du7Q==; sl-challenge-server=cloud; sl-waiting-state=done; flarum_session=9D8M6aCH6kIBWymlA0TEh4B7FbkGPqkIwt02rAAg; sl_jwt_session=9O3BbQO3c2eGozKPe0eZpQ==; sl_jwt_sign=; sl-waiting-session=f0bcc77f8312d09dddbea84d53d8cd4c");
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
        if (isDrive(tid)) {
            return super.categoryContent(tid, pg, filter, extend);
        } else {
            String result = OkHttpUtil.string(siteUrl + "/api/discussions?include=user%2ClastPostedUser%2Ctags%2Ctags.parent%2CfirstPost&filter%5Btag%5D="+type+"&sort&page%5Boffset%5D="+(Integer.parseInt(pg) -1) *20+"&page%5Blimit%5D="+(Integer.parseInt(pg) -1) *20, getHeaders());
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
                        while (matcher.find()) {
                            id = matcher.group(1);
                            img = "https://img.tukuppt.com/png_preview/00/18/23/GBmBU6fHo7.jpg";
                            remark = "阿里云盘";
                            Vod vod = new Vod(id,title,img,remark);
                            vod.setVodTag("folder");
                            list.add(vod);
                        }
                        matcher = QuarkPLink.matcher(contentHtml);
                        while (matcher.find()) {
                            id = matcher.group(1);
                            img = "https://img.tukuppt.com/png_preview/00/18/23/GBmBU6fHo7.jpg";
                            remark = "夸克云盘";
                            Vod vod = new Vod(id,title,img,remark);
                            vod.setVodTag("folder");
                            list.add(vod);
                        }
                        matcher = UcPLink.matcher(contentHtml);
                        while (matcher.find()) {
                            id = matcher.group(1);
                            remark = "uc云盘";
                            img = "https://img.tukuppt.com/png_preview/00/18/23/GBmBU6fHo7.jpg";
                            Vod vod = new Vod(id,title,img,remark);
                            vod.setVodTag("folder");
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
                    while (matcher.find()) {
                        id = matcher.group(1);
                        img = "https://g.alicdn.com/uc-cloud-drive-web-system/cloud-drive-web/2.19.4/assets/aba8419a54ac0acdb0c25df178a7006c.png";
                        remark = "阿里云盘";
                        Vod vod = new Vod(id,title,img,remark);
                        vod.setVodTag("folder");
                        list.add(vod);
                    }
                    matcher = QuarkPLink.matcher(contentHtml);
                    while (matcher.find()) {
                        id = matcher.group(1);
                        img = "https://g.alicdn.com/uc-cloud-drive-web-system/cloud-drive-web/2.19.4/assets/aba8419a54ac0acdb0c25df178a7006c.png";
                        remark = "夸克云盘";
                        Vod vod = new Vod(id,title,img,remark);
                        vod.setVodTag("folder");
                        list.add(vod);
                    }
                    matcher = UcPLink.matcher(contentHtml);
                    while (matcher.find()) {
                        id = matcher.group(1);
                        remark = "uc云盘";
                        img = "https://g.alicdn.com/uc-cloud-drive-web-system/cloud-drive-web/2.19.4/assets/aba8419a54ac0acdb0c25df178a7006c.png";
                        Vod vod = new Vod(id,title,img,remark);
                        vod.setVodTag("folder");
                        list.add(vod);
                    }
                    break;
                }
            }
        }
        return Result.string(list);
    }
}
