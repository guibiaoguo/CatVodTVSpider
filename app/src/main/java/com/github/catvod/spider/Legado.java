package com.github.catvod.spider;

import static com.github.catvod.utils.StringUtil.join;

import android.content.Context;

import com.github.catvod.analyzeRules.AnalyzeRule;

import com.github.catvod.analyzeRules.RuleData;
import com.github.catvod.analyzeRules.RuleDataInterface;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;

import com.github.catvod.legado.LegadoRule;
import com.github.catvod.parser.HttpParser;
import com.github.catvod.parser.PlayerParser;
import com.github.catvod.utils.Base64;
import com.github.catvod.parser.CategoryBuild;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.parser.UrlProcessor;
import com.github.catvod.utils.okhttp.OKCallBack;


import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;

import org.json.JSONObject;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import okhttp3.Headers;
import okhttp3.Response;

/**
 * bill
 * 仿照阅读规则
 */
public class Legado extends Spider {

    private String ext;
    private LegadoRule rule;
    private AnalyzeRule analyzeRule;
    private RuleDataInterface error;
    private RuleDataInterface ruleData;
    public static final ExecutorService executorService = Executors.newSingleThreadExecutor();

    @Override
    public void init(Context context) {
        super.init(context);
    }

    public void init(Context context, String extend) {
        super.init(context, extend);
        this.ext = extend;
        fetchRule();
        error = new RuleData();
        ruleData = new RuleData();
        analyzeRule = new AnalyzeRule(ruleData);
        analyzeRule.setContent("");
        putParamMap(rule.getPreParamMaps());
    }

    public void putHeaderMap(Map<String, List<String>> headers) {
        if (headers != null && !headers.isEmpty()) {
            for (Map.Entry<String, List<String>> header : headers.entrySet()) {
                try {
                    if (header.getValue() != null) {
                        List<String> data = header.getValue();
                        ruleData.putVariable(header.getKey(), data.get(0));
                    } else
                        ruleData.putVariable(header.getKey(), new JSONObject(header.getValue().toString()).toString());
                } catch (Exception e) {
                    ruleData.putVariable(header.getKey(), e.toString());
                }
            }
        }
    }

