package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class SP360Test {

    private Spider spider;

    @Before
    public void setUp() throws Exception {
        spider = new SP360();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        spider.init(null,"");
    }

    @Test
    public void headers() {
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(spider.categoryContent("2","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(spider.detailContent(Arrays.asList("2_R4VsaH7mRmDpOX")));
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(spider.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(spider.homeVideoContent());
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(spider.playerContent("","https://www.douyin.com/lvdetail/7208449348299194917",new ArrayList<>()));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(spider.searchContent("火影",false));
    }
}