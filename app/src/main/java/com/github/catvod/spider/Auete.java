package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Filter;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.net.OkHttp;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.StringUtil;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Trans;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import org.apache.commons.lang3.StringUtils;
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

public class Auete extends Spider {
    private static final String siteUrl = "https://auete.org";
    private static final String siteHost = "auete.org";

    /**
     * 播放源配置
     */
    private JSONObject playerConfig;
    /**
     * 筛选配置
     */
    private String filterConfig;
    //分类页URL规则
    private Pattern regexCategory = Pattern.compile("/(\\w+)/index.html");
    //详情页URL规则
    private Pattern regexVid = Pattern.compile("/(\\w+/\\w+/\\w+)/");
    //播放页URL规则
    private Pattern regexPlay = Pattern.compile("(/\\w+/\\w+/\\w+/play-\\d+-\\d+.html)");
    //筛选页URL规则
    //private Pattern regexPage = Pattern.compile("/\\w+/\\w+/index(\\d+).html");
    private Pattern regexPage = Pattern.compile("/index(\\d+).html");

    @Override
    public void init(Context context) {
        super.init(context);
        try {
            playerConfig = new JSONObject("{\"myun\":{\"sh\":\"云播A线\",\"pu\":\"\",\"sn\":0,\"or\":999},\"dphd\":{\"sh\":\"云播A线\",\"pu\":\"\",\"sn\":0,\"or\":999},\"cyun\":{\"sh\":\"云播C线\",\"pu\":\"\",\"sn\":0,\"or\":999},\"dbm3u8\":{\"sh\":\"云播D线\",\"pu\":\"\",\"sn\":0,\"or\":999},\"i8i\":{\"sh\":\"云播E线\",\"pu\":\"\",\"sn\":0,\"or\":999},\"m3u8hd\":{\"sh\":\"云播F线\",\"pu\":\"https://auete.com/api/?url=\",\"sn\":1,\"or\":999},\"languang\":{\"sh\":\"云播G线\",\"pu\":\"https://auete.com/api/?url=\",\"sn\":1,\"or\":999},\"hyun\":{\"sh\":\"云播H线\",\"pu\":\"https://auete.com/api/?url=\",\"sn\":1,\"or\":999},\"kyun\":{\"sh\":\"云播K线\",\"pu\":\"https://auete.com/api/?url=\",\"sn\":1,\"or\":999},\"bpyueyu\":{\"sh\":\"云播粤语\",\"pu\":\"\",\"sn\":0,\"or\":999},\"bpguoyu\":{\"sh\":\"云播国语\",\"pu\":\"\",\"sn\":0,\"or\":999}}");
            filterConfig = "{\"Movie\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"喜剧片\",\"v\":\"xjp\"},{\"n\":\"动作片\",\"v\":\"dzp\"},{\"n\":\"爱情片\",\"v\":\"aqp\"},{\"n\":\"科幻片\",\"v\":\"khp\"},{\"n\":\"恐怖片\",\"v\":\"kbp\"},{\"n\":\"惊悚片\",\"v\":\"jsp\"},{\"n\":\"战争片\",\"v\":\"zzp\"},{\"n\":\"剧情片\",\"v\":\"jqp\"}]}],\"Tv\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"美剧\",\"v\":\"oumei\"},{\"n\":\"韩剧\",\"v\":\"hanju\"},{\"n\":\"日剧\",\"v\":\"riju\"},{\"n\":\"泰剧\",\"v\":\"yataiju\"},{\"n\":\"网剧\",\"v\":\"wangju\"},{\"n\":\"台剧\",\"v\":\"taiju\"},{\"n\":\"国产\",\"v\":\"neidi\"},{\"n\":\"港剧\",\"v\":\"tvbgj\"}]}],\"Zy\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"国综\",\"v\":\"guozong\"},{\"n\":\"韩综\",\"v\":\"hanzong\"},{\"n\":\"美综\",\"v\":\"meizong\"}]}],\"Dm\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"动画\",\"v\":\"donghua\"},{\"n\":\"日漫\",\"v\":\"riman\"},{\"n\":\"国漫\",\"v\":\"guoman\"},{\"n\":\"美漫\",\"v\":\"meiman\"}]}],\"qita\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"纪录片\",\"v\":\"Jlp\"},{\"n\":\"经典片\",\"v\":\"Jdp\"},{\"n\":\"经典剧\",\"v\":\"Jdj\"},{\"n\":\"网大电影\",\"v\":\"wlp\"},{\"n\":\"国产老电影\",\"v\":\"laodianying\"}]}]}";
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
        headers.put("method", "GET");
        headers.put("Host", siteHost);
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
        Elements elements = doc.select("ul[class='navbar-nav mr-auto']> li a");
        for (Element element: elements) {
            String name = element.text();
            boolean show = name.equals("电影") ||
                    name.equals("电视剧") ||
                    name.equals("综艺") ||
                    name.equals("动漫") ||
                    name.equals("其他");
            if (show) {
                Matcher mather = regexCategory.matcher(element.attr("href"));
                if (!mather.find())
                    continue;
                // 把分类的id和名称取出来加到列表里
                String id = mather.group(1).trim();
                classes.add(new Class(id, name));
            }
        }
        for (Element element : doc.select("ul.threadlist").get(0).select("li")) {
            String name = element.selectFirst("h2 a").attr("title");
            String img = element.selectFirst("a img").attr("src");
            String remark = element.selectFirst("a button").text();
            Matcher matcher = regexVid.matcher(element.selectFirst("a").attr("href"));
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
        String url = "";
        List<Vod> list = new ArrayList<>();
        if (extend != null && extend.size() > 0) {
            for (Iterator<String> it = extend.keySet().iterator(); it.hasNext(); ) {
                String key = it.next();
                String value = extend.get(key);
                if (value != null && value.length() != 0 && value != " ") {
                    url = siteUrl + "/" + tid + "/" + value;
                } else {
                    url = siteUrl + "/" + tid;
                }
                ;
            }
        } else {
            url = siteUrl + "/" + tid;
        }
        ;
        if (pg.equals("1")) {
            url = url + "/index.html";
        } else {
            url = url + "/index" + pg + ".html";
        }
        //System.out.println(url);
        String html = OkHttpUtil.string(url, getHeaders(url));
        Document doc = Jsoup.parse(html);
        int pageCount = 0;
        int page = -1;

        // 取页码相关信息
        Elements pageInfo = doc.select("ul.pagination li");
        if (pageInfo.size() == 0) {
            page = Integer.parseInt(pg);
            pageCount = page;
        } else {
            for (int i = 0; i < pageInfo.size(); i++) {
                Element li = pageInfo.get(i);
                Element a = li.selectFirst("a");
                if (a == null)
                    continue;
                String name = a.text();
                //System.out.println("名称"+name);
                if (page == -1 && li.hasClass("active")) {
                    Matcher matcher = regexPage.matcher(a.attr("href"));
                    if (matcher.find()) {
                        //System.out.println("哈哈"+matcher.group(1));
                        page = Integer.parseInt(matcher.group(1));
                    } else {
                        Elements list1 = doc.select("ul.threadlist li");
                        if (list1.size() > 0) {
                            page = 1;
                        } else {
                            page = 0;
                        }
                    }
                }
                if (name.equals("尾页")) {
                    Matcher matcher = regexPage.matcher(a.attr("href"));
                    if (matcher.find()) {
                        //System.out.println("尾页" + matcher.group(1));
                        pageCount = Integer.parseInt(matcher.group(1));
                    } else {
                        pageCount = 0;
                    }
                    break;
                }
            }
        }
        for (Element element : doc.select("ul.threadlist li")) {
            String name = element.selectFirst("h2 a").attr("title");
            String img = element.selectFirst("a img").attr("src");
            String remark = element.selectFirst("a button").text();
            Matcher matcher = regexVid.matcher(element.selectFirst("a").attr("href"));
            if (!matcher.find())
                continue;
            String id = matcher.group(1);
            list.add(new Vod(id, name, img, remark));
        }
        return Result.get().vod(list).page(Integer.parseInt(pg), pageCount, 20,  pageCount <= 1 ? list.size() : pageCount * 20).string();
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
        String url = siteUrl + "/" + ids.get(0) + "/";
        Document doc = Jsoup.parse(OkHttpUtil.string(url, getHeaders(url)));
        // 取基本数据
        String img = doc.selectFirst("div.cover a").attr("href");
        String name = doc.selectFirst("div.cover a").attr("title");
        String type = "", area = "", year = "", remarks = "", director = "", actor = "", content = "";
        Elements span_text_muted = doc.select("div.message>p");
        for (int i = 0; i < span_text_muted.size(); i++) {
            Element text = span_text_muted.get(i);
            String info = text.text();
            if (info.contains("类型") || info.contains("分类")) {
                type = info.split(":")[1];
            } else if(info.contains("年份")){
                year = info.split(":")[1];
            } else if(info.contains("地区")) {
                area = info.split(":")[1];
            } else if(info.contains("状态") || info.contains("备注")) {
                remarks = info.split(":")[1];
            } else if (info.contains("导演")) {
                director = info.split(":")[1];
            } else if(info.contains("主演")) {
                actor = info.split(":")[1];
            } else if(info.contains("简介")) {
                content = text.nextElementSibling().nextElementSibling().text();
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
        Elements sources = doc.select("div#player_list>h2");
        Elements sourceList = doc.select("div#player_list>ul");
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
                String playURL = matcher.group(1);
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
            // 播放页 url
        String url = siteUrl + id;
        Document doc = Jsoup.parse(OkHttpUtil.string(url, getHeaders(url)));
        /*取得script下面的JS变量*/
        Elements e = doc.select("div>script");
        /*循环遍历script下面的JS变量*/
        String player = "";
        String pn = "";
        int parse = 1;
        for (Element element : e) {
            /*取得JS变量数组*/
            String[] data = element.data().toString().split("var");
            /*取得单个JS变量*/
            for (String variable : data) {
                /*过滤variable为空的数据*/
                if (variable.contains("=")) {
                    /*取到满足条件的JS变量*/
                    if (variable.contains("now")) {
                        String[] kvp = variable.split("=");
                        player = kvp[1].replaceAll("\"", "").replaceAll(";", "");
                        if (player.startsWith("base64")) {
                            String[] plist1 = player.split("\\(");
                            String[] plist2 = plist1[1].split("\\)");
                            // 解码
                            player = new String(Base64.decode(plist2[0], Base64.DEFAULT));
                        }

                        if (!player.startsWith("http")) {
                            player = siteUrl + player;
                        }
                    }
                    if (variable.contains("pn")) {
                        String[] kvp = variable.split("=");
                        pn = kvp[1].replaceAll("\"", "").replaceAll(";", "");
                    }
                }
            }
            if (StringUtils.isNotEmpty(player)) {
                return Result.get().url(player).parse(0).string();
            }
        }
        return Result.get().url(url).parse().string();
    }

    /**
     * 搜索
     *
     * @param key
     * @param quick 是否播放页的快捷搜索
     * @return
     */
    @Override
    public String searchContent(String key, boolean quick) {
        List<Vod> list = new ArrayList<>();
        String url = siteUrl + "/aueteso.php?searchword=" + StringUtil.encode(key);
        Document doc = Jsoup.parse(OkHttpUtil.string(url, getHeaders(url)));
        for (Element element : doc.select("div.card-body>ul>li.media")) {
            String name = element.select("div.media-body>div.subject>a>span").text();
            String img = "";
            String remark = element.selectFirst("div.media-body>div.d-flex>div.text-muted>span").text();
            Matcher matcher = regexVid.matcher(element.select("div.media-body>div.subject>a").attr("href"));
            if (!matcher.find())
                continue;
            String id = matcher.group(1);
            // 视频封面
            String vodurl = siteUrl + "/" + id + "/";
            Document voddoc = Jsoup.parse(OkHttpUtil.string(vodurl, getHeaders(vodurl)));
            img = voddoc.selectFirst("div.cover a").attr("href");
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(list);
    }
}
