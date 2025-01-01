package com.github.catvod.spider;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

import com.github.catvod.bean.Result;
import com.github.catvod.bean.Sub;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.net.OkHttp;
import com.github.catvod.utils.Image;
import com.github.catvod.utils.Json;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.Util;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

public class Push extends Spider {

    private final String TAG = Push.class.getSimpleName();

    private static final Pattern AliPLink = Pattern.compile("(https://www.ali(pan|yundrive).com/s/[^\"]+)");

    private static final Pattern QuarkPLink = Pattern.compile("(https://pan.quark.cn/s/[^\"]+)");
    private static final Pattern UcPLink = Pattern.compile("(https://drive.uc.cn/s/[^\"]+)");
    private Quark quark;
    private Ali ali;
    private UC uc;

    @Override
    public void init(Context context) {
        init(context, "");
    }

    @Override
    public void init(Context context, String extend) {
        quark = new Quark();
        ali = new Ali();
        uc  = new UC();
        try {
            quark.init(context, extend);
            ali.init(context, extend);
            uc.init(context, extend);
        } catch (Exception e) {
            Log.d(TAG,"初始化阿里、夸克、uc网盘失败");
            quark.init(context);
            ali.init(context);
            uc.init(context);
        }
    }

    @Override
    public String detailContent(List<String> ids) throws Exception {
        return Result.string(vod(ids.get(0)));
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
        Log.d(TAG,"推送播放的地址是"+ id);
        if (id.startsWith("http") && id.contains("***")) id = id.replace("***", "#");
        if (flag.equals("直連")) return Result.get().url(id).subs(getSubs(id)).string();
        if (flag.equals("解析")) return Result.get().parse().jx().url(id).string();
        if (flag.equals("嗅探")) return Result.get().parse().url(id).string();
        if (flag.equals("迅雷")) return Result.get().url(id).string();
        if (flag.contains("夸克雲盤"))  return quark.playerContent(flag, id, vipFlags);
        if (flag.contains("UC雲盤"))  return uc.playerContent(flag, id, vipFlags);
        if (flag.contains("阿里雲盤"))  return ali.playerContent(flag, id, vipFlags);
        if (Misc.isVip(id)) return Result.get().parse().jx().url(id).string();
        if (Misc.isVideoFormat(id)) return Result.get().url(id).subs(getSubs(id)).string();
        return Result.get().parse().url(id).string();
    }

    private Vod vod(String url) throws Exception {
        Log.d(TAG,"推送的地址是"+ url);
        Vod vod = new Vod();
        vod.setVodId(url);
        vod.setVodPic(Image.PUSH);
        vod.setTypeName("FongMi");

        vod.setVodName(url.startsWith("file://") ? new File(url).getName() : url);
        if (url.startsWith("http") && url.contains("#")) url = url.replace("#", "***");
        if (Util.isThunder(url)) {
            vod.setVodPlayUrl(url);
            vod.setVodPlayFrom("迅雷");
        }  else if(QuarkPLink.matcher(url).find()) {
            url = url.replace("***", "#");
            Log.d(TAG,"推送夸克成功" + url);
            String detailContent = quark.detailContent(Arrays.asList(url));
            Result detail = new Gson().fromJson(detailContent, Result.class);
            if (!detail.getList().isEmpty()) {
                vod = detail.getList().get(0);
            }
        } else if(UcPLink.matcher(url).find()) {
            url = url.replace("***", "#");
            Log.d(TAG,"推送UC成功" + url);
            String detailContent = uc.detailContent(Arrays.asList(url));
            Result detail = new Gson().fromJson(detailContent, Result.class);
            if (!detail.getList().isEmpty()) {
                vod = detail.getList().get(0);
            }
        } else if(AliPLink.matcher(url).find()) {
            url = url.replace("***", "#");
            Log.d(TAG,"推送阿里云成功" + url);
            String detailContent = ali.detailContent(Arrays.asList(url));
            Result detail = new Gson().fromJson(detailContent, Result.class);
            if (!detail.getList().isEmpty()) {
                vod = detail.getList().get(0);
            }
        } else if (StringUtil.isJson(url)) {
            //海阔推送
            JsonObject object = Json.safeObject(url);
            vod.setVodContent(object.get("content").getAsString());
            vod.setVodActor(object.get("actor").getAsString());
            vod.setVodDirector(object.get("director").getAsString());
            vod.setVodName(object.get("name").getAsString());
            vod.setTypeName("海阔");
            vod.setVodPlayFrom(object.get("from").getAsString());
            vod.setVodPlayUrl(object.get("url").getAsString());
            return vod;
        } else if (url.contains("$")) {
            vod.setVodPlayFrom("直連");
            vod.setVodPlayUrl(TextUtils.join("#", url.split("\n")));
        } else {
            vod.setVodPlayUrl(TextUtils.join("$$$", Arrays.asList(url, url, url)));
            vod.setVodPlayFrom(TextUtils.join("$$$", Arrays.asList("直連", "嗅探", "解析")));
        }
        return vod;
    }

    private List<Sub> getSubs(String url) {
        List<Sub> subs = new ArrayList<>();
        if (url.startsWith("file://")) setFileSub(url, subs);
        if (url.startsWith("http://")) setHttpSub(url, subs);
        return subs;
    }

    private void setHttpSub(String url, List<Sub> subs) {
        List<String> vodTypes = Arrays.asList("mp4", "mkv");
        List<String> subTypes = Arrays.asList("srt", "ass");
        if (!vodTypes.contains(Util.getExt(url))) return;
        for (String ext : subTypes) detectSub(url, ext, subs);
    }

    private void detectSub(String url, String ext, List<Sub> subs) {
        url = Util.removeExt(url).concat(".").concat(ext);
        if (OkHttp.string(url).length() < 100) return;
        String name = Uri.parse(url).getLastPathSegment();
        subs.add(Sub.create().name(name).ext(ext).url(url));
    }

    private void setFileSub(String url, List<Sub> subs) {
        File file = new File(url.replace("file://", ""));
        if (file.getParentFile() == null) return;
        for (File f : file.getParentFile().listFiles()) {
            String ext = Util.getExt(f.getName());
            if (Util.isSub(ext)) subs.add(Sub.create().name(Util.removeExt(f.getName())).ext(ext).url("file://" + f.getAbsolutePath()));
        }
    }
}