package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;

public class BiliTest {

    private Spider bili;

    @Before
    public void setUp() throws Exception {
        bili = new Bili();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        bili.init(null, "https://ghproxy.com/https://raw.githubusercontent.com/FongMi/CatVodSpider/main/json/bili.json");
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(bili.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(bili.homeVideoContent());
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(bili.categoryContent("电影", "1", true, new HashMap()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(bili.detailContent(List.of("BV15z4y1871k")));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(bili.searchContent("火影", true));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(bili.playerContent("", "571007162+1125499203", null));
    }
}