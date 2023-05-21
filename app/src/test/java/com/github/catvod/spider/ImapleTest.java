package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class ImapleTest {

    private Spider imaple;

    @Before
    public void setUp() throws Exception {
        imaple = new Imaple();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        imaple.init(null);
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(imaple.homeContent(true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(imaple.categoryContent("2","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(imaple.detailContent(Arrays.asList("269124")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(imaple.playerContent("","269124-2-1",null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(imaple.searchContent("火影",true));
    }
}