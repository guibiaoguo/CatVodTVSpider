package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;
import com.google.gson.Gson;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class WebDAVTest {

    Spider webdav;

    @Before
    public void setUp() throws Exception {
        webdav = new WebDAV();
        webdav.init(null,"https://gitlab.com/mao4284120/js/-/raw/main/sub/webdav.json");
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        String content = webdav.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void categoryContent() {
    }

    @Test
    public void detailContent() {
    }

    @Test
    public void playerContent() {
    }
}