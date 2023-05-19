package com.github.catvod.demo;

import android.app.Activity;
import android.os.Bundle;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.spider.Ali;
import com.github.catvod.spider.AppYsV2;
import com.github.catvod.spider.Init;
import com.github.catvod.spider.QQ;
import com.github.catvod.spider.XPath;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        new Thread(new Runnable() {
            @Override
            public void run() {
                Init.init(MainActivity.this.getApplicationContext());
                Spider qq = new Ali();
                qq.init(MainActivity.this.getApplicationContext(), "43073a876e9f4d6c906f1d7df92af59a");
                try {
//                    SpiderDebug.log(qq.homeContent(true));
//                    SpiderDebug.log(qq.homeVideoContent());
//                    SpiderDebug.log(qq.categoryContent("tv", "1", false, null));
                    SpiderDebug.log(qq.detailContent(Arrays.asList("https://www.aliyundrive.com/s/xH5vjKHEkW2/folder/6117671f56de2b46691a4302a6b47ac6372c6acb")));
//                    SpiderDebug.log(qq.searchContent("熊出没", false));
                    SpiderDebug.log(qq.playerContent("qq", "https://v.qq.com/x/cover/mzc00200k1qzwd5/m00468zaiqd.html", Arrays.asList("qq")));
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }

            }
        }).start();
    }

}