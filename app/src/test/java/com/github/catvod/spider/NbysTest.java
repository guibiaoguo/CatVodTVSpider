package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class NbysTest {

    private Spider nbys;

    @Before
    public void setUp() throws Exception {
        nbys = new Nbys();
        nbys.init(null);
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
        System.out.println(nbys.homeContent(true));
    }

    @Test
    public void playerContent() {
    }

    @Test
    public void searchContent() {
    }
}