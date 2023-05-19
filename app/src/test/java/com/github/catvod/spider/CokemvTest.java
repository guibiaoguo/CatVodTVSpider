package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;

public class CokemvTest {

    private Spider cokemv;

    @Before
    public void setUp() throws Exception {
        cokemv = new Cokemv();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        cokemv.init(null);
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(cokemv.homeContent(true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(cokemv.categoryContent("2","1",true,new HashMap()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(cokemv.detailContent(List.of("5042")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(cokemv.playerContent("","5042-1-1",null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(cokemv.searchContent("火影", false));
    }
}