package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class LibTest {

    Spider spider;
    @Before
    public void setUp() throws Exception {
        spider = new Lib();
        spider.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(spider.homeContent(true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(spider.categoryContent("2","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(spider.detailContent(Arrays.asList("714890252")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(spider.playerContent("","714890252-2-1",new ArrayList<>()));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(spider.searchContent("火影",false));
    }
}