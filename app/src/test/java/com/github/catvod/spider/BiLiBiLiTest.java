package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class BiLiBiLiTest {

    Spider bilibili;

    @Before
    public void setUp() throws Exception {
        bilibili = new BiLiBiLi();
        bilibili.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(bilibili.homeContent(true));
    }

    @Test
    public void homeVideoContent() {
    }

    @Test
    public void categoryContent() {
    }

    @Test
    public void detailContent() {
    }

    @Test
    public void searchContent() {
    }

    @Test
    public void playerContent() {
    }
}