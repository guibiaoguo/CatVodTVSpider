package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.crawler.SpiderReq;
import com.github.catvod.crawler.SpiderReqResult;
import com.github.catvod.crawler.SpiderUrl;

import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import rxhttp.wrapper.annotations.NonNull;

/**
 * bill
 */
public class QQ extends Spider {

    private static final String siteUrl = "https://v.qq.com";
    private static final String siteHost = "v.qq.com";

    protected JSONObject playerConfig = new JSONObject();

    protected HashMap<String, String> classifyMap = new HashMap<>();

    @Override
    public void init(Context context) {
        super.init(context);
        classifyMap.put("movie", "电影");
        classifyMap.put("tv", "连续剧");
        classifyMap.put("child", "少儿");
        classifyMap.put("doco", "纪录片");
        classifyMap.put("variety", "综艺");
        classifyMap.put("cartoon", "动漫");
    }

    protected HashMap<String, String> getHeaders(String url) {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        return headers;
    }

    @Override
    public String homeContent(boolean filter) {
        try {
            String url = siteUrl + "/x/bu/pagesheet/list?_all=1&append=1&channel=";
            SpiderUrl su = new SpiderUrl(url, getHeaders(url));
            SpiderReqResult srr = SpiderReq.get(su);
            JSONArray classes = new JSONArray();
            if (classifyMap.size() > 0) {
                Set<String> keys = classifyMap.keySet();
                for (String k : keys) {
                    JSONObject jsonObject = new JSONObject();
                    jsonObject.put("type_name", classifyMap.get(k));
                    jsonObject.put("type_id", k);
                    classes.put(jsonObject);
                }
            }
            JSONObject result = new JSONObject();
            result.put("class", classes);
            try {
                Document doc = Jsoup.parse(srr.content);
                // 取首页推荐视频列表
                Elements list = doc.select(".list_item");
                JSONArray videos = new JSONArray();
                for (int i = 0; i < list.size(); i++) {
                    Element vod = list.get(i);
                    String title = vod.selectFirst("a").attr("title");
                    String cover = vod.selectFirst("img").attr("src");
                    String remark = vod.selectFirst(".figure_caption").text() + " " + vod.selectFirst(".figure_score").text();
                    String id = vod.selectFirst("a").attr("data-float");
                    JSONObject v = new JSONObject();
                    v.put("vod_id", id);
                    v.put("vod_name", title);
                    v.put("vod_pic", cover);
                    v.put("vod_remarks", remark);
                    videos.put(v);
                }
                result.put("list", videos);
            } catch (Exception e) {
                SpiderDebug.log(e);
            }
            return result.toString(4);
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    @Override
    public String homeVideoContent() {
        try {
            String url = siteUrl + "/api.php/app/index_video?token=";
            SpiderUrl su = new SpiderUrl(url, getHeaders(url));
            SpiderReqResult srr = SpiderReq.get(su);
            JSONObject jsonObject = new JSONObject(srr.content);
            JSONArray jsonArray = jsonObject.getJSONArray("list");
            JSONArray videos = new JSONArray();
            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject jObj = jsonArray.getJSONObject(i);
                JSONArray videoList = jObj.getJSONArray("vlist");
                for (int j = 0; j < videoList.length() && j < 6; j++) {
                    JSONObject vObj = videoList.getJSONObject(j);
                    JSONObject v = new JSONObject();
                    v.put("vod_id", vObj.getString("vod_id"));
                    v.put("vod_name", vObj.getString("vod_name"));
                    v.put("vod_pic", vObj.getString("vod_pic"));
                    v.put("vod_remarks", vObj.getString("vod_remarks"));
                    videos.put(v);
                }
            }
            JSONObject result = new JSONObject();
            result.put("list", videos);
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        try {
            String url = siteUrl + "/x/bu/pagesheet/list?_all=1&append=1&channel=" + tid + "&listpage=1&offset=" + (Integer.parseInt(pg) - 1) * 21 + "&pagesize=21&sort=18";
            SpiderUrl su = new SpiderUrl(url, getHeaders(url));
            SpiderReqResult srr = SpiderReq.get(su);
            JSONObject result = new JSONObject();
            try {
                Document doc = Jsoup.parse(srr.content);
                // 取首页推荐视频列表
                Elements list = doc.select(".list_item");
                JSONArray videos = new JSONArray();
                for (int i = 0; i < list.size(); i++) {
                    Element vod = list.get(i);
                    String title = vod.selectFirst("a").attr("title");
                    String cover = vod.selectFirst("img").attr("src");
                    String remark = vod.selectFirst(".figure_caption").text() + " " + vod.selectFirst(".figure_score").text();
                    String id = vod.selectFirst("a").attr("data-float");
                    JSONObject v = new JSONObject();
                    v.put("vod_id", id);
                    v.put("vod_name", title);
                    v.put("vod_pic", cover);
                    v.put("vod_remarks", remark);
                    videos.put(v);
                }
                result.put("page", pg);
                result.put("pagecount", Integer.MAX_VALUE);
                result.put("limit", 90);
                result.put("total", Integer.MAX_VALUE);
                result.put("list", videos);
            } catch (Exception e) {
                SpiderDebug.log(e);
            }
            return result.toString(4);
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    @Override
    public String detailContent(List<String> ids) {
        try {
            String url = "https://node.video.qq.com/x/api/float_vinfo2?cid=" + ids.get(0);
            SpiderUrl su = new SpiderUrl(url, getHeaders(url));
            SpiderReqResult srr = SpiderReq.get(su);
            JSONObject jsonObject = new JSONObject(srr.content);
            JSONObject dataObject = jsonObject.getJSONObject("c");
            JSONObject vodList = new JSONObject();
            vodList.put("vod_id", ids.get(0));
            vodList.put("vod_name", dataObject.getString("title"));
            vodList.put("vod_pic", dataObject.getString("pic"));
            vodList.put("type_name", jsonObject.get("typ").toString());
            vodList.put("vod_year", dataObject.getString("year"));
//            vodList.put("vod_area", dataObject.getString("vod_area"));
//            vodList.put("vod_remarks", dataObject.getString("vod_remarks"));
//            vodList.put("vod_actor", dataObject.getString("vod_actor"));
//            vodList.put("vod_director", dataObject.getString("vod_director"));
            vodList.put("vod_content", dataObject.getString("description"));
            JSONArray playerList = dataObject.getJSONArray("video_ids");
            List<String> playFlags = new ArrayList<>();
            for (int i = 0; i < playerList.length(); i++) {
                playFlags.add(playerList.getString(i));
            }
            url = "https://union.video.qq.com/fcgi-bin/data?otype=json&tid=682&appid=20001238&appkey=6c03bbe9658448a4&union_platform=1&idlist=" + join(",", playFlags);
            su = new SpiderUrl(url, getHeaders(url));
            srr = SpiderReq.get(su);
            JSONArray results = new JSONObject(srr.content.substring(13, srr.content.length() - 1)).getJSONArray("results");
            List<String> plays = new ArrayList<>();
            for (int i = 0; i < results.length(); i++) {
                JSONObject data = results.getJSONObject(i).getJSONObject("fields");
                plays.add(data.getString("title") + "$" + ids.get(0) + "/" + data.getString("vid"));
            }
            vodList.put("vod_play_from", "qq");
            vodList.put("vod_play_url", join("$$$", plays));
            JSONObject result = new JSONObject();
            JSONArray list = new JSONArray();
            list.put(vodList);
            result.put("list", list);
            return result.toString(4);
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

    private HashMap<String, String> getHeaderJxs(String url) {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("platform_version", "LMY47I");
        headers.put("user-agent", "Dart/2.12 (dart:io)");
        headers.put("version", "1.6.4");
        headers.put("copyright", "xiaogui");
        headers.put("platform", "android");
        headers.put("client_name", "6L+95Ymn6L6+5Lq6");
        return headers;
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        try {
            JSONObject result = new JSONObject();
            try {
                result.put("parse", 1);
                result.put("playUrl", "");
                result.put("url", "https://v.qq.com/x/cover/" + id + ".html");
                return result.toString();
            } catch (Exception ee) {
                SpiderDebug.log(ee);
            }
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    @Override
    public String searchContent(String key, boolean quick) {
        if (quick)
            return "";
        try {
            String url = siteUrl + "/api.php/app/search?text=" + URLEncoder.encode(key) + "&pg=1";
            SpiderUrl su = new SpiderUrl(url, getHeaders(url));
            SpiderReqResult srr = SpiderReq.get(su);
            JSONObject dataObject = new JSONObject(srr.content);
            JSONArray jsonArray = dataObject.getJSONArray("list");
            JSONArray videos = new JSONArray();
            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject vObj = jsonArray.getJSONObject(i);
                JSONObject v = new JSONObject();
                v.put("vod_id", vObj.getString("vod_id"));
                v.put("vod_name", vObj.getString("vod_name"));
                v.put("vod_pic", vObj.getString("vod_pic"));
                v.put("vod_remarks", vObj.getString("vod_remarks"));
                videos.put(v);
            }
            JSONObject result = new JSONObject();
            result.put("list", videos);
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }
}
