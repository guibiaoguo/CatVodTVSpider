package com.github.catvod.spider;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;

//@RunWith(MockitoJUnitRunner.class)
//@RunWith(PowerMockRunner.class)
//@PrepareForTest({TextUtils.class, OkHttp.class})
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
        System.out.println(aidi.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(aidi.homeVideoContent());
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
        System.out.println(aidi.searchContent("火影", false));
    }
}