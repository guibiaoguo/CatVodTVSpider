package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;
import com.google.gson.Gson;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class AueteTest {

    private Spider auete;

    @Before
    public void setUp() throws Exception {
        auete = new Auete();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        auete.init(null, "");
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void homeContent() throws Exception {
        String content = auete.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = auete.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(auete.categoryContent("Tv", "1",true, new HashMap()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(auete.detailContent(Arrays.asList("Tv/tvbgj/shuihuwujiandao")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(auete.playerContent("", "/Tv/tvbgj/shuihuwujiandao/play-0-0.html", null));
    }

    @Test
    public void searchContent() throws Exception {
        String content = auete.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }
}