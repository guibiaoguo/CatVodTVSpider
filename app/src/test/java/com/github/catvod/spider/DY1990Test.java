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

public class DY1990Test {

    private Spider dy1990;

    @Before
    public void setUp() throws Exception {
        dy1990 = new DY1990();
        dy1990.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(dy1990.categoryContent("fuli","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(dy1990.detailContent(Arrays.asList("52979")));
    }

    @Test
    public void homeContent() throws Exception {
        String content = dy1990.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(dy1990.homeVideoContent());
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(dy1990.playerContent("","52979-1-1",new ArrayList<>()));
    }

    @Test
    public void searchContent() throws Exception {
        String content = dy1990.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }
}