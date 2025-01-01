package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Filter;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.parser.NetworkUtils;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.utils.CipherUtil;
import com.github.catvod.utils.Trans;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import cn.hutool.core.util.StrUtil;

/* loaded from: classes.dex */
public class Bttoo extends Spider {

    private String siteUrl = "https://www.bttwo.net";
    private String siteHost = "www.bttwo.net";
    private final String filterConfig = "{\"Movie\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"喜剧片\",\"v\":\"xjp\"},{\"n\":\"动作片\",\"v\":\"dzp\"},{\"n\":\"爱情片\",\"v\":\"aqp\"},{\"n\":\"科幻片\",\"v\":\"khp\"},{\"n\":\"恐怖片\",\"v\":\"kbp\"},{\"n\":\"惊悚片\",\"v\":\"jsp\"},{\"n\":\"战争片\",\"v\":\"zzp\"},{\"n\":\"剧情片\",\"v\":\"jqp\"}]}],\"Tv\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"美剧\",\"v\":\"oumei\"},{\"n\":\"韩剧\",\"v\":\"hanju\"},{\"n\":\"日剧\",\"v\":\"riju\"},{\"n\":\"泰剧\",\"v\":\"yataiju\"},{\"n\":\"网剧\",\"v\":\"wangju\"},{\"n\":\"台剧\",\"v\":\"taiju\"},{\"n\":\"国产\",\"v\":\"neidi\"},{\"n\":\"港剧\",\"v\":\"tvbgj\"}]}],\"Zy\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"国综\",\"v\":\"guozong\"},{\"n\":\"韩综\",\"v\":\"hanzong\"},{\"n\":\"美综\",\"v\":\"meizong\"}]}],\"Dm\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"动画\",\"v\":\"donghua\"},{\"n\":\"日漫\",\"v\":\"riman\"},{\"n\":\"国漫\",\"v\":\"guoman\"},{\"n\":\"美漫\",\"v\":\"meiman\"}]}],\"qita\":[{\"key\":0,\"name\":\"分类\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"纪录片\",\"v\":\"Jlp\"},{\"n\":\"经典片\",\"v\":\"Jdp\"},{\"n\":\"经典剧\",\"v\":\"Jdj\"},{\"n\":\"网大电影\",\"v\":\"wlp\"},{\"n\":\"国产老电影\",\"v\":\"laodianying\"}]}]}";
    private final Pattern regexCategory = Pattern.compile("^/(\\S+)");
    private final Pattern regexVid = Pattern.compile( "/movie/(\\d+).html");
    private final Pattern regexPlay = Pattern.compile( "/v_play/(\\S+).html");
    private final Pattern regexPage = Pattern.compile( "\\S+/page/(\\d+)");
    private final Pattern o = Pattern.compile("=\"(.*?)\";var");
    private final Pattern F = Pattern.compile("parse\\(\"(.*?)\"\\);var iv");
    private final Pattern Cp = Pattern.compile("iv=md5\\.enc\\.Utf8\\.parse\\((.*?)\\);var decrypted");
    private final Pattern JC = Pattern.compile("url: \"(.*?)\"");

