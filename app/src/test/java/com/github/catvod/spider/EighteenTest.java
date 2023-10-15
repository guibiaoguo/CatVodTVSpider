package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class EighteenTest {

    Spider eighteen;

    @Before
    public void setUp() throws Exception {
        eighteen = new Eighteen();
        eighteen.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(eighteen.homeContent(true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(eighteen.categoryContent("chinese_random/all/index.html","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(eighteen.detailContent(Arrays.asList("chinese_content/46799/SSNI-209.html")));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(eighteen.searchContent("巨乳",false));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(eighteen.playerContent("","chinese_content/46799/SSNI-209.html",new ArrayList<>()));
    }
}