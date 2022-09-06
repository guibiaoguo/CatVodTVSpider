package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.crawler.Spider;

import java.util.HashMap;
import java.util.List;

public class MacCMS extends Spider {

    @Override
    public void init(Context context) {
        super.init(context);
    }

    @Override
    public void init(Context context, String extend) {
        super.init(context, extend);
    }

    @Override
    public String homeContent(boolean filter) {
        return super.homeContent(filter);
    }

    @Override
    public String homeVideoContent() {
        return super.homeVideoContent();
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        return super.categoryContent(tid, pg, filter, extend);
    }

    @Override
    public String detailContent(List<String> ids) {
        return super.detailContent(ids);
    }

    @Override
    public String searchContent(String key, boolean quick) {
        return super.searchContent(key, quick);
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        return super.playerContent(flag, id, vipFlags);
    }

    @Override
    public boolean isVideoFormat(String url) {
        return super.isVideoFormat(url);
    }

    @Override
    public boolean manualVideoCheck() {
        return super.manualVideoCheck();
    }
}
