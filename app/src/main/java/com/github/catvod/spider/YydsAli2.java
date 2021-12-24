package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.crawler.SpiderReq;
import com.github.catvod.crawler.SpiderReqResult;
import com.github.catvod.crawler.SpiderUrl;
import com.github.catvod.utils.SpiderOKClient;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import okhttp3.MediaType;
import okhttp3.RequestBody;
import rxhttp.wrapper.annotations.NonNull;

public class YydsAli2 extends YydsAli1 {
    private static final String siteUrl = "https://cmn.yyds.fans";
    private Spider spider;
    protected String ext = null;

    @Override
    public void init(Context context) {
        super.init(context);
    }

    public void init(Context context, String extend) {
        super.init(context, extend);
        this.ext = extend;
        spider = new XPathAli();
        spider.init(context,extend);
    }

    private HashMap<String, String> getHeaders(String url) {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("accept", "application/json, text/plain, */*");
        headers.put("origin", "https://yyds.fans");
        headers.put("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36");
        return headers;
    }

    Pattern aliyun = Pattern.compile(".*?aliyundrive.com/s/(\\w+)[^\\w]?");
    Pattern aliyunShort = Pattern.compile(".*?alywp.net/(\\w+)[^\\w]?");

    public String getName(String id) {
        Map<String,String> data = new HashMap<>();
        data.put("FHD","1080 全高清");
        data.put("HD","720 高清");
        data.put("SD","540 标清");
        data.put("LD","360 流畅");
        return data.get(id);
    }

