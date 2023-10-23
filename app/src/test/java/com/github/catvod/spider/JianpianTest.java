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

public class JianpianTest {

    Spider jianpian;

    @Before
    public void setUp() throws Exception {
        jianpian = new Jianpian();
        jianpian.init(null,"https://ownjpykxttjzuhy.jiesiwa.com");
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        String content = jianpian.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = jianpian.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(jianpian.categoryContent("1", "1", true, new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(jianpian.detailContent(Arrays.asList("3156")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(jianpian.playerContent("", "561708", new ArrayList<>()));
    }

    @Test
    public void searchContent() throws Exception {
        String content = jianpian.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }
}