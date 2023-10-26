package com.github.catvod.spider;

import static org.junit.Assert.*;

import android.util.Log;

import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import org.apache.commons.lang3.StringUtils;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;

public class XPathTest {

    private Spider xpath;

    @Before
    public void setUp() throws Exception {
        xpath = new XPath();
        xpath.init(null,"https://gitlab.com/mao4284120/js/-/raw/main/sub/xxintv.json");
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        String content = xpath.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void categoryUrl() {
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(xpath.categoryContent("1","1",false,null));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(xpath.detailContent(Arrays.asList("https://www.xxintv.cc/xx/361138.html")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(xpath.playerContent("","6845",null));
    }

    @Test
    public void searchContent() throws Exception {
        String content = xpath.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void spider() {
        try {
            Class cls = null;
            cls = Class.forName("com.github.catvod.spider.XPathMac" );
            Spider spider = (Spider) cls.newInstance();
            spider.init(null,"https://gitlab.com/mao4284120/js/-/raw/main/sub/aidi.json");
            String home = spider.homeContent(true);
            System.out.println(home);
            System.out.println(spider.playerContent("","https://adys.tv/play/3347-1-1.html",null));
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