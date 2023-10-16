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

public class Dy555Test {

    private Spider dy555;

    @Before
    public void setUp() throws Exception {
        dy555 = new Dy555();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(dy555.detailContent(Arrays.asList("425288")));
    }

    @Test
    public void homeContent() throws Exception {
        String content = dy555.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = dy555.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void init() {
        dy555.init(null,"https://555dy.shop/");
    }

    @Test
    public void isVideoFormat() {
    }

    @Test
    public void j() {
    }

    @Test
    public void manualVideoCheck() {
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(dy555.playerContent("","425288-4-1",null));
    }

    @Test
    public void searchContent() throws Exception {
        String content = dy555.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(dy555.categoryContent("124","1",true,new HashMap<>()));
    }
}