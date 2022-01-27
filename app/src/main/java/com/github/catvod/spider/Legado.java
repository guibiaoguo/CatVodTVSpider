package com.github.catvod.spider;

import static com.github.catvod.utils.StringUtil.join;

import android.content.Context;

import com.github.catvod.analyzeRules.AnalyzeRule;

import com.github.catvod.analyzeRules.RuleData;
import com.github.catvod.analyzeRules.RuleDataInterface;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;

import com.github.catvod.crawler.SpiderReqResult;

import com.github.catvod.legado.LegadoRule;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.StringUtil;


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
            for(Map.Entry header:headers.entrySet()) {
                try {
                    if(header.getValue() instanceof List) {
                        List data = (List)header.getValue();
                        ruleData.putVariable(header.getKey().toString(),new JSONArray(data).toString());
                    } else
                        ruleData.putVariable(header.getKey().toString(),new JSONObject(header.getValue().toString()).toString());
                } catch (Exception e) {
                    ruleData.putVariable(header.getKey().toString(),e.getMessage());
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
                String webUrl = analyzeRule.getString(url);
                if (StringUtils.isNotEmpty(webUrl) && StringUtil.isWebUrl(webUrl)) {
//                    url = getRealUrl(url, true, ruleData.getVariableMap());
                    HttpParser.parseSearchUrlForHtml(webUrl, new HttpParser.OnSearchCallBack() {
                        @Override
                        public void onSuccess(String url, SpiderReqResult s) {
                            analyzeRule.setContent(s.content, url);
                            analyzeRule.setRedirectUrl(url);
                            putHeaderMap(s.headers);
                            String value1 = analyzeRule.getString(value);
                            ruleData.putVariable(key, value1);
                        }

                        @Override
                        public void onFailure(int errorCode, String msg) {
                        }
                    });
                } else {
                    ruleData.putVariable(key,analyzeRule.getString(value));
                }
            }
        }
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
//            String webUrl = getRealUrl(rule.getHomeUrl(), true, ruleData.getVariableMap());
            putParamMap(rule.getHomeParamMaps());
//            analyzeRule.setContent("");
            String webUrl = analyzeRule.getString(rule.getHomeUrl());
            if(StringUtils.isEmpty(webUrl)|| !StringUtil.isWebUrl(webUrl)) {
                webUrl = rule.getHomeUrl();
            }
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
                            String title = analyzeRule.getString(rule.getHomeVodName());
                            v.put("vod_id", analyzeRule.getString(rule.getHomeVodId(), null, true)+"+"+title);
                            v.put("vod_name", title);
                            v.put("vod_pic", analyzeRule.getString(rule.getHomeVodImg()));
                            v.put("vod_remarks", analyzeRule.getString(rule.getHomeVodMark()));
                            if (StringUtils.isEmpty(analyzeRule.getString(rule.getHomeVodImg()))) {
                                String name = analyzeRule.getString(rule.getHomeVodName());
                                if (StringUtils.isNotEmpty(rule.getInfoMap().get(name))) {
                                    String[] infos = rule.getInfoMap().get(name).split("$");
                                    v.put("vod_pic", infos[0]);
                                    if (infos.length > 1 && StringUtils.isEmpty(analyzeRule.getString(rule.getHomeVodMark()))) {
                                        v.put("vod_remarks", infos[1]);
                                    }
                                }
                            }
                            videos.put(v);
                        }
                        result.put("list", videos);
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                        try {
                            JSONArray errorArray = new JSONArray();
                            JSONObject errorObject = new JSONObject();
                            errorObject.put("vod_name", e.getMessage()).put("vod_id", url + e.getMessage());
                            errorArray.put(errorObject);
                            result.put("list", errorArray);
                            error.putVariable("vod_actor", "home:"+e.getMessage());
                        } catch (Exception e1) {

                        }
                    }
                }

                @Override
                public void onFailure(int errorCode, String msg) {
                    try {
                        JSONArray errorArray = new JSONArray();
                        JSONObject errorObject = new JSONObject();
                        errorObject.put("vod_name", errorCode + "$" + msg).put("vod_id", errorCode + msg);
                        errorArray.put(errorObject);
                        result.put("list", errorArray);
                        error.putVariable("vod_actor", "home:"+errorCode + "$" + msg);
                    } catch (Exception e1) {

                    }
                }
            });
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
                error.putVariable("vod_actor", "home:"+e.getMessage());
            } catch (Exception e1) {

            }
        }
        return result.toString();
    }

    protected String categoryUrl(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        String cateUrl = null;
        if (StringUtil.isAbsUrl(tid)) {
            cateUrl = StringUtils.trim(tid).split("\n")[0];
        } else {
            cateUrl = rule.getCateUrl().replace("{cateId}", StringUtils.trim(tid).split("\n")[0]).replace("{catePg}", pg);
        }
        ruleData.putVariable("cateId",StringUtils.trim(tid).split("\n")[0]);
        ruleData.putVariable("catePg",pg);
//        if (extend != null && extend.size() > 0) {
//            extend.putAll(ruleData.getVariableMap());
//            cateUrl = getRealUrl(cateUrl, filter, extend);
//        } else {
//            cateUrl = getRealUrl(cateUrl, true, ruleData.getVariableMap());
//        }
        return cateUrl;

    }

