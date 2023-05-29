package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.crawler.Spider;
import com.github.catvod.parser.AnalyzeRule;
import com.github.catvod.parser.AnalyzeUrl;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.util.HashMap;
import java.util.List;

public class MacCMS extends Spider {

    private AnalyzeRule analyzeRule;

    private AnalyzeUrl analyzeUrl;

    private String ext;
    private int type;
    @Override
    public void init(Context context) {
        super.init(context);
    }

    @Override
    public void init(Context context, String extend) {
        this.ext = extend.split("\\$\\$")[0];
        this.type = Integer.parseInt(extend.split("\\$\\$")[1]);
        analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        analyzeRule.put("proxy",Proxy.getUrl());
        super.init(context, extend);
    }

    protected HashMap<String, String> getHeaders(String url) {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        return headers;
    }

    @Override
    public String homeContent(boolean filter) throws Exception {
        if (type == 1) {
            String xml = OkHttpUtil.string(ext,getHeaders(ext));
        } else if (type == 2) {
            String json = OkHttpUtil.string(ext, getHeaders(ext));
        }
        return super.homeContent(filter);
    }

    @Override
    public String homeVideoContent() throws Exception {
        return super.homeVideoContent();
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        return super.categoryContent(tid, pg, filter, extend);
    }

    @Override
    public String detailContent(List<String> ids) throws Exception {
        return super.detailContent(ids);
    }

    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        return super.searchContent(key, quick);
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
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
