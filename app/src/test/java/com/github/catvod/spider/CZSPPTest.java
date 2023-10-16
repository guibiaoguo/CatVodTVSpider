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

public class CZSPPTest {

    private Spider czspp;

    @Before
    public void setUp() throws Exception {
        czspp = new CZSPP();
        czspp.init(null,"https://www.cz01.vip/");
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void loadVtt() {
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = czspp.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(czspp.categoryContent("/gcj","1",true,new HashMap()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(czspp.detailContent(Arrays.asList("4181")));
    }

    @Test
    public void homeContent() throws Exception {
        String content = czspp.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void l() {
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(czspp.playerContent("","bXZfNDE4MS1ubV8x",null));
    }

    @Test
    public void searchContent() throws Exception {
        String content = czspp.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }
}