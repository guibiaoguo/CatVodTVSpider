package com.github.catvod.spider;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;

import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class AppYsV2Test {

    private Spider appysv2;

    @Before
    public void setUp() throws Exception {
        appysv2 = new AppYsV2();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        appysv2.init(null, "https://www.naifei.life/api.php/v1.vod");
//        appysv2.init(null, "http://slapibf.com/api.php/provide/vod/");
    }

    @Test
    public void homeContent() throws Exception {
        String content = appysv2.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(appysv2.homeVideoContent());
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(appysv2.categoryContent("1", "1", true, new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        String detail = appysv2.detailContent(Arrays.asList("106"));
        Result result = new Gson().fromJson(detail, Result.class);
        System.out.println(detail);
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(appysv2.searchContent("火影", false));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(appysv2.playerContent("", "https://www.kuaizi.tv/vodplay/17748-1-1/", null));
    }

    @Test
    public void getCateUrl() {
    }

    @Test
    public void getCateFilterUrlPrefix() {
    }

    @Test
    public void getCateFilterUrlSuffix() {
    }

    @Test
    public void getFilterTypes() {
    }

    @Test
    public void getRecommendUrl() {
    }

    @Test
    public void getPlayUrlPrefix() {
    }

    @Test
    public void manualVideoCheck() {
    }

    @Test
    public void isVideoFormat() {
    }

    @Test
    public void desc() {
        String content = OkHttpUtil.string("https://app.bl210.com/api.php/v1.vod");
        JsonObject jsonObject = new Gson().fromJson(content, JsonObject.class);
        System.out.println(content);
    }

    @Test
    public void testAppYSV2() {
        String content = OkHttpUtil.string("https://gitlab.com/mao4284120/js/-/raw/main/212757_bad.json");
        JsonObject jsonObject = new Gson().fromJson(content, JsonObject.class);
        JsonArray jsonArray = jsonObject.getAsJsonArray("sites");
        JsonArray bad = new JsonArray();
        JsonArray good = new JsonArray();
        for (JsonElement jsonElement : jsonArray) {
            String api = jsonElement.getAsJsonObject().get("api").getAsString();
            if (api.equals("csp_AppYsV2")) {
                try {
                    String ext = jsonElement.getAsJsonObject().get("ext").getAsString();
                    appysv2.init(null, ext);
                    String home = appysv2.homeContent(true);
                    List<Class> classes = new Gson().fromJson(home, Result.class).getClasses();
                    if (classes == null || classes.size() == 0) {
                        throw new Exception("分类是空的");
                    }
                    System.out.println(appysv2.homeVideoContent());
                    String cate = appysv2.categoryContent(classes.get(0).getTypeId(),"1",true, new HashMap<>());
                    List<Vod> vods = new Gson().fromJson(cate, Result.class).getList();
                    if (vods == null || vods.size() == 0) {
                        throw new Exception("列表是空的");
                    }
                    String detail = appysv2.detailContent(Arrays.asList(vods.get(0).getVodId()));
                    List<Vod> vodDetails = new Gson().fromJson(detail, Result.class).getList();
                    if (vodDetails == null || vodDetails.size() == 0) {
                        throw new Exception("内容时空的");
                    }
                    System.out.println(appysv2.playerContent("", vodDetails.get(0).getVodPlayUrl().split("#")[0].split("\\$")[1],null));
                    System.out.println(appysv2.searchContent("火影", false));
                    good.add(jsonElement);
                } catch (Exception e) {
                    e.printStackTrace();
                    bad.add(jsonElement);
                }
            }
        }

        System.out.println(bad.toString());
        System.out.println("**************************************************");
        System.out.println(good.toString());
    }
}