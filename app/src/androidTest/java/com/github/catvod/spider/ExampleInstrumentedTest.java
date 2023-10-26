package com.github.catvod.spider;

import android.content.Context;
import android.util.Log;

import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
//import androidx.test.runner.AndroidJUnit4;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import org.apache.commons.lang3.StringUtils;
import org.junit.Test;
import org.junit.runner.RunWith;

import java.util.ArrayList;
import java.util.Arrays;

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
        Context appContext = InstrumentationRegistry.getInstrumentation().getTargetContext();
        Log.d("TEST","catvod");
        try {
            Proxy.port = 9978;
            Init.init(appContext.getApplicationContext());
            Spider local = new Local();
            local.init(appContext.getApplicationContext(),"");
            System.out.println(local.homeContent(true));
            Spider spider = new UpYun();
            spider.init(appContext.getApplicationContext(),"0ac3580008b64f20bc72877bba446e6d");
            String home = spider.homeContent(true);
            SpiderDebug.log(home);
            String homeVideo = spider.homeVideoContent();
            SpiderDebug.log(homeVideo);
            String vid = "";
            if (StringUtils.isNotEmpty(home)) {
                JsonObject homeJson = JsonParser.parseString(home).getAsJsonObject();
                String tid = homeJson.getAsJsonArray("class").get(0).getAsJsonObject().get("type_id").getAsString();
                String categoryContent = spider.categoryContent(tid, "1", false, null);
                SpiderDebug.log(categoryContent);
                JsonObject jsonCategory = JsonParser.parseString(categoryContent).getAsJsonObject();
                vid = jsonCategory.getAsJsonArray("list").get(0).getAsJsonObject().get("vod_id").getAsString();
            } else {
                String searchContent = spider.searchContent("宝可梦",false);
                SpiderDebug.log(searchContent);
                JsonObject jsonSearch = null;
                if (StringUtils.isEmpty(searchContent)) {
                    jsonSearch = new JsonObject();
                } else {
                    jsonSearch = JsonParser.parseString(searchContent).getAsJsonObject();
                }
                vid = jsonSearch.getAsJsonArray("list").get(0).getAsJsonObject().get("vod_id").getAsString();
            }
            String detailContent = spider.detailContent(Arrays.asList(vid));
            SpiderDebug.log(detailContent);
            JsonObject jsonDetail = JsonParser.parseString(detailContent).getAsJsonObject();
            JsonElement playUrl = jsonDetail.getAsJsonArray("list").get(0).getAsJsonObject().get("vod_play_url");
            String playContent = spider.playerContent("", playUrl.getAsString().split("#")[0].split("\\$")[1], new ArrayList<>());
            SpiderDebug.log(playContent);
            String searchContent = spider.searchContent("宝可梦",false);
            SpiderDebug.log(searchContent);
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }
}