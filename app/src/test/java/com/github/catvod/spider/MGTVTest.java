package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class MGTVTest {

    private Spider mgtv;

    @Before
    public void setUp() throws Exception {
        mgtv = new MGTV();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        mgtv.init(null);
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(mgtv.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(mgtv.homeVideoContent());
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(mgtv.categoryContent("2","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(mgtv.detailContent(Arrays.asList("https://pcweb.api.mgtv.com/episode/list?size=5000&video_id=18588590#http://3img.hitv.com/preview/sp_images/2023/04/03/202304031713207326601.jpg")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(mgtv.playerContent("","/b/535694/18588590.html",null));
    }

    @Test
    public void searchContent() {
    }
}