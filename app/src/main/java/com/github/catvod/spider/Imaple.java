package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Filter;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.Trans;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Demo for self study
 * <p>
 * Source from Author: CatVod
 */

public class Imaple extends Spider {

    private static final String siteUrl = "https://imaple8.co";

    protected JSONObject playerConfig;
    protected String filterConfig;

    protected Pattern regexCategory = Pattern.compile("/type/(\\S+).html");
    protected Pattern regexVid = Pattern.compile("/vod/(\\d+).html");
    protected Pattern regexPlay = Pattern.compile("/play/(\\d+)-(\\d+)-(\\d+).html");
    protected Pattern regexPage = Pattern.compile("\\S+/page/(\\d+)\\S+");
    private Pattern regexDetail = Pattern.compile("(.*)[:|：](.*)");

    @Override
    public void init(Context context) {
        super.init(context);
        try {
            playerConfig = new JSONObject("{\"kbm3u8\":{\"sh\":\"秒播雲\",\"sn\":0,\"pu\":\"\",\"or\":999},\"bjm3u8\":{\"sh\":\"八戒雲\",\"sn\":0,\"pu\":\"\",\"or\":999},\"605m3u8\":{\"sh\":\"光速雲\",\"sn\":0,\"pu\":\"\",\"or\":999},\"mlm3u8\":{\"sh\":\"藍光線一\",\"sn\":0,\"pu\":\"\",\"or\":999},\"alizy\":{\"sh\":\"藍光線三\",\"sn\":1,\"pu\":\"https://player.imaple.tv/player/?url=\",\"or\":999},\"dplayer\":{\"sh\":\"動漫專線\",\"sn\":1,\"pu\":\"https://player.imaple.tv/player/?url=\",\"or\":999},\"qdyun\":{\"sh\":\"驱动云\",\"sn\":0,\"pu\":\"\",\"or\":999},\"wjm3u8\":{\"sh\":\"理想雲\",\"sn\":0,\"pu\":\"\",\"or\":999},\"fanqie\":{\"sh\":\"番茄资源\",\"sn\":1,\"pu\":\"https://player.imaple.tv/player/?url=\",\"or\":999},\"youku\":{\"sh\":\"奇藝雲\",\"sn\":1,\"pu\":\"https://player.imaple.tv/player/?url=\",\"or\":999},\"qq\":{\"sh\":\"騰訊雲\",\"sn\":1,\"pu\":\"https://player.imaple.tv/player/?url=\",\"or\":999},\"mgtv\":{\"sh\":\"芒果雲\",\"sn\":1,\"pu\":\"https://player.imaple.tv/player/?url=\",\"or\":999},\"sohu\":{\"sh\":\"搜狐雲\",\"sn\":1,\"pu\":\"https://player.imaple.tv/player/?url=\",\"or\":999},\"88zym3u8\":{\"sh\":\"優雅雲\",\"sn\":1,\"pu\":\"https://player.imaple.tv/player/?url=\",\"or\":999},\"bilibili\":{\"sh\":\"嗶哩雲\",\"sn\":1,\"pu\":\"https://player.imaple.tv/player/?url=\",\"or\":999},\"dbm3u8\":{\"sh\":\"急速雲\",\"sn\":0,\"pu\":\"\",\"or\":999},\"tkm3u8\":{\"sh\":\"天空雲\",\"sn\":0,\"pu\":\"\",\"or\":999}}");
            filterConfig = "{\"1\":[{\"key\":\"tid\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"動作片\",\"v\":\"6\"},{\"n\":\"喜劇片\",\"v\":\"7\"},{\"n\":\"愛情片\",\"v\":\"8\"},{\"n\":\"科幻片\",\"v\":\"9\"},{\"n\":\"恐怖片\",\"v\":\"10\"},{\"n\":\"劇情片\",\"v\":\"11\"},{\"n\":\"戰爭片\",\"v\":\"12\"},{\"n\":\"紀錄片\",\"v\":\"20\"}]},{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"大陸\",\"v\":\"大陸\"},{\"n\":\"香港\",\"v\":\"香港\"},{\"n\":\"台灣\",\"v\":\"台灣\"},{\"n\":\"美國\",\"v\":\"美國\"},{\"n\":\"法國\",\"v\":\"法國\"},{\"n\":\"英國\",\"v\":\"英國\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"韓國\",\"v\":\"韓國\"},{\"n\":\"德國\",\"v\":\"德國\"},{\"n\":\"泰國\",\"v\":\"泰國\"},{\"n\":\"印度\",\"v\":\"印度\"},{\"n\":\"意大利\",\"v\":\"意大利\"},{\"n\":\"西班牙\",\"v\":\"西班牙\"},{\"n\":\"加拿大\",\"v\":\"加拿大\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"key\":\"year\",\"name\":\"年份\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"key\":\"by\",\"name\":\"排序\",\"value\":[{\"n\":\"时间\",\"v\":\"\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"2\":[{\"key\":\"tid\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"大陸劇\",\"v\":\"13\"},{\"n\":\"港劇\",\"v\":\"14\"},{\"n\":\"台劇\",\"v\":\"15\"},{\"n\":\"日劇\",\"v\":\"16\"},{\"n\":\"韓劇\",\"v\":\"23\"},{\"n\":\"美劇\",\"v\":\"24\"},{\"n\":\"海外劇\",\"v\":\"25\"}]},{\"key\":\"year\",\"name\":\"年份\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"},{\"n\":\"2009\",\"v\":\"2009\"},{\"n\":\"2008\",\"v\":\"2008\"},{\"n\":\"2007\",\"v\":\"2007\"},{\"n\":\"2006\",\"v\":\"2006\"},{\"n\":\"2005\",\"v\":\"2005\"},{\"n\":\"2004\",\"v\":\"2004\"}]},{\"key\":\"by\",\"name\":\"排序\",\"value\":[{\"n\":\"时间\",\"v\":\"\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"3\":[{\"key\":\"tid\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"港台綜藝\",\"v\":\"29\"},{\"n\":\"日韓綜藝\",\"v\":\"30\"},{\"n\":\"大陸綜藝\",\"v\":\"31\"},{\"n\":\"歐美綜藝\",\"v\":\"32\"}]},{\"key\":\"year\",\"name\":\"年份\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"},{\"n\":\"2009\",\"v\":\"2009\"},{\"n\":\"2008\",\"v\":\"2008\"},{\"n\":\"2007\",\"v\":\"2007\"},{\"n\":\"2006\",\"v\":\"2006\"},{\"n\":\"2005\",\"v\":\"2005\"},{\"n\":\"2004\",\"v\":\"2004\"}]},{\"key\":\"by\",\"name\":\"排序\",\"value\":[{\"n\":\"时间\",\"v\":\"\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"4\":[{\"key\":\"tid\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"港台動漫\",\"v\":\"33\"},{\"n\":\"日韓動漫\",\"v\":\"34\"},{\"n\":\"大陸動漫\",\"v\":\"35\"},{\"n\":\"歐美動漫\",\"v\":\"36\"},{\"n\":\"海外動漫\",\"v\":\"37\"}]},{\"key\":\"year\",\"name\":\"年份\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"},{\"n\":\"2009\",\"v\":\"2009\"},{\"n\":\"2008\",\"v\":\"2008\"},{\"n\":\"2007\",\"v\":\"2007\"},{\"n\":\"2006\",\"v\":\"2006\"},{\"n\":\"2005\",\"v\":\"2005\"},{\"n\":\"2004\",\"v\":\"2004\"}]},{\"key\":\"by\",\"name\":\"排序\",\"value\":[{\"n\":\"时间\",\"v\":\"\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}]}";
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
    }

    /**
     * 爬虫headers
     *
     * @param url
     * @return
     */
    protected HashMap<String, String> getHeaders(String url) {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("Upgrade-Insecure-Requests", "1");
        headers.put("DNT", "1");
        headers.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        headers.put("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8");
        headers.put("Accept-Language", "zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2");
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
        List<Vod> list = new ArrayList<>();
        List<Class> classes = new ArrayList<>();
        LinkedHashMap<String, List<Filter>> filters = null;
        Document doc = Jsoup.parse(OkHttpUtil.string(siteUrl, getHeaders(siteUrl)));
        // 分类节点
        Elements elements = doc.select("ul.myui-header__menu>li>a");
        for (Element element: elements) {
            String name = element.text();
            boolean show = !filter || (name.equals("電影") || name.equals("電視劇") || name.equals("綜藝") || name.equals("動漫"));
            if (show) {
                Matcher mather = regexCategory.matcher(element.attr("href"));
                if (!mather.find())
                    continue;
                // 把分类的id和名称取出来加到列表里
                String id = mather.group(1).trim();
                classes.add(new Class(id, name));
            }
        }
        for (Element element : doc.select("li.col-lg-6 >div.myui-vodlist__box")) {
            String name = element.selectFirst(".title").text();
            String img = element.selectFirst(".myui-vodlist__thumb").attr("data-original");
            String remark = element.selectFirst("span.pic-text").text();

            Matcher matcher = regexVid.matcher(element.selectFirst(".myui-vodlist__thumb").attr("href"));
            if (!matcher.find())
                continue;
            String id = matcher.group(1);
            list.add(new Vod(id, name, img, remark));
        }
        if (filter) {
            filters = new Gson().fromJson(filterConfig, new TypeToken<LinkedHashMap<String, List<Filter>>>(){}.getType());
        }
        return Result.string(classes, list, filters);
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
        List<Vod> list = new ArrayList<>();
        String url = siteUrl + "/show/";
        if (extend != null && extend.size() > 0 && extend.containsKey("tid") && extend.get("tid").length() > 0) {
            url += extend.get("tid");
        } else {
            url += tid;
        }
        if (extend != null && extend.size() > 0) {
            for (Iterator<String> it = extend.keySet().iterator(); it.hasNext(); ) {
                String key = it.next();
                String value = extend.get(key);
                if (value.length() > 0) {
                    url += "/" + key + "/" + URLEncoder.encode(value);
                }
            }
        }
        url += "/page/" + pg + ".html";
        String html = OkHttpUtil.string(url, getHeaders(url));
        Document doc = Jsoup.parse(html);
        JSONObject result = new JSONObject();
        int pageCount = 0;
        int page = -1;

        // 取页码相关信息
        Elements pageInfo = doc.select(".myui-page li a");
        if (pageInfo.size() == 0) {
            page = Integer.parseInt(pg);
            pageCount = page;
        } else {
            for (int i = 0; i < pageInfo.size(); i++) {
                Element a = pageInfo.get(i);
                String name = a.text();
                if (page == -1 && a.hasClass("btn-warm")) {
                    Matcher matcher = regexPage.matcher(a.attr("href"));
                    if (matcher.find()) {
                        page = Integer.parseInt(matcher.group(1).trim());
                    } else {
                        page = 0;
                    }
                }
                if (name.equals("尾頁")) {
                    Matcher matcher = regexPage.matcher(a.attr("href"));
                    if (matcher.find()) {
                        pageCount = Integer.parseInt(matcher.group(1).trim());
                    } else {
                        pageCount = 0;
                    }
                    break;
                }
            }
        }
        int limit = 48;
        for (Element element : doc.select("li.col-lg-6 >div.myui-vodlist__box")) {
            String name = element.selectFirst(".title").text();
            String img = element.selectFirst(".myui-vodlist__thumb").attr("data-original");
            String remark = element.selectFirst("span.pic-text").text();

            Matcher matcher = regexVid.matcher(element.selectFirst(".myui-vodlist__thumb").attr("href"));
            if (!matcher.find())
                continue;
            String id = matcher.group(1);
            list.add(new Vod(id, name, img, remark));
        }
        limit = list.size();
        return Result.get().vod(list).page(Integer.parseInt(pg), pageCount, limit,  pageCount <= 1 ? list.size() : pageCount * limit).string();
    }

    /**
     * 视频详情信息
     *
     * @param ids 视频id
     * @return
     */
    @Override
    public String detailContent(List<String> ids) {
        // 视频详情url
        String url = siteUrl + "/vod/" + ids.get(0) + ".html";
        Document doc = Jsoup.parse(OkHttpUtil.string(url, getHeaders(url)));
        // 取基本数据
        String img = doc.selectFirst("a.myui-vodlist__thumb img").attr("data-original");
        String name = doc.selectFirst("div.myui-content__detail h1.title").text();
        String content = Jsoup.parse(doc.selectFirst("meta[name=description]").attr("content")).text();
        String type = "", area = "", year = "", remarks = "", director = "", actor = "";
        Elements span_text_muted = doc.select("div.myui-content__detail span.text-muted");
        for (int i = 0; i < span_text_muted.size(); i++) {
            Element text = span_text_muted.get(i);
            String info = text.text();
            if (info.equals("分類：")) {
                type = text.nextElementSibling().text();
            } else if (info.equals("年份：")) {
                year = text.nextElementSibling().text();
            } else if (info.equals("地區：")) {
                area = text.nextElementSibling().text();
            } else if (info.equals("更新：")) {
                remarks = text.nextElementSibling().text();
            } else if (info.equals("導演：")) {
                List<String> directors = new ArrayList<>();
                Elements aa = text.parent().select("a");
                for (int j = 0; j < aa.size(); j++) {
                    directors.add(aa.get(j).text());
                }
                director = StringUtil.join(",", directors);
            } else if (info.equals("主演：")) {
                List<String> actors = new ArrayList<>();
                Elements aa = text.parent().select("a");
                for (int j = 0; j < aa.size(); j++) {
                    actors.add(aa.get(j).text());
                }
                actor = StringUtil.join(",", actors);
            }
        }
        Vod vod = new Vod();
        vod.setVodId(ids.get(0));
        vod.setVodPic(img);
        vod.setVodYear(year);
        vod.setVodName(name);
        vod.setVodArea(area);
        vod.setVodActor(actor);
        vod.setVodRemarks(remarks);
        vod.setVodContent(content);
        vod.setVodDirector(director);
        vod.setTypeName(type);

        Map<String, String> sites = new LinkedHashMap<>();
        // 取播放列表数据
        Elements sources = doc.select("div.myui-panel__head>ul").get(0).select("li");
        Elements sourceList = doc.select("div.tab-content>div.tab-pane");
        for (int i = 0; i < sources.size(); i++) {
            Element source = sources.get(i);
            String sourceName = source.text();
            Elements playList = sourceList.get(i).select("a");
            List<String> vodItems = new ArrayList<>();
            for (int j = 0; j < playList.size(); j++) {
                Element e = playList.get(j);
                Matcher matcher = regexPlay.matcher(e.attr("href"));
                if (!matcher.find())
                    continue;
                String playURL = matcher.group(1) + "-" + matcher.group(2) + "-" + matcher.group(3);
                vodItems.add(Trans.get(e.text()) + "$" + playURL);
            }
            if (vodItems.size() > 0) {
                sites.put(sourceName, TextUtils.join("#", vodItems));
            }
        }
        if (sites.size() > 0) {
            vod.setVodPlayFrom(TextUtils.join("$$$", sites.keySet()));
            vod.setVodPlayUrl(TextUtils.join("$$$", sites.values()));
        }
        return Result.string(vod);
    }

    /**
     * 获取视频播放信息
     *
     * @param flag     播放源
     * @param id       视频id
     * @param vipFlags 所有可能需要vip解析的源
     * @return
     */
    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        //定义播放用的headers
        HashMap<String, String> headers = new HashMap();
        //headers.put("Host", " cokemv.co");
        headers.put("User-Agent", " Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        headers.put("Accept", " */*");
        headers.put("Accept-Language", " zh-CN,zh;q=0.9,en-US;q=0.3,en;q=0.7");
        headers.put("Accept-Encoding", " gzip, deflate");
        headers.put("referer", siteUrl);
        // 播放页 url
        String url = siteUrl + "/play/" + id + ".html";
        Document doc = Jsoup.parse(OkHttpUtil.string(url, getHeaders(url)));
        Elements allScript = doc.select("script");
        for (int i = 0; i < allScript.size(); i++) {
            String scContent = allScript.get(i).html().trim();
            if (scContent.startsWith("var player_")) { // 取直链
                int start = scContent.indexOf('{');
                int end = scContent.lastIndexOf('}') + 1;
                String json = scContent.substring(start, end);
                JsonObject player = new Gson().fromJson(json, JsonObject.class);
                if (player.get("encrypt").getAsString().equals("0")) {
                    String videoUrl = player.get("url").getAsString();
                    return Result.get().url(videoUrl).parse(0).header(headers).string();
                }
                break;
            }
        }
        return Result.get().url(url).parse().string();
    }

    public String playerContent1(String flag, String id, List<String> vipFlags) {
        try {
            //定义播放用的headers
            JSONObject headers = new JSONObject();
            //headers.put("Host", " cokemv.co");
            headers.put("User-Agent", " Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
            headers.put("Accept", " */*");
            headers.put("Accept-Language", " zh-CN,zh;q=0.9,en-US;q=0.3,en;q=0.7");
            headers.put("Accept-Encoding", " gzip, deflate");
            // 播放页 url
            String url = siteUrl + "/play/" + id + ".html";
            Document doc = Jsoup.parse(OkHttpUtil.string(url, getHeaders(url)));
            Elements allScript = doc.select("script");
            JSONObject result = new JSONObject();
            for (int i = 0; i < allScript.size(); i++) {
                String scContent = allScript.get(i).html().trim();
                if (scContent.startsWith("var player_")) { // 取直链
                    int start = scContent.indexOf('{');
                    int end = scContent.lastIndexOf('}') + 1;
                    String json = scContent.substring(start, end);
                    JSONObject player = new JSONObject(json);
                    if (playerConfig.has(player.optString("from"))) {
                        JSONObject pCfg = playerConfig.optJSONObject(player.optString("from"));
                        String videoUrl = player.optString("url");
                        String playUrl = pCfg.optString("pu");
                        result.put("parse", pCfg.getInt("sn"));
                        result.put("playUrl", playUrl);
                        result.put("url", videoUrl);
                        result.put("header", headers.toString());
                    }
                    break;
                }
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
            if (quick)
                return "";
            long currentTime = System.currentTimeMillis();
            String url = siteUrl + "/index.php/ajax/suggest?mid=1&wd=" + URLEncoder.encode(key) + "&limit=10&timestamp=" + currentTime;
            JSONObject searchResult = new JSONObject(OkHttpUtil.string(url, getHeaders(url)));
            JSONObject result = new JSONObject();
            JSONArray videos = new JSONArray();
            if (searchResult.getInt("total") > 0) {
                JSONArray lists = new JSONArray(searchResult.optString("list"));
                for (int i = 0; i < lists.length(); i++) {
                    JSONObject vod = lists.optJSONObject(i);
                    String id = vod.optString("id");
                    String title = vod.optString("name");
                    String cover = vod.optString("pic");
                    JSONObject v = new JSONObject();
                    v.put("vod_id", id);
                    v.put("vod_name", title);
                    v.put("vod_pic", cover);
                    v.put("vod_remarks", "");
                    videos.put(v);
                }
            }
            result.put("list", videos);
            return result.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }
}
