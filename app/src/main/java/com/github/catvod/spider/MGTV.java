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

    protected JSONObject filterConfig;

    @Override
    public void init(Context context) {
        super.init(context);
        try {
            filterConfig = new JSONObject("{\"1\":[{\"name\":\"类型\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"4\",\"n\":\"王牌综艺\"},{\"v\":\"5\",\"n\":\"大咖秀场\"},{\"v\":\"6\",\"n\":\"搞笑\"},{\"v\":\"7\",\"n\":\"情感\"},{\"v\":\"8\",\"n\":\"音乐\"},{\"v\":\"9\",\"n\":\"生活\"},{\"v\":\"179\",\"n\":\"亲子\"},{\"v\":\"170\",\"n\":\"旅游\"},{\"v\":\"171\",\"n\":\"时尚\"},{\"v\":\"173\",\"n\":\"真人秀\"},{\"v\":\"174\",\"n\":\"竞技\"},{\"v\":\"172\",\"n\":\"访谈\"},{\"v\":\"180\",\"n\":\"脱口秀\"}],\"key\":\"kind\"},{\"name\":\"地区\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"内地\"},{\"v\":\"2\",\"n\":\"港台\"},{\"v\":\"3\",\"n\":\"其他\"}],\"key\":\"area\"},{\"name\":\"排序\",\"value\":[{\"v\":\"c1\",\"n\":\"最新\"},{\"v\":\"c2\",\"n\":\"最热\"},{\"v\":\"c4\",\"n\":\"知乎高分\"}],\"key\":\"sort\"}],\"2\":[{\"name\":\"类型\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"14\",\"n\":\"甜蜜互宠\"},{\"v\":\"15\",\"n\":\"虐恋情深\"},{\"v\":\"16\",\"n\":\"青涩校园\"},{\"v\":\"17\",\"n\":\"仙侠玄幻\"},{\"v\":\"19\",\"n\":\"都市职场\"},{\"v\":\"148\",\"n\":\"古装\"},{\"v\":\"20\",\"n\":\"快意江湖\"},{\"v\":\"147\",\"n\":\"偶像\"},{\"v\":\"21\",\"n\":\"悬疑推理\"},{\"v\":\"22\",\"n\":\"家长里短\"},{\"v\":\"23\",\"n\":\"芒果出品\"},{\"v\":\"24\",\"n\":\"轻松搞笑\"},{\"v\":\"25\",\"n\":\"铁血战争\"},{\"v\":\"26\",\"n\":\"其他\"}],\"key\":\"kind\"},{\"name\":\"地区\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"10\",\"n\":\"内地\"},{\"v\":\"11\",\"n\":\"日韩\"},{\"v\":\"12\",\"n\":\"港台\"}],\"key\":\"area\"},{\"name\":\"排序\",\"value\":[{\"v\":\"c2\",\"n\":\"最热\"},{\"v\":\"c1\",\"n\":\"最新\"},{\"v\":\"c4\",\"n\":\"知乎高分\"}],\"key\":\"sort\"},{\"name\":\"版本\",\"value\":[{\"v\":\"all\",\"n\":\"全部\"},{\"v\":\"2037\",\"n\":\"TV版\"},{\"v\":\"2038\",\"n\":\"特别版\"},{\"v\":\"2040\",\"n\":\"精华版\"},{\"v\":\"2036\",\"n\":\"未删减版\"}],\"key\":\"edition\"}],\"3\":[{\"name\":\"类型\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"34\",\"n\":\"院线大片\"},{\"v\":\"175\",\"n\":\"爱情\"},{\"v\":\"176\",\"n\":\"喜剧\"},{\"v\":\"177\",\"n\":\"动作\"},{\"v\":\"178\",\"n\":\"科幻\"},{\"v\":\"39\",\"n\":\"青春\"},{\"v\":\"43\",\"n\":\"恐怖悬疑\"},{\"v\":\"44\",\"n\":\"战争\"},{\"v\":\"45\",\"n\":\"警匪\"},{\"v\":\"46\",\"n\":\"历史\"},{\"v\":\"47\",\"n\":\"歌舞\"},{\"v\":\"48\",\"n\":\"动画\"},{\"v\":\"50\",\"n\":\"其他\"}],\"key\":\"kind\"},{\"name\":\"资费\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"b1\",\"n\":\"免费\"},{\"v\":\"b2\",\"n\":\"VIP\"},{\"v\":\"b3\",\"n\":\"VIP用券\"},{\"v\":\"b4\",\"n\":\"付费点播\"}],\"key\":\"chargeInfo\"},{\"name\":\"排序\",\"value\":[{\"v\":\"c2\",\"n\":\"最热\"},{\"v\":\"c1\",\"n\":\"最新\"},{\"v\":\"c4\",\"n\":\"知乎高分\"}],\"key\":\"sort\"}],\"106\":[{\"name\":\"类型\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"106\",\"n\":\"时事\"},{\"v\":\"107\",\"n\":\"社会\"},{\"v\":\"108\",\"n\":\"文娱\"},{\"v\":\"109\",\"n\":\"军事\"}],\"key\":\"kind\"},{\"name\":\"排序\",\"value\":[{\"v\":\"c1\",\"n\":\"最新\"},{\"v\":\"c2\",\"n\":\"最热\"}],\"key\":\"sort\"}],\"91\":[{\"name\":\"类型\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"119\",\"n\":\"吐槽\"},{\"v\":\"120\",\"n\":\"恶搞\"},{\"v\":\"121\",\"n\":\"爆笑\"},{\"v\":\"122\",\"n\":\"奇趣\"},{\"v\":\"123\",\"n\":\"饭制\"},{\"v\":\"124\",\"n\":\"其他\"}],\"key\":\"kind\"},{\"name\":\"排序\",\"value\":[{\"v\":\"c2\",\"n\":\"最热\"},{\"v\":\"c1\",\"n\":\"最新\"}],\"key\":\"sort\"}],\"50\":[{\"name\":\"类型\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"60\",\"n\":\"恋爱少女\"},{\"v\":\"86\",\"n\":\"热血\"},{\"v\":\"62\",\"n\":\"搞笑\"},{\"v\":\"63\",\"n\":\"青春\"},{\"v\":\"64\",\"n\":\"魔幻仙侠\"},{\"v\":\"65\",\"n\":\"激燃运动\"},{\"v\":\"66\",\"n\":\"特摄\"},{\"v\":\"67\",\"n\":\"推理\"},{\"v\":\"68\",\"n\":\"亲子幼教\"},{\"v\":\"69\",\"n\":\"芒果出品\"},{\"v\":\"70\",\"n\":\"动漫音乐\"},{\"v\":\"71\",\"n\":\"经典\"},{\"v\":\"72\",\"n\":\"其他\"}],\"key\":\"kind\"},{\"name\":\"地区\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"52\",\"n\":\"内地\"},{\"v\":\"53\",\"n\":\"欧美\"},{\"v\":\"54\",\"n\":\"日韩\"},{\"v\":\"55\",\"n\":\"其他\"}],\"key\":\"area\"},{\"name\":\"版本\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"165\",\"n\":\"剧场版\"},{\"v\":\"57\",\"n\":\"TV版\"},{\"v\":\"166\",\"n\":\"OVA版\"},{\"v\":\"167\",\"n\":\"真人版\"}],\"key\":\"edition\"},{\"name\":\"排序\",\"value\":[{\"v\":\"c2\",\"n\":\"最热\"},{\"v\":\"c1\",\"n\":\"最新\"}],\"key\":\"sort\"}],\"51\":[{\"name\":\"类型\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"97\",\"n\":\"美食\"},{\"v\":\"98\",\"n\":\"文化\"},{\"v\":\"99\",\"n\":\"社会\"},{\"v\":\"100\",\"n\":\"历史\"},{\"v\":\"101\",\"n\":\"军事\"},{\"v\":\"102\",\"n\":\"人物\"},{\"v\":\"103\",\"n\":\"探索\"},{\"v\":\"104\",\"n\":\"自然\"},{\"v\":\"105\",\"n\":\"其他\"}],\"key\":\"kind\"},{\"name\":\"排序\",\"value\":[{\"v\":\"c2\",\"n\":\"最热\"},{\"v\":\"c1\",\"n\":\"最新\"}],\"key\":\"sort\"}],\"20\":[{\"name\":\"类型\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"150\",\"n\":\"MV\"},{\"v\":\"151\",\"n\":\"影视原声\"},{\"v\":\"152\",\"n\":\"音乐节目\"},{\"v\":\"153\",\"n\":\"演唱会\"},{\"v\":\"154\",\"n\":\"颁奖礼\"},{\"v\":\"155\",\"n\":\"音乐现场\"},{\"v\":\"156\",\"n\":\"其他\"}],\"key\":\"kind\"},{\"name\":\"风格\",\"value\":[{\"v\":\"a1\",\"n\":\"全部\"},{\"v\":\"157\",\"n\":\"流行\"},{\"v\":\"158\",\"n\":\"Hip-hop\"},{\"v\":\"159\",\"n\":\"R&B\"},{\"v\":\"160\",\"n\":\"摇滚\"},{\"v\":\"161\",\"n\":\"民谣\"},{\"v\":\"162\",\"n\":\"爵士\"},{\"v\":\"163\",\"n\":\"古典\"},{\"v\":\"164\",\"n\":\"其他\"}],\"key\":\"musicStyle\"},{\"name\":\"排序\",\"value\":[{\"v\":\"c1\",\"n\":\"最新\"},{\"v\":\"c2\",\"n\":\"最热\"}],\"key\":\"sort\"}]}");
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
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

            String url = "https://pianku.api.mgtv.com/rider/config/platformChannels/v1?platform=msite&abroad=0&_support=10000000";
            SpiderUrl su = new SpiderUrl(url, null);
            SpiderReqResult srr = SpiderReq.get(su);
            JSONObject jsonObject = new JSONObject(srr.content);
            JSONArray data = jsonObject.optJSONArray("data");
            JSONArray classes = new JSONArray();
            for (int i = 0; i < data.length(); i++) {
                JSONObject cate = data.optJSONObject(i);
                JSONObject c = new JSONObject();
                c.put("type_name",cate.optString("channelName"));
                c.put("type_id",cate.optString("channelId"));
                classes.put(c);
            }
            JSONObject result = new JSONObject();
            if (filter) {
                result.put("filters", filterConfig);
            }
            result.put("class", classes);
            url = "https://pianku.api.mgtv.com/rider/list/pcweb/v3?platform=pcweb&channelId=2&pn=1&chargeInfo=&sort=c2";
            su = new SpiderUrl(url, getHeaders(url));
            srr = SpiderReq.get(su);
            try {
                jsonObject = new JSONObject(srr.content);
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
            String url = "https://pianku.api.mgtv.com/rider/list/msite/v2?platform=msite&channelId="+tid+"&pn="+pg+"&chargeInfo=&sort=c2";
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
                    String cover = vod.optString("img");
                    cover=fixUrl(url,cover);
                    String remark = vod.optString("updateInfo");
                    remark = remark.equals("")?vod.optString("subtitle"):remark;
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

