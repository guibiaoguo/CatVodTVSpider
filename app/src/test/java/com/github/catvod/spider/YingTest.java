package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class YingTest {

    Spider ying;

    @Before
    public void setUp() throws Exception {
        ying = new Ying();
        ying.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(ying.homeContent(true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(ying.categoryContent("日本","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(ying.detailContent(Arrays.asList("22328.html")));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(ying.searchContent("火影",false));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(ying.playerContent("","/vp/22328-1-0.html",new ArrayList<>()));
    }
}