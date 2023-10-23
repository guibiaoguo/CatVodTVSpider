package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class XYQBiuTest {

    private Spider spider = null;
    @Before
    public void setUp() throws Exception {
        spider = new XYQBiu();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        spider.init(null,"https://weixine.net/sub/douyu.json");
    }

    @Test
    public void testInit() {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(spider.homeContent(true));
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(spider.homeVideoContent());
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(spider.categoryContent("LOL","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(spider.detailContent(Arrays.asList("暗黑4 玩一完$$$https://rpic.douyucdn.cn/asrpic/230603/101_src_0205.avif/dy1$$$101")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(spider.playerContent("","101",new ArrayList<>()));
    }

    @Test
    public void manualVideoCheck() {
    }

    @Test
    public void isVideoFormat() {
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(spider.searchContent("火影",false));
    }

    @Test
    public void fetchRule() {
    }

    @Test
    public void escapeExprSpecialWord() {
    }

    @Test
    public void fixCover() {
    }

    @Test
    public void loadPic() {
    }

    @Test
    public void fetch() {
    }

    @Test
    public void jumpbtwaf() {
    }
}