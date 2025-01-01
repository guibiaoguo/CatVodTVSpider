package com.github.catvod.spider;

import android.content.Context;
import android.util.Log;

import com.github.catvod.ali.API;
import com.github.catvod.bean.Class;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.bean.ali.Item;
import com.github.catvod.crawler.Spider;
import com.github.catvod.utils.Json;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.JsonObject;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import okhttp3.Call;
import okhttp3.Response;

/**
 * @author ColaMint & Adam & FongMi
 */
public class Ali extends Spider {

    public static final Pattern pattern = Pattern.compile("(?:www.aliyundrive.com|www.alipan.com)/s/([^/#]+)(/folder/([^/#]+))?(#([^/]+))?");
    private static final String TAG = Ali.class.getSimpleName();

    private JsonObject exts;
    private List<Class> classes;

    @Override
    public void init(Context context) {
        API.get().setRefreshToken("");
    }

    @Override
    public void init(Context context, String extend) {
        try {
            if (extend.startsWith("http")) {
                exts = Json.safeObject(OkHttpUtil.string(extend));
            } else {
                exts = Json.safeObject(extend);
            }
            API.get().setRefreshToken(exts.get("token").getAsString());
        } catch (Exception e) {
            API.get().setRefreshToken("");
        }
    }

    @Override
    public String homeContent(boolean filter) throws Exception {
        classes = Class.arrayFrom(exts.getAsJsonArray("aliClasses").toString());
        return Result.get().classes(classes).string();
    }

    @Override
    public String homeVideoContent() throws Exception {
        Log.d(TAG, new Gson().toJson(classes));
        String content = categoryContent(classes.get(0).getTypeId(), "1", false, new HashMap<>());
        Result result = Result.objectFrom(content);
        return content;
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        Log.d(TAG, tid);
        String[] names = tid.split(",");
        String name = names.length > 1 ? names[1] : "";
        String url = names[0];
        Matcher matcher = pattern.matcher(url);
        if (!matcher.find()) return "";
        String shareId = matcher.group(1);
        String fileId = matcher.groupCount() >= 3 ? matcher.group(3) != null ? matcher.group(3) : "" : "";
        String sharePwd = matcher.groupCount() >= 5 ? matcher.group(5) != null ? matcher.group(5) : "" : "";
        API.get().setShareId(shareId, sharePwd);
        List<Vod> list = new ArrayList<>();
        String content = API.get().getList(fileId);
        Item item = Item.objectFrom(content);
        for (Item item1 : item.getItems()) {
            if (item1.getType().equals("folder")) {
                name = item1.getName();
            }
            Vod vod = new Vod();
            vod.setVodName(item1.getName());
            fileId = item1.getType().equals("folder") ? item1.getFileId() : item1.getParentFileId();
            vod.setVodId("https://www.alipan.com/s/" + shareId + "/folder/" + fileId + "#" + sharePwd + "," + name);
            vod.setVodTag(item1.getType());
            vod.setVodPic(item1.getType().equals("folder") ? "https://img.alicdn.com/imgextra/i3/O1CN01qSxjg71RMTCxOfTdi_!!6000000002097-2-tps-80-80.png" : item1.getThumbnail());
            list.add(vod);
        }
        return Result.get().page(1,1,list.size(),list.size()).vod(list).string();
    }

    @Override
    public String detailContent(List<String> ids) throws Exception {
        Log.d(TAG, ids.get(0));
        String url = ids.get(0).trim();
        String[] names = url.split(",");
        url = names[0];
        Matcher matcher = pattern.matcher(url);
        if (!matcher.find()) return "";
        String shareId = matcher.group(1);
        String fileId = matcher.groupCount() >= 3 ? matcher.group(3) != null ? matcher.group(3) : "" : "";
        String sharePwd = matcher.groupCount() >= 5 ? matcher.group(3) != null ? matcher.group(5) : "" : "";
        API.get().setShareId(shareId, sharePwd);
        return Result.string(API.get().getVod(ids.get(0), fileId));
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        API.get().checkAccessToken();
        id = id.replace("***", "#");
        String[] pwdids = id.split(",");
        id = pwdids[1];
        String share[] = pwdids[0].split("#");
        String shareId = share[0];
        String sharePwd = share.length > 1 ? share[1] : "";
        API.get().setShareId(shareId, sharePwd);
        String[] ids = id.split("\\+");
        String url = flag.contains("原畫") ? API.get().getDownloadUrl(ids[0]) : API.get().getPreviewUrl(ids[0], flag);
        OKCallBack<Response> callBack = new OKCallBack.OKCallBackDefault() {
            @Override
            protected void onFailure(Call call, Exception e) {

            }

            @Override
            protected void onResponse(Response response) {

            }
        };
//        OkHttpUtil.get(OkHttpUtil.defaultClient(),url,null,API.get().getHeader(),callBack);
//        callBack.getResult();
        return Result.get().url(url).subs(API.get().getSub(ids)).header(API.get().getHeader()).parse(0).string();
    }

    public static Object[] vod(Map<String, String> params) {
        String type = params.get("type");
        if (type.equals("sub")) return API.get().proxySub(params);
        if (type.equals("m3u8")) return API.get().proxyM3U8(params);
        if (type.equals("media")) return API.get().proxyMedia(params);
        return null;
    }
}