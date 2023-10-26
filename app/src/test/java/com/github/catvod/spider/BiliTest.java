package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;
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
        bili.init(null, "https://download.kstore.space/download/4907/jcsq/js/我的哔哩.json");
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
        System.out.println(bili.categoryContent("電影", "1", true, new HashMap()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(bili.detailContent(Arrays.asList("BV1A84y127t9@619571245")));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(bili.searchContent("火影", true));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(bili.playerContent("", "577093762+1296645526+32:16+清晰 480P:流畅 360P", null));
    }
}