package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;

public class AListTest {

    private Spider alist;

    @Before
    public void setUp() throws Exception {
        alist = new AList();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        alist.init(null, "https://ghproxy.com/https://raw.githubusercontent.com/FongMi/CatVodSpider/main/json/alist.json");
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(alist.homeContent(true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(alist.categoryContent("小雅/动漫/A-Z/A/爱吃拉面的小泉同学/Season 01","1",false, new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(alist.detailContent(List.of("小雅/动漫/A-Z/A/爱吃拉面的小泉同学/Season 01/[UHA-WINGS][Ramen Daisuki Koizumi-san] S01E01[x264_1080p][BIG5].mp4")));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(alist.searchContent("拉面", false));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(alist.playerContent("", "小雅/动漫/A-Z/A/爱吃拉面的小泉同学/Season 01/[UHA-WINGS][Ramen Daisuki Koizumi-san] S01E01[x264_1080p][BIG5].mp4", null));
    }
}