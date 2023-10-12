package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.HashMap;

public class XBPQTest {

    private Spider spider;

    @Before
    public void setUp() throws Exception {
        spider = new XYQ();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        spider.init(null,"https://weixine.net/sub/LIBVIO.json");
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
        System.out.println(spider.categoryContent("","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() {
    }

    @Test
    public void playerContent() {
    }

    @Test
    public void manualVideoCheck() {
    }

    @Test
    public void isVideoFormat() {
    }

    @Test
    public void searchContent() {
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