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

public class CokemvTest {

    private Spider cokemv;

    @Before
    public void setUp() throws Exception {
        cokemv = new Cokemv();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        cokemv.init(null);
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void homeContent() throws Exception {
        String content = cokemv.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }
    @Test
    public void homeVideoContent() throws Exception {
        String content = cokemv.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(cokemv.categoryContent("2","1",true,new HashMap()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(cokemv.detailContent(Arrays.asList("5042")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(cokemv.playerContent("","5042-1-1",null));
    }

    @Test
    public void searchContent() throws Exception {
        String content = cokemv.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }
}