    public void putParamMap(JSONArray paramMap) {
        if (paramMap != null && paramMap.length() > 0) {
            for (int i = 0; i < paramMap.length(); i++) {
                JSONObject param = paramMap.optJSONObject(i);
                String url = param.optString("paramUrl");
                String key = param.optString("paramKey");
                String value = param.optString("paramValue");
                String flag = param.optString("paramFlag");
                String webUrl = analyzeRule.getString(url);
                if (StringUtils.isNotEmpty(webUrl) && StringUtil.isWebUrl(webUrl)) {
                    OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
                    try {
                        if (callBack.getResult() != null && (callBack.getResult().code() == 200 || callBack.getResult().code() == 302)) {
                            Response response = callBack.getResult();
                            String s = HttpParser.getContent(webUrl, response.body().bytes());
                            analyzeRule.setContent(s);
                            putHeaderMap(response.headers().toMultimap());
                        }
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                }
                String value1 = analyzeRule.getString(value);
                if (StringUtils.equalsIgnoreCase(flag, "list")) {
                    ruleData.putVariable(key, ruleData.getVariable(key) + "\n" + value1);
                } else if (StringUtils.isNotEmpty(value1)) {
                    ruleData.putVariable(key, value1);
                }
            }
        }
    }

    protected void fetchRule() {
        if (rule == null) {
            if (ext != null) {
                if (ext.startsWith("http")) {
                    OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(ext);
                    try {
                        if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                            String s = HttpParser.getContent(ext, callBack.getResult().body().bytes());
                            rule = LegadoRule.fromJson(s);
                        }
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                } else {
                    rule = LegadoRule.fromJson(ext);
                }
            }
        }
    }

    @Override
    public String homeContent(boolean filter) {
        JSONObject result = new JSONObject();
        try {
            JSONArray classes = new JSONArray();
            if (rule.getCateManual().size() > 0) {
                Set<String> keys = rule.getCateManual().keySet();
                for (String k : keys) {
                    JSONObject jsonObject = new JSONObject();
                    jsonObject.put("type_name", k);
                    jsonObject.put("type_id", rule.getCateManual().get(k));
                    classes.put(jsonObject);
                }
                result.put("class", classes);
            }
            putParamMap(rule.getHomeParamMaps());
            String webUrl = analyzeRule.getString(rule.getHomeUrl());
            if (StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = rule.getHomeUrl();
            }
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                String s = HttpParser.getContent(webUrl, callBack.getResult().body().bytes());
                String baseUrl = callBack.getResult().request().url().toString();
                if (baseUrl.startsWith("http://localhost")) {
                    analyzeRule.setContent(s);
                } else {
                    analyzeRule.setContent(s, baseUrl);
                    analyzeRule.setRedirectUrl(baseUrl);
                }
                List<Object> nodes = getNodes(analyzeRule, rule.getCateNode());
                List<Object> videoNodes = getNodes(analyzeRule, rule.getHomeVodNode());
                for (int i = 0; i < nodes.size(); i++) {
                    if (StringUtil.isNotEmpty(nodes.get(i).toString())) {
                        analyzeRule.setContent(nodes.get(i));
                        JSONObject jsonObject = new JSONObject();
                        jsonObject.put("type_id", analyzeRule.getString(rule.getCateId()));
                        jsonObject.put("type_name", analyzeRule.getString(rule.getCateName()));
                        classes.put(jsonObject);
                    }
                }
                if (classes.length() > 0)
                    result.put("class", classes);
                if (filter && StringUtils.isNotEmpty(rule.getFilter())) {
                    result.put("filters", new JSONObject(rule.getFilter()));
                }
                if (filter && rule.getFilterParamMaps() != null) {
                    result = CategoryBuild.getInstance()
                            .setAnalyzeRule(analyzeRule)
                            .setData(result)
                            .setHtml(s)
                            .setList(rule.getFilterParamMaps())
                            .setUrl(webUrl)
                            .setCateUrlSector(rule.getCateUrl())
                            .build();
                }
                if (!baseUrl.startsWith("http://localhost")) {
                    analyzeRule.setBaseUrl(baseUrl);
                    analyzeRule.setRedirectUrl(baseUrl);
                }
                JSONArray videos = new JSONArray();
                for (int i = 0; i < videoNodes.size(); i++) {
                    analyzeRule.setContent(videoNodes.get(i));
                    JSONObject v = new JSONObject();
                    String title = analyzeRule.getString(rule.getHomeVodName());
                    v.put("vod_id", analyzeRule.getString(rule.getHomeVodId(), null, true) + "+" + title);
                    v.put("vod_name", title);
                    v.put("vod_pic", analyzeRule.getString(rule.getHomeVodImg()));
                    v.put("vod_remarks", analyzeRule.getString(rule.getHomeVodMark()));
                    if (StringUtils.isEmpty(analyzeRule.getString(rule.getHomeVodImg()))) {
                        String name = analyzeRule.getString(rule.getHomeVodName());
                        if (StringUtils.isNotEmpty(rule.getInfoMap().get(name))) {
                            String[] infos = rule.getInfoMap().get(name).split("\\$");
                            v.put("vod_pic", infos[0]);
                            if (infos.length > 1 && StringUtils.isEmpty(analyzeRule.getString(rule.getHomeVodMark()))) {
                                v.put("vod_remarks", infos[1]);
                            }
                        }
                    }
                    videos.put(v);
                }
                result.put("list", videos);
            } else {
                callBack.getResult().close();
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", callBack.getResult().request().url().toString() + "$" + callBack.getResult().code()).put("vod_id",webUrl);
                JSONArray errorArray = null;
                if (result.optJSONArray("list") == null) {
                    errorArray = new JSONArray();
                    result.put("list", errorArray);
                } else {
                    errorArray = result.optJSONArray("list");
                }
                errorArray.put(errorObject);
            }
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            try {
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", e.toString()).put("vod_id",e.toString());
                JSONArray errorArray = null;
                if (result.optJSONArray("list") == null) {
                    errorArray = new JSONArray();
                    result.put("list", errorArray);
                } else {
                    errorArray = result.optJSONArray("list");
                }
                errorArray.put(errorObject);
            } catch (Exception e1) {
                SpiderDebug.log(e);
            }
        }
        return result.toString();
    }

