package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class YsjTest {

    Spider ysj;

    @Before
    public void setUp() throws Exception {
        ysj = new Ysj();
        ysj.init(null,"https://www.lldm.net/");
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(ysj.homeContent(true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(ysj.categoryContent("BD%E6%97%A0%E4%BF%AE","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(ysj.detailContent(Arrays.asList("717.html")));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(ysj.searchContent("火影",false));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(ysj.playerContent("717/sid/1/nid/1.html","",new ArrayList<>()));
    }
}