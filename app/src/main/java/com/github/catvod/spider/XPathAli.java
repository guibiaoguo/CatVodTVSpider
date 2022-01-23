package com.github.catvod.spider;

import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.crawler.SpiderReq;
import com.github.catvod.crawler.SpiderReqResult;
import com.github.catvod.crawler.SpiderUrl;

import com.github.catvod.utils.Base64;
import com.github.catvod.utils.SpiderOKClient;
import com.github.catvod.utils.StringUtil;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import okhttp3.MediaType;
import okhttp3.RequestBody;
import rxhttp.wrapper.annotations.NonNull;

public class XPathAli extends XPath {

    private String accessTk = "";
    private String aliTk;

    Pattern aliyun = Pattern.compile(".*?aliyundrive.com/s/(\\w+)[^\\w]?folder/(\\w+)");
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
        String result = super.detailContent(ids);
        if (result.length() > 0) {
            try {
                JSONObject jsonObject = new JSONObject(result);
                String playUrl[] = jsonObject.optJSONArray("list").getJSONObject(0).optString("vod_play_url").split("\\$\\$\\$")[0].split("#");
                if (playUrl.length > 0) {
                    Map<String, List<String>> vod_play = new HashMap<>();
                    for (int i = 0; i < playUrl.length; i++) {
                        updatePlaylist(playUrl[i].replaceAll(".*\\$", ""), vod_play);
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
                        jsonObject.optJSONArray("list").optJSONObject(0).put("vod_play_from", vod_play_from).put("vod_play_url", vod_play_url);
                    }
                    result = jsonObject.toString(4);
                }
            } catch (Throwable th) {
                SpiderDebug.log(th);
            }
        }
        return result;
    }

    private void updatePlaylist(String link, Map<String, List<String>> vod_play) {
        String shareId = null;
        String root = "root";
        Matcher matcher = aliyun.matcher(link);
        if (matcher.find()) {
            shareId = matcher.group(1);
//            if(matcher.groupCount()>1) {
//                root = matcher.group(2);
//            }
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
            getFileList(shareToken, shareId, "", root,"","", vod_play);
        }
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
                    String templateId = "";
                    for (int i = 0; i < playList.length(); i++) {
                        JSONObject obj = playList.getJSONObject(i);
                        if (obj.optString("template_id").equals(infos[2])) {
                            videoUrl = "http://116.85.31.19:3000/apis/yun-play/" + infos[3] + '/' + accessTk + '/' + shareTk + '/' + infos[2] + "/index.m3u8";
                            break;
                        } else {
                            templateId = obj.optString("template_id");
                        }
                    }

                    if (videoUrl.isEmpty() && playList.length() > 0) {
                        videoUrl = "http://116.85.31.19:3000/apis/yun-play/" + infos[1] + '/' + infos[0] + '/' + accessTk + '/' + shareTk + '/' + templateId + "/index.m3u8";
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
    protected void loadRuleExt(String json) {
        try {
            JSONObject jsonObj = new JSONObject(json);
            aliTk = jsonObj.optString("token").trim();
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
    }

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

    private void refreshTk() {
        fetchAliTk();
        if (!aliTk.isEmpty() && accessTk.isEmpty()) {
            try {
                HashMap<String, String> json = new HashMap<>();
                json.put("refresh_token", aliTk);
                SpiderReqResult srr = SpiderReq.postJson("https://api.aliyundrive.com/token/refresh", json, new HashMap<>());
                JSONObject obj = new JSONObject(srr.content);
                accessTk = obj.getString("access_token");
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


    private void  getFileList(String shareTk, String shareId, String sharePwd, String
            root,String parentName,String foldname, Map<String, List<String>> data) {
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
                    if (item.getString("type").equals("folder")) {
                        String dirId = item.getString("file_id");
                        foldname = item.getString("name");
                        String name = root == "root"?"":parentName +";"+item.getString("name");
                        getFileList(shareTk, shareId, sharePwd, dirId,name,foldname,data);
                    } else {
                        String[] types = {"3G2", "3GP", "3GP2", "3GPP", "AMV", "ASF", "AVI", "DIVX", "DPG", "DVR-MS", "EVO", "F4V", "FLV", "IFO", "K3G", "M1V", "M2T", "M2TS", "M2V", "M4B", "M4P", "M4V", "MKV", "MOV", "MP2V", "MP4", "MPE", "MPEG", "MPG", "MPV2", "MTS", "MXF", "NSR", "NSV", "OGM", "OGV", "QT", "RAM", "RM", "RMVB", "RPM", "SKM", "TP", "TPR", "TRP", "TS", "VOB", "WEBM", "WM", "WMP", "WMV", "WTV"};
                        if (item.getString("type").equals("file") && Arrays.asList(types).contains(item.getString("file_extension").toUpperCase())) {
                            String fileId = item.getString("file_id");
                            String fileName = item.getString("name");
                            String[] templateIds = {"FHD", "HD", "SD", "LD"};
                            List<String> vodLists = new ArrayList<>();
                            for (String templateId : templateIds) {
                                if (data.get(templateId) == null) {
                                    vodLists = new ArrayList<>();
                                    data.put(templateId, vodLists);
                                } else {
                                    vodLists = data.get(templateId);
                                }
                                JSONObject jsonObject = new JSONObject();
                                jsonObject.put("parent_name",parentName+";"+foldname);
                                jsonObject.put("folder_id",root);
                                jsonObject.put("file_id",fileId);
                                jsonObject.put("file_name",item.getString("name"));
                                jsonObject.put("share_id",shareId);
                                jsonObject.put("share_pwd",sharePwd);
                                jsonObject.put("expiration","");
                                String pid = jsonObject.toString();
                                try{
                                    pid = Base64.encodeToString(StringUtil.encode(pid).getBytes("utf-8"), Base64.NO_WRAP);
                                    pid = pid.replaceAll("/","$");
                                } catch (Exception e) {

                                }
                                vodLists.add(fileName + "$" + shareId + "+" + fileId + "+" + templateId+"+"+pid);
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

    public boolean manualVideoCheck() {
        return true;
    }
}
