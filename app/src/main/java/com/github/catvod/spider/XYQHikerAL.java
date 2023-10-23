package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.ali.API;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.SpiderDebug;
import com.google.gson.Gson;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cn.hutool.core.util.StrUtil;

public class XYQHikerAL extends XYQHiker {

    public static final Pattern pattern = Pattern.compile("www.aliyundrive.com/s/([^/]+)(/folder/([^/]+))?");

    @Override
    public void init(Context context, String extend) {
        super.init(context, extend);
        API.get().setRefreshToken("0ac3580008b64f20bc72877bba446e6d");
    }

    @Override
    public String detailContent(List<String> ids) throws Exception {
        String detailContent = super.detailContent(ids);
        if (StrUtil.isEmpty(detailContent)) {
            return detailContent;
        }
        Result detail = new Gson().fromJson(detailContent, Result.class);
        if (!detail.getList().isEmpty()) {
            Vod vod = detail.getList().get(0);
            String vodPlayUrl = vod.getVodPlayUrl();
            if (StrUtil.isNotEmpty(vodPlayUrl)) {
                String[] vodPlayUrls = vodPlayUrl.split("#");
                String url = vodPlayUrls[vodPlayUrls.length-1].split("\\$")[1];
                Matcher matcher = pattern.matcher(url);
                if (!matcher.find()) return detailContent;
                String shareId = matcher.group(1);
                String fileId = matcher.groupCount() == 3 ? matcher.group(3) : "";
                API.get().setShareId(shareId);
                Vod vod1 = API.get().getVod(url, fileId);
                vod.setVodPlayFrom(vod1.getVodPlayFrom());
                vod.setVodPlayUrl(vod1.getVodPlayUrl());
                return detail.string();
            }
        }
        return detailContent;
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        API.get().checkAccessToken();
        String[] ids = id.split("\\+");
        String url = flag.equals("原畫") ? API.get().getDownloadUrl(ids[0]) : API.get().getPreviewUrl(ids[0], flag);
        return Result.get().url(url).subs(API.get().getSub(ids)).header(API.get().getHeader()).parse(0).string();
    }
}
