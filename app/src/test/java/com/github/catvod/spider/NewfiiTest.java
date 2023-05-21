package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class NewfiiTest {

    private Spider newfii;

    @Before
    public void setUp() throws Exception {
        newfii = new Newfii();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(newfii.detailContent(Arrays.asList("102660")));
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(newfii.homeContent(true));
    }

    @Test
    public void init() {
        newfii.init(null);
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(newfii.playerContent("","102660-1-1",null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(newfii.searchContent("火影", true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(newfii.categoryContent("2","1",true,new HashMap<>()));
    }
}