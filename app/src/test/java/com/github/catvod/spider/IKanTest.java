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
//public class IKanTest {
//
//    Spider iKan;
//
//    @Before
//    public void setUp() throws Exception {
//        iKan = new IKan();
//        iKan.init(null);
//    }
//
//    @After
//    public void tearDown() throws Exception {
//    }
//
//    @Test
//    public void homeContent() throws Exception {
//        String content = iKan.homeContent(true);
//        System.out.println(content);
//        Result result = new Gson().fromJson(content, Result.class);
//        Assert.assertTrue(result.getClasses().size()>0);
//        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
//    }
//
//    @Test
//    public void categoryContent() {
//    }
//
//    @Test
//    public void detailContent() {
//    }
//
//    @Test
//    public void homeVideoContent() throws Exception {
//        System.out.println(iKan.homeVideoContent());
//    }
//
//    @Test
//    public void playerContent() {
//    }
//}