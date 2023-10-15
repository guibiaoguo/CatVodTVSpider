package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class CZSPPTest {

    private Spider czspp;

    @Before
    public void setUp() throws Exception {
        czspp = new CZSPP();
        czspp.init(null,"https://www.cz01.vip/");
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void loadVtt() {
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(czspp.categoryContent("/gcj","1",true,new HashMap()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(czspp.detailContent(Arrays.asList("4181")));
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(czspp.homeContent(true));
    }

    @Test
    public void l() {
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(czspp.playerContent("","bXZfNDE4MS1ubV8x",null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(czspp.searchContent("火影",true));
    }
}