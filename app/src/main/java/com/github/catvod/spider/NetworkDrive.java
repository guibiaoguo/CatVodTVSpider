package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;

import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class NetworkDrive extends Spider {

    private final String TAG = NetworkDrive.class.getSimpleName();

    public static final Pattern AliPLink = Pattern.compile("(https://www.ali(pan|yundrive).com/s/[^\"\'<]+)");

    public static final Pattern QuarkPLink = Pattern.compile("(https://pan.quark.cn/s/[^\"\'<]+)");
    public static final Pattern UcPLink = Pattern.compile("(https://drive.uc.cn/s/[^\"\'<]+)");

    private Quark quark;
    private Ali ali;
    private UC uc;

    private List<String> idList;
    @Override
    public void init(Context context) {
        init(context,"");
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
            Log.d(TAG,"初始化阿里、夸克、uc网盘失败,调用阿里、夸克、uc网盘自身");
            quark.init(context);
            ali.init(context);
            uc.init(context);
        }
        idList = new ArrayList<>();
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        Matcher matcher = AliPLink.matcher(tid);
        if (matcher.find()) {
            return ali.categoryContent(tid, pg, filter, extend);
        }
        matcher = QuarkPLink.matcher(tid);
        if (matcher.find()) {
            return quark.categoryContent(tid, pg, filter, extend);
        }
        matcher = UcPLink.matcher(tid);
        if (matcher.find()) {
            return uc.categoryContent(tid, pg, filter, extend);
        }
        return Result.get().string();
    }
    @Override
    public String detailContent(List<String> ids) throws Exception {
        String content = ids.get(0);
        Vod item = new Vod();
        Matcher matcher = AliPLink.matcher(content);
        List<String> vodPlayFroms = new ArrayList<>();
        List<String> vodPlayUrls = new ArrayList<>();
        while (matcher.find()) {
            String id = matcher.group(1);
            if (idList.contains(id)) {
                continue;
            }
            try {
                String detail = ali.detailContent(Arrays.asList(id));
                Result result = Result.objectFrom(detail);
                vodPlayFroms.add(result.getList().get(0).getVodPlayFrom());
                vodPlayUrls.add(result.getList().get(0).getVodPlayUrl());
            } catch (Exception e) {
                Log.d(TAG,"阿里分享不存在" + id);
            }
            idList.add(id);
        }
        matcher = QuarkPLink.matcher(content);
        while (matcher.find()) {
            String id = matcher.group(1);
            if (idList.contains(id)) {
                continue;
            }
            try {
                String detail = quark.detailContent(Arrays.asList(id));
                Result result = Result.objectFrom(detail);
                vodPlayFroms.add(result.getList().get(0).getVodPlayFrom());
                vodPlayUrls.add(result.getList().get(0).getVodPlayUrl());
            } catch (Exception e) {
                Log.d(TAG,"夸克分享不存在" + id);
            }
            idList.add(id);
        }
        matcher = UcPLink.matcher(content);
        while (matcher.find()) {
            String id = matcher.group(1);
            if (idList.contains(id)) {
                continue;
            }
            try {
                String detail = uc.detailContent(Arrays.asList(id));
                Result result = Result.objectFrom(detail);
                vodPlayFroms.add(result.getList().get(0).getVodPlayFrom());
                vodPlayUrls.add(result.getList().get(0).getVodPlayUrl());
            } catch (Exception e) {
                Log.d(TAG,"UC分享不存在" + id);
            }
            idList.add(id);
        }
        item.setVodPlayFrom(TextUtils.join("$$$",vodPlayFroms));
        item.setVodPlayUrl(TextUtils.join("$$$",vodPlayUrls));
        return Result.string(item);
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
        if (flag.contains("夸克雲盤"))  return quark.playerContent(flag, id, vipFlags);
        if (flag.contains("UC雲盤"))  return uc.playerContent(flag, id, vipFlags);
        if (flag.contains("阿里雲盤"))  return ali.playerContent(flag, id, vipFlags);
        return Result.get().parse().url(id).string();
    }

    public boolean isDrive(String content) {
        return AliPLink.matcher(content).find() || QuarkPLink.matcher(content).find() || UcPLink.matcher(content).find();
    }
}
