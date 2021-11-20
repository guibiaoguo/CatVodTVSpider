package com.github.catvod.spider;

import android.content.Context;
import android.net.Uri;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.crawler.SpiderReq;
import com.github.catvod.crawler.SpiderReqResult;
import com.github.catvod.crawler.SpiderUrl;

import org.json.JSONArray;
import org.json.JSONObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;


import rxhttp.wrapper.annotations.NonNull;

/**
 * bill
 */
public class MGTV extends Spider {

    private static final String siteUrl = "https://www.mgtv.com";
    private static final String siteHost = "www.mgtv.com";

    protected JSONObject playerConfig = new JSONObject();

    protected HashMap<String, String> classifyMap = new HashMap<>();

    @Override
    public void init(Context context) {
        super.init(context);
        classifyMap.put("3", "电影");
        classifyMap.put("2", "连续剧");
        classifyMap.put("51", "纪录片");
        classifyMap.put("1", "综艺");
        classifyMap.put("50", "动漫");
    }

    protected HashMap<String, String> getHeaders(String url) {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("referer","https://so.mgtv.com");
        headers.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        return headers;
    }

    @Override
    public String homeContent(boolean filter) {
        try {
            String url = "https://pianku.api.mgtv.com/rider/list/pcweb/v3?platform=pcweb&channelId=2&pn=1&chargeInfo=&sort=c2";
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
                JSONObject jsonObject = new JSONObject(srr.content);
                // 取首页推荐视频列表
                JSONArray list = jsonObject.optJSONObject("data").optJSONArray("hitDocs");
                JSONArray videos = new JSONArray();
                for (int i = 0; i < list.length(); i++) {
                    JSONObject vod = list.optJSONObject(i);
                    String title = vod.optString("title");
                    String cover = vod.optString("imgUrlH");
                    cover=fixUrl(url,cover);
                    String remark = vod.optString("updateInfo");
                    String id = "https://pcweb.api.mgtv.com/episode/list?size=5000&video_id="+vod.optString("playPartId");
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
                    v.put("vod_id", vObj.optString("vod_id"));
                    v.put("vod_name", vObj.optString("vod_name"));
                    v.put("vod_pic", vObj.optString("vod_pic"));
                    v.put("vod_remarks", vObj.optString("vod_remarks"));
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
            String url = "https://pianku.api.mgtv.com/rider/list/pcweb/v3?platform=pcweb&channelId="+tid+"&pn="+pg+"&chargeInfo=&sort=c2";
            SpiderUrl su = new SpiderUrl(url, getHeaders(url));
            SpiderReqResult srr = SpiderReq.get(su);
            JSONObject result = new JSONObject();
            try {
                JSONObject jsonObject = new JSONObject(srr.content);
                // 取首页推荐视频列表
                JSONArray list = jsonObject.optJSONObject("data").optJSONArray("hitDocs");
                JSONArray videos = new JSONArray();
                for (int i = 0; i < list.length(); i++) {
                    JSONObject vod = list.optJSONObject(i);
                    String title = vod.optString("title");
                    String cover = vod.optString("imgUrlH");
                    cover=fixUrl(url,cover);
                    String remark = vod.optString("updateInfo");
                    String id = "https://pcweb.api.mgtv.com/episode/list?size=5000&video_id="+vod.optString("playPartId");
                    JSONObject v = new JSONObject();
                    v.put("vod_id", id);
                    v.put("vod_name", title);
                    v.put("vod_pic", cover);
                    v.put("vod_remarks", remark);
                    videos.put(v);
                }
                result.put("list", videos);
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
            String url = ids.get(0);
            SpiderUrl su = new SpiderUrl(url, getHeaders(url));
            SpiderReqResult srr = SpiderReq.get(su);
            JSONObject jsonObject = new JSONObject(srr.content);
            JSONObject dataObject = jsonObject.getJSONObject("data");
            JSONObject vodList = new JSONObject();
            JSONObject vod = dataObject.optJSONObject("info");
//            if(dataObject.optJSONArray("epsodelist")!=null){
//                vod = dataObject.optJSONArray("epsodelist").optJSONObject(0);
//            }
            vodList.put("vod_id", ids.get(0));
            vodList.put("vod_name",vod.optString("title"));
//            vodList.put("vod_pic", fixUrl(url,vod.optString("imageUrl")));
//            vodList.put("type_name", jsonObject.get("typ").toString());
//            vodList.put("vod_year", dataObject.optString("year"));
//            vodList.put("vod_area", dataObject.getString("vod_area"));
//            vodList.put("vod_remarks", dataObject.getString("vod_remarks"));
//            vodList.put("vod_actor", jsonObject.optString("nam"));
//            vodList.put("vod_director", dataObject.getString("vod_director"));
            vodList.put("vod_content", vod.optString("desc"));
            JSONArray playerList = dataObject.optJSONArray("list");
            if (playerList == null) {
                playerList = new JSONArray();
                playerList.put(dataObject);
            }
            List<String> plays = new ArrayList<>();
            for (int i = 0; i < playerList.length(); i++) {
                JSONObject epsode = playerList.optJSONObject(i);
                plays.add(epsode.optString("t4")+"$"+epsode.optString("url"));
            }
            vodList.put("vod_play_from", "mgtv");
            vodList.put("vod_play_url", join("#", plays));
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
                result.put("url", siteUrl+id);
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
            String url = "https://mobileso.bz.mgtv.com/pc/search/v1?q="+key+"&pn=fypage&pc=10";
            SpiderUrl su = new SpiderUrl(url, getHeaders(url));
            SpiderReqResult srr = SpiderReq.get(su);
            JSONObject dataObject = new JSONObject(srr.content);
            JSONArray jsonArray = dataObject.optJSONObject("data").getJSONArray("contents");
            JSONArray videos = new JSONArray();
            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject vObj = jsonArray.getJSONObject(i).optJSONObject("data");
                JSONObject v = new JSONObject();
                JSONArray sourceList = vObj.optJSONArray("sourceList");
                JSONArray yearList = vObj.optJSONArray("yearList");
                if(sourceList != null||yearList!=null) {
                    sourceList = sourceList == null?vObj.optJSONArray("yearList").optJSONObject(0).optJSONArray("sourceList"):sourceList;
                } else {
                    sourceList = new JSONArray();
                    sourceList.put(vObj);
                }
                for (int j=0;j<sourceList.length();j++) {
                    JSONObject source = sourceList.optJSONObject(j);
                    if (source.optString("source").equals("")||source.optString("source").equals("imgo")) {
                        v.put("vod_id", "https://pcweb.api.mgtv.com/episode/list?size=5000&video_id="+source.optString("vid"));
                        v.put("vod_name", vObj.optString("title"));
                        v.put("vod_pic", vObj.optString("pic"));
                        v.put("vod_remarks", vObj.optString("score"));
                        videos.put(v);
                    }
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

    private String fixUrl(String base, String src) {
        try {
            if (src.startsWith("//")) {
                Uri parse = Uri.parse(base);
                src = parse.getScheme() + ":" + src;
            } else if (!src.contains("://")) {
                Uri parse = Uri.parse(base);
                src = parse.getScheme() + "://" + parse.getHost() + src;
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return src;
    }
}

