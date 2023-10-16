package com.github.catvod.spider;

import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;
import com.google.gson.Gson;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;

//@RunWith(MockitoJUnitRunner.class)
//@RunWith(PowerMockRunner.class)
//@PrepareForTest({TextUtils.class, OkHttpUtil.class})
//@RunWith(AndroidJUnit4ClassRunner.class)
public class AidiTest {

    private Spider aidi = null;
    @Before
    public void setUp() throws Exception {
//        PowerMockito.mockStatic(TextUtils.class);
//        MockedStatic mockedStatic = Mockito.mockStatic(TextUtils.class);
        aidi = new Aidi();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        aidi.init(null);
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void homeContent() throws Exception {
        String content = aidi.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = aidi.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(aidi.categoryContent("lianxuju", "1", false, null));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(aidi.detailContent(Arrays.asList("3156")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(aidi.playerContent("", "3156-1-1", null));
    }

    @Test
    public void searchContent() throws Exception {
        String content = aidi.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }
}