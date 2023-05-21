package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
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
        System.out.println(bbb.categoryContent("电视剧","1",true, new HashMap()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(bbb.detailContent(Arrays.asList("BV1nW411K7CU")));
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(bbb.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(bbb.homeVideoContent());
    }

    @Test
    public void init() {
        bbb.init(null);
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(bbb.playerContent("", "21880376+ 36180672",null));
    }

    @Test
    public void getHeaders() {
    }
}