package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class HanimeTest {

    private Spider hanime;

    @Before
    public void setUp() throws Exception {
        hanime = new Hanime();
        hanime.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(hanime.homeContent(true));
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