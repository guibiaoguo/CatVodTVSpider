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

public class BttooTest {

    private Spider bttoo;

    @Before
    public void setUp() throws Exception {
        bttoo = new Bttoo();
        bttoo.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = bttoo.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(bttoo.categoryContent("meiju","1",true,new HashMap()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(bttoo.detailContent(Arrays.asList("67797")));
    }

    @Test
    public void homeContent() throws Exception {
        String content = bttoo.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(bttoo.playerContent("","bXZfNjc3OTctbm1fMQ==",null));
    }

    @Test
    public void searchContent() throws Exception {
        String content = bttoo.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }
}