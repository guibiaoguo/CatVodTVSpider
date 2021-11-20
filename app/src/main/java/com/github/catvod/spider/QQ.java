package com.github.catvod.spider;

import android.content.Context;
import android.net.Uri;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.crawler.SpiderReq;
import com.github.catvod.crawler.SpiderReqResult;
import com.github.catvod.crawler.SpiderUrl;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;


import rxhttp.wrapper.annotations.NonNull;

/**
 * bill
 */
public class QQ extends Spider {

    private static final String siteUrl = "https://v.qq.com";
    private static final String siteHost = "v.qq.com";

    protected JSONObject playerConfig = new JSONObject();

    @Override
    public void init(Context context) {
        super.init(context);
    }

    protected HashMap<String, String> getHeaders(String url) {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        return headers;
    }

    /**
     * 获取分类数据 + 首页最近更新视频列表数据
     *
     * @param filter 是否开启筛选 关联的是 软件设置中 首页数据源里的筛选开关
     * @return
     */
    @Override
    public String homeContent(boolean filter) {
        try {
            String url = "https://v.qq.com/channel/tv?listpage=1&channel=tv&sort=18&_all=1";
            SpiderUrl su = new SpiderUrl(url, null);
            SpiderReqResult srr = SpiderReq.get(su);
            Document doc = Jsoup.parse(srr.content);
            JSONArray classes = new JSONArray();
            for (Element cls:doc.select(".nav_cell")) {
                JSONObject c = new JSONObject();
                String id = cls.selectFirst("a").attr("href");
                if(id.contains("/channel/")) {
                    c.put("type_name",cls.selectFirst("a").text());
                    c.put("type_id",id.split("/channel/")[1]);
                    classes.put(c);
                }
            }
            System.out.println(classes.toString(4));
            JSONObject filters = new JSONObject();
            for (int i=0;i<classes.length();i++) {
                String type_id = classes.optJSONObject(i).optString("type_id");
                url = "https://v.qq.com/channel/"+type_id+"?listpage=1&channel="+type_id+"&sort=18&_all=1";
                su = new SpiderUrl(url, null);
                srr = SpiderReq.get(su);
                doc = Jsoup.parse(srr.content);
                Elements elements = doc.select(".filter_line");
                JSONArray jsonArray = new JSONArray();
                for (Element element : elements) {
                    JSONObject t1 = new JSONObject();
                    JSONArray t2 = new JSONArray();

                    for(Element data:element.select("a") ){
                        JSONObject t3 = new JSONObject();
                        String v = data.text();
                        String n = data.attr("data-value");
                        t3.put("v",n);
                        t3.put("n",v);
                        t2.put(t3);
                    }
                    t1.put("name",element.selectFirst("span").text());
                    t1.put("value",t2);
                    jsonArray.put(t1);
                }
                filters.put(type_id,jsonArray);
            }
            url = siteUrl + "/x/bu/pagesheet/list?_all=1&append=1&channel=choice";
            su = new SpiderUrl(url, getHeaders(url));
            srr = SpiderReq.get(su);
            JSONObject result = new JSONObject();
            if (filter) {
                result.put("filters", filters);
            }
            result.put("class", classes);
            try {
                doc = Jsoup.parse(srr.content);
                // 取首页推荐视频列表
                Elements list = doc.select(".list_item");
                JSONArray videos = new JSONArray();
                for (int i = 0; i < list.size(); i++) {
                    Element vod = list.get(i);
                    String title = vod.selectFirst("a").attr("title");
                    String cover = vod.selectFirst("img").attr("src");
                    cover=fixUrl(url,cover);
                    String remark = vod.selectFirst(".figure_caption").text();
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

    /**
     * 获取分类信息数据
     *
     * @param tid    分类id
     * @param pg     页数
     * @param filter 同homeContent方法中的filter
     * @param extend 筛选参数{k:v, k1:v1}
     * @return
     */
    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        try {
            String url = siteUrl + "/x/bu/pagesheet/list?_all=1&append=1&channel=" + tid + "&listpage=1&offset=" + (Integer.parseInt(pg) - 1) * 21 + "&pagesize=21&sort=18";
            if(extend != null) {
                Set<String> keys = extend.keySet();
                for (String key : keys) {
                    String val = extend.get(key).trim();
                    if (val.length() == 0)
                        continue;
                    url += "&" + key + "=" + URLEncoder.encode(val);
                }
            }
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
                    cover = fixUrl(url,cover);
                    String remark = vod.selectFirst(".figure_caption")==null?"":vod.selectFirst(".figure_caption").text();
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
            vodList.put("vod_name", dataObject.optString("title"));
            vodList.put("vod_pic", fixUrl(url,dataObject.optString("pic")));
            vodList.put("type_name", jsonObject.get("typ").toString());
            vodList.put("vod_year", dataObject.optString("year"));
//            vodList.put("vod_area", dataObject.getString("vod_area"));
//            vodList.put("vod_remarks", dataObject.getString("vod_remarks"));
            vodList.put("vod_actor", jsonObject.optString("nam"));
//            vodList.put("vod_director", dataObject.getString("vod_director"));
            vodList.put("vod_content", dataObject.optString("description"));
            JSONArray playerList = dataObject.getJSONArray("video_ids");
            List<String> playFlags = new ArrayList<>();
            List<String> plays = new ArrayList<>();
            for (int i = 1; i <= playerList.length(); i++) {
                playFlags.add(playerList.optString(i-1));
                if(i%30==0||i==playerList.length()) {
                    url = "https://union.video.qq.com/fcgi-bin/data?otype=json&tid=682&appid=20001238&appkey=6c03bbe9658448a4&union_platform=1&idlist=" + join(",", playFlags);
                    su = new SpiderUrl(url, getHeaders(url));
                    srr = SpiderReq.get(su);
                    JSONArray results = new JSONObject(srr.content.substring(13, srr.content.length() - 1)).getJSONArray("results");
                    for (int j = 0; j < results.length(); j++) {
                        JSONObject data = results.getJSONObject(j).getJSONObject("fields");
                        if(!data.optString("title").contains("预告"))
                            plays.add(data.optString("title").replace(dataObject.optString("title")+"_","") + "$" + ids.get(0) + "/" + data.optString("vid"));
                    }
                    playFlags.clear();
                }
            }

            vodList.put("vod_play_from", "qq");
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
            String url = "http://node.video.qq.com/x/api/msearch?keyWord=" + key;
            SpiderUrl su = new SpiderUrl(url, getHeaders(url));
            SpiderReqResult srr = SpiderReq.get(su);
            JSONObject dataObject = new JSONObject(srr.content);
            JSONArray jsonArray = dataObject.getJSONArray("uiData");
            JSONArray videos = new JSONArray();
            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject vObj = jsonArray.getJSONObject(i).getJSONArray("data").getJSONObject(0);
                JSONObject v = new JSONObject();
                v.put("vod_id", vObj.optString("id"));
                v.put("vod_name", vObj.optString("title"));
                v.put("vod_pic", vObj.optString("posterPic"));
                v.put("vod_remarks", vObj.optString("publishDate"));
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
