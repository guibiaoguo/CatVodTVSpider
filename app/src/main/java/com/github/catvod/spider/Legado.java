package com.github.catvod.spider;

import static com.github.catvod.utils.StringUtil.join;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;

import com.github.catvod.legado.LegadoData;
import com.github.catvod.parser.AnalyzeRule;

import com.github.catvod.parser.RuleData;
import com.github.catvod.parser.RuleDataInterface;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;

import com.github.catvod.legado.LegadoRule;
import com.github.catvod.parser.HttpParser;
import com.github.catvod.parser.PlayerParser;
import com.github.catvod.utils.Base64;
import com.github.catvod.parser.CategoryBuild;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.parser.UrlProcessor;
import com.github.catvod.utils.okhttp.OKCallBack;


import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
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
                    webUrl = StringUtil.encode(StringUtil.decode(webUrl));
                    OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
                    try {
                        if (callBack.getResult() != null && (callBack.getResult().code() == 200 || callBack.getResult().code() == 302)) {
                            Response response = callBack.getResult();
                            String s = HttpParser.getContent(webUrl, response.body());
                            analyzeRule.setContent(s);
                            putHeaderMap(response.headers().toMultimap());
                        }
//                        else if (callBack.getResult() != null) {
//                            callBack.getResult().close();
//                        }
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

    public void fetchRule() {
        if (rule == null) {
            if (ext != null) {
                if (ext.startsWith("http")) {
                    ext = StringUtil.encode(StringUtil.decode(ext));
                    OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(ext);
                    try {
                        if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                            String s = HttpParser.getContent(ext, callBack.getResult().body());
                            rule = LegadoRule.fromJson(s);
                        } else if (callBack.getResult() != null){
                            callBack.getResult().close();
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
            webUrl = StringUtil.encode(StringUtil.decode(webUrl));
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                String s = HttpParser.getContent(webUrl, callBack.getResult().body());
                String baseUrl = callBack.getResult().request().url().toString();
                if (baseUrl.startsWith("http://localhost")) {
                    analyzeRule.setContent(s);
                } else {
                    analyzeRule.setContent(s, baseUrl);
                    analyzeRule.setRedirectUrl(baseUrl);
                    ruleData.putVariable("baseUrl", baseUrl);
                }
                List<Object> nodes = getNodes(analyzeRule, rule.getCateNode());
//                List<Object> videoNodes = getNodes(analyzeRule, rule.getHomeVodNode());
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
                            .setCategoryParamMaps(rule.getCategoryParamMaps())
                            .setRuleData(ruleData)
                            .build();
                }
                if (!baseUrl.startsWith("http://localhost")) {
                    analyzeRule.setBaseUrl(baseUrl);
                    analyzeRule.setRedirectUrl(baseUrl);
                    ruleData.putVariable("baseUrl", baseUrl);
                }
//                JSONArray videos = new JSONArray();
//                for (int i = 0; i < videoNodes.size(); i++) {
//                    analyzeRule.setContent(videoNodes.get(i));
//                    JSONObject v = new JSONObject();
//                    String title = analyzeRule.getString(rule.getHomeVodName());
//                    v.put("vod_id", analyzeRule.getString(rule.getHomeVodId(), null, true) + "+" + title);
//                    v.put("vod_name", title);
//                    v.put("vod_pic", analyzeRule.getString(rule.getHomeVodImg()));
//                    v.put("vod_remarks", analyzeRule.getString(rule.getHomeVodMark()));
//                    if (StringUtils.isEmpty(analyzeRule.getString(rule.getHomeVodImg()))) {
//                        String name = analyzeRule.getString(rule.getHomeVodName());
//                        if (StringUtils.isNotEmpty(rule.getInfoMap().get(name))) {
//                            String[] infos = rule.getInfoMap().get(name).split("\\$");
//                            v.put("vod_pic", infos[0]);
//                            if (infos.length > 1 && StringUtils.isEmpty(analyzeRule.getString(rule.getHomeVodMark()))) {
//                                v.put("vod_remarks", infos[1]);
//                            }
//                        }
//                    }
//                    videos.put(v);
//                }
//                result.put("list", videos);
            } else if (callBack.getResult() != null) {
                callBack.getResult().close();
            }
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
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
            webUrl = StringUtil.encode(StringUtil.decode(webUrl));
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                String s = HttpParser.getContent(webUrl, callBack.getResult().body());
                String baseUrl = callBack.getResult().request().url().toString();
                if (baseUrl.startsWith("http://localhost")) {
                    analyzeRule.setContent(s);
                } else {
                    analyzeRule.setContent(s, baseUrl);
                    analyzeRule.setRedirectUrl(baseUrl);
                    ruleData.putVariable("baseUrl", baseUrl);
                }
                List<Object> videoNodes = getNodes(analyzeRule, rule.getHomeVodNode());
                JSONArray videos = new JSONArray();
                for (int i = 0; i < videoNodes.size(); i++) {
                    analyzeRule.setContent(videoNodes.get(i));
                    JSONObject v = new JSONObject();
                    String title = analyzeRule.getString(rule.getCateVodName(), videoNodes.get(i), false);
                    String url = analyzeRule.getString(rule.getCateVodId(), videoNodes.get(i), true);
                    JSONObject vid = new JSONObject();
                    vid.put("title", title).put("detail_url", url);
                    v.put("vod_id", Base64.encodeToString(vid.toString().getBytes(), Base64.NO_WRAP));
                    v.put("vod_name", title);
                    v.put("vod_pic", analyzeRule.getString(rule.getHomeVodImg(), videoNodes.get(i), false));
                    v.put("vod_remarks", analyzeRule.getString(rule.getHomeVodMark(), videoNodes.get(i), false));
//                    if (StringUtils.isEmpty(analyzeRule.getString(rule.getHomeVodImg(),videoNodes.get(i),false))) {
//                        String name = analyzeRule.getString(rule.getHomeVodName());
//                        if (StringUtils.isNotEmpty(rule.getInfoMap().get(name))) {
//                            String[] infos = rule.getInfoMap().get(name).split("\\$");
//                            v.put("vod_pic", infos[0]);
//                            if (infos.length > 1 && StringUtils.isEmpty(analyzeRule.getString(rule.getHomeVodMark()))) {
//                                v.put("vod_remarks", infos[1]);
//                            }
//                        }
//                    }
                    videos.put(v);
                }
                result.put("list", videos);
            } else if (callBack.getResult() != null) {
                callBack.getResult().close();
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", callBack.getResult().request().url().toString() + "$" + callBack.getResult().code()).put("vod_id", webUrl);
                JSONArray errorArray;
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
                errorObject.put("vod_name", e.toString()).put("vod_id", e.toString());
                JSONArray errorArray;
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

    public String categoryUrl(String tid, String pg, boolean filter, HashMap<String, String> extend) {
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
            ruleData.putVariable("class", "");
            ruleData.putVariable("area", "");
            ruleData.putVariable("lang", "");
            ruleData.putVariable("year", "");
            ruleData.putVariable("letter", "");
            ruleData.putVariable("plot", "");
            putParamMap(rule.getCategoryParamMaps());
            String myUrl = analyzeRule.getString(rule.getCateUrl(), null, true);
            if (StringUtils.isEmpty(myUrl) || !StringUtil.isWebUrl(myUrl)) {
                myUrl = categoryUrl(tid, pg, filter, extend);
            }
            if (extend != null) {
                ruleData.getVariableMap().putAll(extend);
                putParamMap(rule.getCategoryParamMaps());
            }
            String webUrl = analyzeRule.getString(rule.getCateUrl(), null, true);
            if (StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = categoryUrl(tid, pg, filter, extend);
            }
            webUrl = UrlProcessor.getInstance()
                    .setMyUrl(myUrl)
                    .setPage(pg)
                    .setBaseUrl(webUrl)
                    .build();
            System.out.println(myUrl + "真实的请求地址：" + webUrl);
            webUrl = StringUtil.encode(StringUtil.decode(webUrl));
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                if (!rule.getCateVodNode().isEmpty()) {
                    try {
                        String s = HttpParser.getContent(webUrl, callBack.getResult().body());
                        JSONArray videos = new JSONArray();
                        String baseUrl = callBack.getResult().request().url().toString();
                        if (baseUrl.startsWith("http://localhost")) {
                            analyzeRule.setContent(s);
                        } else {
                            analyzeRule.setContent(s, baseUrl);
                            analyzeRule.setRedirectUrl(baseUrl);
                            ruleData.putVariable("baseUrl", baseUrl);
                        }
                        String pageCount = analyzeRule.getString(rule.getPageCount());
                        List<Object> nodes = getNodes(analyzeRule, rule.getCateVodNode());
                        limit = nodes.size();
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
                            String title = analyzeRule.getString(rule.getCateVodName(), nodes.get(i), false);
                            String url = analyzeRule.getString(rule.getCateVodId(), nodes.get(i), true);
                            JSONObject vid = new JSONObject();
                            vid.put("title", title).put("detail_url", url);
                            v.put("vod_id", Base64.encodeToString(vid.toString().getBytes(), Base64.NO_WRAP));
                            v.put("vod_name", title);
                            v.put("vod_pic", StringUtils.trim(analyzeRule.getString(rule.getCateVodImg(), nodes.get(i), false)));
                            v.put("vod_remarks", analyzeRule.getString(rule.getCateVodMark(), nodes.get(i), false));
                            videos.put(v);
                        }
                        result.put("list", videos);
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                        try {
                            JSONObject errorObject = new JSONObject();
                            errorObject.put("vod_name", e.toString()).put("vod_id", webUrl);
                            JSONArray errorArray;
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

            } else if (callBack.getResult() != null) {
                callBack.getResult().close();
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", callBack.getResult().request().url().toString() + "$" + callBack.getResult().code()).put("vod_id", webUrl);
                JSONArray errorArray;
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
                errorObject.put("vod_name", e.toString()).put("vod_id", e.toString());
                JSONArray errorArray;
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

    public String detailUrl(String vid) {
        String detailUrl;
        if (StringUtil.isAbsUrl(vid)) {
            detailUrl = StringUtils.trim(vid).split("\n")[0];
        } else {
            detailUrl = rule.getDetailUrl().replace("{vid}", StringUtils.trim(vid).split("\n")[0]);
        }
        ruleData.putVariable("vid", StringUtils.trim(vid).split("\n")[0]);
        return detailUrl;
    }

    @TargetApi(Build.VERSION_CODES.N)
    @Override
    public String detailContent(List<String> ids) {
        JSONObject result = new JSONObject();
        try {
            String name = "";
            String vid = "";
            if (StringUtil.isBase64(ids.get(0))) {
                String id = new String(Base64.decode(ids.get(0), Base64.NO_WRAP), "utf-8");
                System.out.println(id);
                analyzeRule.setContent(id);
                vid = analyzeRule.getString("$.detail_url").split("\n")[0];
                name = analyzeRule.getString("$.title");
                ruleData.putVariable("vid", vid);
                ruleData.putVariable("title", name);
            } else {
                String[] vids = ids.get(0).split("\\+");
                if (vids.length >= 1) {
                    vid = vids[0];
                    ruleData.putVariable("vid", vids[0]);
                }
                if (vids.length > 1) {
                    name = vids[1];
                    ruleData.putVariable("title", name);
                }
            }
            putParamMap(rule.getDetailParamMaps());
            String webUrl = analyzeRule.getString(rule.getDetailUrl(), null, false);
            if (StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = detailUrl(vid);
            }
            if (StringUtil.isEmpty(webUrl)) {
                return result.toString();
            }
            LinkedHashMap<String, LinkedHashMap<String, LegadoData>> vod_play = new LinkedHashMap<>();
            webUrl = StringUtil.encode(StringUtil.decode(webUrl));
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            JSONObject vod = new JSONObject();
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                String s = HttpParser.getContent(webUrl, callBack.getResult().body());
                String baseUrl = callBack.getResult().request().url().toString();
                if (baseUrl.startsWith("http://localhost")) {
                    analyzeRule.setContent(s);
                } else {
                    analyzeRule.setContent(s, baseUrl);
                    analyzeRule.setRedirectUrl(baseUrl);
                    ruleData.putVariable("baseUrl", baseUrl);
                }
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
                        vod_play.put(defaultFrom, new LinkedHashMap<>());
                    }
                    for (int j = 0; j < urlSubNodes.size(); j++) {
                        baseUrl = callBack.getResult().request().url().toString();
                        if (baseUrl.startsWith("http://localhost"))
                            analyzeRule.setContent(urlSubNodes.get(j));
                        else {
                            analyzeRule.setContent(urlSubNodes.get(j), baseUrl);
                            analyzeRule.setRedirectUrl(baseUrl);
                            ruleData.putVariable("baseUrl", baseUrl);
                        }
                        final String content = urlSubNodes.get(j).toString();
                        String finalDefaultFrom = defaultFrom;
                        FutureTask<String> futureTask = new FutureTask<>(() -> {
                            getFileList(content, vod_play, finalDefaultFrom, "");
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
            } else if (callBack.getResult() != null) {
                callBack.getResult().close();
                getFileList("", vod_play, rule.getDefaultFrom(), "");
            }
            if (rule.getNfoFlag()) {
                getNfo(vod, analyzeRule.getString(rule.getUrlNfo()));
            }
            if (vod_play.size() > 0) {
                List<String> vod_from = new ArrayList<>();
                List<String> vod_plays = new ArrayList<>();
                for (Map.Entry<String, LinkedHashMap<String, LegadoData>> entry : vod_play.entrySet()) {
                    try {
                        if (entry.getKey().equalsIgnoreCase("vod_pic")) {
                            if (StringUtils.isNotEmpty(entry.getValue().get("vod_pic").fileUrl))
                                vod.put("vod_pic", entry.getValue().get("vod_pic").fileUrl);
                        } else if (entry.getKey().equalsIgnoreCase("NFO")) {
//                            JSONObject vodNfo = new JSONObject(entry.getValue().get("NFO").fileUrl);
//                            vod.put("vod_pic", vodNfo.optString("vod_pic"));
//                            vod.put("type_name", vodNfo.optString("type_name"));
//                            vod.put("vod_year", vodNfo.optString("vod_year"));
//                            vod.put("vod_area", vodNfo.optString("vod_area"));
//                            vod.put("vod_remarks", vodNfo.optString("vod_remarks"));
//                            vod.put("vod_actor", vodNfo.optString("vod_actor"));
//                            vod.put("vod_director", vodNfo.optString("vod_director"));
//                            vod.put("vod_content", vodNfo.optString("vod_content"));
                        } else if (entry.getValue() != null && !entry.getValue().isEmpty()) {
                            vod_from.add(entry.getKey());
                            LinkedHashMap<String, LegadoData> legadoDataLink = entry.getValue();
                            List<LegadoData> legadoDataList = new ArrayList<>(legadoDataLink.values());
//                        if (rule.getSort())
                            Collections.sort(legadoDataList, comparator);
                            vod_plays.add(join("#", legadoDataList));
                        }
                    } catch (Exception e) {
                        SpiderDebug.log(e);
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
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return result.toString();
    }

    public List<LegadoData> parseLegadoData(List<LegadoData> legadoDataList) {
        List<LegadoData> legadoDatas = new ArrayList<>();
        for (LegadoData legadoData:legadoDataList) {
            if (StringUtils.isNotEmpty(legadoData.fileUrl)) {
                legadoDatas.add(legadoData);
            }
        }
        return legadoDatas;
    }
//    public static Long extractNumber(String name) {
//        long i;
//        try {
//            String[] videoFormatList = {".m3u8", ".3g2", ".3gp", ".3gp2", ".3gpp", ".amv", ".asf", ".avi", ".divx", ".dpg", ".dvr-ms", ".evo", ".f4v", ".flv", ".ifo", ".k3g", ".m1v", ".m2t", ".m2ts", ".m2v", ".m4b", ".m4p", ".m4v", ".mkv", ".mov", ".mp2v", ".mp4", ".mpe", ".mpeg", ".mpg", ".mpv2", ".mts", ".mxf", ".nsr", ".nsv", ".ogm", ".ogv", ".qt", ".ram", ".rm", ".rmvb", ".rpm", ".skm", ".tp", ".tpr", ".trp", ".ts", ".vob", ".webm", ".wm", ".wmp", ".wmv", ".wtv"};
//            String[] relaceList = {"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""};
//            name = StringUtils.replaceEach(name.toLowerCase(), videoFormatList, relaceList);
//            String number = name.replaceAll("[^\\d]", "");
//            i = Long.parseLong(number);
//        } catch (Exception e) {
//            i = 0L;
//        }
//        return i;
//    }

    protected int sortType = 0;

    public String getItem(String name) {
        try {
            if (Pattern.compile("([\\s\\S]*)第(\\d+)集").matcher(name).find()) {
                Matcher matcher = Pattern.compile("([\\s\\S]*)第(\\d+)集").matcher(name);
                if (matcher.find())
                    return matcher.group(1) + "$" + matcher.group(2);
            } else if (Pattern.compile("([\\s\\S]*)E(\\d+)").matcher(name).find()) {
                Matcher matcher = Pattern.compile("([\\s\\S]*)E(\\d+)").matcher(name);
                if (matcher.find())
                    return matcher.group(1) + "$" + matcher.group(2);
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return null;
    }

    private Comparator<LegadoData> sortComparator = new Comparator<LegadoData>() {
        @Override
        public int compare(LegadoData o1, LegadoData o2) {
            String o1_1 = "";
            long o1_2 = 0;
            String o2_1 = "";
            long o2_2 = 0;
            if (getItem(o1.name) != null) {
                String[] items = getItem(o1.name).split("\\$");
                o1_1 = items[0];
                o1_2 = Long.parseLong(items[1]);
//                System.out.println(matcher.group());
//                System.out.println(o1_1);
//                System.out.println(o1_2);
            }
            if (getItem(o2.name) != null) {
                String[] items = getItem(o2.name).split("\\$");
                o2_1 = items[0];
                o2_2 = Long.parseLong(items[1]);
//                System.out.println(matcher.group());
//                System.out.println(o2_1);
//                System.out.println(o2_2);
            }
            if (Collator.getInstance(Locale.CHINESE).compare(o1_1.toUpperCase(Locale.CHINESE), o2_1.toUpperCase(Locale.CHINESE)) != 0) {
                return Collator.getInstance(Locale.CHINESE).compare(o1_1.toUpperCase(Locale.CHINESE), o2_1.toUpperCase(Locale.CHINESE));
            }
            if (Long.compare(o1_2, o2_2) != 0) {
                return Long.compare(o1_2, o2_2);
            }
//            System.out.println(Collator.getInstance(Locale.CHINESE).compare(o1_1.toUpperCase(Locale.CHINESE), o2_1.toUpperCase(Locale.CHINESE)));
//            System.out.println(Long.compare(o1_2, o2_2));
            switch (sortType) {
                case 1:
                    return Collator.getInstance(Locale.CHINESE).compare(o2.name.toUpperCase(Locale.CHINESE), o1.name.toUpperCase(Locale.CHINESE));
                default:
                    return Collator.getInstance(Locale.CHINESE).compare(o1.name.toUpperCase(Locale.CHINESE), o2.name.toUpperCase(Locale.CHINESE));
            }
        }
    };

    /**
     * 转为大写
     * @param key
     * @return
     */
    public String chineseToNum(String key) {
        Map<String, String> chnNumChar = new HashMap();
        chnNumChar.put("零", "0");
        chnNumChar.put("一", "1");
        chnNumChar.put("二", "2");
        chnNumChar.put("三", "3");
        chnNumChar.put("四", "4");
        chnNumChar.put("五", "5");
        chnNumChar.put("六", "6");
        chnNumChar.put("七", "7");
        chnNumChar.put("八", "8");
        chnNumChar.put("九", "9");
        chnNumChar.put("十", "10");
        chnNumChar.put("百", "100");
        chnNumChar.put("千", "1000");
        chnNumChar.put("万", "10000");
        chnNumChar.put("亿", "100000000");
        return chnNumChar.get(key);
    }

    public String cover(String input) {
        Pattern pattern = Pattern.compile("([零一二三四五六七八九十百千万亿])",Pattern.CASE_INSENSITIVE);
        Matcher matcher = pattern.matcher(input);
        StringBuilder a = new StringBuilder();
        int start = 0;
        if (matcher.find()) {
            do {
                if (matcher.start() > start) {
                    a.append(input.substring(start, matcher.start()));
//                    System.out.println(input.substring(start, matcher.start()));
                }
//                System.out.println(matcher.group());
                a.append(chineseToNum(matcher.group()));
                start = matcher.end();
            } while (matcher.find());
        }
        if (input.length() > start) {
            a.append(input.substring(start));
        }
        return a.toString();
    }

    private Comparator<LegadoData> comparator = new Comparator<LegadoData>() {
        @Override
        public int compare(LegadoData s1, LegadoData s2) {
            String o1 = cover(s1.name);
            String o2 = cover(s2.name);
            Pattern NUMBER = Pattern.compile("(?<=\\D)(?=\\d)|(?<=\\d)(?=\\D)");
            String[] split1 = NUMBER.split(o1);
            String[] split2 = NUMBER.split(o2);
            for (int i = 0; i < Math.min(split1.length,split2.length); i++) {
                int c1 = split1[i].codePointAt(0);
                int c2 = split2[i].codePointAt(0);
                int cmp = 0;
                int zeroCharCode = "0".codePointAt(0);
                int nineCharCode = "9".codePointAt(0);
                if (c1 >= zeroCharCode && c1 <= nineCharCode && c2 >= zeroCharCode && c2 <= nineCharCode) {
                    cmp = new BigInteger(split1[i]).compareTo(new BigInteger(split2[i]));
                }
                if (cmp == 0) {
                    String regex = "[a-zA-Z0-9]";
                    if (Pattern.matches(regex,split1[i]) || Pattern.matches(regex, split2[i])) {
                        cmp = split1[i].compareTo(split2[i]);
                    } else {
                        cmp = Collator.getInstance(Locale.CHINESE).compare(split1[i],split2[i]);
                    }
                }

                if (cmp != 0) {
                    return cmp;
                }
            }
            int lengthCmp = split1.length - split2.length;
            return lengthCmp;
        }
    };

    public String playerUrl(String vid) {
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
            String playUrl = "";
            if (StringUtil.isBase64(id)) {
                id = new String(Base64.decode(id, Base64.NO_WRAP), "utf-8");
                analyzeRule.setContent(id);
                playUrl = analyzeRule.getString("$.play_url");
                ruleData.putVariable("playUrl", playUrl);
                ruleData.putVariable("from", analyzeRule.getString("$.from"));
                ruleData.putVariable("subtitle", analyzeRule.getString("$.subtitle"));
                ruleData.putVariable("subtitleName", analyzeRule.getString("$.subtitleName"));
            } else {
                String[] infos = id.split("\\+");
                if (infos.length >= 1) {
                    ruleData.putVariable("playUrl", StringUtils.trim(infos[0]).split("\n")[0]);
                }
                if (infos.length > 1) {
                    ruleData.putVariable("from", infos[1]);
                }
                if (infos.length > 2) {
                    ruleData.putVariable("subtitle", infos[2]);
                }
            }
            putParamMap(rule.getPlayerParamMaps());
            String subtitle = analyzeRule.getString("@get:{subtitle}");
            String subtitleName = analyzeRule.getString("@get:{subtitleName}");
            String from = analyzeRule.getString("@get:{from}");
            String webUrl = analyzeRule.getString(rule.getPlayUrl());
            if (StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = playerUrl(playUrl);
            }
            SpiderDebug.log(webUrl);
            if (StringUtils.isEmpty(webUrl)) {
                throw new Exception("weburl是空的");
            }
            JSONObject headerObj = rule.getHeaders();
            if (headerObj != null && StringUtil.isNotEmpty(headerObj.optString("User-Agent")))
                headerObj.put("User-Agent", "Mozilla/5.0 (Linux; Android 11; Mi 10 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.152 Mobile Safari/537.36");
            else if (headerObj == null) {
                headerObj = new JSONObject();
            }
            String parseUrl = PlayerParser.getInstance()
                    .setAnalyzeRule(analyzeRule)
                    .setUrl(webUrl)
                    .setPlayUrl(rule.getPlayUrl())
                    .setSubtitle(subtitle)
                    .setSubtitleName(subtitleName)
                    .setFrom(from)
                    .setHeader(headerObj)
                    .parses();
            result.put("parse", rule.getParse());
            result.put("jx", rule.getJx() == null ? 0 : rule.getJx());
            result.put("playUrl", "");


            result.put("subt", subtitle);
            result.put("subtitleName", subtitleName);
            if (!rule.getPlayUa().isEmpty()) {
                result.put("User-Agent", rule.getPlayUa());
            }
            if (StringUtils.isNotEmpty(parseUrl)) {
                if (StringUtil.isJson(parseUrl)) {
                    JSONArray urls = new JSONObject(parseUrl).optJSONArray("urls");
                    webUrl = urls.optString(0);
//                    if (urls.length() == 1)
//                        webUrl = urls.optString(urls.length() - 1);
//                    else
//                        webUrl = urls.optString(urls.length() - 2);
                }
                // 适配2.0.6的调用应用内解析列表的支持, 需要配合直连分析和匹配官源解析一起使用，参考cjt影视和极品直连
                if (isVip(parseUrl)) { // 使用jx:1
                    result.put("parse", 1);
                    result.put("jx", "1");
                    result.put("url", webUrl);
//                        return result.toString();
                } else if (vipFlags.contains(flag)) { // 是否使用应用内解析列表解析官源
                    result.put("parse", 1);
                    result.put("jx", 1);
                    result.put("playUrl", "");
                    result.put("url", webUrl);
//                        return result.toString();
                }
                // 如果是视频直连 直接返回免解
                else if (isVideoFormat(parseUrl)) {
                    result.put("parse", 0);
                    result.put("playUrl", "");
                    result.put("url", webUrl);
                    result.put("header", headerObj.toString());
//                        return result.toString();

                } else {
                    result.put("parse", 1);
                    result.put("playUrl", "");
                    result.put("header", headerObj.toString());
                    result.put("url", webUrl);
                }
            }
            // 上述都失败了就按默认模式走
            result.put("urls",parseUrl);
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            try {
                result.put("url", "https://mao.guibiaoguo.ml/test.html?msg=" + e);
                result.put("parse", 1);
                result.put("jx", 0);
                result.put("playUrl", "");
            } catch (Exception e1) {
                SpiderDebug.log(e);
            }
        }
        return result.toString();
    }

    public static boolean isVip(String url) throws JSONException {

        if (StringUtil.isJson(url)) {
            url = new JSONObject(url).optJSONArray("urls").optString(0);
        }
        // 适配2.0.6的调用应用内解析列表的支持, 需要配合直连分析一起使用，参考cjt影视和极品直连
        try {
            boolean isVip = false;
            String host = StringUtil.getDom(url);
            String[] vipWebsites = new String[]{"iqiyi.com", "v.qq.com", "youku.com", "le.com", "tudou.com", "mgtv.com", "sohu.com", "acfun.cn", "bilibili.com", "baofeng.com", "pptv.com"};
            for (int b = 0; b < vipWebsites.length; b++) {
                if (host.contains(vipWebsites[b])) {
                    if ("iqiyi.com".equals(vipWebsites[b])) {
                        //爱奇艺需要特殊处理
                        if (url.contains("iqiyi.com/a_") || url.contains("iqiyi.com/w_") || url.contains("iqiyi.com/v_")) {
                            isVip = true;
                            break;
                        }
                    } else {
                        isVip = true;
                        break;
                    }
                }
            }
            return isVip;
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return false;
    }

    @Override
    public boolean isVideoFormat(String url) {
        if (StringUtil.isJson(url)) {
            try {
                url = new JSONObject(url).optJSONArray("urls").optString(0);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        String[] videoFormatList = {".M3U8", ".3G2", ".3GP", ".3GP2", ".3GPP", ".AMV", ".ASF", ".AVI", ".DIVX", ".DPG", ".DVR-MS", ".EVO", ".F4V", ".FLV", ".IFO", ".K3G", ".M1V", ".M2T", ".M2TS", ".M2V", ".M4B", ".M4P", ".M4V", ".MKV", ".MOV", ".MP2V", ".MP4", ".MPE", ".MPEG", ".MPG", ".MPV2", ".MTS", ".MXF", ".NSR", ".NSV", ".OGM", ".OGV", ".QT", ".RAM", ".RM", ".RMVB", ".RPM", ".SKM", ".TP", ".TPR", ".TRP", ".TS", ".VOB", ".WEBM", ".WM", ".WMP", ".WMV", ".WTV"};
        url = url.toLowerCase();
        if (url.contains("=http") || url.contains("=https") || url.contains("=https%3a%2f") || url.contains("=http%3a%2f")) {
            return false;
        }
        if (url.contains("alicloudccp.com")) {
            return true;
        }
        return StringUtils.endsWithAny(url.toUpperCase(), videoFormatList);
    }

    public String searchUrl(String vid, String scPg) {
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
        JSONObject result = new JSONObject();
        try {
            if (rule.getSearchUrl().isEmpty()) {
                return result.toString();
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
            JSONArray videos = new JSONArray();
            for (int i = start; i <= end; i = i + step) {
                ruleData.putVariable("scPg", i + "");
                webUrl = analyzeRule.getString(rule.getSearchUrl());
                if (StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                    webUrl = searchUrl(key, i + "");
                }
                webUrl = StringUtil.encode(StringUtil.decode(webUrl));
                OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
                if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                    String s = HttpParser.getContent(webUrl, callBack.getResult().body());
                    String baseUrl = callBack.getResult().request().url().toString();
                    if (baseUrl.startsWith("http://localhost")) {
                        analyzeRule.setContent(s);
                    } else {
                        analyzeRule.setContent(s, baseUrl);
                        analyzeRule.setRedirectUrl(baseUrl);
                        ruleData.putVariable("baseUrl", baseUrl);
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
                } else if (callBack.getResult() != null) {
                    callBack.getResult().close();
                    throw new Exception(webUrl + "$" + callBack.getResult().code());
                }
            }
            result.put("list", videos);
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return result.toString();
    }

//    public String getFinalUrl(String webUrl) {
//        String[] d = webUrl.split(";");
//        String[] ss = StringUtil.splitUrlByQuestionMark(d[0]);
//        String url = ss[0].replace(" ", "");
//        url = StringUtil.decodeConflictStr(url);
//        return url;
//    }

//    public String getName(String name) {
//        String[] videoFormatList = {".ass", ".srt", ".ass", ".ssa", ".vtt", ".m3u8", ".3g2", ".3gp", ".3gp2", ".3gpp", ".amv", ".asf", ".avi", ".divx", ".dpg", ".dvr-ms", ".evo", ".f4v", ".flv", ".ifo", ".k3g", ".m1v", ".m2t", ".m2ts", ".m2v", ".m4b", ".m4p", ".m4v", ".mkv", ".mov", ".mp2v", ".mp4", ".mpe", ".mpeg", ".mpg", ".mpv2", ".mts", ".mxf", ".nsr", ".nsv", ".ogm", ".ogv", ".qt", ".ram", ".rm", ".rmvb", ".rpm", ".skm", ".tp", ".tpr", ".trp", ".ts", ".vob", ".webm", ".wm", ".wmp", ".wmv", ".wtv"};
//        String[] name1 = new String[videoFormatList.length];
//        Arrays.fill(name1, "");
//        String[] i18 = {".简英",".en", ".fr", ".de", ".it", ".ja", ".ko", ".zh", ".sc"};
//        String[] name2 = new String[i18.length];
//        Arrays.fill(name2, "");
//        name = StringUtils.replaceEach(name.toLowerCase(), i18, name2);
//        return StringUtils.replaceEach(name, videoFormatList, name1);
//    }

    public String getName(String name) {
        String[] s1 = StringUtils.split(name,".");
        List<String> s2 = Arrays.asList(s1);
        s2 = s2.subList(0,s1.length-1);
        String[] i18 = {"简","英","法","繁","en", "fr", "de", "it", "ja", "ko", "zh", "sc","ch"};
        if(s1.length > 2 && StringUtils.indexOfAny(s1[s1.length -2].toLowerCase(),i18) > -1) {
            s2 = s2.subList(0,s1.length -2);
        }
        return StringUtils.join(s2,".");
    }
    public void getFileList(String content, LinkedHashMap<String, LinkedHashMap<String, LegadoData>> data, String defaultFrom, String root) {
        try {
            if (StringUtil.isNotEmpty(content))
                analyzeRule.setContent(content);
            String name = analyzeRule.getString(rule.getDetailUrlName());
            String id = analyzeRule.getString(rule.getDetailUrlId(), null, true);
            String leaf = analyzeRule.getString(rule.getLeaf());
            String subtitle = analyzeRule.getString(rule.getSubtitle());
            if (StringUtils.isNotEmpty(analyzeRule.getString(rule.getNextPage())) || analyzeRule.getString(rule.getNode()).equals(rule.getNodeValue()) && StringUtils.isNotEmpty(rule.getNodeValue())) {
                String nodeUrl = analyzeRule.getString(rule.getNodeUrl(), null, true);
                nodeUrl = StringUtil.encode(StringUtil.decode(nodeUrl));
                OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(nodeUrl);
                if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                    try {
                        String s = HttpParser.getContent(nodeUrl, callBack.getResult().body());
                        String baseUrl = callBack.getResult().request().url().toString();
                        if (baseUrl.startsWith("http://localhost"))
                            analyzeRule.setContent(s);
                        else {
                            analyzeRule.setContent(s, baseUrl);
                            analyzeRule.setRedirectUrl(baseUrl);
                            ruleData.putVariable("baseUrl", baseUrl);
                        }
                        List<Object> rootList = getNodes(analyzeRule, rule.getItemUrlNode());
                        if (rootList != null && rootList.size() > 0) {
                            for (int i = 0; i < rootList.size(); i++) {
                                analyzeRule.setContent(rootList.get(i));
                                if (analyzeRule.getString(rule.getNode()).equals(rule.getNodeValue())) {
                                    analyzeRule.getString(rule.getItemUrlName());
                                    getFileList(rootList.get(i).toString(), data, defaultFrom, name);
                                } else {
                                    String[] types = rule.getLeafValue().split(",");
                                    if (Arrays.asList(types).contains(analyzeRule.getString(rule.getLeaf()))) {
                                        ruleData.putVariable("vod_pic", analyzeRule.getString(rule.getDetailImg()));
                                        LegadoData vod_pics = new LegadoData("", analyzeRule.getString(rule.getDetailImg()));
                                        data.put("vod_pic", new LinkedHashMap(Collections.singletonMap("vod_pic", vod_pics)));
//                                        String templateIds = defaultFrom.split(",");
                                        LinkedHashMap<String, LegadoData> vodLists;
                                        String fileName = analyzeRule.getString(rule.getItemUrlName());
                                        String fileId = analyzeRule.getString(rule.getItemUrlId(), null, true);
                                        String name1 = getName(fileName);
//                                        for (String templateId : templateIds) {
                                        LegadoData legadoData = null;
                                        if (data.get(name) == null) {
                                            vodLists = new LinkedHashMap();
                                            data.put(name, vodLists);
                                        } else {
                                            vodLists = data.get(name);
                                        }
                                        if (vodLists.get(name1) == null) {
                                            float max = 0;
                                            for (String n:vodLists.keySet()) {
                                                if (name1.indexOf(n) > -1 || n.indexOf(name1) > -1) {
                                                    legadoData = vodLists.get(n);
                                                    break;
                                                }
                                                float s1 = similar(n,name1,2);
                                                if (s1 >= 30 && max < s1) {
                                                    legadoData = vodLists.get(n);
                                                }
                                                if (max < s1) {
                                                    max = s1;
                                                }
                                            }
                                            if (legadoData == null || StringUtils.isNotEmpty(legadoData.name)) {
                                                legadoData = new LegadoData();
                                                vodLists.put(name1, legadoData);
                                            }
                                        } else {
                                            legadoData = vodLists.get(name1);
                                        }
                                        legadoData.name = fileName;
                                        legadoData.fileUrl = fileId;
                                        legadoData.from = name;
//                                        }
                                    } else {
                                        getFileList(rootList.get(i).toString(), data, defaultFrom, name);
                                    }
                                }
                            }
                        }
                        analyzeRule.setContent(s);
                        if (StringUtils.isNotEmpty(analyzeRule.getString(rule.getNextPage()))) {
                            getFileList(s, data, defaultFrom, name);
                        }
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                } else if (callBack.getResult() != null) {
                    callBack.getResult().close();
                }
            } else if (StringUtils.containsIgnoreCase(name, ".nfo")) {
                ruleData.putVariable("NFO", analyzeRule.getString(rule.getDetailUrlId(), null, true));
                JSONObject vod = new JSONObject();
                getNfo(vod, analyzeRule.getString(rule.getUrlNfo(), null, true));
                LegadoData nfo = new LegadoData("", vod.toString());
                data.put("NFO", new LinkedHashMap(Collections.singletonMap("NFO", nfo)));
            } else if (StringUtils.endsWithAny(name, ".srt,.ass,.ssa,.vtt".split(","))) {
                defaultFrom = root.equals("") ? defaultFrom : root;
                LinkedHashMap<String, LegadoData> vodLists;
                if (data.get(defaultFrom) == null) {
                    vodLists = new LinkedHashMap<>();
                    data.put(defaultFrom, vodLists);
                } else {
                    vodLists = data.get(defaultFrom);
                }
                LegadoData legadoData = vodLists.get(getName(name));
                if (legadoData == null) {
                    float max = 0;
                    String name1 = getName(name);
                    for (String n:vodLists.keySet()) {
                        if (name1.indexOf(n) > -1 || n.indexOf(name1) > -1) {
                            legadoData = vodLists.get(n);
                            break;
                        }
                        float s1 = similar(n,name1,2);
                        if (s1 >= 30 && max < s1) {
                            legadoData = vodLists.get(n);
                        }
                        if (max < s1 && StringUtils.isEmpty(legadoData.subtitleName)) {
                            max = s1;
                        }
                    }
                    if (legadoData == null || StringUtils.isNotEmpty(legadoData.subtitleName)) {
                        legadoData = new LegadoData();
                        vodLists.put(name1, legadoData);
                    }
                } else {
                    legadoData = vodLists.get(getName(name));
                }

                legadoData.subtitle = subtitle;
                legadoData.subtitleName = name;
            } else if (Arrays.asList(rule.getLeafValue().split(",")).contains(leaf) || StringUtils.contains(leaf.toLowerCase(), "video")) {
                LinkedHashMap<String, LegadoData> vodLists;
                LegadoData legadoData = null;
                defaultFrom = root.equals("") ? defaultFrom : root;
                if (data.get(defaultFrom) == null) {
                    vodLists = new LinkedHashMap();
                    data.put(root, vodLists);
                } else {
                    vodLists = data.get(defaultFrom);
                }
                String name1 = getName(name);
                if (vodLists.get(name1) == null) {
                    legadoData = new LegadoData();
                    vodLists.put(name1, legadoData);
                } else {
                    legadoData = vodLists.get(name1);
                }
                legadoData.name = name;
                legadoData.fileUrl = id;
                legadoData.from = defaultFrom;
            }
            // 取文件列表
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }

    int min (int a, int b, int c) {
        return a < b ? (a < c ? a : c) : (b < c ? b : c);
    }

    public float similar(String s, String t, int f) {//判断两个字符串之间的相似度
        if (StringUtils.isEmpty(s) || StringUtils.isEmpty(t)) {
            return 0;
        }
        if(s.equals(t)) {
            return 100;
        }
        int l = s.length() > t.length() ? s.length() : t.length();
        int n = s.length();
        int m = t.length();
        Integer[][] d = new Integer[n+1][m+1];
        f = f == 0 ? f:2;

        int i, j, si, tj, cost;
        if (n == 0) return m;
        if (m == 0) return n;
        for (i = 0; i <= n; i++) {
            Arrays.fill(d[i],0);
            d[i][0] = i;
        }
        for (j = 0; j <= m; j++) {
            d[0][j] = j;
        }
        for (i = 1; i <= n; i++) {
            si = s.charAt(i - 1);
            for (j = 1; j <= m; j++) {
                tj = t.charAt(j - 1);
                if (si == tj) {
                    cost = 0;
                } else {
                    cost = 1;
                }
                d[i][j] = min(d[i - 1][j] + 1, d[i][j - 1] + 1, d[i - 1][j - 1] + cost);
            }
        }
        float res = (1 - d[n][m] / (l*1f)) *100;
        return Math.round(res * 100) / 100f;
    }

    public void getNfo(JSONObject vod, String webUrl) {
        if (StringUtils.isNotEmpty(webUrl) && StringUtil.isWebUrl(webUrl)) {
//            webUrl = StringUtil.encode(StringUtil.decode(webUrl));
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                try {
                    String s = HttpParser.getContent(webUrl, callBack.getResult().body());
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
//            else if (callBack.getResult() != null) {
//                callBack.getResult().close();
//            }
        }
    }

    public static Object[] loadPic(Map<String, String> params) {
        try {
            String pic = params.get("pic");
            String selector = params.get("selector");
            pic = new String(Base64.decode(pic, Base64.NO_WRAP), "UTF-8");
            if (StringUtils.isNotEmpty(selector)) {
                pic = StringUtil.encode(StringUtil.decode(pic));
                OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(pic);
                if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                    RuleData ruleData = new RuleData();
                    ruleData.getVariableMap().putAll(params);
                    AnalyzeRule analyzeRule = new AnalyzeRule(ruleData);
                    analyzeRule.setContent(HttpParser.getContent(pic, callBack.getResult().body()));
                    pic = analyzeRule.getString(selector);
                } else if (callBack.getResult() != null){
                    callBack.getResult().close();
                }
            }

//            pic = StringUtil.encode(StringUtil.decode(pic));
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
            } else if (callBack.getResult() != null){
                callBack.getResult().close();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return null;
    }

    public List<Object> getNodes(AnalyzeRule analyzeRule, String cateNode) {
        return analyzeRule.getElements(cateNode);
    }
}
