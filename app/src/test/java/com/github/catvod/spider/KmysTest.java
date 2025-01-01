package com.github.catvod.spider;

import static org.mockito.Mockito.when;

import com.github.catvod.crawler.Spider;
import com.guibiaoguo.myapplication.RoboApp;

import org.junit.After;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
@Deprecated
@Ignore
@RunWith(MockitoJUnitRunner.class)
public class KmysTest {

    @Mock
    RoboApp mMockContext;
    Spider kmys;

    @Before
    public void setUp() throws Exception {
        Proxy.port = 9978;
//        when(mMockContext.getString(R.string.app_name)).thenReturn(FAKE_STRING);
        when(mMockContext.getPackageName()).thenReturn("com.github.androidunittest");
//        when(mMockContext.getApplicationContext()).thenReturn(new Application());
//        PowerMockito.mockStatic(Looper.class);
//        PowerMockito.when(Looper.getMainLooper()).thenReturn(null);
        Init.init(mMockContext);
        kmys = new Kmys();
        kmys.init(mMockContext);
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(kmys.homeContent(true));
    }

    @Test
    public void homeVideoContent() {
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

    @Test
    public void searchContent() {
    }
}