package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class AnfunsTest {

    Spider anfuns;

    @Before
    public void setUp() throws Exception {
        anfuns = new Anfuns();
        anfuns.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(anfuns.homeContent(true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(anfuns.categoryContent("1","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(anfuns.detailContent(Arrays.asList("/anime/1875.html")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(anfuns.playerContent("","/play/1875-1-1.html",new ArrayList<>()));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(anfuns.searchContent("火影",false));
    }
}