    private final Pattern regexDetail = Pattern.compile("(.*)[:|：](.*)");
    protected HashMap<String, String> getHeaders(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("method", "GET");
        if (!StringUtil.isEmpty(str)) {
            hashMap.put("Referer", str);
        }
        hashMap.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        return hashMap;
    }
    @Override
    public void init(Context context) {
        setSiteUrl("https://bttwo.vip");
    }
    @Override
    public void init(Context context,String extend) {
        super.init(context);
        setSiteUrl(extend);
    }
    public void setSiteUrl(String extend) {
        if (StrUtil.isEmpty(extend)) {
            extend = "https://bttwo.vip";
        }
        String content = OkHttpUtil.string(extend);
        Document document = Jsoup.parse(content);
        for(Element element:document.select(".content-top li")) {
            String site = element.select("a").attr("href");
            System.out.println("两个BT：" + site);
            String subContent = OkHttpUtil.string(site);
            if (StrUtil.isNotEmpty(subContent) && !subContent.contains("Loading......")) {
                siteUrl = site;
                siteHost = NetworkUtils.INSTANCE.getSubDomain(siteUrl);
                break;
            }
        }
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
        String url = siteUrl + "/";
        List<Vod> list = new ArrayList<>();
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
        url += "/page/" + pg + "/";
        //System.out.println(url);
        String html = OkHttpUtil.string(url, getHeaders(url));
        Document doc = Jsoup.parse(html);
        int pageCount = 0;
        int page = -1;

        // 取页码相关信息
        Elements pageInfo = doc.select("div.pagenavi_txt > a");
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
                if (page == -1 && li.hasClass("current")) {
                    Matcher matcher = regexPage.matcher(a.attr("href"));
                    if (matcher.find()) {
                        //System.out.println("哈哈"+matcher.group(1));
                        page = Integer.parseInt(matcher.group(1));
                    } else {
                        page = Integer.parseInt(name);
                    }
                }
                if (li.hasClass("extend")) {
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
        int limit = 90;
        for (Element element : doc.select("div.bt_img > ul > li")) {
            String name = element.select("h3.dytit > a").text();
            String img = element.select("a img").attr("data-original");
            String remark = element.select("div.jidi > span").text();
            Matcher matcher = regexVid.matcher(element.select("a").attr("href"));
            if (!matcher.find())
                continue;
            String id = matcher.group(1);
            list.add(new Vod(id, name, img, remark));
        }
        limit = list.size();
        return Result.get().vod(list).page(Integer.parseInt(pg), pageCount, limit,  pageCount > 0 && pageCount == 1 ? list.size() : pageCount * limit).string();
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
        String url = siteUrl + "/movie/" + ids.get(0) + ".html";
        Document doc = Jsoup.parse(OkHttpUtil.string(url, getHeaders(url)));
        // 取基本数据
        String img = doc.selectFirst("div.dyimg > img").attr("src");
        String name = doc.selectFirst("div.moviedteail_tt > h1").text();
        String type = "", area = "", year = "", remarks = "", director = "", actor = "", content = "";
        Elements span_text_muted = doc.select("ul.moviedteail_list > li");
        for (int i = 0; i < span_text_muted.size(); i++) {
            Element text = span_text_muted.get(i);
            String info = text.text();
            Matcher m = regexDetail.matcher(info);
            String info1 = info;
            String info2 = info;
            if (m.find()) {
                info1 = m.group(1);
                info2 = m.group(2);
            }
            if (info1.contains("类型") || info.contains("分类")) {
                type = info2;
            } else if(info1.contains("年份")){
                year = info2;
            } else if(info1.contains("地区")) {
                area = info2;
            } else if(info1.contains("状态") || info1.contains("备注")) {
                remarks = info2;
            } else if (info1.contains("导演")) {
                director = info2;
            } else if(info1.contains("主演")) {
                actor = info2;
            } else if(info.contains("简介")) {
                content = text.nextElementSibling().nextElementSibling().text();
            }
        }
        content = doc.selectFirst(".yp_context").text();
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
        Elements sources = doc.select(".mi_paly_box .ypxingq_t");
        Elements sourceList = doc.select(".paly_list_btn");
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
        Elements elements = doc.select("ul.navlist > li > a");
        for (Element element: elements) {
            String name = element.text();
            boolean show = name.equals("最新电影") ||
                    name.equals("热门下载") ||
                    name.equals("本月热门") ||
                    name.equals("国产剧") ||
                    name.equals("美剧") ||
                    name.equals("日韩剧");
            if (show) {
                Matcher mather = regexCategory.matcher(element.attr("href"));
                if (!mather.find())
                    continue;
                // 把分类的id和名称取出来加到列表里
                String id = mather.group(1).trim();
                classes.add(new Class(id, name));
            }
        }
        for (Element element : doc.select("div.leibox > ul > li ")) {
            String name = element.selectFirst("h3.dytit > a").text();
            String img = element.selectFirst("a img").attr("data-original");
            String remark = element.select("div.jidi").text();
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
     * 首页最近更新数据 如果上面的homeContent中不包含首页最近更新视频的数据 可以使用这个接口返回
     *
     * @return
     */
    @Override
    public String homeVideoContent() throws Exception {
        List<Vod> list = new ArrayList<>();
        Document doc = Jsoup.parse(OkHttpUtil.string(siteUrl, getHeaders(siteUrl)));
        for (Element element : doc.select("div.leibox > ul > li ")) {
            String name = element.selectFirst("h3.dytit > a").text();
            String img = element.selectFirst("a img").attr("data-original");
            String remark = element.select("div.jidi").text();
            Matcher matcher = regexVid.matcher(element.selectFirst("a").attr("href"));
            if (!matcher.find())
                continue;
            String id = matcher.group(1);
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(list);
    }

    /**
     * 获取视频播放信息
     *
     * @param flag     播放源
     * @param id       视频id
     * @param vipFlags 所有可能需要vip解析的源
     */
    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        String url = siteUrl + "/v_play/" + id + ".html";
        Document g = Jsoup.parse(OkHttpUtil.string(url, getHeaders(url)));
        Matcher matcher = this.o.matcher(g.toString());
        Matcher matcher2 = this.F.matcher(g.toString());
        Matcher matcher3 = this.Cp.matcher(g.toString());
        if (matcher.find() && matcher2.find() && matcher3.find()) {
            Matcher matcher4 = this.JC.matcher(CipherUtil.aes5(Base64.decode(matcher.group(1), 0), matcher2.group(1).getBytes(), matcher3.group(1).getBytes()));
            if (matcher4.find()) {
                String group = matcher4.group(1);
                return Result.get().url(group).parse(0).string();
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
        String url = siteUrl + "/xssssearch?q=" + StringUtil.encode(key) + "&f=_all&p=1";
        Document doc = Jsoup.parse(OkHttpUtil.string(url, getHeaders(url)));
        for (Element element : doc.select("div.mi_ne_kd > ul > li")) {
            String name = element.selectFirst("h3.dytit > a").text();
            String img = element.selectFirst("a img").attr("data-original");
            String remark = element.select("div.jidi").text();
            Matcher matcher = regexVid.matcher(element.selectFirst("a").attr("href"));
            if (!matcher.find())
                continue;
            String id = matcher.group(1);
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(list);
    }
}