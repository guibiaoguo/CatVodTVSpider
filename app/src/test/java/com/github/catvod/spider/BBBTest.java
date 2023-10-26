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

public class BBBTest {

    private Spider bbb;

    @Before
    public void setUp() throws Exception {
        bbb = new BBB();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(bbb.categoryContent("電影","1",true, new HashMap()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(bbb.detailContent(Arrays.asList("BV1Ah4y1z7RP@662031481")));
    }

    @Test
    public void homeContent() throws Exception {
        String content = bbb.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = bbb.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void init() {
        bbb.init(null,"https://www.qiaoji8.com/tvbox/bili.json");
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(bbb.playerContent("", "21880376+ 36180672",null));
//        System.out.println(bbb.playerContent("", "662031481+1297277695+120:116:80:64:32:16+\\\"超清 4K\\\":\\\"高清 1080P60\\\":\\\"高清 1080P\\\":\\\"高清 720P\\\":\\\"清晰 480P\\\":\\\"流畅 360P\\\"",null));
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void searchContent() throws Exception {
        String content = bbb.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }
}