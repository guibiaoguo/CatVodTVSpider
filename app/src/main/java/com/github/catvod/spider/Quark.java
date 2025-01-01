package com.github.catvod.spider;

import android.content.Context;
import android.net.Uri;
import android.util.Log;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.bean.quark.Item;
import com.github.catvod.bean.quark.QuarkData;
import com.github.catvod.crawler.Spider;
import com.github.catvod.quark.API;
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

public class Quark extends Spider {

    public static final Pattern pattern = Pattern.compile("(?:https://pan.quark.cn)/s/([^/#?]+)(/([^/#?]+))?(#([^/]+))?");

    private static final String TAG = Quark.class.getSimpleName();
    
    private JsonObject exts;
    private List<Class> classes;

    @Override
    public void init(Context context) {
        API.get().setCookie("");
    }

    @Override
    public void init(Context context, String extend) {
        try {
            if (extend.startsWith("http")) {
                exts = Json.safeObject(OkHttpUtil.string(extend));
            } else {
                exts = Json.safeObject(extend);
            }
            API.get().setCookie(exts.get("quarkCookie").getAsString());
        } catch (Exception e) {
            API.get().setCookie("");
        }
    }

    @Override
    public String homeContent(boolean filter) throws Exception {
        classes = Class.arrayFrom(exts.getAsJsonArray("quarkClasses").toString());
        return Result.get().classes(classes).string();
    }

    @Override
    public String homeVideoContent() throws Exception {
        Log.d(TAG, new Gson().toJson(classes));
        String content =  categoryContent(classes.get(0).getTypeId(),"1",false,new HashMap<>());
        Result result = Result.objectFrom(content);
        return content;
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        Log.d(TAG, tid + " pg:" + pg);
        String[] names = tid.split(",");
        String name = names.length > 1 ? names[1] : "";
        String url = names[0];
        Matcher matcher = pattern.matcher(url);
        if (!matcher.find()) return "";
        String pwdId = matcher.group(1);
        String pdirFid = matcher.groupCount() >= 3 ? matcher.group(3) != null ? matcher.group(3):"" : "";
        String sharePwd = matcher.groupCount() >= 5 ? matcher.group(5) != null ? matcher.group(5):"" : "";
        API.get().setPwdId(pwdId,sharePwd);
        Uri.Builder builder = Uri.parse(API.get().getApi()+"/1/clouddrive/share/sharepage/detail").buildUpon();
        builder.appendQueryParameter("pr", API.get().getPr());
        builder.appendQueryParameter("fr", "pc");
        builder.appendQueryParameter("pwd_id", pwdId);
        builder.appendQueryParameter("stoken",API.get().getShareToken());
        builder.appendQueryParameter("pdir_fid", pdirFid);
        builder.appendQueryParameter("force", "0");
        builder.appendQueryParameter("_page", pg);
        builder.appendQueryParameter("_size", "50");
        builder.appendQueryParameter("_fetch_banner", "1");
        builder.appendQueryParameter("_fetch_share", "1");
        builder.appendQueryParameter("_fetch_total", "1");
        builder.appendQueryParameter("_sort", "file_type:asc,file_name:asc");
        Log.d(TAG, builder.toString());
        String json = OkHttpUtil.string(builder.toString(), API.get().getHeader());
        Log.d(TAG, json);
        List<Vod> list = new ArrayList<>();
        QuarkData quarkData = QuarkData.objectFrom(json);
        Item item = quarkData.getData();
        for (Item item1:item.getItems()) {
            if (item1.isDir()) {
                name = item1.getName();
            }
            Vod vod = new Vod();
            vod.setVodName(item1.getName());
            String fileId = item1.isDir()?item1.getFileId():item1.getParentFileId();
            vod.setVodId("https://pan.quark.cn/s/"+pwdId+"/"+fileId+"#"+sharePwd+","+name);
            vod.setVodTag(item1.isDir()?"folder":"file");
            vod.setVodPic(item1.isDir()?"https://image.quark.cn/s/uae/g/3o/broccoli/resource/202204/c93d8a00-b638-11ec-ab3a-618c07d1aa2d.png":item1.getThumbnail());
            list.add(vod);
        }
        return Result.get().vod(list).page(Integer.parseInt(pg),list.size(),quarkData.getMetadata().getTotal(),100).string();
    }

    @Override
    public String detailContent(List<String> ids) throws Exception {
        Log.d(TAG, ids.get(0));
        String tid = ids.get(0);
        String[] names = tid.split(",");
        String url = names[0];
        Matcher matcher = pattern.matcher(url);
        if (!matcher.find()) return "";
        String pwdId = matcher.group(1);
        String pdirFid = matcher.groupCount() >= 3 ? matcher.group(3) != null ? matcher.group(3):"" : "";
        String sharePwd = matcher.groupCount() >= 5 ? matcher.group(5) != null ? matcher.group(5):"" : "";
        API.get().setPwdId(pwdId,sharePwd);
        return Result.string(API.get().getVod(ids.get(0), pdirFid));
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
        Log.d(TAG,id+" flag:" + flag);
        id = id.trim();
        String[] pwdIds = id.split(",");
        id = pwdIds[1];
        API.get().setStoken(pwdIds[0]);
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
//        OkHttpUtil.get(OkHttpUtil.defaultClient(),url,null,API.get().getPlayHeader(),callBack);
//        callBack.getResult();
        return Result.get().url(url).subs(API.get().getSub(ids)).header(API.get().getPlayHeader()).parse(0).string();
    }

    public static Object[] vod(Map<String, String> params) {
        String type = params.get("type");
        if (type.equals("sub")) return API.get().proxySub(params);
        return null;
    }
}
