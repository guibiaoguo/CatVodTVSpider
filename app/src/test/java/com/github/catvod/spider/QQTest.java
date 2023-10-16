package com.github.catvod.spider;

import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;

//import com.github.catvod.parser.AnalyzeByJSonPath;
//import com.github.catvod.parser.AnalyzeRule;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.net.URI;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

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

//    @Test
    public void testInit() throws Exception {
        URI uri = new URI("https://www.baidu.com");
        System.out.println(uri.getScheme());
        Map<String, Object> data = new HashMap<>();
        data.put("v",1);
        data.put("n",2);
        System.out.println(new Gson().toJson(data));
        String content = OkHttpUtil.string("https://github.moeyy.xyz/https://raw.githubusercontent.com/52670576/tvbox/main/ysc.json");
//        System.out.println(content);
        JsonObject jsonObject = new Gson().fromJson(content, JsonObject.class);
        System.out.println(jsonObject.get("wallpaper").getAsString());
//        AnalyzeByJSonPath analyzeByJSonPath = new AnalyzeByJSonPath(content);
//        System.out.println(analyzeByJSonPath.getStringList("$.sites"));
    }

    @Test
    public void homeContent() throws Exception {
        String content = qq.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = qq.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
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
        String content = qq.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
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
//        AnalyzeRule analyzeRule = new AnalyzeRule();
    }
}