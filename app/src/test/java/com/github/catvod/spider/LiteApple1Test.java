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
//public class LiteApple1Test {
//
//    private Spider liteapple;
//
//    @Before
//    public void setUp() throws Exception {
//        liteapple = new LiteApple1();
//        liteapple.init(null);
//    }
//
//    @After
//    public void tearDown() throws Exception {
//    }
//
//    @Test
//    public void categoryContent() throws Exception {
//        System.out.println(liteapple.categoryContent("2","1",true,new HashMap<>()));
//    }
//
//    @Test
//    public void detailContent() throws Exception {
//        System.out.println(liteapple.detailContent(Arrays.asList("119039")));
//    }
//
//    @Test
//    public void homeContent() throws Exception {
//        System.out.println(liteapple.homeContent(true));
//    }
//
//    @Test
//    public void homeVideoContent() throws Exception {
//        System.out.println(liteapple.homeVideoContent());
//    }
//
//    @Test
//    public void playerContent() throws Exception {
//        System.out.println(liteapple.playerContent("","http://m35.grelighting.cn/m3u8/Q3cyeUJLTjFsc0V2YU95bDgvSDh3WHFJc0NNeE5EcTE=.m3u8",null));
//    }
//
//    @Test
//    public void searchContent() throws Exception {
//        System.out.println(liteapple.searchContent("平凡之路",true));
//    }
//}