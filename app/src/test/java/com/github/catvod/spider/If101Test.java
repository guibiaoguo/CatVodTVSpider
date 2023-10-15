package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class If101Test {

    Spider if101;

    @Before
    public void setUp() throws Exception {
        if101 = new If101();
        if101.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(if101.homeContent(true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(if101.categoryContent("2","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(if101.detailContent(Arrays.asList("41891")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(if101.playerContent("","41891/sid/1/nid/1",new ArrayList<>()));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(if101.searchContent("火影",false));
    }
}