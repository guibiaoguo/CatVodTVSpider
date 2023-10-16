package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;
import com.google.gson.Gson;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class YingTest {

    Spider ying;

    @Before
    public void setUp() throws Exception {
        ying = new Ying();
        ying.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        String content = ying.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = ying.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(ying.categoryContent("日本","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(ying.detailContent(Arrays.asList("22328.html")));
    }

    @Test
    public void searchContent() throws Exception {
        String content = ying.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(ying.playerContent("","/vp/22328-1-0.html",new ArrayList<>()));
    }
}