//    protected String getRealUrl(String cateUrl, Boolean filter, HashMap<String, String> extend) {
//        if (filter && extend != null && extend.size() > 0) {
//            extend.putAll(ruleData.getVariableMap());
//            for (Iterator<String> it = extend.keySet().iterator(); it.hasNext(); ) {
//                String key = it.next();
//                String value = extend.get(key);
//                if (value.length() > 0) {
//                    cateUrl = cateUrl.replace("{" + key + "}", StringUtil.encode(value));
//                }
//            }
//        }
//        String[] cateUrls = cateUrl.split(";\\{");
//        String cateUrl1 = cateUrls[0];
//        String[] cateUrl2 = cateUrl1.split("jsonBody=\\{");
//        String cateUrl3 = cateUrl2[0];
//        if (cateUrl2.length > 1) {
//            cateUrl3 = cateUrl2[1];
//        }
//
//        Matcher m = Pattern.compile("\\{(.*?)\\}").matcher(cateUrl3);
//        while (m.find()) {
//            String n = m.group(0).replace("{", "").replace("}", "");
//            cateUrl3 = cateUrl3.replace(m.group(0), "").replace("/" + n + "/", "");
//        }
//        if (cateUrl2.length > 1) {
//            cateUrl1 = cateUrl2[0] + "jsonBody={" + cateUrl3;
//        } else {
//            cateUrl1 = cateUrl3;
//        }
//        if (cateUrls.length > 1) {
//            cateUrl = cateUrl1 + ";{" + cateUrls[1];
//        }
//        return cateUrl;
//    }

    protected void detailContentExt(String content, JSONObject vod) {

    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        JSONObject result = new JSONObject();
        try {
            if(extend !=null)
                ruleData.getVariableMap().putAll(extend);
            ruleData.putVariable("cateId",tid);
            ruleData.putVariable("catePg",pg);
            putParamMap(rule.getCategoryParamMaps());
//            analyzeRule.setContent("");
            String webUrl = analyzeRule.getString(rule.getCateUrl());
            if(StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = categoryUrl(tid,pg,filter,extend);
            }
//            String webUrl = analyzeRule.getString(rule.getCateUrl(),null,true);
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
                                    String title = analyzeRule.getString(rule.getCateVodName());
                                    v.put("vod_id", analyzeRule.getString(rule.getCateVodId(), null, true)+"+"+title);
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
                                    error.putVariable("vod_director", "cate:"+e.getMessage());
                                } catch (Exception e1) {

                                }
                            }
                        }
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                        try {
                            JSONArray errorArray = new JSONArray();
                            JSONObject errorObject = new JSONObject();
                            errorObject.put("vod_name", e.getMessage()).put("vod_id", url + e.getMessage());
                            errorArray.put(errorObject);
                            result.put("list", errorArray);
                            error.putVariable("vod_director","cate:"+ e.getMessage());
                        } catch (Exception e1) {

                        }
                    }

                }

                @Override
                public void onFailure(int errorCode, String msg) {
                    try {
                        JSONArray errorArray = new JSONArray();
                        JSONObject errorObject = new JSONObject();
                        errorObject.put("vod_name", errorCode + "$" + msg).put("vod_id", errorCode + msg);
                        errorArray.put(errorObject);
                        result.put("list", errorArray);
                        error.putVariable("vod_director", "cate:"+errorCode + "$" + msg);
                    } catch (Exception e1) {

                    }
                }
            });
            result.put("page", pg);
            result.put("pagecount", Integer.MAX_VALUE);
            result.put("limit", 90);
            result.put("total", Integer.MAX_VALUE);
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            try {
                JSONArray errorArray = new JSONArray();
                JSONObject errorObject = new JSONObject();
                errorObject.put("vod_name", e.getMessage());
                errorArray.put(errorObject);
                result.put("list", errorArray);
                error.putVariable("vod_director", "cate:"+e.getMessage());
            } catch (Exception e1) {

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
        ruleData.putVariable("vid",StringUtils.trim(vid).split("\n")[0]);
//        detailUrl = getRealUrl(detailUrl, true, ruleData.getVariableMap());
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

            }
            return result.toString();
        }
        try {
            String[] vids = ids.get(0).split("\\+");
            String name = "";
            if(vids.length >= 1) {
                ruleData.putVariable("vid",vids[0]);
//                ruleData.putVariable("title","");
            }
            if(vids.length >1) {
                name = vids[1];
                ruleData.putVariable("title",name);
            }
            putParamMap(rule.getDetailParamMaps());
//            analyzeRule.setContent("");
            String webUrl = analyzeRule.getString(rule.getDetailUrl());
            if(StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = detailUrl(vids[0]);
            }
//            String webUrl = detailUrl(ids.get(0));

//            String webUrl = analyzeRule.getString(rule.getDetailUrl(),null,true);
            HttpParser.parseSearchUrlForHtml(webUrl, new HttpParser.OnSearchCallBack() {
                @Override
                public void onSuccess(String url, SpiderReqResult s) {
                    try {
                        analyzeRule.setContent(s.content, url);
                        analyzeRule.setRedirectUrl(url);
                        JSONObject vod = new JSONObject();
                        vod.put("vod_id", ids.get(0));
                        String title = analyzeRule.getString("@get:{title}");;
                        vod.put("vod_name", StringUtils.isNotEmpty(title)?title:analyzeRule.getString(rule.getDetailName()));
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
                        String[] defaultFroms = defaultFrom.split(",");
                        for (int j = 0; j < defaultFroms.length; j++) {
                            vod_play.put(defaultFroms[j],new ArrayList<>());
                        }
                        for (int i = 0; i < urlListNodes.size(); i++) {
                            analyzeRule.setContent(urlListNodes.get(i));
                            List urlSubNodes = getNodes(analyzeRule, rule.getDetailUrlSubNode());
                            if (urlSubNodes == null || urlSubNodes.size() == 0) {
                                urlSubNodes = new ArrayList();
                                urlSubNodes.add(urlListNodes.get(i));
                            }
                            if (i < playFrom.size()) {
                                defaultFrom = playFrom.get(i);
                                defaultFroms = defaultFrom.split(",");
                            }
                            if (vod_play.get(defaultFrom) == null) {
                                vod_play.put(defaultFrom, new ArrayList<>());
                            }
                            for (int j = 0; j < urlSubNodes.size(); j++) {
                                analyzeRule.setContent(urlSubNodes.get(j));
                                analyzeRule.setRedirectUrl(url);
                                String name = analyzeRule.getString(rule.getDetailUrlName());
                                String id = analyzeRule.getString(rule.getDetailUrlId(), null, true);
                                String leaf = analyzeRule.getString(rule.getLeaf());
                                if (analyzeRule.getString(rule.getNode()).equals(rule.getNodeValue()) && StringUtils.isNotEmpty(rule.getNodeValue())) {
                                    putParamMap(rule.getDetailParamMaps());
                                    String nodeUrl = analyzeRule.getString(rule.getNodeUrl(), null, true);
                                    getFileList(nodeUrl, vod_play,defaultFrom);
                                } else if (Arrays.asList(rule.getLeafValue().split(",")).contains(leaf) || StringUtils.contains(leaf.toLowerCase(), "video")) {
                                    for (int k = 0; k < defaultFroms.length; k++) {
                                        vod_play.get(defaultFroms[k]).add(name+"$"+id+"+"+defaultFroms[k]);
                                    }
                                } else if (StringUtils.contains(name, ".nfo")) {
                                    putParamMap(rule.getDetailParamMaps());
                                    getNfo(vod,analyzeRule.getString(rule.getUrlNfo(),null,true));
                                }
                            }
                        }
                        if(rule.getNfoFlag()) {
                            putParamMap(rule.getDetailParamMaps());
                            getNfo(vod,analyzeRule.getString(rule.getUrlNfo()));
                        }
                        if (vod_play.size() > 0) {
                            List vod_from = new ArrayList();
                            List vod_plays = new ArrayList();
                            for (Map.Entry<String, List<String>> entry : vod_play.entrySet()) {
                                if(entry.getKey().equalsIgnoreCase("vod_pic")) {
                                    if(StringUtils.isNotEmpty(entry.getValue().get(0)))
                                        vod.put("vod_pic",entry.getValue().get(0));
                                }else if (entry.getValue() != null && !entry.getValue().isEmpty()) {
                                    vod_from.add(entry.getKey());
                                    vod_plays.add(join("#", entry.getValue()));
                                }
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
                        try {
                            JSONArray errorArray = new JSONArray();
                            JSONObject errorObject = new JSONObject();
                            errorObject.put("vod_name", "detail:"+ids.get(0)).put("vod_id", ids.get(0));
                            errorObject.put("vod_actor", error.getVariable("vod_actor"));
                            errorObject.put("vod_director", error.getVariable("vod_director"));
                            errorObject.put("vod_content", "detail:"+e.getMessage());
                            errorArray.put(errorObject);
                            result.put("list", errorArray);
                        } catch (Exception e1) {

                        }
                    }
                }

                @Override
                public void onFailure(int errorCode, String msg) {
                    try {
                        JSONArray errorArray = new JSONArray();
                        JSONObject errorObject = new JSONObject();
                        errorObject.put("vod_name", errorCode + "$" + msg).put("vod_id", errorCode + msg);
                        errorObject.put("vod_actor", error.getVariable("vod_actor"));
                        errorObject.put("vod_director", error.getVariable("vod_director"));
                        errorArray.put(errorObject);
                        result.put("list", errorArray);
                    } catch (Exception e1) {

                    }
                }
            });
            if(result.length() == 0) {
                try {
                    JSONArray errorArray = new JSONArray();
                    JSONObject errorObject = new JSONObject();
                    errorObject.put("vod_name", ids.get(0)).put("vod_id", ids.get(0));
                    errorObject.put("vod_actor", error.getVariable("vod_actor"));
                    errorObject.put("vod_director", error.getVariable("vod_director"));
                    errorObject.put("vod_content",ids);
                    errorArray.put(errorObject);
                    result.put("list", errorArray);
                } catch (Exception e1) {

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
                error.putVariable("vod_content", "detail:"+e.getMessage());
            } catch (Exception e1) {

            }
        }
        return result.toString();
    }

    protected String playerUrl(String vid) {
        String webUrl;
        if (StringUtil.isAbsUrl(vid)) {
            webUrl = StringUtils.trim(vid).split("\n")[0];
        } else {
            webUrl = rule.getPlayUrl().replace("{playUrl}", StringUtils.trim(vid).split("\n")[0]);
        }
        ruleData.putVariable("playUrl",StringUtils.trim(vid).split("\n")[0]);
//        webUrl = getRealUrl(webUrl, true, ruleData.getVariableMap());
        return webUrl;
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        JSONObject result = new JSONObject();
        try {
            String[] infos = id.split("\\+");
            if(infos.length>=1){
                ruleData.putVariable("playUrl",StringUtils.trim(infos[0]).split("\n")[0]);
            }
            if(infos.length>1) {
                ruleData.putVariable("info",infos[1]);
            }
            putParamMap(rule.getPlayerParamMaps());
//            analyzeRule.setContent("");
            String webUrl = analyzeRule.getString(rule.getPlayUrl());
            if(StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                webUrl = playerUrl(infos[0]);
            }
//            String webUrl = analyzeRule.getString(rule.getPlayUrl(),null,true);
            SpiderDebug.log(webUrl);
            if(StringUtils.isEmpty(webUrl)) {
                throw new Exception("weburl是空的");
            }
            result.put("parse", rule.getParse() !=null ? 1 : rule.getParse());
            result.put("jx", rule.getJx() == null? 0 : rule.getJx());
            result.put("playUrl", "");
            JSONObject headerObj = new JSONObject();
            headerObj.put("User-Agent","Mozilla/5.0 (Linux; Android 11; Mi 10 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.152 Mobile Safari/537.36");
            if (!rule.getPlayUa().isEmpty()) {
                result.put("ua", rule.getPlayUa());
            }
            if (rule.isDecodeFlag()) {
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
            }
            if(StringUtils.isEmpty(result.optString("url"))) {
                result.put("url", webUrl);
            }
            if (StringUtils.isNotEmpty(webUrl)) {
                String videoUrl = result.optString("url");
                // 适配2.0.6的调用应用内解析列表的支持, 需要配合直连分析和匹配官源解析一起使用，参考cjt影视和极品直连
                if (rule.getDecodeVipFlag() && Misc.isVip(videoUrl)) { // 使用jx:1
                    try {
                        result.put("parse", 1);
                        result.put("jx", "1");
                        result.put("url", videoUrl);
                        return result.toString();
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                } else if (rule.getDecodeVipFlag() && vipFlags.contains(flag)) { // 是否使用应用内解析列表解析官源
                    try {
                        result.put("parse", 1);
                        result.put("playUrl", "");
                        result.put("url", videoUrl);
                        result.put("header", headerObj.toString());
                        return result.toString();
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                }
                // 如果是视频直连 直接返回免解
                else if (isVideoFormat(videoUrl)) {
                    try {
                        result.put("parse", 0);
                        result.put("playUrl", "");
                        result.put("url", videoUrl);
                        result.put("header", headerObj.toString());
                        return result.toString();
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                }
            }
            // 上述都失败了就按默认模式走
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            try {
                StringBuilder builder = new StringBuilder();
                if (error.getVariableMap().size() > 0) {
                    try {
                        builder.append("vod_actor=").append(error.getVariable("vod_actor")).append("&");
                        builder.append("vod_director=").append( error.getVariable("vod_director"));
                    } catch (Exception e1) {

                    }
                    return result.toString();
                }
                result.put("url", "https://mao.guibiaoguo.tk/test.html?msg="+e.getMessage()+"&"+builder.toString());
                result.put("parse", 1);
                result.put("jx",0);
                result.put("playUrl", "");
            } catch (Exception e1) {

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
        if(StringUtils.endsWithAny(url.toUpperCase(),videoFormatList)) {
            return true;
        }
        return false;
    }

    protected String searchUrl(String vid,String scPg) {
        String webUrl;
        if (StringUtil.isAbsUrl(vid)) {
            webUrl = StringUtils.trim(vid).split("\n")[0];
        } else {
            webUrl = rule.getSearchUrl().replace("{wd}", StringUtils.trim(vid).split("\n")[0]);
        }
        if(StringUtils.isNotEmpty(scPg)) {
            webUrl = webUrl.replace("{scPg}",scPg);
        }
        ruleData.putVariable("wd",StringUtils.trim(vid).split("\n")[0]);
//        webUrl = getRealUrl(webUrl, true, ruleData.getVariableMap());
        return webUrl;
    }

    @Override
    public String searchContent(String key, boolean quick) {
        try {
            if (rule.getSearchUrl().isEmpty()) {
                return "";
            }
            //设置平衡组为代码平衡
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
            ruleData.putVariable("wd",key);
//            String webUrl = rule.getSearchUrl().replace("{wd}", StringUtil.encode(key));
            String webUrl = "";
            JSONObject result = new JSONObject();
            JSONArray videos = new JSONArray();
            for (int i = start; i <= end; i = i + step) {
                ruleData.putVariable("scPg",i+"");
//                webUrl = webUrl.replace("{scPg}", i + "");
//                webUrl = getRealUrl(webUrl, true, ruleData.getVariableMap());
                webUrl = analyzeRule.getString(rule.getSearchUrl());
                if(StringUtils.isEmpty(webUrl) || !StringUtil.isWebUrl(webUrl)) {
                    webUrl = searchUrl(key,i+"");
                }
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
                                String surl = analyzeRule.getString(rule.getSearchVodId(), null, true);
                                v.put("vod_id", surl);
                                v.put("vod_name", analyzeRule.getString(rule.getSearchVodName()));
                                v.put("vod_pic", analyzeRule.getString(rule.getSearchVodImg()));
                                v.put("vod_remarks", analyzeRule.getString(rule.getSearchVodMark()));
                                if(rule.getDecodeSCFlag()) {
                                    HttpParser.parseSearchUrlForHtml(surl, new HttpParser.OnSearchCallBack() {
                                        @Override
                                        public void onSuccess(String url, SpiderReqResult s) {
                                            analyzeRule.setContent(s.content, url);
                                            analyzeRule.setRedirectUrl(url);
                                            putHeaderMap(s.headers);
                                            String value1 = analyzeRule.getString(rule.getDecodeValue());
                                            try{
                                                if(StringUtils.isNotEmpty(value1))
                                                    v.put("vod_id",value1);
                                            }catch (Exception e) {

                                            }
                                        }

                                        @Override
                                        public void onFailure(int errorCode, String msg) {
                                        }
                                    });
                                }
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
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    private void getFileList(String root, Map<String, List<String>> data,String defaultFrom) {
        try {
//            root = getRealUrl(root, true, ruleData.getVariableMap());
//            root = analyzeRule.getString(root,null,true);
            HttpParser.parseSearchUrlForHtml(root, new HttpParser.OnSearchCallBack() {
                @Override
                public void onSuccess(String url, SpiderReqResult s) {
                    try {
                        analyzeRule.setContent(s.content, url);
                        List rootList = getNodes(analyzeRule, rule.getItemUrlNode());
                        if (rootList != null && rootList.size() > 0) {
                            for (int i = 0; i < rootList.size(); i++) {
                                analyzeRule.setRedirectUrl(url);
                                analyzeRule.setContent(rootList.get(i));
                                if (analyzeRule.getString(rule.getNode()).equals(rule.getNodeValue())) {
                                    analyzeRule.getString(rule.getItemUrlName());
                                    getFileList(analyzeRule.getString(rule.getNodeUrl(), null, true), data,defaultFrom);
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
                    analyzeRule.setContent(s.content);
                    System.out.println(s.content);
                    if(StringUtils.isNotEmpty(analyzeRule.getString(rule.getActorNfo()))) {
                        String title = analyzeRule.getString("@get:{title}");
                        vod.put("vod_name", StringUtils.isNotEmpty(title)?title:analyzeRule.getString(rule.getTitleNfo()));
                        vod.put("vod_pic",analyzeRule.getString(rule.getThumbNfo()));
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

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
    }


    private List getNodes(AnalyzeRule analyzeRule, String cateNode) {
        return analyzeRule.getElements(cateNode);
    }
}
