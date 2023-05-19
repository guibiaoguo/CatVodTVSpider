package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

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
    public void categoryContent() {
    }

    @Test
    public void detailContent() {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(dy1990.homeContent(true));
    }

    @Test
    public void homeVideoContent() {
    }

    @Test
    public void playerContent() {
    }

    @Test
    public void searchContent() {
    }
}