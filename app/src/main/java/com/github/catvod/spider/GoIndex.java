package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.parser.HttpParser;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.github.catvod.xpath.XPathRule;

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

import okhttp3.Response;
import rxhttp.wrapper.annotations.NonNull;

public class GoIndex extends Spider {

    protected String ext = null;
    protected XPathRule rule = null;

    @Override
    public void init(Context context) {
        super.init(context);
    }

    public void init(Context context, String extend) {
        super.init(context, extend);
        this.ext = extend;
    }

    public JSONArray getVods(String srr, String rules) throws Exception {
        String[] node = rules.substring(5).split(">");
        JSONObject data = new JSONObject(srr);
        JSONArray vodArray = new JSONArray();
        for (int i = 0; i < node.length; i++) {
            if (i == node.length - 1) {
                vodArray = data.optJSONArray(node[i]);
            } else {
                data = data.optJSONObject(node[i]);
            }
        }
        return vodArray;
    }

    public String getValue(JSONObject object, String rules) {
        return object.optString(rules);
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
                    jsonObject.put("type_id", rule.getCateManual().get(k));
                    classes.put(jsonObject);
                }
            }
            String webUrl = rule.getHomeUrl();
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult().code() == 200) {
                try {
                    String s = HttpParser.getContent(webUrl,callBack.getResult().body());
                    if (rule.getCateManual().size() == 0) {
                        JSONArray navNodes = getVods(s, rule.getCateNode());
                        for (int i = 0; i < navNodes.length(); i++) {
                            JSONObject navNode = navNodes.optJSONObject(i);
                            String name = getValue(navNode, rule.getCateName());
                            name = rule.getCateNameR(name);
                            String id = getValue(navNode, rule.getCateId());
                            id = URLEncoder.encode(rule.getCateIdR(id), "utf-8");
                            JSONObject jsonObject = new JSONObject();
                            jsonObject.put("type_id", id);
                            jsonObject.put("type_name", name);
                            classes.put(jsonObject);
                        }
                    }
                    if (!rule.getHomeVodNode().isEmpty()) {
                        try {
                            JSONArray videos = new JSONArray();
                            JSONArray vodNodes = getVods(s, rule.getHomeVodNode());
                            for (int i = 0; i < vodNodes.length(); i++) {
                                JSONObject vodNode = vodNodes.optJSONObject(i);
                                String name = getValue(vodNode, rule.getHomeVodName());
                                name = rule.getHomeVodNameR(name);
                                String id = getValue(vodNode, rule.getHomeVodId());
                                id = URLEncoder.encode(rule.getHomeVodIdR(id), "utf-8");
                                String pic = getValue(vodNode, rule.getHomeVodImg());
                                pic = rule.getHomeVodImgR(pic);
                                String mark = "";
                                if (!rule.getHomeVodMark().isEmpty()) {
                                    try {
                                        mark = getValue(vodNode, rule.getHomeVodMark());
                                        mark = rule.getHomeVodMarkR(mark);
                                    } catch (Exception e) {
                                        SpiderDebug.log(e);
                                    }
                                }
                                JSONObject v = new JSONObject();
                                v.put("vod_id", webUrl + id);
                                v.put("vod_name", name);
                                v.put("vod_pic", pic);
                                v.put("vod_remarks", mark);
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
        return rule.getCateUrl().replace("{cateId}", tid).replace("{catePg}", pg);
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        try {
            fetchRule();
            JSONObject result = new JSONObject();
            String webUrl = categoryUrl(tid, pg, filter, extend);
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult().code() == 200) {
                try {
                    String s = HttpParser.getContent(webUrl,callBack.getResult().body());
                    if (!rule.getCateVodNode().isEmpty()) {
                        try {
                            JSONArray videos = new JSONArray();
                            JSONArray vodNodes = getVods(s, rule.getCateVodNode());
                            for (int i = 0; i < vodNodes.length(); i++) {
                                JSONObject vodNode = vodNodes.optJSONObject(i);
                                String name = getValue(vodNode, rule.getCateVodName());
                                name = rule.getCateVodNameR(name);
                                String id = getValue(vodNode, rule.getCateVodId());
                                id = URLEncoder.encode(rule.getCateVodIdR(id), "utf-8");
                                String pic = getValue(vodNode, rule.getCateVodImg());
                                pic = rule.getCateVodImgR(pic);
                                String mark = "";
                                if (!rule.getCateVodMark().isEmpty()) {
                                    try {
                                        mark = getValue(vodNode, rule.getCateVodMark());
                                        mark = rule.getCateVodMarkR(mark);
                                    } catch (Exception e) {
                                        SpiderDebug.log(e);
                                    }
                                }
                                JSONObject v = new JSONObject();
                                v.put("vod_id", webUrl + id);
                                v.put("vod_name", name);
                                v.put("vod_pic", pic);
                                v.put("vod_remarks", mark);
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

    protected void fetchRule() {
        if (rule == null) {
            if (ext != null) {
                if (ext.startsWith("http")) {
                    String json = OkHttpUtil.string(ext, getHeaders(ext));
                    rule = XPathRule.fromJson(json);
                    loadRuleExt(json);
                } else {
                    rule = XPathRule.fromJson(ext);
                    loadRuleExt(ext);
                }
            }
        }
    }

    protected void detailContentExt(String content, JSONObject vod) {

    }

    public void getNfo(JSONObject vod, String webUrl) {
        OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
        if (callBack.getResult().code() == 200) {
            try {
                String s = HttpParser.getContent(webUrl,callBack.getResult().body());
                Document document = Jsoup.parse(s);
                System.out.println(s);
                vod.put("vod_name", document.select("title").text());
                vod.put("vod_pic", document.select("[aspect=\"poster\"]").text());
                vod.put("type_name", document.select("genre").text());
                vod.put("vod_year", document.select("year").text());
                vod.put("vod_area", document.select("country").text());
                vod.put("vod_remarks", document.select("title").text());
                vod.put("vod_actor", document.select("actor>name").text());
                vod.put("vod_director", document.select("director").text());
                vod.put("vod_content", document.select("plot").text());
            } catch (Exception e) {
                SpiderDebug.log(e);
            }
        }
    }


    @Override
    public String detailContent(List<String> ids) {
        try {
            fetchRule();
            String webUrl = rule.getDetailUrl().replace("{vid}", ids.get(0));
            JSONObject result = new JSONObject();
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult().code() == 200) {
                try {
                    String s = HttpParser.getContent(webUrl,callBack.getResult().body());
                    JSONObject doc = new JSONObject(s);

                    String cover, title, desc = "", category = "", area = "", year = "", remark = "", director = "", actor = "";

                    title = getValue(doc, rule.getDetailName());
                    title = rule.getDetailNameR(title);

                    cover = getValue(doc, rule.getDetailImg());
                    cover = rule.getDetailImgR(cover);

                    if (!rule.getDetailCate().isEmpty()) {
                        try {
                            category = getValue(doc, rule.getDetailCate());
                            category = rule.getDetailCateR(category);
                        } catch (Exception e) {
                            SpiderDebug.log(e);
                        }
                    }
                    if (!rule.getDetailYear().isEmpty()) {
                        try {
                            year = getValue(doc, rule.getDetailYear());
                            year = rule.getDetailYearR(year);
                        } catch (Exception e) {
                            SpiderDebug.log(e);
                        }
                    }
                    if (!rule.getDetailArea().isEmpty()) {
                        try {
                            area = getValue(doc, rule.getDetailArea());
                            area = rule.getDetailAreaR(area);
                        } catch (Exception e) {
                            SpiderDebug.log(e);
                        }
                    }
                    if (!rule.getDetailMark().isEmpty()) {
                        try {
                            remark = getValue(doc, rule.getDetailMark());
                            remark = rule.getDetailMarkR(remark);
                        } catch (Exception e) {
                            SpiderDebug.log(e);
                        }
                    }
                    if (!rule.getDetailActor().isEmpty()) {
                        try {
                            actor = getValue(doc, rule.getDetailActor());
                            actor = rule.getDetailActorR(actor);
                        } catch (Exception e) {
                            SpiderDebug.log(e);
                        }
                    }
                    if (!rule.getDetailDirector().isEmpty()) {
                        try {
                            director = getValue(doc, rule.getDetailDirector());
                            director = rule.getDetailDirectorR(director);
                        } catch (Exception e) {
                            SpiderDebug.log(e);
                        }
                    }
                    if (!rule.getDetailDesc().isEmpty()) {
                        try {
                            desc = getValue(doc, rule.getDetailDesc());
                            desc = rule.getDetailDescR(desc);
                        } catch (Exception e) {
                            SpiderDebug.log(e);
                        }
                    }

                    JSONObject vod = new JSONObject();
                    vod.put("vod_id", ids.get(0));
                    vod.put("vod_name", title);
                    vod.put("vod_pic", cover);
                    vod.put("type_name", category);
                    vod.put("vod_year", year);
                    vod.put("vod_area", area);
                    vod.put("vod_remarks", remark);
                    vod.put("vod_actor", actor);
                    vod.put("vod_director", director);
                    vod.put("vod_content", desc);

                    JSONArray urlListNodes = getVods(s, rule.getDetailUrlNode());
                    Map<String, List<String>> vod_play = new HashMap<>();
                    vod_play.put("workerdev", new ArrayList<>());
                    for (int i = 0; i < urlListNodes.length(); i++) {
                        JSONObject urlNode = urlListNodes.optJSONObject(i);
                        String name = getValue(urlNode, rule.getDetailUrlName());
                        name = rule.getDetailUrlNameR(name);
                        String id = getValue(urlNode, rule.getDetailUrlId());
                        id = URLEncoder.encode(rule.getDetailUrlIdR(id), "utf-8");
                        if (urlNode.optString("mimeType").equals("application/vnd.google-apps.folder"))
                            getFileList(id + "/?page_index={catePg};post", vod_play);
                        else if (urlNode.optString("mimeType").equals("video/x-matroska")) {
                            vod_play.get("workerdev").add(name + "$" + webUrl + id);
                        } else if (urlNode.optString("mimeType").equals("text/xml") && StringUtils.contains(name, ".nfo")) {
                            getNfo(vod, webUrl + id);
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

                    detailContentExt(s, vod);
                    JSONArray list = new JSONArray();
                    list.put(vod);
                    result.put("list", list);
                } catch (Exception e) {
                    SpiderDebug.log(e);
                }
            }
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        try {
            fetchRule();
            String webUrl = rule.getPlayUrl().isEmpty() ? id : rule.getPlayUrl().replace("{playUrl}", id);
            SpiderDebug.log(webUrl);
            JSONObject result = new JSONObject();
            result.put("parse", 0);
            result.put("playUrl", "");
            if (!rule.getPlayUa().isEmpty()) {
                result.put("ua", rule.getPlayUa());
            }
            result.put("url", webUrl);
            return result.toString();
        } catch (Exception e) {
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

    protected void loadRuleExt(String json) {

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
            String webUrl = root + "/?page_index={catePg};post";
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult().code() == 200) {
                try {
                    String s = HttpParser.getContent(webUrl,callBack.getResult().body());
                    JSONArray rootList = getVods(s, rule.getDetailUrlNode());
                    if (rootList != null && rootList.length() > 0) {
                        for (int i = 0; i < rootList.length(); i++) {
                            JSONObject item = rootList.optJSONObject(i);
                            if (item.optString("mimeType").equals("application/vnd.google-apps.folder")) {
                                getFileList(root.replace("/?page_index={catePg};post", "") + item.optString(rule.getDetailUrlId()) + "/?page_index={catePg};post", data);
                            } else {
                                String[] types = {"video/x-matroska"};
                                if (item.optString("mimeType").equals("file") && Arrays.asList(types).contains(item.optString("mimeType"))) {
                                    String templateId = "workerdev";
                                    List<String> vodLists;
                                    String fileName = item.optString(rule.getDetailUrlName());
                                    String fileId = root + fileName;

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
                } catch (Exception e) {
                    SpiderDebug.log(e);
                }
            }
            // 取文件列表
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }

    @Override
    public String searchContent(String key, boolean quick) {
        try {
            fetchRule();
            if (rule.getSearchUrl().isEmpty()) {
                return "";
            }
            String webUrl = rule.getSearchUrl().replace("{wd}", URLEncoder.encode(key, "utf-8"));
            JSONObject result = new JSONObject();
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
            if (callBack.getResult().code() == 200) {
                try {
                    String s = HttpParser.getContent(webUrl,callBack.getResult().body());
                    JSONArray videos = new JSONArray();
                    // add maccms suggest search api support
                    if (rule.getSearchVodNode().startsWith("json:")) {
                        String[] node = rule.getSearchVodNode().substring(5).split(">");
                        JSONObject data = new JSONObject(s);
                        for (int i = 0; i < node.length; i++) {
                            if (i == node.length - 1) {
                                JSONArray vodArray = data.optJSONArray(node[i]);
                                for (int j = 0; j < vodArray.length(); j++) {
                                    JSONObject vod = vodArray.optJSONObject(j);
                                    String name = vod.optString(rule.getSearchVodName()).trim();
                                    name = rule.getSearchVodNameR(name);
                                    String id = vod.optString(rule.getSearchVodId()).trim();
                                    id = rule.getSearchVodIdR(id);
                                    String pic = vod.optString(rule.getSearchVodImg()).trim();
                                    pic = rule.getSearchVodImgR(pic);
                                    pic = Misc.fixUrl(webUrl, pic);
                                    String mark = vod.optString(rule.getSearchVodMark()).trim();
                                    mark = rule.getSearchVodMarkR(mark);
                                    JSONObject v = new JSONObject();
                                    v.put("vod_id", id);
                                    v.put("vod_name", name);
                                    v.put("vod_pic", pic);
                                    v.put("vod_remarks", mark);
                                    videos.put(v);
                                }
                            } else {
                                data = data.optJSONObject(node[i]);
                            }
                        }
                        result.put("list", videos);
                    }
                } catch (Exception e) {
                    SpiderDebug.log(e);
                }
            }
            return result.toString();
        } catch (
                Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

}
