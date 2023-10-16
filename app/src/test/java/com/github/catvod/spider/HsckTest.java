//package com.github.catvod.spider;
//
//import static org.junit.Assert.*;
//
//import com.github.catvod.bean.Result;
//import com.github.catvod.crawler.Spider;
//import com.google.gson.Gson;
//
//import org.junit.After;
//import org.junit.Assert;
//import org.junit.Before;
//import org.junit.Test;
//
//import java.util.Arrays;
//import java.util.HashMap;
//import java.util.List;
//
//public class HsckTest {
//
//    private Spider hsck;
//
//    @Before
//    public void setUp() throws Exception {
//        hsck = new Hsck();
//        init();
//    }
//
//    @After
//    public void tearDown() throws Exception {
//    }
//
//    @Test
//    public void init() {
//        hsck.init(null, "https://www.javsee.men/");
//    }
//
//    @Test
//    public void testInit() {
//    }
//
//    @Test
//    public void getDomain() {
//    }
//
//    @Test
//    public void getHeaders() {
//    }
//
//    @Test
//    public void homeContent() throws Exception {
//        String content = hsck.homeContent(true);
//        System.out.println(content);
//        Result result = new Gson().fromJson(content, Result.class);
//        Assert.assertTrue(result.getClasses().size()>0);
//        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
//    }
//
//    @Test
//    public void homeVideoContent() throws Exception {
//        System.out.println(hsck.homeVideoContent());
//    }
//
//    @Test
//    public void categoryContent() throws Exception {
//        System.out.println(hsck.categoryContent("1","1",true,new HashMap<>()));
//    }
//
//    @Test
//    public void getDirector() {
//    }
//
//    @Test
//    public void detailContent() throws Exception {
//        System.out.println(hsck.detailContent(Arrays.asList("/vodplay/34727-1-1.html#https://666546.xyz/images/2023/05/17/162a38014e06e9660dfdde744654b465.jpg")));
//    }
//
//    @Test
//    public void join() {
//    }
//
//    @Test
//    public void playerContent() throws Exception {
//        System.out.println(hsck.playerContent("", "", null));
//    }
//
//    @Test
//    public void searchContent() throws Exception {
//        System.out.println(hsck.searchContent("巨乳", true));
//    }
//}