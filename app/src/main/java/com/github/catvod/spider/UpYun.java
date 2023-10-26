package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.bean.upyun.Data;
import com.github.catvod.bean.upyun.Item;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.AES;
import com.github.catvod.utils.okhttp.OkHttpUtil;


import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

public class UpYun extends Ali {

    @Override
    public void init(Context context, String extend) {
        super.init(context, extend);
    }

    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        String content = OkHttpUtil.string("https://zyb.upyunso.com/v15/search?keyword=" + URLEncoder.encode(key) + "&page=1&s_type=2");
//        String content = OkHttpUtil.string("https://upapi.juapp9.com/search?keyword=" + URLEncoder.encode(key) + "&page=1&s_type=2");
        String res = decode(content);
//        String res = new String(Base64.decode(content,1));
        List<Vod> list = new ArrayList<>();
        for (Item item : Data.objectFrom(res).getResult().getItems()) {
            String url = decode(item.getPageUrl());
//            String url = item.getPageUrl();
            if (!url.contains("www.aliyundrive.com")) continue;
            if (item.getTitle().contains(key)) list.add(item.url(url).getVod());
        }
        return Result.string(list);
    }

    private String decode(String data) throws Exception {
        return AES.CBC(data,"qq1920520460qqzz","qq1920520460qqzz");
    }
}