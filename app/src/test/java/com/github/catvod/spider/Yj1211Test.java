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

public class Yj1211Test {

    Spider yj1211;

    @Before
    public void setUp() throws Exception {
        yj1211 = new Yj1211();
        yj1211.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        String content = yj1211.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void categoryContent() {
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(yj1211.detailContent(Arrays.asList("huya&521000")));
    }

    @Test
    public void playerContent() {
    }

    @Test
    public void searchContent() {
    }
}