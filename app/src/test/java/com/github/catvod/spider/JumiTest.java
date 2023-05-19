package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;

public class JumiTest {

    private Spider jumi;

    @Before
    public void setUp() throws Exception {
        jumi = new Jumi();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        jumi.init(null);
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(jumi.homeContent(true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(jumi.categoryContent("1","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(jumi.detailContent(List.of("202372")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(jumi.playerContent("","202372-8-1",null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(jumi.searchContent("火影", true));
    }
}