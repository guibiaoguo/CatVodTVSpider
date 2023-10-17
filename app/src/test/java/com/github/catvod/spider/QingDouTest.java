package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;
import com.google.gson.Gson;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class QingDouTest {

    Spider qingdou;

    @Before
    public void setUp() throws Exception {
        qingdou = new QingDou();
        qingdou.init(null);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        String content = qingdou.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = qingdou.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        HashMap<String,String> params = new HashMap<>();
        params.put("类型","电视剧");
        params.put("地区","华语");
        String content = qingdou.categoryContent("tv","1",true,params);
        System.out.println(content);
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(qingdou.detailContent(Arrays.asList("35587662")));
    }

    @Test
    public void searchContent() throws Exception {
        String content = qingdou.searchContent("火影",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("火影"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(qingdou.playerContent("","https://m.miguvideo.com/mgs/msite/prd/detail.html?cid=851753112&pwId=d01197d3076b4164af82983c408bb996&amp;subtype=15&amp;type=online-video&amp;link2key=662ba2f7eb",new ArrayList<>()));
    }
}