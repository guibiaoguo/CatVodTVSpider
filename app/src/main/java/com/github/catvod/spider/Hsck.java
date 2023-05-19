package com.github.catvod.spider;

import android.content.Context;
import android.net.Uri;

import com.github.catvod.parser.RuleAnalyzer;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 黄色仓库
 */
public class Hsck extends Spider {

    private static final String siteUrl = "https://hsck.us";
    private static final String siteHost = "hsck.us";

    protected JSONObject playerConfig = new JSONObject();
    protected JSONObject filterConfig;
    protected String domain;
    protected String ext;

    @Override
    public void init(Context context) {
        super.init(context);
        try {
            domain = getDomain();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }

    @Override
    public void init(Context context, String extend) {
        super.init(context, extend);
        try {
            domain = getDomain();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        this.ext = extend;
    }

    protected String getDomain() {
        try {
            String ext = "https://sanic.guibiaoguo.ml/proxy/https://laotou.fqxsw.top:8899/?u=" + siteUrl + "&p=/";
            Map<String, List<String>> respHeaders = new TreeMap<>();
            String content = OkHttpUtil.stringNoRedirect(ext, getHeaders(ext), respHeaders);
            String redLoc = OkHttpUtil.getRedirectLocation(respHeaders);
            return "https://sanic.guibiaoguo.ml/proxy/"+ URLDecoder.decode(redLoc,"utf-8");
        } catch (Exception e) {
            return siteUrl;
        }
    }

    protected HashMap<String, String> getHeaders(String url) {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        return headers;
    }

    /**
     * 获取分类数据 + 首页最近更新视频列表数据
     *
     * @param filter 是否开启筛选 关联的是 软件设置中 首页数据源里的筛选开关
     * @return
     */
    @Override
    public String homeContent(boolean filter) {
        try {
            String url = domain;
            String srr = OkHttpUtil.string(url,getHeaders(url));
            Document doc = Jsoup.parse(srr);
            JSONArray classes = new JSONArray();
            for (Element cls : doc.select("ul[class='stui-header__menu clearfix']>li:gt(0)")) {
                JSONObject c = new JSONObject();
                String id = cls.selectFirst("a").attr("href");
                Pattern pattern = Pattern.compile("/vodtype/(\\w+).html");
                Matcher matcher = pattern.matcher(id);
                if(matcher.find()) {
                    c.put("type_name", cls.selectFirst("a").text());
                    c.put("type_id", matcher.group(1));
                    classes.put(c);
                }
            }
            JSONObject result = new JSONObject();
            if (filter) {
                result.put("filters", filterConfig);
            }
            result.put("class", classes);
            try {
                // 取首页推荐视频列表
                Elements list = doc.select(".stui-vodlist>li");
                JSONArray videos = new JSONArray();
                for (int i = 0; i < list.size(); i++) {
                    Element vod = list.get(i);
                    String title = vod.selectFirst("h4>a").text();
                    String cover = vod.selectFirst("a").attr("data-original");
                    cover = fixUrl(url, cover);
                    String remark = vod.selectFirst(".stui-vodlist__thumb").text();
                    String id = vod.selectFirst("h4>a").attr("href");
                    JSONObject v = new JSONObject();
                    v.put("vod_id", id + "#" + cover);
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
            String url = domain;
            String srr = OkHttpUtil.string(url,getHeaders(url));
            Document doc = Jsoup.parse(srr);
            JSONObject result = new JSONObject();
            try {
                // 取首页推荐视频列表
                Elements list = doc.select(".stui-vodlist>li");
                JSONArray videos = new JSONArray();
                for (int i = 0; i < list.size(); i++) {
                    Element vod = list.get(i);
                    String title = vod.selectFirst("h4>a").text();
                    String cover = vod.selectFirst("a").attr("data-original");
                    cover = fixUrl(url, cover);
                    String remark = vod.selectFirst(".stui-vodlist__thumb").text();
                    String id = vod.selectFirst("h4>a").attr("href");
                    JSONObject v = new JSONObject();
                    v.put("vod_id", id + "#" + cover);
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

    /**
     * 获取分类信息数据
     *
     * @param tid    分类id
     * @param pg     页数
     * @param filter 同homeContent方法中的filter
     * @param extend 筛选参数{k:v, k1:v1}
     * @return
     */
    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        try {
            String url = domain + "/vodtype/" + tid + "-" + pg + ".html";
            if (extend != null) {
                Set<String> keys = extend.keySet();
                for (String key : keys) {
                    String val = extend.get(key).trim();
                    if (val.length() == 0)
                        continue;
                    url += "&" + key + "=" + URLEncoder.encode(val);
                }
            }
            String srr = OkHttpUtil.string(url, getHeaders(url));
            JSONObject result = new JSONObject();
            try {
                Document doc = Jsoup.parse(srr);
                // 取首页推荐视频列表
                Elements list = doc.select(".stui-vodlist>li");
                JSONArray videos = new JSONArray();
                for (int i = 0; i < list.size(); i++) {
                    Element vod = list.get(i);
                    String title = vod.selectFirst("h4>a").text();
                    String cover = vod.selectFirst("a").attr("data-original");
                    cover = fixUrl(url, cover);
                    String remark = vod.selectFirst(".stui-vodlist__thumb").text();
                    String id = vod.selectFirst("h4>a").attr("href");
                    JSONObject v = new JSONObject();
                    v.put("vod_id", id + "#" + cover);
                    v.put("vod_name", title);
                    v.put("vod_pic", cover);
                    v.put("vod_remarks", remark);
                    videos.put(v);
                }
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

    public String getDirector(String key) {
        Map<String, String> director = new HashMap();
        director.put("91", "果冻传媒");
        director.put("MD", "麻豆传媒");
        director.put("MM", "麻豆传媒");
        director.put("TZ", "麻豆传媒");
        director.put("OD", "麻豆传媒");
        director.put("LA", "麻豆传媒");
        director.put("XK", "星空传媒");
        director.put("PD", "蜜桃传媒");
        director.put("TM", "天美影业");
        director.put("JD", "精东影业");
        return director.get(key) == "" ? "国产自拍" : director.get(key);
    }

    @Override
    public String detailContent(List<String> ids) {
        try {
            String url = domain + ids.get(0).split("#")[0];
            String srr = OkHttpUtil.string(url, getHeaders(url));
            Document doc = Jsoup.parse(srr);
            String title = doc.selectFirst(".stui-warp-content h3").text();
            Pattern pattern = Pattern.compile("([a-zA-z-0-9_]*)");
            Matcher matcher = pattern.matcher(title);
            String key = "";
            if (matcher.find()) {
                key = matcher.group(1);
                key = key.replaceAll("_","-");
            }
            String srr_key = OkHttpUtil.string(ext + "/" + key, getHeaders(ext));
            Document doc_key = Jsoup.parse(srr_key);
            Element movie = doc_key.selectFirst(".movie");
            JSONObject vodList = new JSONObject();
            vodList.put("vod_id", ids.get(0).split("#")[0]);
            vodList.put("vod_name", title);
            if (movie == null) {
                vodList.put("vod_pic", fixUrl(url, ids.get(0).split("#")[1]));
                vodList.put("type_name", "国产");
                vodList.put("vod_year", "");
                vodList.put("vod_area", "中国");
                vodList.put("vod_remarks", "无码");
                vodList.put("vod_actor", "");
                vodList.put("vod_director", key.equals("") ? "国产自拍" : getDirector(key.substring(0, 2)));
                vodList.put("vod_content", "");
            } else {
                vodList.put("vod_pic", fixUrl(url, ext + movie.selectFirst(".bigImage").attr("href")));
                Element info = movie.selectFirst(".info");
                vodList.put("type_name", info.selectFirst("p.header~p").text());
                vodList.put("vod_year", info.select("p").get(1).text().replace("發行日期:",""));
                vodList.put("vod_area", "日本");
                vodList.put("vod_remarks", info.select("p").get(2).text());
                vodList.put("vod_actor", info.selectFirst(".star-show~ul")!=null?info.selectFirst(".star-show~ul").text():"");
                vodList.put("vod_director", info.select("p").get(3).text().replace("導演:",""));
                vodList.put("vod_content", info.text());
            }

            String scContent = doc.selectFirst(".stui-player__video>script").html();
            List<String> playFlags = new ArrayList<>();
            List<String> plays = new ArrayList<>();
            if (scContent.startsWith("var player_")) {
                int start = scContent.indexOf('{');
                int end = scContent.lastIndexOf('}') + 1;
                String json = scContent.substring(start, end);
                JSONObject player = new JSONObject(json);
                String videoUrlTmp = player.optString("url");
                if (player.has("encrypt")) {
                    int encrypt = player.getInt("encrypt");
                    if (encrypt == 1) {
                        videoUrlTmp = URLDecoder.decode(videoUrlTmp,"utf-8");
                    } else if (encrypt == 2) {
                        videoUrlTmp = new String(Base64.decode(videoUrlTmp, Base64.DEFAULT));
                        videoUrlTmp = URLDecoder.decode(videoUrlTmp,"utf-8");
                    }
                }
                plays.add("1080P$" + videoUrlTmp);
            }
            vodList.put("vod_play_from", "hsck");
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

    public String join(CharSequence delimiter, Iterable tokens) {
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
                result.put("url", id);
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
        try {
            String url = domain + "/vodsearch/" + key + "----------1---.html";
            JSONArray videos = new JSONArray();
            RuleAnalyzer ruleAnalyzes = new RuleAnalyzer("", true);
            //设置平衡组为代码平衡
            String[] rules = StringUtils.split("1:5",":");
            int start = 1;
            int end = 1;
            int step = 1;
            if (rules.length >= 1) {
                if (StringUtils.isNotEmpty(rules[0]))
                    start = Integer.parseInt(rules[0]);
            }
            if (rules.length >= 2) {
                if (StringUtils.isNotEmpty(rules[1]))
                    end = Integer.parseInt(rules[1]);
            }
            if (rules.length >= 3) {
                if (StringUtils.isNotEmpty(rules[2]))
                    step = Integer.parseInt(rules[2]);
            }
            for (int i = start; i <= end; i = i + step) {
                url = url.replace("{scPg}", i + "");
                try {
                    String s = OkHttpUtil.string(url,getHeaders(url));
                    Document doc = Jsoup.parse(s);
                    Elements elements = doc.select(".stui-vodlist>li");
                    for (Element element : elements) {
                        JSONObject v = new JSONObject();
                        v.put("vod_id", element.selectFirst("a").attr("href") + "#" + element.selectFirst("a").attr("data-original"));
                        v.put("vod_name", element.selectFirst("a").attr("title"));
                        v.put("vod_pic", element.selectFirst("a").attr("data-original"));
                        v.put("vod_remarks", element.selectFirst(".pic-text").text());
                        videos.put(v);
                    }
                } catch (Exception e) {
                    SpiderDebug.log(e);
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

