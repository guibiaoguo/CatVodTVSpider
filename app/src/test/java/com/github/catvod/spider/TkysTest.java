package com.github.catvod.spider;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class TkysTest {

    private Spider tkys;

    @Before
    public void setUp() throws Exception {
        tkys = new Tkys();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        tkys.init(null);
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(tkys.homeContent(true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(tkys.categoryContent("2","1",true,new HashMap()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(tkys.detailContent(Arrays.asList("415491")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(tkys.playerContent("","415491-1-1",null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(tkys.searchContent("火影", false));
    }
}