    @Override
    public String detailContent(List<String> ids) {
        try {
            String url = siteUrl + "/api/post-info";
            HashMap<String, String> json = new HashMap<>();
            json.put("id", ids.get(0));
            SpiderReqResult srr = SpiderReq.postJson(url, json, getHeaders(url));
            JSONObject dataObject = new JSONObject(srr.content);
            JSONObject vObj = dataObject.getJSONObject("data");
            if(vObj.length()==0) {
                return "";
            }
            JSONObject result = new JSONObject();
            JSONArray list = new JSONArray();
            JSONObject vodAtom = new JSONObject();
            vodAtom.put("vod_id", vObj.optString("id"));
            vodAtom.put("vod_name", vObj.optString("title"));
            vodAtom.put("vod_pic", vObj.optString("cover"));
            vodAtom.put("type_name", "");
            vodAtom.put("vod_year", vObj.optString("year"));
            vodAtom.put("vod_area", vObj.optString("region"));
            String mark = vObj.optString("subtitle");
            if (mark.equals("null"))
                mark = "";
            vodAtom.put("vod_remarks", mark);
            vodAtom.put("vod_actor", vObj.optString("actors"));
            vodAtom.put("vod_director", vObj.optString("director"));
            String desc = vObj.optString("desc");
            if (desc.equals("null"))
                desc = "";
            vodAtom.put("vod_content", desc);
            JSONArray jsonArray = vObj.getJSONArray("links");
            Map<String, List<String>> vod_play = new HashMap<>();
            for (int i = 0; i < jsonArray.length(); i++) {
                updatePlaylist(jsonArray.optJSONObject(i).optString("link"), vod_play);
                if (vod_play.size() > 0) {
                    break;
                }
            }
            if (vod_play.size() == 0 && vObj.optString("content").length() > 0) {
                updatePlaylist(vObj.optString("content"), vod_play);
            }
            if (vod_play.size() > 0) {
                List vod_from = new ArrayList();
                List vod_plays = new ArrayList();
                for (Map.Entry<String, List<String>> entry : vod_play.entrySet()) {
                    vod_from.add(getName(entry.getKey()));
                    vod_plays.add(join("#", entry.getValue()));
                }
                String vod_play_from = join("$$$", vod_from);
                String vod_play_url = join("$$$", vod_plays);
                vodAtom.put("vod_play_from", vod_play_from);
                vodAtom.put("vod_play_url", vod_play_url);
            } else {
                String category = spider.searchContent(vObj.optString("title"), false);
                System.out.println(category);
                JSONObject jsonObject = null;
                List<String> aids = new ArrayList<>();

                jsonObject = new JSONObject(category);
                JSONArray categorys = jsonObject.optJSONArray("list");
                aids.add(categorys.getJSONObject(0).optString("vod_id"));
                System.out.println(aids);

                String detail = spider.detailContent(aids);
                System.out.println(detail);
                jsonObject = new JSONObject(detail);
                JSONArray details = jsonObject.optJSONArray("list");
                vodAtom.put("vod_play_from", details.optJSONObject(0).optString("vod_play_from"));
                vodAtom.put("vod_play_url", details.optJSONObject(0).optString("vod_play_url"));
            }
            list.put(vodAtom);
            accessTk = "";
            result.put("list", list);
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

    private void updatePlaylist(String link, Map<String, List<String>> vod_play) {
        String shareId = null;
        Matcher matcher = aliyun.matcher(link);
        if (matcher.find()) {
            shareId = matcher.group(1);
        } else {
            matcher = aliyunShort.matcher(link);
            if (matcher.find()) {
                shareId = matcher.group(1);
                SpiderReqResult resp = SpiderReq.get(SpiderOKClient.noRedirectClient(), new SpiderUrl("https://alywp.net/" + shareId, null));
                shareId = SpiderOKClient.getRedirectLocation(resp.headers);
                if (shareId != null) {
                    matcher = aliyun.matcher(shareId);
                    if (matcher.find()) {
                        shareId = matcher.group(1);
                    }
                }
            }
        }
        if (shareId != null) {
            String shareToken = getShareTk(shareId, "");
            getFileList(shareToken, shareId, "", "root", vod_play);
        }
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        try {
            String[] infos = id.split("\\+");
            String shareTk = getShareTk(infos[0], "");
            refreshTk();
            if (!accessTk.isEmpty()) {
                JSONObject json = new JSONObject();
                json.put("share_id", infos[0]);
                json.put("category", "live_transcoding");
                json.put("file_id", infos[1]);
                json.put("template_id", "");
                HashMap<String, String> headers = new HashMap<>();
                headers.put("x-share-token", shareTk);
                headers.put("authorization", accessTk);
                headers.put("User-Agent","Mozilla/5.0 (Linux; Android 11; Mi 10 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.152 Mobile Safari/537.36");
                SpiderReqResult srr = SpiderReq.postBody("https://api.aliyundrive.com/v2/file/get_share_link_video_preview_play_info", RequestBody.create(MediaType.parse("application/json; charset=utf-8"), json.toString()), headers);
                JSONObject object = new JSONObject(srr.content);
                if(object.optString("code").equals("AccessTokenInvalid")) {
                    accessTk = "";
                    playerContent(flag,id,vipFlags);
                } else if(object.optString("code").equals("ShareLinkTokenInvalid")) {
                    playerContent(flag,id,vipFlags);
                } else {
                    JSONArray playList = object.getJSONObject("video_preview_play_info").getJSONArray("live_transcoding_task_list");
                    String videoUrl = "";
                    for (int i = 0; i < playList.length(); i++) {
                        JSONObject obj = playList.getJSONObject(i);
                        if (obj.optString("template_id").equals(infos[2])) {
                            videoUrl = "http://116.85.31.19:3000/apis/yun-play/" + infos[1] + '/' + infos[0] + '/' + accessTk + '/' + shareTk + '/' + infos[2] + "/index.m3u8";
                            break;
                        }
                    }

                    if (videoUrl.isEmpty() && playList.length() > 0) {
                        videoUrl = playList.getJSONObject(0).getString("url");
                    }
                    JSONObject headerObj = new JSONObject();
                    headerObj.put("User-Agent","Mozilla/5.0 (Linux; Android 11; Mi 10 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.152 Mobile Safari/537.36");
                    JSONObject result = new JSONObject();
                    result.put("parse", 0);
                    result.put("playUrl", "");
                    result.put("url", videoUrl);
                    result.put("header", headerObj.toString());
                    return result.toString(4);
                }
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
            JSONArray videos = new JSONArray();
            try {
                String url = siteUrl + "/api/posts";
                HashMap<String, String> json = new HashMap<>();
                json.put("category_id", "-1");
                json.put("skip", "0");
                json.put("limit", "30");
                json.put("keyword", key);
                SpiderReqResult srr = SpiderReq.postJson(url, json, getHeaders(url));
                JSONObject jsonObject = new JSONObject(srr.content);
                JSONArray jsonArray = jsonObject.getJSONArray("data");
                for (int i = 0; i < jsonArray.length(); i++) {
                    JSONObject vObj = jsonArray.getJSONObject(i);
                    JSONObject v = new JSONObject();
                    v.put("vod_id", vObj.optString("id"));
                    v.put("vod_name", vObj.optString("title"));
                    v.put("vod_pic", vObj.optString("cover"));
                    v.put("vod_remarks", vObj.optString("subtitle"));
                    videos.put(v);
                }
            } catch (Exception e) {

            }
            JSONObject result = new JSONObject();
            result.put("list", videos);
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    private String aliTk = "";

    private void fetchAliTk() {
        if (aliTk.isEmpty()) {
            try {
                HashMap<String, String> headers = new HashMap<>();
                headers.put("User-Agent", "okhttp/4.5.0");
                SpiderReqResult srr = SpiderReq.get(new SpiderUrl("http://81.68.244.5/tv/alitk", headers));
                aliTk = new JSONObject(srr.content).optString("alitk");
            } catch (JSONException e) {
                SpiderDebug.log(e);
            }
        }
    }

    private String accessTk = "";

    private void refreshTk() {
        fetchAliTk();
        if (!aliTk.isEmpty() && accessTk.isEmpty()) {
            try {
                HashMap<String, String> json = new HashMap<>();
                json.put("refresh_token", aliTk);
                SpiderReqResult srr = SpiderReq.postJson("https://api.aliyundrive.com/token/refresh", json, new HashMap<>());
                JSONObject obj = new JSONObject(srr.content);
                accessTk = obj.optString("token_type") + " " + obj.optString("access_token");
            } catch (JSONException e) {
                SpiderDebug.log(e);
            }
        }
    }

    private String getShareTk(String shareId, String sharePwd) {
        try {
            HashMap<String, String> json = new HashMap<>();
            json.put("share_id", shareId);
            json.put("share_pwd", "");
            SpiderReqResult srr = SpiderReq.postJson("https://api.aliyundrive.com/v2/share_link/get_share_token", json, new HashMap<>());
            return new JSONObject(srr.content).optString("share_token");
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
        return "";
    }


    private void getFileList(String shareTk, String shareId, String sharePwd, String
            root, Map<String, List<String>> data) {
        try {
            // 取文件夹
            JSONObject json = new JSONObject();
            json.put("share_id", shareId);
            json.put("parent_file_id", root);
            json.put("limit", 100);
            json.put("image_thumbnail_process", "image/resize,w_160/format,jpeg");
            json.put("image_url_process", "image/resize,w_1920/format,jpeg");
            json.put("video_thumbnail_process", "video/snapshot,t_1000,f_jpg,ar_auto,w_300");
            json.put("order_by", "name");
            json.put("order_direction", "ASC");
            HashMap<String, String> headers = new HashMap<>();
            headers.put("x-share-token", shareTk);
            SpiderReqResult srr = SpiderReq.postBody("https://api.aliyundrive.com/adrive/v3/file/list", RequestBody.create(MediaType.parse("application/json; charset=utf-8"), json.toString()), headers);
            JSONArray rootList = new JSONObject(srr.content).optJSONArray("items");
            if (rootList != null && rootList.length() > 0) {
                for (int i = 0; i < rootList.length(); i++) {
                    JSONObject item = rootList.getJSONObject(i);
                    if (item.optString("type").equals("folder")) {
                        String dirId = item.optString("file_id");
                        getFileList(shareTk, shareId, sharePwd, dirId, data);
                    } else {
                        String[] types = {"3G2", "3GP", "3GP2", "3GPP", "AMV", "ASF", "AVI", "DIVX", "DPG", "DVR-MS", "EVO", "F4V", "FLV", "IFO", "K3G", "M1V", "M2T", "M2TS", "M2V", "M4B", "M4P", "M4V", "MKV", "MOV", "MP2V", "MP4", "MPE", "MPEG", "MPG", "MPV2", "MTS", "MXF", "NSR", "NSV", "OGM", "OGV", "QT", "RAM", "RM", "RMVB", "RPM", "SKM", "TP", "TPR", "TRP", "TS", "VOB", "WEBM", "WM", "WMP", "WMV", "WTV"};
                        if (item.optString("type").equals("file") && Arrays.asList(types).contains(item.optString("file_extension").toUpperCase())) {
                            String fileId = item.optString("file_id");
                            String fileName = item.optString("name");
                            String[] templateIds = {"FHD", "HD", "SD", "LD"};
                            List<String> vodLists = new ArrayList<>();
                            for (String templateId : templateIds) {
                                if (data.get(templateId) == null) {
                                    vodLists = new ArrayList<>();
                                    data.put(templateId, vodLists);
                                } else {
                                    vodLists = data.get(templateId);
                                }
                                vodLists.add(fileName + "$" + shareId + "+" + fileId + "+" + templateId);
                            }
                        }
                    }
                }
            }
            // 取文件列表
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
    }
}
