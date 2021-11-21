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
public class IQIYI extends Spider {

    private static final String siteUrl = "https://pcw-api.iqiyi.com";
    private static final String siteHost = "iqyi.com";

    protected JSONObject playerConfig = new JSONObject();

    protected HashMap<String, String> classifyMap = new HashMap<>();

    protected JSONObject filterConfig;
    protected JSONArray classConfig;

    @Override
    public void init(Context context) {
        super.init(context);
        try {
            classConfig = new JSONArray("[{\"type_name\":\"电视\",\"type_id\":\"2\"},{\"type_name\":\"电影\",\"type_id\":\"1\"},{\"type_name\":\"综艺\",\"type_id\":\"6\"},{\"type_name\":\"动漫\",\"type_id\":\"4\"},{\"type_name\":\"纪录\",\"type_id\":\"3\"},{\"type_name\":\"教育\",\"type_id\":\"12\"},{\"type_name\":\"游戏\",\"type_id\":\"8\"},{\"type_name\":\"资讯\",\"type_id\":\"25\"},{\"type_name\":\"娱乐\",\"type_id\":\"7\"},{\"type_name\":\"财经\",\"type_id\":\"24\"},{\"type_name\":\"网络\",\"type_id\":\"1\"},{\"type_name\":\"片花\",\"type_id\":\"10\"},{\"type_name\":\"音乐\",\"type_id\":\"5\"},{\"type_name\":\"军事\",\"type_id\":\"28\"},{\"type_name\":\"体育\",\"type_id\":\"17\"},{\"type_name\":\"儿童\",\"type_id\":\"15\"},{\"type_name\":\"旅游\",\"type_id\":\"9\"},{\"type_name\":\"时尚\",\"type_id\":\"13\"},{\"type_name\":\"生活\",\"type_id\":\"21\"},{\"type_name\":\"汽车\",\"type_id\":\"26\"},{\"type_name\":\"搞笑\",\"type_id\":\"22\"},{\"type_name\":\"广告\",\"type_id\":\"20\"},{\"type_name\":\"原创\",\"type_id\":\"27\"},{\"type_name\":\"母婴\",\"type_id\":\"29\"},{\"type_name\":\"科技\",\"type_id\":\"30\"},{\"type_name\":\"健康\",\"type_id\":\"32\"}]");
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
    }

    protected HashMap<String, String> getHeaders(String url) {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        return headers;
    }

    @Override
    public String homeContent(boolean filter) {
        try {
            String url = siteUrl + "/search/video/videolists?channel_id=2&is_purchase=&mode=24&pageNum=1&pageSize=24&data_type=1&site=iqiyi";
            SpiderUrl su = new SpiderUrl(url, getHeaders(url));
            SpiderReqResult srr = SpiderReq.get(su);
            JSONObject result = new JSONObject();
            result.put("class", classConfig);
            try {
                JSONObject jsonObject = new JSONObject(srr.content);
                // 取首页推荐视频列表
                JSONArray list = jsonObject.optJSONObject("data").optJSONArray("list");
                JSONArray videos = new JSONArray();
                for (int i = 0; i < list.length(); i++) {
                    JSONObject vod = list.optJSONObject(i);
                    String title = vod.optString("name");
                    String cover = vod.optString("imageUrl");
                    cover=fixUrl(url,cover);
                    String remark = vod.optString("score");
                    String id = vod.optString("playUrl");
                    if(!vod.optString("albumId").equals("")) {
                        if (vod.optInt("sourceId")!=0){
                            id = "/video/video/baseinfo/"+vod.optString("tvId")+"?userInfo=verify&jsonpCbName=videoInfo39";
                        } else {
                            id = "/albums/album/avlistinfo?aid="+vod.optString("albumId")+"&size=5000&page=1&url=" + id;
                        }
                    } else {
                        if (vod.optLong("tvId") != 0) {
                            id = "/video/video/baseinfo/"+vod.optString("tvId")+"?userInfo=verify&jsonpCbName=videoInfo39";
                        }
                    }
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
            String url = siteUrl + "/search/video/videolists?channel_id="+tid+"&is_purchase=&mode=24&pageNum="+pg+"&pageSize=24";
            SpiderUrl su = new SpiderUrl(url, getHeaders(url));
            SpiderReqResult srr = SpiderReq.get(su);
            JSONObject result = new JSONObject();
            try {
                JSONObject jsonObject = new JSONObject(srr.content);
                // 取首页推荐视频列表
                JSONArray list = jsonObject.optJSONObject("data").optJSONArray("list");
                JSONArray videos = new JSONArray();
                for (int i = 0; i < list.length(); i++) {
                    JSONObject vod = list.optJSONObject(i);
                    String title = vod.optString("name");
                    String cover = vod.optString("imageUrl");
                    cover=fixUrl(url,cover);
                    String remark = vod.optString("score");
                    String id = vod.optString("playUrl");
                    if(!vod.optString("albumId").equals("")) {
                        if (vod.optInt("sourceId")!=0){
                            id = "/video/video/baseinfo/"+vod.optString("tvId")+"?userInfo=verify&jsonpCbName=videoInfo39";
                        } else {
                            id = "/albums/album/avlistinfo?aid="+vod.optString("albumId")+"&size=5000&page=1&url=" + id;
                        }
                    } else {
                        if (vod.optLong("tvId") != 0) {
                            id = "/video/video/baseinfo/"+vod.optString("tvId")+"?userInfo=verify&jsonpCbName=videoInfo39";
                        }
                    }
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
            String url = siteUrl + ids.get(0);
            SpiderUrl su = new SpiderUrl(url, getHeaders(url));
            SpiderReqResult srr = SpiderReq.get(su);
            JSONObject jsonObject = new JSONObject(srr.content);
            JSONObject dataObject = jsonObject.getJSONObject("data");
            JSONObject vodList = new JSONObject();
            JSONObject vod = dataObject;
            if(dataObject.optJSONArray("epsodelist")!=null){
                vod = dataObject.optJSONArray("epsodelist").optJSONObject(0);
            }
             vodList.put("vod_id", ids.get(0));
            vodList.put("vod_name",vod.optString("name").replaceAll("第\\d+(?:集|期)",""));
            vodList.put("vod_pic", fixUrl(url,vod.optString("imageUrl")));
//            vodList.put("type_name", jsonObject.get("typ").toString());
//            vodList.put("vod_year", dataObject.optString("year"));
//            vodList.put("vod_area", dataObject.getString("vod_area"));
//            vodList.put("vod_remarks", dataObject.getString("vod_remarks"));
//            vodList.put("vod_actor", jsonObject.optString("nam"));
//            vodList.put("vod_director", dataObject.getString("vod_director"));
            vodList.put("vod_content", vod.optString("description"));
            JSONArray playerList = dataObject.optJSONArray("epsodelist");
            if (playerList == null) {
                playerList = new JSONArray();
                playerList.put(dataObject);
            }
            List<String> plays = new ArrayList<>();
            for (int i = 0; i < playerList.length(); i++) {
                JSONObject epsode = playerList.optJSONObject(i);
                plays.add(epsode.optString("order")+"$"+epsode.optString("playUrl"));
            }
            vodList.put("vod_play_from", "iqiyi");
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
                result.put("url", id);
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
            String url = "https://search.video.iqiyi.com/o?if=html5&key="+key+"&pageNum=1&pos=1&pageSize=20";
            SpiderUrl su = new SpiderUrl(url, getHeaders(url));
            SpiderReqResult srr = SpiderReq.get(su);
            JSONObject dataObject = new JSONObject(srr.content);
            JSONArray jsonArray = dataObject.optJSONObject("data").optJSONArray("docinfos");
            JSONArray videos = new JSONArray();
            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject vObj = jsonArray.getJSONObject(i).optJSONObject("albumDocInfo");
                JSONObject v = new JSONObject();
                String id = vObj.optString("albumLink");
                if(!vObj.optString("album_type").equals("")) {
                    if (vObj.optInt("album_type")==1){
                        id = "/albums/album/avlistinfo?aid="+vObj.optString("albumId")+"&size=5000&page=1&url=" + id;
                    } else {
                        id = "/albums/album/avlistinfo?aid="+vObj.optString("albumId")+"&size=5000&page=1&url=" + id;
                    }
                } else {
                    id = "/albums/album/avlistinfo?aid="+vObj.optString("albumId")+"&size=5000&page=1&url=" + id;
                }
                v.put("vod_id", id);
                v.put("vod_name", vObj.optString("albumTitle"));
                v.put("vod_pic", vObj.optString("albumImg"));
                v.put("vod_remarks", vObj.optString("releaseDate"));
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
