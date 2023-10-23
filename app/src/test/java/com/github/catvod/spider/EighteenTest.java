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

public class EighteenTest {

    Spider eighteen;

    @Before
    public void setUp() throws Exception {
        eighteen = new Eighteen();
        eighteen.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        String content = eighteen.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = eighteen.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(eighteen.categoryContent("chinese_random/all/index.html","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(eighteen.detailContent(Arrays.asList("chinese_content/46799/SSNI-209.html")));
    }

    @Test
    public void searchContent() throws Exception {
        String content = eighteen.searchContent("巨乳",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("巨乳"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void playerContent() throws Exception {
//        System.out.println(eighteen.playerContent("","chinese_content/46799/SSNI-209.html",new ArrayList<>()));
    }
}