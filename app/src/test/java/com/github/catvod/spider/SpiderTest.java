package com.github.catvod.spider;

import android.text.TextUtils;

import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;
import com.github.catvod.utils.StringUtil;
import com.google.gson.Gson;

import org.junit.Assert;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class SpiderTest {

    private Spider spider = null;
    private String keyword = "宝可梦";

    private int index = 0;
    private int cindex = 0;
    private String flag = "";

    public void init(Spider spider, String extend) {
        this.spider = spider;
        if (TextUtils.isEmpty(extend))
            this.spider.init(null);
        else
            this.spider.init(null, extend);
    }

    public void homeContent(boolean filter) throws Exception {
        String content = spider.homeContent(filter);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    public void homeVideoContent() throws Exception {
        String content = spider.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(TextUtils.isEmpty(content) || result.getList().isEmpty() || result.getList().size() > 0);
    }

    public void categoryContent() throws Exception {
        String content = spider.homeContent(false);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        content = spider.categoryContent(result.getClasses().get(cindex).getTypeId(),"1",false,new HashMap<>());
        System.out.println(content);
        result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    public void detailContent() throws Exception {
        String content = spider.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        if (result.getList().isEmpty()) {
            content = spider.homeVideoContent();
            result = new Gson().fromJson(content, Result.class);
            System.out.println(content);
        }
        String id = result.getList().get(index).getVodId();
        content = spider.detailContent(Arrays.asList(id));
        System.out.println(content);
        result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
        Assert.assertTrue(!TextUtils.isEmpty(result.getList().get(0).getVodPlayUrl()));
    }

    public void playerContent() throws Exception {
        String content = spider.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        if (result.getList().isEmpty()) {
            content = spider.homeVideoContent();
            result = new Gson().fromJson(content, Result.class);
        }
        String id = result.getList().get(index).getVodId();
        content = spider.detailContent(Arrays.asList(id));
        System.out.println(content);
        result = new Gson().fromJson(content, Result.class);
        id = result.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
        flag = TextUtils.isEmpty(flag)?result.getList().get(0).getVodPlayFrom().split("$$$")[0]:flag;
        content = spider.playerContent(flag,id, new ArrayList<>());
        System.out.println(content);
        result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getUrl() != null || !TextUtils.isEmpty(result.getUrl().toString()));
    }

    public void searchContent(String keyword) throws Exception {
        String content = spider.searchContent(keyword,false);
        System.out.println(content);
        Assert.assertTrue(content.contains(keyword));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public void setCindex(int cindex) {
        this.cindex = cindex;
    }
}