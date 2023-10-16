package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;
import com.google.gson.Gson;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class BiLiBiLiTest {

    Spider bilibili;

    @Before
    public void setUp() throws Exception {
        bilibili = new BiLiBiLi();
        bilibili.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        String content = bilibili.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() {
    }

    @Test
    public void categoryContent() {
    }

    @Test
    public void detailContent() {
    }

    @Test
    public void searchContent() {
    }

    @Test
    public void playerContent() {
    }
}