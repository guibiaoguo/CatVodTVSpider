package com.github.catvod.spider;

import android.content.Context;
import com.github.catvod.utils.StringUtil;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class Ysdq extends Spider {
    private static HashMap<String, JSONObject> sites = new HashMap<>();

    protected void fetchRule() {
        if (sites.size() == 0) {
            try {
                String json = "";
                JSONArray sources = new JSONObject(json).optJSONArray("source");
                for (int i = 0; i < sources.length(); i++) {
                    JSONObject obj = sources.optJSONObject(i);
                    String type = obj.optString("type");
                    if (type.equals("AppV0") || type.equals("AppTv") || type.equals("aiKanTv")) {
                        String scName = obj.optString("sourceName");
                        sites.put(scName, obj);
                        SpiderDebug.log("{\"key\":\"csp_ysdq_" + scName + "\", \"name\":\"" + scName + "(搜)\", \"type\":3, \"api\":\"csp_Ysdq\",\"searchable\":1,\"quickSearch\":0, \"ext\":\"" + scName + "\"},");
                    }
                }
            } catch (Exception e) {
                SpiderDebug.log(e);
            }
        }
    }

    private JSONObject getJson() {
        if (sites.containsKey(sourceName)) {
            return sites.get(sourceName);
        }
        return null;
    }

    private String sourceName = "";

    @Override
    public void init(Context context, String extend) {
        super.init(context, extend);
        this.sourceName = extend;
    }

    private String jsonArr2Str(JSONArray array) {
        ArrayList<String> strings = new ArrayList<>();
        for (int i = 0; i < array.length(); i++) {
            strings.add(array.optString(i));
        }
        return StringUtil.join(",", strings);
    }

    @Override
    public String detailContent(List<String> ids) {
        try {
            fetchRule();
            JSONObject cfg = getJson();
            if (cfg != null) {
                String type = cfg.optString("type");
                JSONObject result = new JSONObject();
                JSONObject vod = new JSONObject();
                if (type.equals("AppV0")) {
                    String url = cfg.optString("detailUrl").replace("%s", ids.get(0));
                    String json = OkHttpUtil.string(url, null);
                    JSONObject obj = new JSONObject(json).optJSONObject("data");
                    vod.put("vod_id", obj.optString("vod_id"));
                    vod.put("vod_name", obj.optString("vod_name"));
                    vod.put("vod_pic", obj.optString("vod_pic"));
                    vod.put("type_name", obj.optString("vod_class"));
                    vod.put("vod_year", obj.optString("vod_year"));
                    vod.put("vod_lang", obj.optString("vod_lang"));
                    vod.put("vod_area", obj.optString("vod_area"));
                    vod.put("vod_remarks", obj.optString("vod_remarks"));
                    vod.put("vod_actor", obj.optString("vod_actor"));
                    vod.put("vod_director", obj.optString("vod_director"));
                    vod.put("vod_content", obj.optString("vod_content"));
                    vod.put("vod_play_from", obj.optString("vod_play_from"));
                    vod.put("vod_play_url", obj.optString("vod_play_url"));
                } else if (type.equals("AppTV")) {
                    String url = ids.get(0);
                    String json = OkHttpUtil.string(url, null);
                    JSONObject obj = new JSONObject(json);
                    vod.put("vod_id", obj.optString("id"));
                    vod.put("vod_name", obj.optString("title"));
                    vod.put("vod_pic", obj.optString("img_url"));
                    vod.put("type_name", jsonArr2Str(obj.optJSONArray("type")));
                    vod.put("vod_year", obj.optString("pubtime"));
                    vod.put("vod_area", jsonArr2Str(obj.optJSONArray("area")));
                    vod.put("vod_remarks", obj.optString("trunk"));
                    vod.put("vod_actor", jsonArr2Str(obj.optJSONArray("actor")));
                    vod.put("vod_director", jsonArr2Str(obj.optJSONArray("director")));
                    vod.put("vod_content", obj.optString("intro"));
                    Map<String, String> vod_play = new LinkedHashMap<>();
                    JSONObject playList = obj.optJSONObject("videolist");
                    Iterator<String> playListKeys = playList.keys();
                    while (playListKeys.hasNext()) {
                        String from = playListKeys.next();
                        JSONArray playListUrls = playList.optJSONArray(from);
                        ArrayList<String> urls = new ArrayList<>();
                        for (int j = 0; j < playListUrls.length(); j++) {
                            JSONObject urlObj = playListUrls.optJSONObject(j);
                            urls.add(urlObj.optString("title") + "$" + urlObj.optString("url"));
                        }
                        vod_play.put(from, StringUtil.join("#", urls));
                    }
                    String vod_play_from = StringUtil.join("$$$", vod_play.keySet());
                    String vod_play_url = StringUtil.join("$$$", vod_play.values());
                    vod.put("vod_play_from", vod_play_from);
                    vod.put("vod_play_url", vod_play_url);
                } else if (type.equals("aiKanTv")) {
                    String url = cfg.optString("detailUrl").replace("%s", ids.get(0));
                    String json = OkHttpUtil.string(url, null);
                    JSONObject obj = new JSONObject(json).optJSONObject("data");
                    vod.put("vod_id", obj.optString("vod_id"));
                    vod.put("vod_name", obj.optString("vod_name"));
                    vod.put("vod_pic", obj.optString("vod_pic"));
                    vod.put("type_name", obj.optString("vod_class"));
                    vod.put("vod_year", obj.optString("vod_year"));
                    vod.put("vod_lang", obj.optString("vod_lang"));
                    vod.put("vod_area", obj.optString("vod_area"));
                    vod.put("vod_remarks", obj.optString("vod_remarks"));
                    vod.put("vod_actor", obj.optString("vod_actor"));
                    vod.put("vod_director", obj.optString("vod_director"));
                    vod.put("vod_content", obj.optString("vod_content"));

                    Map<String, String> vod_play = new LinkedHashMap<>();
                    JSONArray playList = obj.optJSONArray("vod_play_list");
                    for (int i = 0; i < playList.length(); i++) {
                        JSONObject playListObj = playList.optJSONObject(i);
                        String from = playListObj.optString("from");
                        String playUrls = playListObj.optString("url");
                        if (playUrls.length() > 0) {
                            vod_play.put(from, playUrls);
                        }
                    }
                    String vod_play_from = StringUtil.join("$$$", vod_play.keySet());
                    String vod_play_url = StringUtil.join("$$$", vod_play.values());
                    vod.put("vod_play_from", vod_play_from);
                    vod.put("vod_play_url", vod_play_url);
                }
                JSONArray list = new JSONArray();
                list.put(vod);
                result.put("list", list);
                return result.toString();
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    @Override
    public String searchContent(String key, boolean quick) {
        try {
            if (quick)
                return "";
            fetchRule();
            JSONObject cfg = getJson();
            if (cfg != null) {
                String type = cfg.optString("type");
                String url = cfg.optString("searchUrl");
                if (!url.isEmpty()) {
                    JSONObject result = new JSONObject();
                    JSONArray videos = new JSONArray();
                    url = url.replace("%s", URLEncoder.encode(key));
                    String json = OkHttpUtil.string(url, null);
                    if (type.equals("AppV0")) {
                        JSONArray list = new JSONObject(json).optJSONArray("list");
                        for (int i = 0; i < list.length(); i++) {
                            JSONObject obj = list.optJSONObject(i);
                            JSONObject v = new JSONObject();
                            v.put("vod_id", obj.optString("vod_id"));
                            v.put("vod_name", obj.optString("vod_name"));
                            v.put("vod_pic", obj.optString("vod_pic"));
                            v.put("vod_remarks", obj.optString("vod_remarks"));
                            videos.put(v);
                        }
                    } else if (type.equals("AppTV")) {
                        JSONArray list = new JSONObject(json).optJSONArray("data");
                        for (int i = 0; i < list.length(); i++) {
                            JSONObject obj = list.optJSONObject(i);
                            JSONObject v = new JSONObject();
                            v.put("vod_id", obj.optString("nextlink"));
                            v.put("vod_name", obj.optString("title"));
                            v.put("vod_pic", obj.optString("pic"));
                            v.put("vod_remarks", obj.optString("state"));
                            videos.put(v);
                        }
                    } else if (type.equals("aiKanTv")) {
                        JSONArray list = new JSONObject(json).optJSONObject("data").optJSONArray("list");
                        for (int i = 0; i < list.length(); i++) {
                            JSONObject obj = list.optJSONObject(i);
                            JSONObject v = new JSONObject();
                            v.put("vod_id", obj.optString("vod_id"));
                            v.put("vod_name", obj.optString("vod_name"));
                            v.put("vod_pic", obj.optString("vod_pic"));
                            v.put("vod_remarks", obj.optString("vod_remarks"));
                            videos.put(v);
                        }
                    }
                    result.put("list", videos);
                    return result.toString();
                }
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        try {
            fetchRule();
            if (vipFlags.contains(flag)) {
                try {
                    JSONObject result = new JSONObject();
                    result.put("parse", 1);
                    result.put("playUrl", "");
                    result.put("url", id);
                    result.put("header", "");
                    return result.toString();
                } catch (Exception e) {
                    SpiderDebug.log(e);
                }
            }
            // 如果是视频直连 直接返回免解
            else if (isVideoFormat(id)) {
                try {
                    JSONObject result = new JSONObject();
                    result.put("parse", 0);
                    result.put("playUrl", "");
                    result.put("url", id);
                    result.put("header", "");
                    return result.toString();
                } catch (Exception e) {
                    SpiderDebug.log(e);
                }
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        // 尝试解析
        try {
            JSONObject result = new JSONObject();
            result.put("parse", 1);
            result.put("playUrl", "");
            result.put("url", id);
            result.put("header", "");
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }
}
