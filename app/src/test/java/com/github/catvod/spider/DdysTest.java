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

public class DdysTest {

    private Spider ddys;

    @Before
    public void setUp() throws Exception {
        ddys = new Ddys();
        ddys.init(null);
        Proxy.port = 9978;
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void headers() {
    }

    @Test
    public void homeContent() throws Exception {
        String content = ddys.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(ddys.categoryContent("drama/kr-drama","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(ddys.detailContent(Arrays.asList("the-good-bad-mother")));
    }

    @Test
    public void loadsub() {
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(ddys.homeContent(true));
        System.out.println(ddys.detailContent(Arrays.asList("the-good-bad-mother")));
        System.out.println(ddys.playerContent("","https://ddys.mov/v/kr_drama/The_Good_Bad_Mother/The_Good_Bad_Mother_S01E14.mp4?ddrkey=te0yCfHR7aD%2Fo|https://ddys.mov/subddr//v/kr_drama/The_Good_Bad_Mother/The_Good_Bad_Mother_S01E14.ddr",new ArrayList<>()));
    }

    @Test
    public void searchContent() throws Exception {
        String content = ddys.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }
}