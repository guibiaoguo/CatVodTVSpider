package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.crawler.Spider;
import com.github.catvod.parser.AnalyzeRule;

import java.util.HashMap;
import java.util.List;

public class ScriptSpider extends Spider {

    private AnalyzeRule analyzeRule;
    /**
     * @param context
     */
    @Override
    public void init(Context context) {
        Init.init(context);
        super.init(context);
    }

    /**
     * @param context
     * @param extend
     */
    @Override
    public void init(Context context, String extend) {
        analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        super.init(context, extend);
    }

    /**
     * 首页数据内容
     *
     * @param filter 是否开启筛选
     * @return
     */
    @Override
    public String homeContent(boolean filter) throws Exception {
        return super.homeContent(filter);
    }

    /**
     * 首页最近更新数据 如果上面的homeContent中不包含首页最近更新视频的数据 可以使用这个接口返回
     *
     * @return
     */
    @Override
    public String homeVideoContent() throws Exception {
        return super.homeVideoContent();
    }

    /**
     * 分类数据
     *
     * @param tid
     * @param pg
     * @param filter
     * @param extend
     * @return
     */
    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        System.out.println(analyzeRule.getString(tid));
        return super.categoryContent(tid, pg, filter, extend);
    }

    /**
     * 详情数据
     *
     * @param ids
     * @return
     */
    @Override
    public String detailContent(List<String> ids) throws Exception {
        return analyzeRule.getString(ids.get(0));
    }

    /**
     * 搜索数据内容
     *
     * @param key
     * @param quick
     * @return
     */
    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        return super.searchContent(key, quick);
    }

    /**
     * 播放信息
     *
     * @param flag
     * @param id
     * @param vipFlags
     * @return
     */
    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
        return super.playerContent(flag, id, vipFlags);
    }

    /**
     * webview解析时使用 可自定义判断当前加载的 url 是否是视频
     *
     * @param url
     * @return
     */
    @Override
    public boolean isVideoFormat(String url) {
        return super.isVideoFormat(url);
    }

    /**
     * 是否手动检测webview中加载的url
     *
     * @return
     */
    @Override
    public boolean manualVideoCheck() {
        return super.manualVideoCheck();
    }
}
