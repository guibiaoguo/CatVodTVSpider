package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class Yj1211Test {

    Spider yj1211;

    @Before
    public void setUp() throws Exception {
        yj1211 = new Yj1211();
        yj1211.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(yj1211.homeContent(true));
    }

    @Test
    public void categoryContent() {
    }

    @Test
    public void detailContent() {
    }

    @Test
    public void playerContent() {
    }

    @Test
    public void searchContent() {
    }
}