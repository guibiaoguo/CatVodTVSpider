package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.net.OkHttp;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

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
        System.out.println(xbiubiu.detailContent(List.of("坏妈妈$$$https://img.tvbfuns.com/upload/vod/20230503-1/ca7ffed02fb5298ce2cedd0baa88845d.jpg$$$/hanju/11039.html")));
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
        xbiubiu.init(null, "http://9xi4o.tk/sub/biubiu/%E9%9F%A9%E5%89%A7%E5%9C%A8%E7%BA%BF.json");
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(xbiubiu.playerContent("","/play/11039-1-1.html",null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(xbiubiu.searchContent("火影",false));
    }

    @Test
    public void testXBiubiu() {
        String content = OkHttp.string("https://aria2.guibiaoguo.ml/212757_debug.json");
        JsonObject jsonObject = new Gson().fromJson(content, JsonObject.class);
        JsonArray jsonArray = jsonObject.getAsJsonArray("sites");
        JsonArray bad = new JsonArray();
        JsonArray good = new JsonArray();
        for (JsonElement jsonElement : jsonArray) {
            String api = jsonElement.getAsJsonObject().get("api").getAsString();
            if (api.equals("csp_XBiubiu")) {
                try {
                    String ext = jsonElement.getAsJsonObject().get("ext").getAsString();
                    xbiubiu = new XBiubiu();
                    xbiubiu.init(null, ext);
                    String home = xbiubiu.homeContent(true);
                    List<Class> classes = new Gson().fromJson(home, Result.class).getClasses();
                    if (classes == null || classes.size() == 0) {
                        throw new Exception("分类是空的");
                    }
                    System.out.println(xbiubiu.homeVideoContent());
                    String cate = xbiubiu.categoryContent(classes.get(0).getTypeId(),"1",true, new HashMap<>());
                    List<Vod> vods = new Gson().fromJson(cate, Result.class).getList();
                    if (vods == null || vods.size() == 0) {
                        throw new Exception("列表是空的");
                    }
                    String detail = xbiubiu.detailContent(List.of(vods.get(0).getVodId()));
                    List<Vod> vodDetails = new Gson().fromJson(detail, Result.class).getList();
                    if (vodDetails == null || vodDetails.size() == 0) {
                        throw new Exception("内容时空的");
                    }
                    System.out.println(xbiubiu.playerContent("", vodDetails.get(0).getVodPlayUrl().split("#")[0].split("\\$")[1],null));
                    System.out.println(xbiubiu.searchContent("火影", false));
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