    @Override
    public String homeVideoContent() {
        JSONObject result = new JSONObject();
        try {
            putParamMap(rule.getHomeParamMaps());
            String webUrl = analyzeRule.getString(rule.getHomeUrl());
            if (StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = rule.getHomeUrl();
            }
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                String s = HttpParser.getContent(webUrl, callBack.getResult().body().bytes());
                String baseUrl = callBack.getResult().request().url().toString();
                if (baseUrl.startsWith("http://localhost")) {
                    analyzeRule.setContent(s);
                } else {
                    analyzeRule.setContent(s, baseUrl);
                    analyzeRule.setRedirectUrl(baseUrl);
                }
                List<Object> videoNodes = getNodes(analyzeRule, rule.getHomeVodNode());
                JSONArray videos = new JSONArray();
                for (int i = 0; i < videoNodes.size(); i++) {
                    analyzeRule.setContent(videoNodes.get(i));
                    JSONObject v = new JSONObject();
                    String title = analyzeRule.getString(rule.getHomeVodName());
                    v.put("vod_id", analyzeRule.getString(rule.getHomeVodId(), null, true) + "+" + title);
                    v.put("vod_name", title);
                    v.put("vod_pic", analyzeRule.getString(rule.getHomeVodImg()));
                    v.put("vod_remarks", analyzeRule.getString(rule.getHomeVodMark()));
                    if (StringUtils.isEmpty(analyzeRule.getString(rule.getHomeVodImg()))) {
                        String name = analyzeRule.getString(rule.getHomeVodName());
                        if (StringUtils.isNotEmpty(rule.getInfoMap().get(name))) {
                            String[] infos = rule.getInfoMap().get(name).split("\\$");
                            v.put("vod_pic", infos[0]);
                            if (infos.length > 1 && StringUtils.isEmpty(analyzeRule.getString(rule.getHomeVodMark()))) {
                                v.put("vod_remarks", infos[1]);
                            }
                        }
                    }
                    videos.put(v);
                }
                result.put("list", videos);
            } else {
                callBack.getResult().close();
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", callBack.getResult().request().url().toString() + "$" + callBack.getResult().code()).put("vod_id",webUrl);
                JSONArray errorArray = null;
                if (result.optJSONArray("list") == null) {
                    errorArray = new JSONArray();
                    result.put("list", errorArray);
                } else {
                    errorArray = result.optJSONArray("list");
                }
                errorArray.put(errorObject);
            }
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            try {
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", e.toString()).put("vod_id",e.toString());
                JSONArray errorArray = null;
                if (result.optJSONArray("list") == null) {
                    errorArray = new JSONArray();
                    result.put("list", errorArray);
                } else {
                    errorArray = result.optJSONArray("list");
                }
                errorArray.put(errorObject);
            } catch (Exception e1) {
                SpiderDebug.log(e);
            }
        }
        return result.toString();
    }

    protected String categoryUrl(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        String cateUrl = rule.getCateUrl();
        if (StringUtil.isAbsUrl(tid)) {
            tid = StringUtils.trim(tid).split("\n")[0];
        }
        if (filter && extend != null && extend.size() > 0) {
            for (String key : extend.keySet()) {
                String value = extend.get(key);
                if (value.length() > 0) {
                    try {
                        cateUrl = cateUrl.replace("{" + key + "}", URLEncoder.encode(value, "utf-8"));
                    } catch (UnsupportedEncodingException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        cateUrl = cateUrl.replace("{cateId}", tid).replace("{catePg}", pg);
        Matcher m = Pattern.compile("\\{(.*?)\\}").matcher(cateUrl);
        while (m.find()) {
            String n = m.group(0).replace("{", "").replace("}", "");
            cateUrl = cateUrl.replace(m.group(0), "").replace("/" + n + "/", "");
        }
        return cateUrl;

    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        JSONObject result = new JSONObject();
        int limit = 24;
        try {
            ruleData.putVariable("cateId", tid);
            ruleData.putVariable("catePg", pg);
            ruleData.putVariable("class","");
            ruleData.putVariable("area","");
            ruleData.putVariable("lang","");
            ruleData.putVariable("year","");
            ruleData.putVariable("letter","");
            ruleData.putVariable("plot","");
            putParamMap(rule.getCategoryParamMaps());
            String myUrl = analyzeRule.getString(rule.getCateUrl(),null,true);
            if (StringUtils.isEmpty(myUrl) || !StringUtil.isWebUrl(myUrl)) {
                myUrl = categoryUrl(tid, pg, filter, extend);
            }
            if (extend != null)
                ruleData.getVariableMap().putAll(extend);
            String webUrl = analyzeRule.getString(rule.getCateUrl(),null,true);
            if (StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = categoryUrl(tid, pg, filter, extend);
            }
            webUrl = UrlProcessor.getInstance()
                    .setMyUrl(myUrl)
                    .setPage(pg)
                    .setBaseUrl(webUrl)
                    .build();
            System.out.println(myUrl + "真实的请求地址：" + webUrl);

            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                if (!rule.getCateVodNode().isEmpty()) {
                    try {
                        String s = HttpParser.getContent(webUrl, callBack.getResult().body().bytes());
                        JSONArray videos = new JSONArray();
                        String baseUrl = callBack.getResult().request().url().toString();
                        if (baseUrl.startsWith("http://localhost")) {
                            analyzeRule.setContent(s);
                        } else {
                            analyzeRule.setContent(s, baseUrl);
                            analyzeRule.setRedirectUrl(baseUrl);
                        }
                        String pageCount = analyzeRule.getString(rule.getPageCount());
                        List<Object> nodes = getNodes(analyzeRule, rule.getCateVodNode());
                        if (StringUtils.isNotEmpty(pageCount)) {
                            limit = nodes.size();
                            result.put("pagecount", pageCount);
                            result.put("total", Integer.parseInt(pageCount) <= 1 ? nodes.size() : Integer.parseInt(pageCount) * limit);
                        } else {
                            result.put("pagecount", Integer.MAX_VALUE);
                            result.put("total", Integer.MAX_VALUE);
                        }
                        for (int i = 0; i < nodes.size(); i++) {
                            analyzeRule.setContent(nodes.get(i));
                            JSONObject v = new JSONObject();
                            String title = analyzeRule.getString(rule.getCateVodName());
                            v.put("vod_id", analyzeRule.getString(rule.getCateVodId(), null, true) + "+" + title);
                            v.put("vod_name", analyzeRule.getString(rule.getCateVodName()));
                            v.put("vod_pic", StringUtils.trim(analyzeRule.getString(rule.getCateVodImg())));
                            v.put("vod_remarks", analyzeRule.getString(rule.getCateVodMark()));
                            videos.put(v);
                        }
                        result.put("list", videos);
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                        try {
                            JSONObject errorObject = new JSONObject();
                            errorObject.put("vod_name", e.toString()).put("vod_id",webUrl);
                            JSONArray errorArray = null;
                            if (result.optJSONArray("list") == null) {
                                errorArray = new JSONArray();
                                result.put("list", errorArray);
                            } else {
                                errorArray = result.optJSONArray("list");
                            }
                            errorArray.put(errorObject);
                        } catch (Exception e1) {
                            SpiderDebug.log(e);
                        }
                    }
                }

            } else {
                callBack.getResult().close();
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", callBack.getResult().request().url().toString() + "$" + callBack.getResult().code()).put("vod_id",webUrl);
                JSONArray errorArray = null;
                if (result.optJSONArray("list") == null) {
                    errorArray = new JSONArray();
                    result.put("list", errorArray);
                } else {
                    errorArray = result.optJSONArray("list");
                }
                errorArray.put(errorObject);
            }
            result.put("page", pg);
            result.put("limit", limit);
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            try {
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", e.toString()).put("vod_id",e.toString());
                JSONArray errorArray = null;
                if (result.optJSONArray("list") == null) {
                    errorArray = new JSONArray();
                    result.put("list", errorArray);
                } else {
                    errorArray = result.optJSONArray("list");
                }
                errorArray.put(errorObject);
            } catch (Exception e1) {
                SpiderDebug.log(e);
            }
        }
        return result.toString();
    }

    protected String detailUrl(String vid) {
        String detailUrl;
        if (StringUtil.isAbsUrl(vid)) {
            detailUrl = StringUtils.trim(vid).split("\n")[0];
        } else {
            detailUrl = rule.getDetailUrl().replace("{vid}", StringUtils.trim(vid).split("\n")[0]);
        }
        ruleData.putVariable("vid", StringUtils.trim(vid).split("\n")[0]);
        return detailUrl;
    }

    @Override
    public String detailContent(List<String> ids) {
        JSONObject result = new JSONObject();
        try {
            String[] vids = ids.get(0).split("\\+");
            String name;
            if (vids.length >= 1) {
                ruleData.putVariable("vid", vids[0]);
            }
            if (vids.length > 1) {
                name = vids[1];
                ruleData.putVariable("title", name);
            }
            putParamMap(rule.getDetailParamMaps());
            String webUrl = analyzeRule.getString(rule.getDetailUrl(),null,false);
            if (StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = detailUrl(vids[0]);
            }
            if (StringUtil.isEmpty(webUrl)) {
                return "";
            }
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                String s = HttpParser.getContent(webUrl, callBack.getResult().body().bytes());
                String baseUrl = callBack.getResult().request().url().toString();
                if (baseUrl.startsWith("http://localhost")) {
                    analyzeRule.setContent(s);
                } else {
                    analyzeRule.setContent(s, baseUrl);
                    analyzeRule.setRedirectUrl(baseUrl);
                }
                JSONObject vod = new JSONObject();
                vod.put("vod_id", ids.get(0));
                String title = analyzeRule.getString("@get:{title}");
                vod.put("vod_name", StringUtils.isNotEmpty(title) ? title : analyzeRule.getString(rule.getDetailName()));
                vod.put("vod_pic", analyzeRule.getString(rule.getDetailImg()));
                vod.put("type_name", analyzeRule.getString(rule.getDetailCate()));
                vod.put("vod_year", analyzeRule.getString(rule.getDetailYear()));
                vod.put("vod_area", analyzeRule.getString(rule.getDetailArea()));
                vod.put("vod_remarks", analyzeRule.getString(rule.getDetailMark()));
                vod.put("vod_actor", analyzeRule.getString(rule.getDetailActor()));
                vod.put("vod_director", analyzeRule.getString(rule.getDetailDirector()));
                vod.put("vod_content", analyzeRule.getString(rule.getDetailDesc()));
                ArrayList<String> playFrom = new ArrayList<>();
                List<Object> fromNodes = getNodes(analyzeRule, rule.getDetailFromNode());
                if (fromNodes != null) {
                    for (int i = 0; i < fromNodes.size(); i++) {
                        analyzeRule.setContent(fromNodes.get(i));
                        name = analyzeRule.getString(rule.getDetailFromName());
                        playFrom.add(name);
                    }
                }
                String defaultFrom;
                if (playFrom.size() == 0) {
                    defaultFrom = rule.getDefaultFrom();
                    playFrom.add(defaultFrom);
                } else {
                    defaultFrom = playFrom.get(0);
                }
                analyzeRule.setContent(s);
                List<Object> urlListNodes = getNodes(analyzeRule, rule.getDetailUrlNode());
                Map<String, List<String>> vod_play = new HashMap<>();
                String[] defaultFroms = defaultFrom.split(",");
                for (String from : defaultFroms) {
                    vod_play.put(from, new ArrayList<>());
                }
                for (int i = 0; i < urlListNodes.size(); i++) {
                    analyzeRule.setContent(urlListNodes.get(i));
                    List<Object> urlSubNodes = getNodes(analyzeRule, rule.getDetailUrlSubNode());
                    if (urlSubNodes == null || urlSubNodes.size() == 0) {
                        urlSubNodes = new ArrayList<>();
                        urlSubNodes.add(urlListNodes.get(i));
                    }
                    if (i < playFrom.size()) {
                        defaultFrom = playFrom.get(i);
                    }
                    if (vod_play.get(defaultFrom) == null) {
                        vod_play.put(defaultFrom, new ArrayList<>());
                    }
                    for (int j = 0; j < urlSubNodes.size(); j++) {
                        baseUrl = callBack.getResult().request().url().toString();
                        if (baseUrl.startsWith("http://localhost"))
                            analyzeRule.setContent(urlSubNodes.get(j));
                        else
                            analyzeRule.setContent(urlSubNodes.get(j), baseUrl);
                        analyzeRule.setRedirectUrl(baseUrl);
                        final String content = urlSubNodes.get(j).toString();
                        String finalDefaultFrom = defaultFrom;
                        FutureTask<String> futureTask = new FutureTask<>(() -> {
                            getFileList(content, vod_play, finalDefaultFrom);
                            return "";
                        });
                        executorService.execute(futureTask);
                        try {
                            futureTask.get(100, TimeUnit.SECONDS);
                        } catch (InterruptedException | ExecutionException | TimeoutException e) {
                            //e.printStackTrace();
                            futureTask.cancel(true);
                        }
                    }
                }
                if (rule.getNfoFlag()) {
                    getNfo(vod, analyzeRule.getString(rule.getUrlNfo()));
                }
                if (vod_play.size() > 0) {
                    List<String> vod_from = new ArrayList<>();
                    List<String> vod_plays = new ArrayList<>();
                    for (Map.Entry<String, List<String>> entry : vod_play.entrySet()) {
                        if (entry.getKey().equalsIgnoreCase("vod_pic")) {
                            if (StringUtils.isNotEmpty(entry.getValue().get(0)))
                                vod.put("vod_pic", entry.getValue().get(0));
                        } else if (entry.getKey().equalsIgnoreCase("NFO")) {
                            JSONObject vodNfo = new JSONObject(entry.getValue().get(0));
                            vod.put("vod_pic", vodNfo.optString("vod_pic"));
                            vod.put("type_name", vodNfo.optString("type_name"));
                            vod.put("vod_year", vodNfo.optString("vod_year"));
                            vod.put("vod_area", vodNfo.optString("vod_area"));
                            vod.put("vod_remarks", vodNfo.optString("vod_remarks"));
                            vod.put("vod_actor", vodNfo.optString("vod_actor"));
                            vod.put("vod_director", vodNfo.optString("vod_director"));
                            vod.put("vod_content", vodNfo.optString("vod_content"));
                        } else if (entry.getValue() != null && !entry.getValue().isEmpty()) {
                            vod_from.add(entry.getKey());
                            vod_plays.add(join("#", entry.getValue()));
                        }
                    }
                    String vod_play_from = join("$$$", vod_from);
                    String vod_play_url = join("$$$", vod_plays);
                    vod.put("vod_play_from", vod_play_from);
                    vod.put("vod_play_url", vod_play_url);
                }
                JSONArray list = new JSONArray();
                list.put(vod);
                result.put("list", list);
            } else {
                callBack.getResult().close();
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", callBack.getResult().request().url().toString() + "$" + callBack.getResult().code()).put("vod_id",webUrl);
                errorObject.put("vod_play_from", rule.getDefaultFrom().replace(",","$$$"));
                errorObject.put("vod_play_url", vids[1] + "$"+analyzeRule.getString(rule.getDetailUrlId())+"+"+rule.getDefaultFrom().split(",")[0]);
                JSONArray errorArray = null;
                if (result.optJSONArray("list") == null) {
                    errorArray = new JSONArray();
                    result.put("list", errorArray);
                } else {
                    errorArray = result.optJSONArray("list");
                }
                errorArray.put(errorObject);
            }
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            try {
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", e.toString());
                errorObject.put("vod_play_url","1#"+e.toString().split("\\$")[0]);
                errorObject.put("vod_play_from", "高清");
                errorObject.put("vod_content", e.toString());
                JSONArray errorArray = null;
                if (result.optJSONArray("list") == null) {
                    errorArray = new JSONArray();
                    result.put("list", errorArray);
                } else {
                    errorArray = result.optJSONArray("list");
                }
                errorArray.put(errorObject);
            } catch (Exception e1) {
                SpiderDebug.log(e1);
            }
        }
        return result.toString();
    }

    private static Long extractNumber(String name) {
        long i;
        try {
            String[] videoFormatList = {".m3u8", ".3g2", ".3gp", ".3gp2", ".3gpp", ".amv", ".asf", ".avi", ".divx", ".dpg", ".dvr-ms", ".evo", ".f4v", ".flv", ".ifo", ".k3g", ".m1v", ".m2t", ".m2ts", ".m2v", ".m4b", ".m4p", ".m4v", ".mkv", ".mov", ".mp2v", ".mp4", ".mpe", ".mpeg", ".mpg", ".mpv2", ".mts", ".mxf", ".nsr", ".nsv", ".ogm", ".ogv", ".qt", ".ram", ".rm", ".rmvb", ".rpm", ".skm", ".tp", ".tpr", ".trp", ".ts", ".vob", ".webm", ".wm", ".wmp", ".wmv", ".wtv"};
            String[] relaceList = {"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""};
            name = StringUtils.replaceEach(name.toLowerCase(), videoFormatList, relaceList);
            String number = name.replaceAll("[^\\d]", "");
            i = Long.parseLong(number);
        } catch (Exception e) {
            i = 0L;
        }
        return i;
    }

    protected String playerUrl(String vid) {
        String webUrl;
        if (StringUtil.isAbsUrl(vid)) {
            webUrl = StringUtils.trim(vid).split("\n")[0];
        } else {
            webUrl = rule.getPlayUrl().replace("{playUrl}", StringUtils.trim(vid).split("\n")[0]);
        }
        ruleData.putVariable("playUrl", StringUtils.trim(vid).split("\n")[0]);
        return webUrl;
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        JSONObject result = new JSONObject();
        try {
            String[] infos = id.split("\\+");
            if (infos.length >= 1) {
                ruleData.putVariable("playUrl", StringUtils.trim(infos[0]).split("\n")[0]);
            }
            if (infos.length > 1) {
                ruleData.putVariable("info", infos[1]);
            }
            putParamMap(rule.getPlayerParamMaps());
            String webUrl = analyzeRule.getString(rule.getPlayUrl());
            if (StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = playerUrl(infos[0]);
            }
            SpiderDebug.log(webUrl);
            if (StringUtils.isEmpty(webUrl)) {
                throw new Exception("weburl是空的");
            }
            String parseUrl = PlayerParser.getInstance()
                    .setAnalyzeRule(analyzeRule)
                    .setUrl(webUrl)
                    .parses();
            result.put("parse", rule.getParse());
            result.put("jx", rule.getJx() == null ? 0 : rule.getJx());
            result.put("playUrl", "");
            JSONObject headerObj = new JSONObject();
            headerObj.put("User-Agent", "Mozilla/5.0 (Linux; Android 11; Mi 10 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.152 Mobile Safari/537.36");
            if (!rule.getPlayUa().isEmpty()) {
                result.put("ua", rule.getPlayUa());
            }
            if (StringUtils.isNotEmpty(parseUrl)) {
                // 适配2.0.6的调用应用内解析列表的支持, 需要配合直连分析和匹配官源解析一起使用，参考cjt影视和极品直连
                if (Misc.isVip(parseUrl)) { // 使用jx:1
                    try {
                        result.put("parse", 1);
                        result.put("jx", "1");
                        result.put("url", parseUrl);
                        return result.toString();
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                } else if (vipFlags.contains(flag)) { // 是否使用应用内解析列表解析官源
                    try {
                        result.put("parse", 1);
                        result.put("jx", 1);
                        result.put("playUrl", "");
                        result.put("url", parseUrl);
                        result.put("header", headerObj.toString());
                        return result.toString();
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                }
                // 如果是视频直连 直接返回免解
                else if (isVideoFormat(parseUrl)) {
                    try {
                        result.put("parse", 0);
                        result.put("playUrl", "");
                        result.put("url", parseUrl);
                        result.put("header", headerObj.toString());
                        return result.toString();
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                } else {
                    result.put("parse", 1);
                    result.put("playUrl", "");
                    if (!rule.getPlayUa().isEmpty()) {
                        result.put("ua", rule.getPlayUa());
                    }
                    result.put("header", headerObj.toString());
                    result.put("url", webUrl);
                }
            }
            result.put("seaPf", "2");
            String subtitle = analyzeRule.getString(rule.getSubtitle());
            result.put("subt", subtitle);
            // 上述都失败了就按默认模式走
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            try {
                StringBuilder builder = new StringBuilder();
                builder.append(e.toString());
                result.put("url", "https://mao.guibiaoguo.ml/test.html?msg=" + e + "&" + builder.toString());
                result.put("parse", 1);
                result.put("jx", 0);
                result.put("playUrl", "");
            } catch (Exception e1) {
                SpiderDebug.log(e);
            }
        }
        return result.toString();
    }

    @Override
    public boolean isVideoFormat(String url) {
        String[] videoFormatList = {".M3U8", ".3G2", ".3GP", ".3GP2", ".3GPP", ".AMV", ".ASF", ".AVI", ".DIVX", ".DPG", ".DVR-MS", ".EVO", ".F4V", ".FLV", ".IFO", ".K3G", ".M1V", ".M2T", ".M2TS", ".M2V", ".M4B", ".M4P", ".M4V", ".MKV", ".MOV", ".MP2V", ".MP4", ".MPE", ".MPEG", ".MPG", ".MPV2", ".MTS", ".MXF", ".NSR", ".NSV", ".OGM", ".OGV", ".QT", ".RAM", ".RM", ".RMVB", ".RPM", ".SKM", ".TP", ".TPR", ".TRP", ".TS", ".VOB", ".WEBM", ".WM", ".WMP", ".WMV", ".WTV"};
        url = url.toLowerCase();
        if (url.contains("=http") || url.contains("=https") || url.contains("=https%3a%2f") || url.contains("=http%3a%2f")) {
            return false;
        }
        return StringUtils.endsWithAny(url.toUpperCase(), videoFormatList);
    }

    protected String searchUrl(String vid, String scPg) {
        String webUrl;
        if (StringUtil.isAbsUrl(vid)) {
            webUrl = StringUtils.trim(vid).split("\n")[0];
        } else {
            webUrl = rule.getSearchUrl().replace("{wd}", StringUtils.trim(vid).split("\n")[0]);
        }
        if (StringUtils.isNotEmpty(scPg)) {
            webUrl = webUrl.replace("{scPg}", scPg);
        }
        ruleData.putVariable("wd", StringUtils.trim(vid).split("\n")[0]);
        return webUrl;
    }

    @Override
    public String searchContent(String key, boolean quick) {
        try {
            if (rule.getSearchUrl().isEmpty()) {
                return "";
            }
            String[] rules = StringUtils.split(rule.getScPage(), ":");
            int start = 1;
            int end = 1;
            int step = 1;
            if (rules.length >= 1) {
                if (StringUtils.isNotEmpty(rules[0]))
                    start = Integer.parseInt(rules[0]);
            }
            if (rules.length >= 2) {
                if (StringUtils.isNotEmpty(rules[1]))
                    end = Integer.parseInt(rules[1]);
            }
            if (rules.length >= 3) {
                if (StringUtils.isNotEmpty(rules[2]))
                    step = Integer.parseInt(rules[2]);
            }
            ruleData.putVariable("wd", key);
            String webUrl;
            JSONObject result = new JSONObject();
            JSONArray videos = new JSONArray();
            for (int i = start; i <= end; i = i + step) {
                ruleData.putVariable("scPg", i + "");
                webUrl = analyzeRule.getString(rule.getSearchUrl());
                if (StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                    webUrl = searchUrl(key, i + "");
                }
                OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
                if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                    String s = HttpParser.getContent(webUrl, callBack.getResult().body().bytes());
                    String baseUrl = callBack.getResult().request().url().toString();
                    if (baseUrl.startsWith("http://localhost")) {
                        analyzeRule.setContent(s);
                    } else {
                        analyzeRule.setContent(s, baseUrl);
                        analyzeRule.setRedirectUrl(baseUrl);
                    }
                    List<Object> vodArray = getNodes(analyzeRule, rule.getSearchVodNode());
                    for (int j = 0; j < vodArray.size(); j++) {
                        analyzeRule.setContent(vodArray.get(j));
                        JSONObject v = new JSONObject();
                        String title = analyzeRule.getString(rule.getSearchVodName());
                        String surl = analyzeRule.getString(rule.getSearchVodId(), null, true);
                        String img = analyzeRule.getString(rule.getSearchVodImg());
                        String remark = analyzeRule.getString(rule.getSearchVodMark());
                        if (StringUtils.isNotEmpty(rule.getDecodeValue())) {
                            putParamMap(rule.getSearchParamMaps());
                            surl = analyzeRule.getString(rule.getDecodeValue());
                        }
                        if (StringUtils.isNotEmpty(surl)) {
                            v.put("vod_name", title);
                            v.put("vod_pic", img);
                            v.put("vod_remarks", remark);
                            v.put("vod_id", surl + "+" + title);
                            videos.put(v);
                        }
                    }
                } else {
                    throw new Exception(webUrl + "$" + callBack.getResult().code());
                }
            }
            result.put("list", videos);
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

//    public String getFinalUrl(String webUrl) {
//        String[] d = webUrl.split(";");
//        String[] ss = StringUtil.splitUrlByQuestionMark(d[0]);
//        String url = ss[0].replace(" ", "");
//        url = StringUtil.decodeConflictStr(url);
//        return url;
//    }

    private void getFileList(String content, Map<String, List<String>> data, String defaultFrom) {
        try {
            analyzeRule.setContent(content);
            String name = analyzeRule.getString(rule.getDetailUrlName());
            String id = analyzeRule.getString(rule.getDetailUrlId(), null, true);
            String leaf = analyzeRule.getString(rule.getLeaf());
            if (StringUtils.isNotEmpty(analyzeRule.getString(rule.getNextPage())) || analyzeRule.getString(rule.getNode()).equals(rule.getNodeValue()) && StringUtils.isNotEmpty(rule.getNodeValue())) {
                String nodeUrl = analyzeRule.getString(rule.getNodeUrl(), null, true);
                OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(nodeUrl);
                if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                    try {
                        String s = HttpParser.getContent(nodeUrl, callBack.getResult().body().bytes());
                        String baseUrl = callBack.getResult().request().url().toString();
                        if (baseUrl.startsWith("http://localhost"))
                            analyzeRule.setContent(s);
                        else {
                            analyzeRule.setContent(s, baseUrl);
                            analyzeRule.setRedirectUrl(baseUrl);
                        }
                        List<Object> rootList = getNodes(analyzeRule, rule.getItemUrlNode());
                        if (rootList != null && rootList.size() > 0) {
                            for (int i = 0; i < rootList.size(); i++) {
                                analyzeRule.setContent(rootList.get(i));
                                if (analyzeRule.getString(rule.getNode()).equals(rule.getNodeValue())) {
                                    analyzeRule.getString(rule.getItemUrlName());
                                    getFileList(rootList.get(i).toString(), data, defaultFrom);
                                } else {
                                    String[] types = rule.getLeafValue().split(",");
                                    if (Arrays.asList(types).contains(analyzeRule.getString(rule.getLeaf()))) {
                                        ruleData.putVariable("vod_pic", analyzeRule.getString(rule.getDetailImg()));
                                        data.put("vod_pic", Collections.singletonList(analyzeRule.getString(rule.getDetailImg())));
                                        String[] templateIds = defaultFrom.split(",");
                                        List<String> vodLists;
                                        String fileName = analyzeRule.getString(rule.getItemUrlName());
                                        String fileId = analyzeRule.getString(rule.getItemUrlId(), null, true);
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
                        analyzeRule.setContent(s);
                        if (StringUtils.isNotEmpty(analyzeRule.getString(rule.getNextPage()))) {
                            getFileList(s, data, defaultFrom);
                        }
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                }
            } else if (Arrays.asList(rule.getLeafValue().split(",")).contains(leaf) || StringUtils.contains(leaf.toLowerCase(), "video")) {
                String[] defaultFroms = defaultFrom.split(",");
                for (String from : defaultFroms) {
                    data.get(from).add(name + "$" + id + "+" + from);
                }
            } else if (StringUtils.contains(name, ".nfo")) {
                ruleData.putVariable("NFO", analyzeRule.getString(rule.getDetailUrlId(), null, true));
                JSONObject vod = new JSONObject();
                getNfo(vod, analyzeRule.getString(rule.getUrlNfo(), null, true));
                data.put("NFO", Collections.singletonList(vod.toString()));
            }

            // 取文件列表
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }

    public void getNfo(JSONObject vod, String webUrl) {
        OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
        if (callBack.getResult() != null && callBack.getResult().code() == 200) {
            try {
                String s = HttpParser.getContent(webUrl, callBack.getResult().body().bytes());
                analyzeRule.setContent(s);
                System.out.println(s);
                if (StringUtils.isNotEmpty(analyzeRule.getString(rule.getActorNfo()))) {
                    String title = analyzeRule.getString("@get:{title}");
                    vod.put("vod_name", StringUtils.isNotEmpty(title) ? title : analyzeRule.getString(rule.getTitleNfo()));
                    vod.put("vod_pic", analyzeRule.getString(rule.getThumbNfo()));
                    vod.put("type_name", analyzeRule.getString(rule.getGenreNfo()));
                    vod.put("vod_year", analyzeRule.getString(rule.getYearNfo()));
                    vod.put("vod_area", analyzeRule.getString(rule.getCountryNfo()));
                    vod.put("vod_remarks", analyzeRule.getString(rule.getRemarkNfo()));
                    vod.put("vod_actor", analyzeRule.getString(rule.getActorNfo()));
                    vod.put("vod_director", analyzeRule.getString(rule.getDirectorNfo()));
                    vod.put("vod_content", analyzeRule.getString(rule.getPlotNfo()));
                }
            } catch (Exception e) {
                SpiderDebug.log(e);
            }
        }

    }

    public static Object[] loadPic(Map<String, String> params) {
        try {
            String pic = params.get("pic");
            String selector = params.get("selector");
            pic = new String(Base64.decode(pic, Base64.DEFAULT | Base64.URL_SAFE | Base64.NO_WRAP), "UTF-8");
            if (StringUtils.isNotEmpty(selector)) {
                OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(pic);
                if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                    RuleData ruleData = new RuleData();
                    ruleData.getVariableMap().putAll(params);
                    AnalyzeRule analyzeRule = new AnalyzeRule(ruleData);
                    analyzeRule.setContent(HttpParser.getContent(pic, callBack.getResult().body().bytes()));
                    pic = analyzeRule.getString(selector);
                }
            }
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(pic);
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                Headers headers = callBack.getResult().headers();
                String type = headers.get("Content-Type");
                if (type == null) {
                    type = "application/octet-stream";
                }
                Object[] result = new Object[3];
                result[0] = 200;
                result[1] = type;
                System.out.println(pic);
                System.out.println(type);
                result[2] = callBack.getResult().body().byteStream();
                return result;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return null;
    }

    private List<Object> getNodes(AnalyzeRule analyzeRule, String cateNode) {
        return analyzeRule.getElements(cateNode);
    }
}
