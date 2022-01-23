package com.github.catvod.demo;

import android.app.Activity;
import android.os.Bundle;

import com.github.catvod.crawler.Spider;
import com.github.catvod.spider.Legado;
import com.github.catvod.spider.XPath;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        new Thread(new Runnable() {
            @Override
            public void run() {
                Spider spider = new Legado();
                spider.init(null, "http://185.205.12.38:4004/alipanso.json");
                String category = spider.searchContent("名侦探柯南TV版 国语", false);
                System.out.println(category);
                showCategory(spider, category, 0);
            }
        }).start();
    }

    public void showCategory(Spider spider, String category, int index)  {
        try{
            JSONObject jsonObject = new JSONObject(category);
            JSONArray categorys = jsonObject.optJSONArray("list");
            if (category != null && categorys.length() > index) {
                List<String> ids = new ArrayList<>();
                ids.add(categorys.getJSONObject(index).optString("vod_id"));
                System.out.println(ids);

                String detail = spider.detailContent(ids);
                System.out.println(detail);
                jsonObject = new JSONObject(detail);
                JSONArray details = jsonObject.optJSONArray("list");
                String playurls = details.getJSONObject(0).optString("vod_play_url");
                if (!playurls.equals("")) {
                    String playurl = playurls.split("#")[0].split("\\$")[1];
                    System.out.println(playurl);
                    System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurl, new ArrayList<>()));
                }
            }
        }catch (Exception e) {

        }
    }

}