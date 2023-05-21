package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class IQIYITest {

    private Spider iqiyi;

    @Before
    public void setUp() throws Exception {
        iqiyi = new IQIYI();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        iqiyi.init(null);
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(iqiyi.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(iqiyi.homeVideoContent());
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(iqiyi.categoryContent("2","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(iqiyi.detailContent(Arrays.asList("/albums/album/avlistinfo?aid=5328486914190101&size=5000&page=1&url=http://www.iqiyi.com/a_1fkgtbddd2x.html")));
    }

    @Test
    public void join() {
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(iqiyi.playerContent("","http://www.iqiyi.com/v_xkt6z3z798.html",null));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(iqiyi.searchContent("熊出没",true));
    }
}