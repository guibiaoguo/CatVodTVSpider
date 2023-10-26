package com.github.catvod.spider;

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

import org.apache.commons.lang3.StringUtils;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class XBiubiuTest {

    private Spider xbiubiu;

    @Before
    public void setUp() throws Exception {
        xbiubiu = new XBiubiu();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(xbiubiu.categoryContent("/vodshow/2--------","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(xbiubiu.detailContent(Arrays.asList("坏妈妈$$$https://img.tvbfuns.com/upload/vod/20230503-1/ca7ffed02fb5298ce2cedd0baa88845d.jpg$$$/hanju/11039.html")));
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(xbiubiu.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(xbiubiu.homeVideoContent());
    }

    @Test
    public void init() {
        xbiubiu.init(null, "https://freed.yuanhsing.cf/TVBox/MaooXB2/奇优影院（不支持搜）.json");
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(xbiubiu.playerContent("","/play/11039-1-1.html",null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(xbiubiu.searchContent("火影",false));
    }

//    @Test
//    public void testXBiubiu() {
//        String content = OkHttpUtil.string("https://gitlab.com/mao4284120/js/-/raw/main/212757.json");
//        JsonObject jsonObject = new Gson().fromJson(content, JsonObject.class);
//        JsonArray jsonArray = jsonObject.getAsJsonArray("sites");
//        JsonArray bad = new JsonArray();
//        JsonArray good = new JsonArray();
//        for (JsonElement jsonElement : jsonArray) {
//            String api = jsonElement.getAsJsonObject().get("api").getAsString();
//            if (api.equals("csp_XBiubiu")) {
//                try {
//                    String ext = jsonElement.getAsJsonObject().get("ext").getAsString();
//                    xbiubiu = new XBiubiu();
//                    xbiubiu.init(null, ext);
//                    String home = xbiubiu.homeContent(true);
//                    List<Class> classes = new Gson().fromJson(home, Result.class).getClasses();
//                    if (classes == null || classes.size() == 0) {
//                        throw new Exception("分类是空的");
//                    }
//                    System.out.println(xbiubiu.homeVideoContent());
//                    String cate = xbiubiu.categoryContent(classes.get(0).getTypeId(),"1",true, new HashMap<>());
//                    List<Vod> vods = new Gson().fromJson(cate, Result.class).getList();
//                    if (vods == null || vods.size() == 0) {
//                        throw new Exception("列表是空的");
//                    }
//                    String detail = xbiubiu.detailContent(Arrays.asList(vods.get(0).getVodId()));
//                    List<Vod> vodDetails = new Gson().fromJson(detail, Result.class).getList();
//                    if (vodDetails == null || vodDetails.size() == 0) {
//                        throw new Exception("内容时空的");
//                    }
//                    System.out.println(xbiubiu.playerContent("", vodDetails.get(0).getVodPlayUrl().split("#")[0].split("\\$")[1],null));
//                    System.out.println(xbiubiu.searchContent("火影", false));
//                    good.add(jsonElement);
//                } catch (Exception e) {
//                    e.printStackTrace();
//                    bad.add(jsonElement);
//                }
//            }
//        }
//
//        System.out.println(bad.toString());
//        System.out.println("**************************************************");
//        System.out.println(good.toString());
//    }

    @Test
    public void spider() {
        try {
            Class cls = null;
            cls = Class.forName("com.github.catvod.spider.XBiubiu" );
            Spider spider = (Spider) cls.newInstance();
            spider.init(null,"https://gitlab.com/mao4284120/js/-/raw/main/sub/奇优影院(ns)1.json");
            String home = spider.homeContent(true);
            System.out.println(home);
            String homeVideo = spider.homeVideoContent();
            System.out.println(homeVideo);
            JsonObject homeJson = JsonParser.parseString(home).getAsJsonObject();
            String tid = "";
            JsonArray classes = homeJson.getAsJsonArray("class");
            if (classes.size() > 3) {
                tid = classes.get(3).getAsJsonObject().get("type_id").getAsString();
            } else {
                tid = classes.get(classes.size() -1).getAsJsonObject().get("type_id").getAsString();
            }
            String categoryContent = spider.categoryContent(tid,"1",false,null);
            System.out.println(categoryContent);
            JsonObject jsonCategory = JsonParser.parseString(categoryContent).getAsJsonObject();
            String vid = jsonCategory.getAsJsonArray("list").get(0).getAsJsonObject().get("vod_id").getAsString();
            String detailContent = spider.detailContent(Arrays.asList(vid));
            System.out.println(detailContent);
            JsonObject jsonDetail = JsonParser.parseString(detailContent).getAsJsonObject();
            JsonElement playUrl = jsonDetail.getAsJsonArray("list").get(0).getAsJsonObject().get("vod_play_url");
            String playContent = spider.playerContent("",playUrl.getAsString().split("#")[0].split("\\$")[1],new ArrayList<>());
            System.out.println(playContent);
            String[] keys = new String[]{"宝可梦","蜘蛛","巨乳"};
            JsonObject jsonSearch = null;
            for (String key:keys) {
                String searchContent = spider.searchContent(key,false);
                if (StringUtils.isEmpty(searchContent)) {
                    jsonSearch = new JsonObject();
                } else {
                    jsonSearch = JsonParser.parseString(searchContent).getAsJsonObject();
                }
                SpiderDebug.log(jsonSearch.toString());
                if (jsonSearch.has("list") && jsonSearch.getAsJsonArray("list").size() >0) {
                    break;
                }
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }
}