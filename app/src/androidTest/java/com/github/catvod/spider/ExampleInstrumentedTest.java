package com.github.catvod.spider;

import android.util.Log;

import androidx.test.ext.junit.runners.AndroidJUnit4;
//import androidx.test.runner.AndroidJUnit4;

import com.github.catvod.crawler.Spider;

import org.junit.Test;
import org.junit.runner.RunWith;

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
@RunWith(AndroidJUnit4.class)
public class ExampleInstrumentedTest {
    Spider spider;
    @Test
    public void useAppContext() throws Exception {
        // Context of the app under test.
//        Context appContext = InstrumentationRegistry.getInstrumentation().getTargetContext();
        Log.d("TEST","catvod");
//        assertEquals("com.github.catvod", appContext.getPackageName());
//        spider = new SP360();
//        spider.init(null);
//        Log.d("TEST",spider.homeContent(true));
//        Log.d("TEST",spider.homeVideoContent());
    }
}