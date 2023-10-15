package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class DY1990Test {

    private Spider dy1990;

    @Before
    public void setUp() throws Exception {
        dy1990 = new DY1990();
        dy1990.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(dy1990.categoryContent("dianshiju","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(dy1990.detailContent(Arrays.asList("50655")));
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(dy1990.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(dy1990.homeVideoContent());
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(dy1990.playerContent("","50655-1-1",new ArrayList<>()));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(dy1990.searchContent("火影",false));
    }
}