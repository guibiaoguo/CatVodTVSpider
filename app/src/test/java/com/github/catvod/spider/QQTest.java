package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;
import com.github.catvod.net.OkHttp;
import com.github.catvod.parser.AnalyzeByJSonPath;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public class QQTest {

    Spider qq = null;

    @Before
    public void setUp() throws Exception {
        qq = new QQ();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        qq.init(null);
    }

    @Test
    public void testInit() throws Exception {
        URI uri = new URI("https://www.baidu.com");
        System.out.println(uri.getScheme());
        Map<String, Object> data = new HashMap<>();
        data.put("v",1);
        data.put("n",2);
        System.out.println(new Gson().toJson(data));
        String content = OkHttp.string("https://github.moeyy.xyz/https://raw.githubusercontent.com/52670576/tvbox/main/ysc.json");
//        System.out.println(content);
        JsonObject jsonObject = new Gson().fromJson(content, JsonObject.class);
        System.out.println(jsonObject.get("wallpaper").getAsString());
        AnalyzeByJSonPath analyzeByJSonPath = new AnalyzeByJSonPath(content);
        System.out.println(analyzeByJSonPath.getStringList("$.sites"));
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(qq.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(qq.homeVideoContent());
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(qq.categoryContent("tv", "1", false, null));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(qq.detailContent(Arrays.asList("mzc002009ktefn0")));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(qq.searchContent("熊出没", false));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(qq.playerContent("qq", "https://v.qq.com/x/cover/mzc00200k1qzwd5/m00468zaiqd.html", Arrays.asList("qq")));
    }

    @Test
    public void isVideoFormat() {
    }

    @Test
    public void manualVideoCheck() {
    }

    @Test
    public void testInit1() {
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void testHomeContent() {
    }

    @Test
    public void testHomeVideoContent() {
    }

    @Test
    public void testCategoryContent() {
    }

    @Test
    public void testDetailContent() {
    }

    @Test
    public void testPlayerContent() {
    }

    @Test
    public void testSearchContent() {
    }
}