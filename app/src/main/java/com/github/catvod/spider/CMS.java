package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Filter;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.parser.Parser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class CMS extends Spider {

    private static String api;
    private static String type;

    @Override
    public void init(Context context, String extend) {
        String[] exts = extend.split("\\$\\$");
        api = exts[0];
        type = exts[1];
        super.init(context, extend);
    }

    /**
     * 首页数据内容
     *
     * @param filter 是否开启筛选
     * @return
     */
    @Override
    public String homeContent(boolean filter) throws Exception {
        List<Vod> list = new ArrayList<>();
        List<Class> classes = new ArrayList<>();
        LinkedHashMap<String, List<Filter>> filters = null;
        String content = OkHttpUtil.string(api);
        SpiderDebug.log(content);
        if (type.equals("0")) {
            Element element = Jsoup.parse(content, Parser.xmlParser());
            for (Element ele : element.selectFirst("class").children()) {
                classes.add(new Class(ele.attr("id"),ele.text()));
            }
            for (Element video : element.select("video")) {
                String name = video.select("name").text();
                String img = video.attr("img");
                String remark = video.select("note").text();
                String id = video.select("id").text();
                list.add(new Vod(id, name, img, remark));
            }
            return Result.string(classes,list,filters);
        } else if (type.equals("1")) {
            return Result.objectFrom(content).string();
        }
        return Result.string(classes,list,filters);
    }

    /**
     * 首页最近更新数据 如果上面的homeContent中不包含首页最近更新视频的数据 可以使用这个接口返回
     *
     * @return
     */
    @Override
    public String homeVideoContent() throws Exception {
        List<Vod> list = new ArrayList<>();
        Map<String,String> params = new HashMap<>();
        if (type.equals("0")) {
            params.put("ac","videolist");
        } else if (type.equals("1")) {
            params.put("ac","detail");
        }
        params.put("ids","");
        String url = api;
        if (url.contains("?")) {
            url = url + "&" + TextUtils.join("&",params.entrySet());
        } else {
            url = url + "?" + TextUtils.join("&",params.entrySet());
        }
        String content = OkHttpUtil.string(url);
        SpiderDebug.log(content);
        if (type.equals("0")) {
            Element element = Jsoup.parse(content, Parser.xmlParser());
            for (Element video : element.select("video")) {
                String name = video.select("name").text();
                String img = video.select("pic").text();
                String remark = video.select("note").text();
                String id = video.select("id").text();
                list.add(new Vod(id, name, img, remark));
            }
            return Result.get().vod(list).page().string();
        } else if (type.equals("1")) {
            return Result.objectFrom(content).string();
        }
        return Result.string(list);
    }

    /**
     * 分类数据
     *
     * @param tid
     * @param pg
     * @param filter
     * @param extend
     * @return
     */
    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        List<Vod> list = new ArrayList<>();
        Map<String,String> params = new HashMap<>();
        if (type.equals("0")) {
            params.put("ac","videolist");
        } else if (type.equals("1")) {
            params.put("ac","detail");
        }
        params.put("t",tid);
        params.put("pg",pg);
        String url = api;
        if (url.contains("?")) {
            url = url + "&" + TextUtils.join("&",params.entrySet());
        } else {
            url = url + "?" + TextUtils.join("&",params.entrySet());
        }
        int pagesize = 50;
        int pagecount = 1;
        String content = OkHttpUtil.string(url);
        SpiderDebug.log(content);
        if (type.equals("0")) {
            Element element = Jsoup.parse(content, Parser.xmlParser());
            pagesize = Integer.parseInt(element.select("list").attr("pagesize"));
            pagecount = Integer.parseInt(element.select("list").attr("pagecount"));
            for (Element video : element.select("video")) {
                String name = video.select("name").text();
                String img = video.select("pic").text();
                String remark = video.select("note").text();
                String id = video.select("id").text();
                list.add(new Vod(id, name, img, remark));
            }
            return Result.get().vod(list).page(Integer.parseInt(pg),pagecount,pagesize,pagecount<=1?list.size():pagesize*pagecount).string();
        } else if (type.equals("1")) {
            return Result.objectFrom(content).string();
        }
        return Result.get().vod(list).page().string();
    }

    /**
     * 详情数据
     *
     * @param ids
     * @return
     */
    @Override
    public String detailContent(List<String> ids) throws Exception {
        Map<String,String> params = new HashMap<>();
        if (type.equals("0")) {
            params.put("ac","videolist");
        } else if (type.equals("1")) {
            params.put("ac","detail");
        }
        params.put("ids",ids.get(0));
        String url = api;
        if (url.contains("?")) {
            url = url + "&" + TextUtils.join("&",params.entrySet());
        } else {
            url = url + "?" + TextUtils.join("&",params.entrySet());
        }
        String content = OkHttpUtil.string(url);
        SpiderDebug.log(content);
        Vod vod = new Vod();
        if (type.equals("0")) {
            Element element = Jsoup.parse(content, Parser.xmlParser());
            Element video = element.selectFirst("video");
            String name = video.select("name").text();
            String img = video.select("pic").text();
            String remark = video.select("note").text();
            String id = video.select("id").text();
            String desc = video.select("des").text();
            String type = video.select("type").text();
            String area = video.select("area").text();
            String year = video.select("year").text();
            String director = video.select("director").text();
            String actor = video.select("actor").text();
            Map<String, String> sites = new LinkedHashMap<>();
            for (Element dd : video.select("dd")) {
                sites.put(dd.attr("flag"),dd.text());
            }
            if (sites.size() > 0) {
                vod.setVodPlayFrom(TextUtils.join("$$$", sites.keySet()));
                vod.setVodPlayUrl(TextUtils.join("$$$", sites.values()));
            }
            return Result.string(vod);
        } else if (type.equals("1")) {
            return Result.objectFrom(content).string();
        }
        return Result.string(vod);
    }

    /**
     * 搜索数据内容
     *
     * @param key
     * @param quick
     * @return
     */
    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        List<Vod> list = new ArrayList<>();
        Map<String,String> params = new HashMap<>();
        if (type.equals("1")) {
            params.put("ac","detail");
        }
        params.put("wd",key);
        String url = api;
        if (url.contains("?")) {
            url = url + "&" + TextUtils.join("&",params.entrySet());
        } else {
            url = url + "?" + TextUtils.join("&",params.entrySet());
        }
        String content = OkHttpUtil.string(url);
        SpiderDebug.log(content);
        if (type.equals("0")) {
            Element element = Jsoup.parse(content, Parser.xmlParser());
            for (Element video : element.select("video")) {
                String name = video.select("name").text();
                String img = video.select("pic").text();
                String remark = video.select("note").text();
                String id = video.select("id").text();
                list.add(new Vod(id, name, img, remark));
            }
            return Result.get().vod(list).page().string();
        } else if (type.equals("1")) {
            return Result.objectFrom(content).string();
        }
        return Result.string(list);
    }

    /**
     * 播放信息
     *
     * @param flag
     * @param id
     * @param vipFlags
     * @return
     */
    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
        if (isVideoFormat(id)) {
            return Result.get().url(id).string();
        }
        if (Misc.isVip(id)) {
            return Result.get().url(id).jx().string();
        }
        return Result.get().url(id).parse().string();
    }

    private String[] videoFormatList = new String[]{".m3u8", ".mp4", ".mpeg", ".flv"};

    @Override
    public boolean isVideoFormat(String url) {
        url = url.toLowerCase();
        if (url.contains("=http") || url.contains("=https") || url.contains("=https%3a%2f") || url.contains("=http%3a%2f")) {
            return false;
        }
        for (String format : videoFormatList) {
            if (url.contains(format)) {
                return true;
            }
        }
        return false;
    }
}
