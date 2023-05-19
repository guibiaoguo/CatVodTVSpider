package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;

public class Dy555Test {

    private Spider dy555;

    @Before
    public void setUp() throws Exception {
        dy555 = new Dy555();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(dy555.detailContent(List.of("425288")));
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(dy555.homeContent(true));
    }

    @Test
    public void init() {
        dy555.init(null);
    }

    @Test
    public void isVideoFormat() {
    }

    @Test
    public void j() {
    }

    @Test
    public void manualVideoCheck() {
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(dy555.playerContent("","425288-2-1",null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(dy555.searchContent("火影", true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(dy555.categoryContent("1","1",true,new HashMap<>()));
    }
}