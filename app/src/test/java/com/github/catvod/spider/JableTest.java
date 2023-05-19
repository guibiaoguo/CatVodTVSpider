package com.github.catvod.spider;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class JableTest {

    private Spider jable;

    @Before
    public void setUp() throws Exception {
        jable = new Jable();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void categoryContent() {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(jable.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(jable.homeVideoContent());
    }

    @Test
    public void init() {
        jable.init(null);
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