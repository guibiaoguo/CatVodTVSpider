package com.github.catvod.spider;

import android.support.test.runner.AndroidJUnit4;

import com.github.catvod.crawler.Spider;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(AndroidJUnit4.class)
public class AidiTest {

    private Spider aidi = null;
    @Before
    public void setUp() throws Exception {
        aidi = new Aidi();
        aidi.init(null);
    }

    @Test
    public void homeContent() throws Exception {
        aidi.homeContent(false);
    }
}
