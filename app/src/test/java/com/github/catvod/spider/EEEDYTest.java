package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class EEEDYTest {


    Spider eeedy;

    @Before
    public void setUp() throws Exception {
        eeedy = new EEEDY();
        eeedy.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(eeedy.categoryContent("36","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(eeedy.detailContent(Arrays.asList("2714")));
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(eeedy.homeContent(true));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(eeedy.playerContent("","2714-1-1",new ArrayList<>()));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(eeedy.searchContent("姐姐",false));
    }
}