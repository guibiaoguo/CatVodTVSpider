package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;

public class BttooTest {

    private Spider bttoo;

    @Before
    public void setUp() throws Exception {
        bttoo = new Bttoo();
        bttoo.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(bttoo.categoryContent("meiju","1",true,new HashMap()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(bttoo.detailContent(List.of("67797")));
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(bttoo.homeContent(true));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(bttoo.playerContent("","bXZfNjc3OTctbm1fMQ==",null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(bttoo.searchContent("火影", true));
    }
}