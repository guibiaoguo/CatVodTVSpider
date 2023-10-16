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

public class ImapleTest {

    private Spider imaple;

    @Before
    public void setUp() throws Exception {
        imaple = new Imaple();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        imaple.init(null);
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void homeContent() throws Exception {
        String content = imaple.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = imaple.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(imaple.categoryContent("2","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(imaple.detailContent(Arrays.asList("269124")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(imaple.playerContent("","269124-2-1",null));
    }

    @Test
    public void searchContent() throws Exception {
        String content = imaple.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }
}