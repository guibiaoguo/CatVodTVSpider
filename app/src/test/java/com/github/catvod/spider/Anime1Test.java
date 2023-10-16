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

public class Anime1Test {

    Spider anime1;

    @Before
    public void setUp() throws Exception {
        anime1 = new Anime1();
        anime1.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        String content = anime1.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(anime1.categoryContent("0","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(anime1.detailContent(Arrays.asList("1307")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(anime1.playerContent("","",new ArrayList<>()));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(anime1.searchContent("火影",false));
    }
}