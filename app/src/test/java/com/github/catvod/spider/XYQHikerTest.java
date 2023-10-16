//package com.github.catvod.spider;
//
//import com.github.catvod.crawler.Spider;
//
//import org.junit.After;
//import org.junit.Before;
//import org.junit.Test;
//
//import java.util.ArrayList;
//import java.util.Arrays;
//import java.util.HashMap;
//
//public class XYQHikerTest {
//
//    private Spider spider;
//
//    @Before
//    public void setUp() throws Exception {
//        spider = new XYQHiker();
//        init();
//    }
//
//    @After
//    public void tearDown() throws Exception {
//    }
//
//    @Test
//    public void init() {
//        spider.init(null, "https://weixine.net/sub/rebozj.json");
//    }
//
//    @Test
//    public void testInit() {
//    }
//
//    @Test
//    public void homeContent() throws Exception {
//        System.out.println(spider.homeContent(true));
//    }
//
//    @Test
//    public void getHeaders() {
//    }
//
//    @Test
//    public void homeVideoContent() throws Exception {
//        System.out.println(spider.homeVideoContent());
//    }
//
//    @Test
//    public void categoryContent() throws Exception {
//        System.out.println(spider.categoryContent("2","1",true,new HashMap<>()));
//    }
//
//    @Test
//    public void detailContent() throws Exception {
//        System.out.println(spider.detailContent(Arrays.asList("付丧神出租中$$$https://img.liangzipic.com/upload/vod/20220610-1/07743dff079fef6d2e6714f21a76e941.jpg$$$https://rebozj.pro/detail/22393.html")));
//    }
//
//    @Test
//    public void playerContent() throws Exception {
//        System.out.println(spider.playerContent("","https://rebozj.pro/play/22393-3-1.html",new ArrayList<>()));
//    }
//
//    @Test
//    public void manualVideoCheck() {
//    }
//
//    @Test
//    public void isVideoFormat() {
//    }
//
//    @Test
//    public void searchContent() throws Exception {
//        System.out.println(spider.searchContent("火影",false));
//    }
//
//    @Test
//    public void fetchRule() {
//    }
//
//    @Test
//    public void escapeExprSpecialWord() {
//    }
//
//    @Test
//    public void fixCover() {
//    }
//
//    @Test
//    public void loadPic() {
//    }
//
//    @Test
//    public void fetch() {
//    }
//
//    @Test
//    public void jumpbtwaf() {
//    }
//}