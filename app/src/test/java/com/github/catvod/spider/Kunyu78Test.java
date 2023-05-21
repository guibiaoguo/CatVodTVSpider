package com.github.catvod.spider;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class Kunyu78Test {

    private Spider kunyu77;

    @Before
    public void setUp() throws Exception {
        kunyu77 = new Kunyu78();
        kunyu77.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(kunyu77.categoryContent("2","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(kunyu77.detailContent(Arrays.asList("147377")));
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(kunyu77.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(kunyu77.homeVideoContent());
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(kunyu77.playerContent("","http://a.zhaojiuwanwu.top/api/GetDownUrlMu/7a5a66f2ea8e4f7b8fd798d7d38e4628/154aee94a3f7464d846f527655b3c505.m3u8?sign=e7481d03c855c9f235c13784ad21b757&t=1684420818#",null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(kunyu77.searchContent("熊出没",true));
    }
}