package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;

public class Dm84Test {

    private Spider dm84;

    @Before
    public void setUp() throws Exception {
        dm84 = new Dm84();
        dm84.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(dm84.homeContent(true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(dm84.categoryContent("1","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(dm84.detailContent(List.of("4129.html")));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(dm84.searchContent("火影", true));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(dm84.playerContent("","/p/4129-1-1.html",null));
    }
}