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

public class Dm84Test {

    private Spider dm84;

    @Before
    public void setUp() throws Exception {
        dm84 = new Dm84();
        dm84.init(null,"http://dm84.site");
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        String content = dm84.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = dm84.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(dm84.categoryContent("1","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(dm84.detailContent(Arrays.asList("4129.html")));
    }

    @Test
    public void searchContent() throws Exception {
        String content = dm84.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(dm84.playerContent("","/p/4129-1-1.html",null));
    }
}