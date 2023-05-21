package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.Before;
import org.junit.Test;

public class SP293Test {

    private Spider sp293;

    @Test
    public void categoryContent() {
    }

    @Test
    public void detailContent() {
    }

    @Test
    public void homeContent() {
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(sp293.homeVideoContent());
    }

    @Before
    public void init() {
        sp293 = new SP293();
        sp293.init(null);
    }

    @Test
    public void isVideoFormat() {
    }

    @Test
    public void manualVideoCheck() {
    }

    @Test
    public void playerContent() {
    }

    @Test
    public void searchContent() {
    }

    @Test
    public void testInit() {
    }
}