package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.HashMap;
import java.util.List;

public class QicuiTest {

    private Spider qicui;

    @Before
    public void setUp() throws Exception {
        qicui = new Qicui();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(qicui.detailContent(List.of("125896")));
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(qicui.homeContent(true));
    }

    @Test
    public void init() {
        qicui.init(null);
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(qicui.playerContent("","125896-1-1",null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(qicui.searchContent("火影", true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(qicui.categoryContent("2","1",true,new HashMap<>()));
    }
}