package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.analyzeRules.AnalyzeRule;
import com.github.catvod.analyzeRules.RuleAnalyzer;
import com.github.catvod.analyzeRules.RuleData;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;

import com.github.catvod.crawler.SpiderReqResult;

import com.github.catvod.legado.LegadoRule;
import com.github.catvod.utils.StringUtil;


import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import rxhttp.wrapper.annotations.NonNull;

/**
 * bill
 * 仿照阅读规则
 */
public class Legado extends Spider {

    private String ext;
    private LegadoRule rule;
    private AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());

    @Override
    public void init(Context context) {
        super.init(context);
    }

    public void init(Context context, String extend) {
        super.init(context, extend);
        this.ext = extend;
    }

    protected void loadRuleExt(String json) {

    }

    protected void fetchRule() {
        if (rule == null) {
            if (ext != null) {
                if (ext.startsWith("http")) {
                    HttpParser.parseSearchUrlForHtml(ext, new HttpParser.OnSearchCallBack() {
                        @Override
                        public void onSuccess(String url, SpiderReqResult s) {
                            rule = LegadoRule.fromJson(s.content);
                            loadRuleExt(s.content);
                        }

                        @Override
                        public void onFailure(int errorCode, String msg) {

                        }
                    });
                } else {
                    rule = LegadoRule.fromJson(ext);
                    loadRuleExt(ext);
                }
            }
        }
    }

    @Override
    public String homeContent(boolean filter) {
        try {
            fetchRule();
            JSONObject result = new JSONObject();
            JSONArray classes = new JSONArray();
            if (rule.getCateManual().size() > 0) {
                Set<String> keys = rule.getCateManual().keySet();
                for (String k : keys) {
                    JSONObject jsonObject = new JSONObject();
                    jsonObject.put("type_name", k);
                    jsonObject.put("type_id", URLEncoder.encode(rule.getCateManual().get(k), "utf-8"));
                    classes.put(jsonObject);
                }
            }
            String webUrl = rule.getHomeUrl();
            HttpParser.parseSearchUrlForHtml(webUrl, new HttpParser.OnSearchCallBack() {
                @Override
                public void onSuccess(String url, SpiderReqResult s) {
                    try {
                        analyzeRule.setContent(s.content, url);
                        analyzeRule.setRedirectUrl(url);
                        List videoNodes = getNodes(analyzeRule, rule.getHomeVodNode());
                        if (rule.getCateManual().size() == 0) {
                            List nodes = getNodes(analyzeRule, rule.getCateNode());
                            for (int i = 0; i < nodes.size(); i++) {
                                analyzeRule.setContent(nodes.get(i));
                                JSONObject jsonObject = new JSONObject();
                                jsonObject.put("type_id", analyzeRule.getString(rule.getCateId()));
                                jsonObject.put("type_name", analyzeRule.getString(rule.getCateName()));
                                classes.put(jsonObject);
                            }
                        }

                        JSONArray videos = new JSONArray();

                        for (int i = 0; i < videoNodes.size(); i++) {
                            analyzeRule.setContent(videoNodes.get(i));
                            JSONObject v = new JSONObject();
                            v.put("vod_id", analyzeRule.getString(rule.getHomeVodId(), null, true));
                            v.put("vod_name", analyzeRule.getString(rule.getHomeVodName()));
                            v.put("vod_pic", analyzeRule.getString(rule.getHomeVodImg()));
                            v.put("vod_remarks", analyzeRule.getString(rule.getHomeVodMark()));
                            videos.put(v);
                        }
                        result.put("list", videos);
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                }

                @Override
                public void onFailure(int errorCode, String msg) {

                }
            });
            result.put("class", classes);
            if (filter && rule.getFilter() != null) {
                result.put("filters", rule.getFilter());
            }
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    protected String categoryUrl(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        if (StringUtil.isAbsUrl(tid)) {
            return tid.split("\n")[0];
        } else {
            return rule.getCateUrl().replace("{cateId}", tid.split("\n")[0]).replace("{catePg}", pg);
        }
    }

    protected void detailContentExt(String content, JSONObject vod) {

    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        try {
            fetchRule();
            JSONObject result = new JSONObject();
            String webUrl = categoryUrl(tid, pg, filter, extend);
            HttpParser.parseSearchUrlForHtml(webUrl, new HttpParser.OnSearchCallBack() {
                @Override
                public void onSuccess(String url, SpiderReqResult s) {
                    try {
                        if (!rule.getCateVodNode().isEmpty()) {
                            try {
                                JSONArray videos = new JSONArray();
                                analyzeRule.setContent(s.content, url);
                                analyzeRule.setRedirectUrl(url);
                                List nodes = getNodes(analyzeRule, rule.getCateVodNode());
                                for (int i = 0; i < nodes.size(); i++) {
                                    analyzeRule.setContent(nodes.get(i));
                                    JSONObject v = new JSONObject();
                                    v.put("vod_id", analyzeRule.getString(rule.getCateVodId(), null, true));
                                    v.put("vod_name", analyzeRule.getString(rule.getCateVodName()));
                                    v.put("vod_pic", analyzeRule.getString(rule.getCateVodImg()));
                                    v.put("vod_remarks", analyzeRule.getString(rule.getCateVodMark()));
                                    videos.put(v);
                                }
                                result.put("list", videos);
                            } catch (Exception e) {
                                SpiderDebug.log(e);
                            }
                        }
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }

                }

                @Override
                public void onFailure(int errorCode, String msg) {

                }
            });
            result.put("page", pg);
            result.put("pagecount", Integer.MAX_VALUE);
            result.put("limit", 90);
            result.put("total", Integer.MAX_VALUE);
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    protected String detailUrl(String vid) {
        if (StringUtil.isAbsUrl(vid)) {
            return vid.split("\n")[0];
        } else {
            return rule.getDetailUrl().replace("{vid}", vid.split("\n")[0]);
        }
    }

    @Override
    public String detailContent(List<String> ids) {
        try {
            fetchRule();
            String webUrl = detailUrl(ids.get(0));
            JSONObject result = new JSONObject();
            HttpParser.parseSearchUrlForHtml(webUrl, new HttpParser.OnSearchCallBack() {
                @Override
                public void onSuccess(String url, SpiderReqResult s) {
                    try {
                        analyzeRule.setContent(s.content, url);
                        analyzeRule.setRedirectUrl(url);
                        JSONObject vod = new JSONObject();
                        vod.put("vod_id", ids.get(0));
                        vod.put("vod_name", analyzeRule.getString(rule.getDetailName()));
                        vod.put("vod_pic", analyzeRule.getString(rule.getDetailImg()));
                        vod.put("type_name", analyzeRule.getString(rule.getDetailCate()));
                        vod.put("vod_year", analyzeRule.getString(rule.getDetailYear()));
                        vod.put("vod_area", analyzeRule.getString(rule.getDetailArea()));
                        vod.put("vod_remarks", analyzeRule.getString(rule.getDetailMark()));
                        vod.put("vod_actor", analyzeRule.getString(rule.getDetailActor()));
                        vod.put("vod_director", analyzeRule.getString(rule.getDetailDirector()));
                        vod.put("vod_content", analyzeRule.getString(rule.getDetailDesc()));
                        ArrayList<String> playFrom = new ArrayList<>();
                        List fromNodes = getNodes(analyzeRule, rule.getDetailFromNode());
                        if (fromNodes != null) {
                            for (int i = 0; i < fromNodes.size(); i++) {
                                analyzeRule.setContent(fromNodes.get(i));
                                String name = analyzeRule.getString(rule.getDetailFromName());
                                playFrom.add(name);
                            }
                        }
                        String defaultFrom = "";
                        if (playFrom.size() == 0) {
                            defaultFrom = rule.getDefaultFrom();
                            playFrom.add(defaultFrom);
                        } else {
                            defaultFrom = playFrom.get(0);
                        }
                        analyzeRule.setContent(s.content);
                        List urlListNodes = getNodes(analyzeRule, rule.getDetailUrlNode());
                        Map<String, List<String>> vod_play = new HashMap<>();
                        vod_play.put(defaultFrom, new ArrayList<>());
                        for (int i = 0; i < urlListNodes.size(); i++) {
                            analyzeRule.setContent(urlListNodes.get(i));
                            List urlSubNodes = getNodes(analyzeRule, rule.getDetailUrlSubNode());
                            if (urlSubNodes == null || urlSubNodes.size() == 0) {
                                urlSubNodes = new ArrayList();
                                urlSubNodes.add(urlListNodes.get(i));
                            }
                            if(i<playFrom.size())
                                defaultFrom = playFrom.get(i);
                            if (vod_play.get(defaultFrom) == null) {
                                vod_play.put(defaultFrom, new ArrayList<>());
                            }
                            for (int j = 0; j < urlSubNodes.size(); j++) {
                                analyzeRule.setContent(urlSubNodes.get(j));
                                String name = analyzeRule.getString(rule.getDetailUrlName());
                                String id = analyzeRule.getString(rule.getDetailUrlId(), null, true);
                                String leaf = analyzeRule.getString(rule.getLeaf());
                                if (StringUtils.isNotEmpty(leaf) && leaf.equals(rule.getNodeValue())) {
                                    String nodeUrl = analyzeRule.getString(rule.getNodeUrl(), null, true);
                                    getFileList(nodeUrl, vod_play);
                                } else if (Arrays.asList(rule.getLeafValue().split(",")).contains(leaf) || StringUtils.contains(leaf.toLowerCase(),"video")) {
                                    vod_play.get(defaultFrom).add(name + "$" + id);
                                } else if (StringUtils.contains(name, ".nfo")) {
                                    getNfo(vod, id);
                                }
                            }
                        }
                        if (vod_play.size() > 0) {
                            List vod_from = new ArrayList();
                            List vod_plays = new ArrayList();
                            for (Map.Entry<String, List<String>> entry : vod_play.entrySet()) {
                                vod_from.add(entry.getKey());
                                vod_plays.add(join("#", entry.getValue()));
                            }
                            String vod_play_from = join("$$$", vod_from);
                            String vod_play_url = join("$$$", vod_plays);
                            vod.put("vod_play_from", vod_play_from);
                            vod.put("vod_play_url", vod_play_url);
                        }

                        detailContentExt(s.content, vod);
                        JSONArray list = new JSONArray();
                        list.put(vod);
                        result.put("list", list);
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                }

                @Override
                public void onFailure(int errorCode, String msg) {

                }
            });
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    protected String playerUrl(String vid) {
        if (StringUtil.isAbsUrl(vid)) {
            return vid.split("\n")[0];
        } else {
            return rule.getDetailUrl().replace("{playUrl}", vid.split("\n")[0]);
        }
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        try {
            fetchRule();
            String[] infos = id.split("\\+");
            String webUrl = playerUrl(infos[0]);
            SpiderDebug.log(webUrl);
            JSONObject result = new JSONObject();
            result.put("parse", 1);
            result.put("playUrl", "");
            if (!rule.getPlayUa().isEmpty()) {
                result.put("ua", rule.getPlayUa());
            }
            if (rule.isDecodePlayUrl()) {
                HttpParser.parseSearchUrlForHtml(webUrl, new HttpParser.OnSearchCallBack() {
                    @Override
                    public void onSuccess(String url, SpiderReqResult s) {
                        analyzeRule.setContent(s.content, url);
                        analyzeRule.setRedirectUrl(url);
                        String decodePlay = analyzeRule.getString(rule.getDecodePlay());
                        try {
                            result.put("url", decodePlay);
                        } catch (Exception e) {

                        }
                    }

                    @Override
                    public void onFailure(int errorCode, String msg) {

                    }
                });
                result.put("parse", 0);
            } else {
                result.put("url", webUrl);
            }
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    @Override
    public String searchContent(String key, boolean quick) {
        try {
            fetchRule();
            if (rule.getSearchUrl().isEmpty()) {
                return "";
            }
            RuleAnalyzer ruleAnalyzes = new RuleAnalyzer("", true);
            //设置平衡组为代码平衡
            ArrayList rules = ruleAnalyzes.splitRule(":", "-");
            int start = 1;
            int end = 1;
            int step = 1;
            if (rules.size() >= 1) {
                if (StringUtils.isNotEmpty(rules.get(0).toString()))
                    start = Integer.parseInt(rules.get(0).toString());
            }
            if (rules.size() >= 2) {
                if (StringUtils.isNotEmpty(rules.get(1).toString()))
                    end = Integer.parseInt(rules.get(1).toString());
            }
            if (rules.size() >= 3) {
                if (StringUtils.isNotEmpty(rules.get(2).toString()))
                    step = Integer.parseInt(rules.get(2).toString());
            }
            String webUrl = rule.getSearchUrl().replace("{wd}", URLEncoder.encode(key, "utf-8"));
            JSONObject result = new JSONObject();
            JSONArray videos = new JSONArray();
            for (int i = start; i <= end; i = i + step) {
                webUrl = webUrl.replace("{scPg}", i + "");
                HttpParser.parseSearchUrlForHtml(webUrl, new HttpParser.OnSearchCallBack() {
                    @Override
                    public void onSuccess(String url, SpiderReqResult s) {
                        try {
                            analyzeRule.setContent(s.content, url);
                            analyzeRule.setRedirectUrl(url);
                            List vodArray = getNodes(analyzeRule, rule.getSearchVodNode());
                            for (int j = 0; j < vodArray.size(); j++) {
                                analyzeRule.setContent(vodArray.get(j));
                                JSONObject v = new JSONObject();
                                v.put("vod_id", analyzeRule.getString(rule.getSearchVodId(), null, true));
                                v.put("vod_name", analyzeRule.getString(rule.getSearchVodName()));
                                v.put("vod_pic", analyzeRule.getString(rule.getSearchVodImg()));
                                v.put("vod_remarks", analyzeRule.getString(rule.getSearchVodMark()));
                                videos.put(v);
                            }
                        } catch (Exception e) {
                            SpiderDebug.log(e);
                        }
                    }

                    @Override
                    public void onFailure(int errorCode, String msg) {

                    }
                });
            }
            result.put("list", videos);
            return result.toString();
        } catch (
                Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    public String join(@NonNull CharSequence delimiter, @NonNull Iterable tokens) {
        final Iterator<?> it = tokens.iterator();
        if (!it.hasNext()) {
            return "";
        }
        final StringBuilder sb = new StringBuilder();
        sb.append(it.next());
        while (it.hasNext()) {
            sb.append(delimiter);
            sb.append(it.next());
        }
        return sb.toString();
    }

    protected HashMap<String, String> getHeaders(String url) {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", rule.getUa().isEmpty()
                ? "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36"
                : rule.getUa());
        return headers;
    }

    private void getFileList(String root, Map<String, List<String>> data) {
        try {
            HttpParser.parseSearchUrlForHtml(root, new HttpParser.OnSearchCallBack() {
                @Override
                public void onSuccess(String url, SpiderReqResult s) {
                    try {
                        analyzeRule.setContent(s.content, url);
                        List rootList = getNodes(analyzeRule, rule.getDetailUrlNode());
                        if (rootList != null && rootList.size() > 0) {
                            for (int i = 0; i < rootList.size(); i++) {
                                analyzeRule.setRedirectUrl(url);
                                analyzeRule.setContent(rootList.get(i));
                                if (analyzeRule.getString(rule.getLeaf()).equals(rule.getNodeValue())) {
                                    getFileList(analyzeRule.getString(rule.getNodeUrl(), null, true), data);
                                } else {
                                    String[] types = rule.getLeafValue().split(",");
                                    if (Arrays.asList(types).contains(analyzeRule.getString(rule.getLeaf()))) {
                                        String[] templateIds = rule.getDefaultFrom().split(",");
                                        List<String> vodLists;
                                        String fileName = analyzeRule.getString(rule.getDetailUrlName());
                                        String fileId = analyzeRule.getString(rule.getDetailUrlId(), null, true);
                                        for (String templateId : templateIds) {
                                            if (data.get(templateId) == null) {
                                                vodLists = new ArrayList<>();
                                                data.put(templateId, vodLists);
                                            } else {
                                                vodLists = data.get(templateId);
                                            }
                                            vodLists.add(fileName + "$" + fileId + "+" + templateId);
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }

                }

                @Override
                public void onFailure(int errorCode, String msg) {

                }
            });
            // 取文件列表
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }

    public void getNfo(JSONObject vod, String weburl) {
        HttpParser.parseSearchUrlForHtml(weburl, new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                try {
                    Document document = Jsoup.parse(s.content);
                    System.out.println(s.content);
                    vod.put("vod_name", document.select("title").text());
                    vod.put("vod_pic", document.select("[aspect=\"poster\"]").text());
                    vod.put("type_name", document.select("genre").text());
                    vod.put("vod_year", document.select("year").text());
                    vod.put("vod_area", document.select("country").text());
                    vod.put("vod_remarks", document.select("title") == null ? "" : document.select("title").text());
                    vod.put("vod_actor", document.select("actor>name").text());
                    vod.put("vod_director", document.select("director").text());
                    vod.put("vod_content", document.select("plot").text());
                } catch (Exception e) {
                    SpiderDebug.log(e);
                }
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
    }


    private List getNodes(AnalyzeRule analyzeRule, String cateNode) {
        return analyzeRule.getElements(cateNode);
    }
}
