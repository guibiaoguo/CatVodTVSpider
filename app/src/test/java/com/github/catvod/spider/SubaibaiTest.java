//package com.github.catvod.spider;
//
//import com.github.catvod.crawler.Spider;
//
//import org.junit.After;
//import org.junit.Before;
//import org.junit.Test;
//
//import java.util.Arrays;
//import java.util.HashMap;
//import java.util.List;
//
//public class SubaibaiTest {
//
//    private Spider subaibai;
//
//    @Before
//    public void setUp() throws Exception {
//        subaibai = new Subaibai();
//        subaibai.init(null);
//    }
//
//    @After
//    public void tearDown() throws Exception {
//    }
//
//    @Test
//    public void categoryContent() throws Exception {
//        System.out.println(subaibai.categoryContent("tv-drama","1",true,new HashMap()));
//    }
//
//    @Test
//    public void detailContent() throws Exception {
//        System.out.println(subaibai.detailContent(Arrays.asList("50528")));
//    }
//
//    @Test
//    public void homeContent() throws Exception {
//        System.out.println(subaibai.homeContent(true));
//    }
//
//    @Test
//    public void playerContent() throws Exception {
//        System.out.println(subaibai.playerContent("","bXZfNTA1Mjgtbm1fMQ==",null));
//    }
//
//    @Test
//    public void searchContent() throws Exception {
//        System.out.println(subaibai.searchContent("火影", true));
//    }
//}