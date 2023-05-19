package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;

public class HsckTest {

    private Spider hsck;

    @Before
    public void setUp() throws Exception {
        hsck = new Hsck();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        hsck.init(null, "https://www.javsee.men/");
    }

    @Test
    public void testInit() {
    }

    @Test
    public void getDomain() {
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(hsck.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(hsck.homeVideoContent());
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(hsck.categoryContent("1","1",true,new HashMap<>()));
    }

    @Test
    public void getDirector() {
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(hsck.detailContent(List.of("/vodplay/34727-1-1.html#https://666546.xyz/images/2023/05/17/162a38014e06e9660dfdde744654b465.jpg")));
    }

    @Test
    public void join() {
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(hsck.playerContent("", "", null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(hsck.searchContent("巨乳", true));
    }
}