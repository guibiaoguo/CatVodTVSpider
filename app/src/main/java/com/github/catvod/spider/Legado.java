package com.github.catvod.spider;

import static com.github.catvod.utils.StringUtil.join;

import android.content.Context;

import com.github.catvod.analyzeRules.AnalyzeRule;

import com.github.catvod.analyzeRules.RuleData;
import com.github.catvod.analyzeRules.RuleDataInterface;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;

import com.github.catvod.legado.LegadoRule;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OKCallBack;


import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;

import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

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
    private  ExecutorService executorService = Executors.newSingleThreadExecutor();

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
                        ruleData.putVariable(header.getKey(), new JSONArray(data).toString());
                    } else
                        ruleData.putVariable(header.getKey(), new JSONObject(header.getValue().toString()).toString());
                } catch (Exception e) {
                    ruleData.putVariable(header.getKey(), e.getMessage());
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
                    final String finalUrl = getFinalUrl(webUrl);
                    OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
                    try {
                        Response response = callBack.getResult();
                        analyzeRule.setContent(response.body().string(), finalUrl);
                        analyzeRule.setRedirectUrl(finalUrl);
                        putHeaderMap(response.headers().toMultimap());
                        String value1 = analyzeRule.getString(value);
                        if (StringUtils.equalsIgnoreCase(flag,"list")) {
                          ruleData.putVariable(key, ruleData.getVariable(key) + value1);
                        } else if (StringUtils.isNotEmpty(value1)) {
                            ruleData.putVariable(key, value1);
                        }
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                } else {
                    String value1 = analyzeRule.getString(value);
                    if (StringUtils.isNotEmpty(value1)) {
                        ruleData.putVariable(key, analyzeRule.getString(value));
                    }
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
                        if (callBack.getResult().code() == 200) {
                            String s = callBack.getResult().body().string();
                            rule = LegadoRule.fromJson(s);
                        }
                    } catch (Exception e) {

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
            }
            putParamMap(rule.getHomeParamMaps());
            String webUrl = analyzeRule.getString(rule.getHomeUrl());
            if (StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = rule.getHomeUrl();
            }
            final String finalUrl = getFinalUrl(webUrl);
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            try {
                if (callBack.getResult().code() == 200) {
                    String s = callBack.getResult().body().string();
                    analyzeRule.setContent(s, finalUrl);
                    analyzeRule.setRedirectUrl(finalUrl);
                    List<Object> nodes = getNodes(analyzeRule, rule.getCateNode());
                    List<Object> videoNodes = getNodes(analyzeRule, rule.getHomeVodNode());
                    for (int i = 0; i < nodes.size(); i++) {
                        analyzeRule.setContent(nodes.get(i));
                        JSONObject jsonObject = new JSONObject();
                        jsonObject.put("type_id", analyzeRule.getString(rule.getCateId()));
                        jsonObject.put("type_name", analyzeRule.getString(rule.getCateName()));
                        classes.put(jsonObject);
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
                    JSONArray errorArray = new JSONArray();
                    JSONObject errorObject = new JSONObject();
                    errorObject.put("vod_name", "$" + callBack.getResult().message()).put("vod_id", callBack.getResult().message());
                    errorArray.put(errorObject);
                    result.put("list", errorArray);
                    error.putVariable("vod_actor", "home:" + "$" + callBack.getResult().message());
                }
            } catch (Exception e) {
                SpiderDebug.log(e);
                try {
                    JSONArray errorArray = new JSONArray();
                    JSONObject errorObject = new JSONObject();
                    errorObject.put("vod_name", e.getMessage()).put("vod_id", finalUrl + e.getMessage());
                    errorArray.put(errorObject);
                    result.put("list", errorArray);
                    error.putVariable("vod_actor", "home:" + e.getMessage());
                } catch (Exception e1) {
                    SpiderDebug.log(e);
                }
            }
            result.put("class", classes);
            if (filter && rule.getFilter() != null) {
                result.put("filters", new JSONObject(rule.getFilter()));
            }
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            try {
                JSONArray errorArray = new JSONArray();
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", e.getMessage());
                errorArray.put(errorObject);
                result.put("list", errorArray);
                error.putVariable("vod_actor", "home:" + e.getMessage());
            } catch (Exception e1) {
                SpiderDebug.log(e);
            }
        }
        return result.toString();
    }

    protected String categoryUrl(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        String cateUrl;
        if (StringUtil.isAbsUrl(tid)) {
            cateUrl = StringUtils.trim(tid).split("\n")[0];
        } else {
            cateUrl = rule.getCateUrl().replace("{cateId}", StringUtils.trim(tid).split("\n")[0]).replace("{catePg}", pg);
        }
        ruleData.putVariable("cateId", StringUtils.trim(tid).split("\n")[0]);
        ruleData.putVariable("catePg", pg);
        return cateUrl;

    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        JSONObject result = new JSONObject();
        try {
            if (extend != null)
                ruleData.getVariableMap().putAll(extend);
            ruleData.putVariable("cateId", tid);
            ruleData.putVariable("catePg", pg);
            putParamMap(rule.getCategoryParamMaps());
            String webUrl = analyzeRule.getString(rule.getCateUrl());
            if (StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = categoryUrl(tid, pg, filter, extend);
            }
            final String finalUrl = getFinalUrl(webUrl);
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            try {
                if (callBack.getResult().code() == 200) {
                    if (!rule.getCateVodNode().isEmpty()) {
                        try {
                            String s = callBack.getResult().body().string();
                            JSONArray videos = new JSONArray();
                            analyzeRule.setContent(s, finalUrl);
                            analyzeRule.setRedirectUrl(finalUrl);
                            String pageCount = analyzeRule.getString(rule.getPageCount());
                            List<Object> nodes = getNodes(analyzeRule, rule.getCateVodNode());
                            if (StringUtils.isNotEmpty(pageCount)) {
                                result.put("pageCount", analyzeRule.getString(rule.getPageCount()));
                                result.put("total", Integer.parseInt(pageCount) <= 1 ? nodes.size() : Integer.parseInt(pageCount) * 90);
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
                                JSONArray errorArray = new JSONArray();
                                JSONObject errorObject = new JSONObject();
                                errorObject.put("vod_name", e.getMessage()).put("vod_id", e.getMessage());
                                errorArray.put(errorObject);
                                result.put("list", errorArray);
                                error.putVariable("vod_director", "cate:" + e.getMessage());
                            } catch (Exception e1) {
                                SpiderDebug.log(e);
                            }
                        }
                    }

                } else {
                    JSONArray errorArray = new JSONArray();
                    JSONObject errorObject = new JSONObject();
                    errorObject.put("vod_name", "$" + callBack.getResult().message()).put("vod_id", callBack.getResult().message());
                    errorArray.put(errorObject);
                    result.put("list", errorArray);
                    error.putVariable("vod_director", "cate:" + "$" + callBack.getResult().message());
                }
            } catch (Exception e) {
                SpiderDebug.log(e);
                try {
                    JSONArray errorArray = new JSONArray();
                    JSONObject errorObject = new JSONObject();
                    errorObject.put("vod_name", e.getMessage()).put("vod_id", finalUrl + e.getMessage());
                    errorArray.put(errorObject);
                    result.put("list", errorArray);
                    error.putVariable("vod_director", "cate:" + e.getMessage());
                } catch (Exception e1) {
                    SpiderDebug.log(e);
                }
            }
            result.put("page", pg);
            result.put("limit", 90);
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            try {
                JSONArray errorArray = new JSONArray();
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", e.getMessage());
                errorArray.put(errorObject);
                result.put("list", errorArray);
                error.putVariable("vod_director", "cate:" + e.getMessage());
            } catch (Exception e1) {
                SpiderDebug.log(e);
            }
        }
        return "";
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
        if (error.getVariableMap().size() > 0) {
            try {
                JSONArray errorArray = new JSONArray();
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", ids.get(0)).put("vod_id", ids.get(0));
                errorObject.put("vod_actor", error.getVariable("vod_actor"));
                errorObject.put("vod_director", error.getVariable("vod_director"));
                errorArray.put(errorObject);
                result.put("list", errorArray);
            } catch (Exception e1) {
                SpiderDebug.log(e1);
            }
            return result.toString();
        }
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
            String webUrl = analyzeRule.getString(rule.getDetailUrl());
            if (StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = detailUrl(vids[0]);
            }
            final String finalUrl = getFinalUrl(webUrl);
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            try {
                if (callBack.getResult().code() == 200) {
                    String s = callBack.getResult().body().string();
                    analyzeRule.setContent(s, finalUrl);
                    analyzeRule.setRedirectUrl(finalUrl);
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
                            analyzeRule.setContent(urlSubNodes.get(j));
                            analyzeRule.setRedirectUrl(finalUrl);
                            final String content = urlSubNodes.get(j).toString();
                            String finalDefaultFrom = defaultFrom;
                            FutureTask<String> futureTask = new FutureTask<>(new Callable<String>() {
                                @Override
                                public String call() throws Exception {
                                    getFileList(content, vod_play, finalDefaultFrom);
                                    return "";
                                };
                            });
                            executorService.execute(futureTask);
                            try {
                                futureTask.get(20000, TimeUnit.MILLISECONDS);
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
                            } else if (entry.getValue() != null && !entry.getValue().isEmpty()) {
                                vod_from.add(entry.getKey());
//                                String[] vods = entry.getValue().toArray(new String[0]);
//                                if (vods.length > 200) {
//                                    Arrays.sort(vods, (o1, o2) -> {
//                                        Long n1 = extractNumber(o1.split("\\$")[0]);
//                                        Long n2 = extractNumber(o2.split("\\$")[0]);
//                                        String n3 = o1.split("\\$")[0].replaceAll("\\d", "");
//                                        String n4 = o2.split("\\$")[0].replaceAll("\\d", "");
//                                        return StringUtils.compareIgnoreCase(o1 , o2);
//                                    });
//                                }
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
                    JSONArray errorArray = new JSONArray();
                    JSONObject errorObject = new JSONObject();
                    errorObject.put("vod_name", "$" + callBack.getResult().message()).put("vod_id", callBack.getResult().message());
                    errorObject.put("vod_actor", error.getVariable("vod_actor"));
                    errorObject.put("vod_director", error.getVariable("vod_director"));
                    errorArray.put(errorObject);
                    result.put("list", errorArray);
                }
            } catch (Exception e) {
                SpiderDebug.log(e);
                try {
                    JSONArray errorArray = new JSONArray();
                    JSONObject errorObject = new JSONObject();
                    errorObject.put("vod_name", "detail:" + ids.get(0)).put("vod_id", ids.get(0));
                    errorObject.put("vod_actor", error.getVariable("vod_actor"));
                    errorObject.put("vod_director", error.getVariable("vod_director"));
                    errorObject.put("vod_content", "detail:" + e.getMessage());
                    errorArray.put(errorObject);
                    result.put("list", errorArray);
                } catch (Exception e1) {
                    SpiderDebug.log(e1);
                }
            }
            if (result.length() == 0) {
                try {
                    JSONArray errorArray = new JSONArray();
                    JSONObject errorObject = new JSONObject();
                    errorObject.put("vod_name", ids.get(0)).put("vod_id", ids.get(0));
                    errorObject.put("vod_actor", error.getVariable("vod_actor"));
                    errorObject.put("vod_director", error.getVariable("vod_director"));
                    errorObject.put("vod_content", ids);
                    errorArray.put(errorObject);
                    result.put("list", errorArray);
                } catch (Exception e1) {
                    SpiderDebug.log(e1);
                }
                return result.toString();
            }
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            try {
                JSONArray errorArray = new JSONArray();
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", e.getMessage());
                errorArray.put(errorObject);
                result.put("list", errorArray);
                error.putVariable("vod_content", "detail:" + e.getMessage());
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
            result.put("parse", rule.getParse());
            result.put("jx", rule.getJx() == null ? 0 : rule.getJx());
            result.put("playUrl", "");
            JSONObject headerObj = new JSONObject();
            headerObj.put("User-Agent", "Mozilla/5.0 (Linux; Android 11; Mi 10 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.152 Mobile Safari/537.36");
            if (!rule.getPlayUa().isEmpty()) {
                result.put("ua", rule.getPlayUa());
            }
            if (StringUtils.isNotEmpty(webUrl)) {
                // 适配2.0.6的调用应用内解析列表的支持, 需要配合直连分析和匹配官源解析一起使用，参考cjt影视和极品直连
                if (rule.getDecodeVipFlag() && Misc.isVip(webUrl)) { // 使用jx:1
                    try {
                        result.put("parse", 1);
                        result.put("jx", "1");
                        result.put("url", webUrl);
                        return result.toString();
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                } else if (rule.getDecodeVipFlag() && vipFlags.contains(flag)) { // 是否使用应用内解析列表解析官源
                    try {
                        result.put("parse", 1);
                        result.put("playUrl", "");
                        result.put("url", webUrl);
                        result.put("header", headerObj.toString());
                        return result.toString();
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                }
                // 如果是视频直连 直接返回免解
                else if (isVideoFormat(webUrl)) {
                    try {
                        result.put("parse", 0);
                        result.put("playUrl", "");
                        result.put("url", webUrl);
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
                    result.put("url", webUrl);
                }
            }
            result.put("seaPf", "2");
            result.put("subtitle", "https://mao.guibaioguo.tk/hsck1.txt");
            // 上述都失败了就按默认模式走
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            try {
                StringBuilder builder = new StringBuilder();
                if (error.getVariableMap().size() > 0) {
                    try {
                        builder.append("vod_actor=").append(error.getVariable("vod_actor")).append("&");
                        builder.append("vod_director=").append(error.getVariable("vod_director"));
                    } catch (Exception e1) {
                        SpiderDebug.log(e);
                    }
                    return result.toString();
                }
                result.put("url", "https://mao.guibiaoguo.tk/test.html?msg=" + e.getMessage() + "&" + builder);
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
                final String finalUrl = getFinalUrl(webUrl);
                OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
                if (callBack.getResult().code() == 200) {
                    try {
                        String s = callBack.getResult().body().string();
                        analyzeRule.setContent(s, finalUrl);
                        analyzeRule.setRedirectUrl(finalUrl);
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
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                }
            }
            result.put("list", videos);
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    public String getFinalUrl(String webUrl) {
        String[] d = webUrl.split(";");
        String[] ss = StringUtil.splitUrlByQuestionMark(d[0]);
        String url = ss[0].replace(" ", "");
        url = StringUtil.decodeConflictStr(url);
        return url;
    }

    private void getFileList(String content, Map<String, List<String>> data, String defaultFrom) {
        try {
            analyzeRule.setContent(content);
            String name = analyzeRule.getString(rule.getDetailUrlName());
            String id = analyzeRule.getString(rule.getDetailUrlId(), null, true);
            String leaf = analyzeRule.getString(rule.getLeaf());
            if (StringUtils.isNotEmpty(analyzeRule.getString(rule.getNextPage())) || analyzeRule.getString(rule.getNode()).equals(rule.getNodeValue()) && StringUtils.isNotEmpty(rule.getNodeValue())) {
                String nodeUrl = analyzeRule.getString(rule.getNodeUrl(), null, true);
                final String finalUrl = getFinalUrl(nodeUrl);
                OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(nodeUrl);
                if (callBack.getResult().code() == 200) {
                    try {
                        String s = callBack.getResult().body().string();
                        analyzeRule.setContent(s, finalUrl);
                        List<Object> rootList = getNodes(analyzeRule, rule.getItemUrlNode());
                        if (rootList != null && rootList.size() > 0) {
                            for (int i = 0; i < rootList.size(); i++) {
                                analyzeRule.setRedirectUrl(finalUrl);
                                analyzeRule.setContent(rootList.get(i));
                                if (analyzeRule.getString(rule.getNode()).equals(rule.getNodeValue())) {
                                    analyzeRule.getString(rule.getItemUrlName());
                                    getFileList(rootList.get(i).toString(), data, defaultFrom);
                                } else {
                                    String[] types = rule.getLeafValue().split(",");
                                    if (Arrays.asList(types).contains(analyzeRule.getString(rule.getLeaf()))) {
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
                JSONObject vod = new JSONObject();
                getNfo(vod, analyzeRule.getString(rule.getUrlNfo(), null, true));
                data.put("NFO", Collections.singletonList(vod.toString()));
            }

            // 取文件列表
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }

    public void getNfo(JSONObject vod, String weburl) {
        OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(weburl);
        if (callBack.getResult().code() == 200) {
            try {
                String s = callBack.getResult().body().string();
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

    public static Object[] loadPic(String pic, String selector) {
        try {
            pic = new String(Base64.decode(pic, Base64.DEFAULT | Base64.URL_SAFE | Base64.NO_WRAP), "UTF-8");
            if (StringUtils.isNotEmpty(selector)) {
                OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(pic);
                if (callBack.getResult().code() == 200) {
                    AnalyzeRule analyzeRule = new AnalyzeRule();
                    analyzeRule.setContent(callBack.getResult().body().string());
                    pic = analyzeRule.getString(selector);
                }
            }
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(pic);
            if (callBack.getResult().code() == 200) {
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
