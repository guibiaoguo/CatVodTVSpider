package com.guibiaoguo.myapplication;

import android.content.Context;

import com.github.catvod.parser.AnalyzeRule;
import com.github.catvod.parser.RuleData;
import com.github.catvod.parser.AnalyzeByJSonPath;
import com.github.catvod.parser.AnalyzeByJSoup;
import com.github.catvod.parser.AnalyzeByRegex;
import com.github.catvod.parser.RuleAnalyzer;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.parser.MixSpiderJX;
import com.github.catvod.spider.Aidi;


import com.github.catvod.spider.Auete;
import com.github.catvod.spider.Buka;
import com.github.catvod.spider.Cokemv;
import com.github.catvod.spider.Enlienli;
import com.github.catvod.spider.GoIndex;
import com.github.catvod.spider.Hsck;
import com.github.catvod.parser.HttpParser;
import com.github.catvod.spider.IQIYI;
import com.github.catvod.spider.Imaple;
import com.github.catvod.spider.Juhi;
import com.github.catvod.spider.Jumi;
import com.github.catvod.spider.Legado1;
import com.github.catvod.spider.MGTV;
import com.github.catvod.spider.Proxy;
import com.github.catvod.spider.QQ;
import com.github.catvod.spider.XPathAli;
import com.github.catvod.spider.Ysgc;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.CipherUtil;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;

import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;

import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import cn.hutool.core.util.StrUtil;
import okhttp3.Call;
import okhttp3.Response;

public class CatTest {

    @Test
    public void test1() {
        System.out.println("1");
    }

    @Test
    public void test2() {
        System.out.println("2");
    }

    @Test
    public void aidi() throws Exception {
        spider(new Aidi());
    }

    @Test
    public void auete() throws Exception {
        spider(new Auete());
    }

    @Test
    public void buka() throws Exception {
        spider(new Buka());
    }

    @Test
    public void cokemv() throws Exception {
        spider(new Cokemv());
    }

    @Test
    public void enlienli() throws Exception {
        spider(new Enlienli());
    }

    @Test
    public void goIndex() throws Exception {
        String ext = "http://185.205.12.38:4004/goindex.json";
        Spider spider = new GoIndex();
        spider.init(null, ext);
        String category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
    }

    @Test
    public void jsonpath() throws Exception {
        String ext = "https://mao.guibiaoguo.ml/jsonpath.json";
        Spider spider = new Legado1();
        spider.init(null, ext);
        showFilter(spider, true);
    }

    @Test
    public void checkGetgbk() throws IOException {
        OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml("https://wap.dulaidw.com");
        System.out.println(HttpParser.getContent("https://wap.dulaidw.com;get;gbk",callBack.getResult().body()));
    }

    @Test
    public void checkGBK() {
        Map<String, String> headerMap = new HashMap<>();
        headerMap.put("content-Type","charset=gbk");
        System.out.println(OkHttpUtil.string("https://wap.dulaidw.com",headerMap));
    }

    @Test
    public void hsck() throws Exception {
        Spider spider = new Hsck();
        spider.init(null, "https://www.javsee.men/");
        System.out.println(spider.searchContent("巨乳", false));
//        System.out.println(spider.searchContent("小姨", false));
//        System.out.println(spider.searchContent("百家", false));
//        System.out.println(spider.searchContent("快乐大本营", false));
        String homeContent = spider.homeContent(true);
        System.out.println(homeContent);
        JSONObject jsonObject = new JSONObject(homeContent);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            String category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            List<String> ids = new ArrayList<>();

            jsonObject = new JSONObject(category);
            JSONArray categorys = jsonObject.optJSONArray("list");
            ids.add(categorys.getJSONObject(1).optString("vod_id"));
            System.out.println(ids);

            String detail = spider.detailContent(ids);
            System.out.println(detail);
            jsonObject = new JSONObject(detail);
            JSONArray details = jsonObject.optJSONArray("list");
            String playurls = details.getJSONObject(0).optString("vod_play_url");
            if (playurls.equals("")) {
                continue;
            }
            String playurl = playurls.split("#")[0].split("\\$")[1];
            System.out.println(playurl);

            System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurl, new ArrayList<>()));
        }
    }

    //    @Test
    public void imaple() throws Exception {
        spider(new Imaple());
    }

    @Test
    public void iqiyi() throws Exception {
        Spider spider = new IQIYI();
        spider.init(null);
        System.out.println(spider.searchContent("熊出没", false));
        System.out.println(spider.searchContent("小姨", false));
        System.out.println(spider.searchContent("百家", false));
        System.out.println(spider.searchContent("快乐大本营", false));
        String homeContent = spider.homeContent(true);
        System.out.println(homeContent);
        JSONObject jsonObject = new JSONObject(homeContent);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            String category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            List<String> ids = new ArrayList<>();

            jsonObject = new JSONObject(category);
            JSONArray categorys = jsonObject.optJSONArray("list");
            ids.add(categorys.getJSONObject(1).optString("vod_id"));
            System.out.println(ids);
            String detail = spider.detailContent(ids);
            if (detail.equals("")) {
                System.out.println("出现异常了");
                continue;
            }
            System.out.println(detail);
            jsonObject = new JSONObject(detail);
            JSONArray details = jsonObject.optJSONArray("list");
            String playurl = details.getJSONObject(0).optString("vod_play_url").split("#")[0].split("\\$")[1];
            System.out.println(playurl);

            System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurl, new ArrayList<>()));
        }
    }

    @Test
    public void juhi() throws Exception {
        spider(new Juhi());
    }

    @Test
    public void jumi() throws Exception {
        spider(new Jumi());
    }

    @Test
    public void mgtv() throws Exception {
        Spider spider = new MGTV();
        spider.init(null);
        System.out.println(spider.searchContent("熊出没", false));
        System.out.println(spider.searchContent("小姨", false));
        System.out.println(spider.searchContent("百家", false));
        System.out.println(spider.searchContent("快乐大本营", false));
        String homeContent = spider.homeContent(true);
        System.out.println(homeContent);
        JSONObject jsonObject = new JSONObject(homeContent);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            String category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            List<String> ids = new ArrayList<>();

            jsonObject = new JSONObject(category);
            JSONArray categorys = jsonObject.optJSONArray("list");
            ids.add(categorys.getJSONObject(1).optString("vod_id"));
            System.out.println(ids);

            String detail = spider.detailContent(ids);
            System.out.println(detail);
            jsonObject = new JSONObject(detail);
            JSONArray details = jsonObject.optJSONArray("list");
            String playurls = details.getJSONObject(0).optString("vod_play_url");
            if (playurls.equals("")) {
                continue;
            }
            String playurl = playurls.split("#")[0].split("\\$")[1];
            System.out.println(playurl);

            System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurl, new ArrayList<>()));
        }


    }

    //    @Test
    public void ysgc() throws Exception {
        spider(new Ysgc());
    }

    @Test
    public void qq() throws Exception {
        Spider spider = new QQ();
        spider.init(null);
        System.out.println(spider.searchContent("小姨", false));
        System.out.println(spider.searchContent("熊出没", false));
        System.out.println(spider.searchContent("百家", false));
        System.out.println(spider.searchContent("快乐大本营", false));
        String homeContent = spider.homeContent(true);
        System.out.println(homeContent);
        JSONObject jsonObject = new JSONObject(homeContent);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            String category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            List<String> ids = new ArrayList<>();

            jsonObject = new JSONObject(category);
            JSONArray categorys = jsonObject.optJSONArray("list");
            ids.add(categorys.getJSONObject(1).optString("vod_id"));
            System.out.println(ids);

            String detail = spider.detailContent(ids);
            System.out.println(detail);
            if (detail.equals("")) {
                System.out.println("出现异常了");
                continue;
            }
            jsonObject = new JSONObject(detail);
            JSONArray details = jsonObject.optJSONArray("list");
            String playurl = details.getJSONObject(0).optString("vod_play_url").split("#")[0].split("\\$")[1];
            System.out.println(playurl);

            System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurl, new ArrayList<>()));
        }
    }

    @Test
    public void alixz() throws Exception {
        Spider spider = new XPathAli();
        spider.init(null, "https://mao.guibiaoguo.tk/qq.json");
        String category = spider.searchContent("熊出没", false);

        List<String> ids = new ArrayList<>();
        JSONObject jsonObject = new JSONObject(category);
        JSONArray categorys = jsonObject.optJSONArray("list");
        ids.add(categorys.getJSONObject(5).optString("vod_id"));
        System.out.println(ids);
        String detail = spider.detailContent(ids);
        System.out.println(detail);
        jsonObject = new JSONObject(detail);
        JSONArray details = jsonObject.optJSONArray("list");
        String playurls = details.getJSONObject(0).optString("vod_play_url");
        if (!playurls.equals("")) {
            String playurl = playurls.split("#")[0].split("\\$")[1];
            System.out.println(playurl);
            System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurl, new ArrayList<>()));
        }
    }

    public void spider(Spider spider) throws Exception {
        spider.init(null);
        String homeContent = spider.homeContent(true);
        System.out.println(homeContent);
        spider.homeVideoContent();
        JSONObject jsonObject = new JSONObject(homeContent);
        JSONArray classes = jsonObject.optJSONArray("class");
        String tid = classes.getJSONObject(1).optString("type_id");
        System.out.println(tid);
        String category = spider.categoryContent(tid, "2", false, null);
        System.out.println(category);
        List<String> ids = new ArrayList<>();

        jsonObject = new JSONObject(category);
        classes = jsonObject.optJSONArray("list");
        ids.add(classes.getJSONObject(1).optString("vod_id"));
        System.out.println(ids);

        String detail = spider.detailContent(ids);
        System.out.println(detail);

        jsonObject = new JSONObject(detail);
        classes = jsonObject.optJSONArray("list");
        String playurl = classes.getJSONObject(0).optString("vod_play_url").split("#")[0].split("\\$")[1];
        System.out.println(playurl);

        System.out.println(spider.playerContent("", playurl, new ArrayList<>()));
        System.out.println(spider.searchContent("美", false));
    }

    @Test
    public void qq_filter() {
        try {
            String url = "https://v.qq.com/channel/tv?listpage=1&channel=tv&sort=18&_all=1";
            String srr = OkHttpUtil.string(url, null);
            Document doc = Jsoup.parse(srr);
            JSONArray classes = new JSONArray();
            for (Element cls : doc.selectFirst(".nav-wrap > div").select("a")) {
                JSONObject c = new JSONObject();
                String id = cls.selectFirst("a").attr("href");
                if (id.contains("/art") || id.contains("feeds_hotspot") || id.contains("wwe") || id.contains("choice") || id.contains("sports_new") || id.contains("games") || id.contains("lols11") || id.contains("ent") || id.contains("news") || id.contains("fashion") || id.contains("tech") || id.contains("auto") || id.contains("house") || id.contains("finance") || id.contains("astro") || id.contains("nba") || id.contains("fun") || id.contains("baby") || id.contains("music") || id.contains("life") || id.contains("travel")) {
                    continue;
                }
                if (id.contains("/channel/")) {
                    c.put("type_name", cls.selectFirst("a").text());
                    c.put("type_id", id.split("/channel/")[1]);
                    classes.put(c);
                }
            }
            System.out.println(classes.toString(4));
            JSONObject filter = new JSONObject();
            for (int i = 0; i < classes.length(); i++) {
                String type_id = classes.optJSONObject(i).optString("type_id");
                url = "https://v.qq.com/channel/" + type_id + "?listpage=1&channel=" + type_id + "&sort=18&_all=1";
                srr = OkHttpUtil.string(url, null);
                doc = Jsoup.parse(srr);
                Elements elements = doc.select(".filter_line");
                if (elements.size() == 0) {
                    classes.remove(i);
                    continue;
                }
                JSONArray jsonArray = new JSONArray();
                for (Element element : elements) {
                    JSONObject t1 = new JSONObject();
                    JSONArray t2 = new JSONArray();

                    for (Element data : element.select("a")) {
                        JSONObject t3 = new JSONObject();
                        String v = data.text();
                        String n = data.attr("data-value");
                        t3.put("v", n);
                        t3.put("n", v);
                        t2.put(t3);
                    }
                    t1.put("key", element.attr("data-key"));
                    t1.put("name", element.selectFirst("span").text());
                    t1.put("value", t2);
                    jsonArray.put(t1);
                }
                filter.put(type_id, jsonArray);
            }
            System.out.println(filter);
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }

    @Test
    public void iqiyi_filter() throws Exception {
        JSONObject filter = new JSONObject();
        for (int i = 1; i < 34; i++) {
            System.out.println(i);
            String url = "https://pcw-api.iqiyi.com/search/category/categoryinfo?brand=IQIYI&channel_id=" + i;
            if (i == 12) {
                url = "https://pcw-api.iqiyi.com/search/category/categoryinfo?brand=IQIYI&channel_id=12&include_knowledge_content_type=KNOWLEDGE_CONTENT_TYPE_KNOWLEDGE&locale=zh";
            }
            String srr = OkHttpUtil.string(url, null);
            System.out.println(srr);
            JSONObject jsonObject = new JSONObject(srr);
            JSONArray data = jsonObject.optJSONArray("data");
            if (data.length() == 0) {
                continue;
            }
            JSONArray jsonArray = new JSONArray();
            for (int j = 0; j < data.length(); j++) {
                JSONObject t1 = new JSONObject();
                JSONArray t2 = new JSONArray();
                JSONArray child = data.optJSONObject(j).optJSONArray("child");
                for (int k = 0; k < child.length(); k++) {
                    JSONObject t3 = new JSONObject();
                    String v = child.optJSONObject(k).optString("cnName");
                    v = v.equals("") ? child.optJSONObject(k).optString("name") : v;
                    String n = child.optJSONObject(k).optString("id");
                    t3.put("v", n);
                    t3.put("n", v);
                    t2.put(t3);
                }
                t1.put("key", data.optJSONObject(j).optString("id"));
                String n1 = data.optJSONObject(j).optString("cnName");
                n1 = n1.equals("") ? data.optJSONObject(j).optString("name") : n1;
                t1.put("name", n1);
                t1.put("value", t2);
                jsonArray.put(t1);

            }
//            jsonArray.put(new JSONObject("{\"name\":\"全部资费\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"0\",\"n\":\"免费\"},{\"v\":\"1\",\"n\":\"付费\"}],\"key\":\"is_purchase\"}"));
//            jsonArray.put(new JSONObject("{\"name\":\"年份\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"2020\",\"n\":\"2020\"},{\"v\":\"2019\",\"n\":\"2019\"},{\"v\":\"2018\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"2016-2011\",\"n\":\"2016-2011\"},{\"v\":\"2010-2000\",\"n\":\"2010-2000\"},{\"v\":\"1990-1999\",\"n\":\"90年代\"},{\"v\":\"1980-1989\",\"n\":\"80年代\"},{\"v\":\"1964-1979\",\"n\":\"更早\"}],\"key\":\"market_release_date_level\"}"));
//            jsonArray.put(new JSONObject("{\"name\":\"排序\",\"value\":[{\"v\":\"24\",\"n\":\"综合排序\"},{\"v\":\"11\",\"n\":\"热播榜\"},{\"v\":\"8\",\"n\":\"好评榜\"},null,{\"v\":\"3\",\"n\":\"新上线\"}],\"key\":\"mode\"}"));
//            if (i==12) {
//                jsonArray.put(new JSONObject("{\"name\":\"知识\",\"value\":[{\"v\":\"5\",\"n\":\"知识\"},{\"v\":\"6\",\"n\":\"教育\"}],\"key\":\"mode\"}"));
//            }
            filter.put(Integer.toString(i), jsonArray);
        }
        System.out.println(filter.toString());
    }

    @Test
    public void mgtv_filter() throws Exception {
        String url = "https://pianku.api.mgtv.com/rider/config/platformChannels/v1?platform=msite&abroad=0&_support=10000000";
        String srr = OkHttpUtil.string(url, null);
        JSONObject jsonObject = new JSONObject(srr);
        JSONArray data = jsonObject.optJSONArray("data");
        JSONArray classes = new JSONArray();
        for (int i = 0; i < data.length(); i++) {
            JSONObject cate = data.optJSONObject(i);
            JSONObject c = new JSONObject();
            c.put("type_name", cate.optString("channelName"));
            c.put("type_id", cate.optString("channelId"));
            classes.put(c);
        }
        System.out.println(classes);
        JSONObject filter = new JSONObject();
        for (int i = 0; i < classes.length(); i++) {
            String type_id = classes.optJSONObject(i).optString("type_id");
            url = "https://pianku.api.mgtv.com/rider/config/channel/v1?channelId=" + type_id + "&platform=msite&abroad=0&_support=10000000" + type_id + "?listpage=1&channel=";
            srr = OkHttpUtil.string(url, null);
            jsonObject = new JSONObject(srr);
            data = jsonObject.optJSONObject("data").optJSONArray("listItems");
            if (data == null) {
                classes.remove(i);
                continue;
            }
            JSONArray jsonArray = new JSONArray();
            for (int j = 0; j < data.length(); j++) {
                JSONObject t1 = new JSONObject();
                JSONArray t2 = new JSONArray();
                JSONObject cate = data.optJSONObject(j);
                JSONArray items = cate.optJSONArray("items");
                for (int k = 0; k < items.length(); k++) {
                    JSONObject t3 = new JSONObject();
                    String v = items.optJSONObject(k).optString("tagId");
                    String n = items.optJSONObject(k).optString("tagName");
                    t3.put("v", v);
                    t3.put("n", n);
                    t2.put(t3);
                }
                t1.put("key", cate.optString("eName"));
                t1.put("name", cate.optString("typeName"));
                t1.put("value", t2);
                jsonArray.put(t1);
            }
            filter.put(type_id, jsonArray);
        }
        System.out.println(filter);
    }

    @Test
    public void hsck_url() {
        String ext = "https://user.seven301.xyz:8899/?u=http://hsck.us/&p=/";
        //使用
        Map<String, List<String>> respHeaders = new TreeMap<>();
        OkHttpUtil.stringNoRedirect(ext, null, respHeaders);
        String redLoc = OkHttpUtil.getRedirectLocation(respHeaders);
        System.out.println(redLoc);

    }


    protected HashMap<String, String> getHeaders(String url) {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        return headers;
    }

    @Test
    public void affhs() throws Exception {
        List<String> keys = new ArrayList<>();
//        keys.add("钢铁侠");
        xpathAli("https://mao.guibiaoguo.tk/ahhfs.json", keys);
    }

    public String showCategory(Spider spider, String category, int index) throws Exception {
        JSONObject jsonObject = new JSONObject(category);
        JSONArray categorys = jsonObject.optJSONArray("list");
        if (categorys == null) {
            categorys = new JSONObject(spider.homeVideoContent()).optJSONArray("list");
        }
        if (categorys.length() > index) {
            List<String> ids = new ArrayList<>();
            ids.add(categorys.getJSONObject(index).optString("vod_id"));
            System.out.println(ids);

            String detail = spider.detailContent(ids);
            System.out.println(detail);
            jsonObject = new JSONObject(detail);
            JSONArray details = jsonObject.optJSONArray("list");
            if (details == null || details.optJSONObject(0) == null)  {
                return detail;
            }
            String playurls = details.optJSONObject(0).optString("vod_play_url");
            if (!playurls.equals("")) {
                String playurl = playurls.split("#")[0].split("\\$")[1];
                System.out.println(playurl);
                if (spider instanceof Legado1 || (!StringUtils.contains(playurl, ".m3u8") && !StringUtils.contains(playurl, "jiexi")))
                    System.out.println(spider.playerContent(details.optJSONObject(0).optString("vod_play_from"), playurls.split("#")[0].split("\\$")[1], new ArrayList<>()));
//                System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurls.split("#")[1].split("\\$")[1], new ArrayList<>()));
//                System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurls.split("#")[2].split("\\$")[1], new ArrayList<>()));
//                System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurls.split("#")[3].split("\\$")[1], new ArrayList<>()));
//                System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurls.split("#")[4].split("\\$")[1], new ArrayList<>()));
                return playurl;
            }
        }
        return "";
    }

    public void xpathAli(String ext, List<String> keys) throws Exception {
        Spider spider = new XPathAli();
        if (StringUtils.isEmpty(ext))
            ext = "https://mao.guibiaoguo.tk/qq.json";
        spider.init(null, ext);
        for (String key : keys) {
            String category = spider.searchContent(key, false);
            System.out.println(category);
            if (StringUtils.isNotEmpty(category))
                showCategory(spider, category, 0);
        }
//        JSONObject jsonObject = null;
////        System.out.println(spider.searchContent("小姨", false));
////        System.out.println(spider.searchContent("百家", false));
////        System.out.println(spider.searchContent("快乐大本营", false));
//        String homeContent = spider.homeContent(true);
//        System.out.println(homeContent);
//        jsonObject = new JSONObject(homeContent);
//        JSONArray classes = jsonObject.optJSONArray("class");
//        for (int i = 0; i < classes.length(); i++) {
//            String tid = classes.getJSONObject(i).optString("type_id");
//            System.out.println(tid);
//            String category = spider.categoryContent(tid, "1", false, null);
//            System.out.println(category);
//            if (StringUtils.isNotEmpty(category))
//                showCategory(spider, category, 0);
//        }
    }

    @Test
    public void analyze() {
        String content = "下一站";
        String rulestr = "##一站##一战";
        AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(content, "");
        Object object = analyzeRule.getString(rulestr);
        System.out.println(object);
        String ext = "http://www.paper027.com/home/chapter/lists/id/77485.html";
        String json = OkHttpUtil.string(ext, null);
        System.out.println(json);
        analyzeRule.setContent(json, ext);
        rulestr = ":class=\"text-muted number\"(?:[^\"]*\"){3}([^\"]*)\" title=\"([^\"]*)\">";
        object = analyzeRule.getElement(rulestr);
        System.out.println(object.toString());
        System.out.println(analyzeRule.getElements(rulestr));
        analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(json);
        System.out.println(analyzeRule.getElement("@css:.chapterTitle"));
        ext = "https://ghproxy.com/raw.githubusercontent.com/gaotianliuyun/gao/master/js.json";
        json = OkHttpUtil.string(ext, null);
        analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(json, ext);
        System.out.println(analyzeRule.getElement("$.wallpaper"));
        String webUrl = analyzeRule.getString("@fun:{base64Encode:'$.homeUrl'}");
        System.out.println(webUrl);
        OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
        if (callBack.getResult().code() == 200) {
            AnalyzeRule analyzeRule1 = new AnalyzeRule(new RuleData());
            analyzeRule1.setContent(content);
            Object nodes = analyzeRule1.getStringList("$.data.files[1]%%$.data.files[3]");
            System.out.println(nodes.toString());
            if (nodes instanceof JSONArray) {
                for (int i = 0; i < ((JSONArray) nodes).length(); i++) {
                    analyzeRule1.setContent(((JSONArray) nodes).opt(i).toString());
                    System.out.println(analyzeRule1.getString("$.name"));
                }
            }
        }
        String s = OkHttpUtil.string("https://www.zqystv.com/zqys/dydq.html", getHeaders("https://www.zqystv.com/zqys/dydq.html"));
        analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(s, "https://www.zqystv.com/zqys/dydq.html");
        analyzeRule.setRedirectUrl("https://www.zqystv.com/zqys/dydq.html");
        System.out.println(analyzeRule.getElements("@css:.stui-vodlist>li"));
        System.out.println(analyzeRule.getElements("class.stui-vodlist@tag.li.1"));
        System.out.println(analyzeRule.getElements("class.stui-vodlist@tag.li[2:5]"));
    }

    @Test
    public void test() throws Exception {
        String queue = "[test}";
        System.out.println(queue.charAt(0));
        RuleAnalyzer analyzer = new RuleAnalyzer("{$.name}||{$.id}", false);
        analyzer.trim();
        System.out.println(analyzer.splitRule("&&", "||"));
        analyzer = new RuleAnalyzer("$.store.book[0].title@$.name");
        System.out.println(analyzer.splitRule("@", "&&"));
        String rulestr = "class=\"text-muted number\"(?:[^\"]*\"){3}([^\"]*)\" title=\"([^\"]*)\">";
        String ext = "http://www.paper027.com/home/chapter/lists/id/77485.html";
        String json = OkHttpUtil.string(ext, null);
        System.out.println(json);
//        System.out.println(AnalyzeByRegex.getElement(json, StrUtil.split(rulestr, "&&"), 0));
//        System.out.println(AnalyzeByRegex.getElements(json, StrUtil.split(rulestr, "&&"), 0));
        ext = "https://mao.guibiaoguo.tk/jsonpath.json";
        json = OkHttpUtil.string(ext, null);
        System.out.println(new AnalyzeByJSonPath(json).getString("{$.homeUrl}/test"));
        System.out.println(new AnalyzeByJSonPath(json).getString("$.ua"));
        OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(new AnalyzeByJSonPath(json).getString("$.homeUrl"));
        if (callBack.getResult().code() == 200) {
            String content = callBack.getResult().body().string();
            System.out.println(new AnalyzeByJSonPath(content).getString("$.data.files[1]"));
            System.out.println(new AnalyzeByJSonPath(content).getString("$.data.files[*]"));
            System.out.println(new AnalyzeByJSonPath(content).getString("$.data.files[1:3]"));
            System.out.println(new AnalyzeByJSonPath(content).getString("$.data.files[1]"));
        }
        String s = OkHttpUtil.string("http://www.paper027.com/home/chapter/lists/id/77485.html", getHeaders("http://www.paper027.com/home/chapter/lists/id/77485.html"));
        System.out.println(new AnalyzeByJSoup(s).getElements("@css:.chapterTitle"));
        s = OkHttpUtil.string("https://www.zqystv.com/zqys/dydq.html", getHeaders("https://www.zqystv.com/zqys/dydq.html"));
        System.out.println(new AnalyzeByJSoup(s).getElements("@css:.stui-vodlist>li"));
        System.out.println(new AnalyzeByJSoup(s).getElements("class.stui-vodlist@tag.li.1"));
        System.out.println(new AnalyzeByJSoup(s).getElements("class.stui-vodlist@tag.li!1:2"));
        System.out.println(new AnalyzeByJSoup(s).getElements("class.stui-vodlist@tag.li[2:5]"));
    }

    @Test
    public void testJsonPath() {
        String s = OkHttpUtil.string("https://mao.guibiaoguo.tk/jsonpath.json", getHeaders("https://mao.guibiaoguo.tk/jsonpath.json"));
        System.out.println(new AnalyzeByJSonPath(s).getString("{$.homeUrl}/test"));
    }

    @Test
    public void testJsonPathKt() {
        String s = OkHttpUtil.string("https://mao.guibiaoguo.tk/jsonpath.json", getHeaders("https://mao.guibiaoguo.tk/jsonpath.json"));
        System.out.println(new AnalyzeRule(new RuleData()).setContent(s, "https://mao.guibiaoguo.tk/jsonpath.json").getString("{$.homeUrl}/test"));
    }

    @Test
    public void testJsoupKt() {
        String s = OkHttpUtil.string("http://www.paper027.com/home/chapter/lists/id/77485.html", getHeaders("http://www.paper027.com/home/chapter/lists/id/77485.html"));
        AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(s, "http://www.paper027.com/home/chapter/lists/id/");
        analyzeRule.setRedirectUrl("http://www.paper027.com/home/chapter/lists/id/");
        System.out.println(analyzeRule.getElements("@css:.chapterTitle"));
    }

    @Test
    public void testXpathKt() {
        String s = OkHttpUtil.string("http://www.paper027.com/home/chapter/lists/id/77485.html", getHeaders("http://www.paper027.com/home/chapter/lists/id/77485.html"));
        AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(s, "");
        analyzeRule.setRedirectUrl("");
        System.out.println(analyzeRule.getElements("//*[contains(@class,\"chapterTitle\")]"));
    }

    @Test
    public void testkt() {
        String queue = "[test}";
        System.out.println(queue.charAt(0));
        RuleAnalyzer analyzer = new RuleAnalyzer("{$.name}||{$.id}", false);
        analyzer.trim();
        System.out.println(analyzer.splitRule("&&", "||"));
        analyzer = new RuleAnalyzer("$.store.book[0].title@$.name", false);
        System.out.println(analyzer.splitRule("@", "&&"));
        String rulestr = ":class=\"text-muted number\"(?:[^\"]*\"){3}([^\"]*)\" title=\"([^\"]*)\">";
        System.out.println(rulestr);
    }

    public void showFilter(Spider spider, boolean filter) throws Exception {
        String category = spider.homeContent(filter);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        JSONObject filterObject = jsonObject.optJSONObject("filters");

        Random random = new Random();
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            JSONArray jsonArray1 = filterObject.optJSONArray(tid);
            if (jsonArray1 != null && jsonArray1.length() > 0) {
                HashMap filterMap = new HashMap();
                if (filter) {
                    int num = random.nextInt(jsonArray1.length());
                    JSONArray jsonArray2 = jsonArray1.optJSONObject(num).optJSONArray("value");
                    String key = jsonArray1.optJSONObject(num).optString("key");
                    num = random.nextInt(jsonArray2.length());
                    String v = jsonArray2.optJSONObject(num).optString("v");
                    filterMap.put(key, v);
                }
                int pg = random.nextInt(4) + 1;
                category = spider.categoryContent(tid, pg + "", filter, filterMap);
                System.out.println(category);
                showCategory(spider, category, 0);
            }
        }
    }
    @Test
    public void bagedvd() throws Exception {
        Spider spider = new Legado1();
        spider.init(null, "https://mao.guibiaoguo.ml/bagedvd.json");
        showFilter(spider, true);
    }

    @Test
    public void zqystv() throws Exception {
        Spider spider = new Legado1();
        spider.init(null, "https://mao.guibiaoguo.ml/zqystv.json");
        showFilter(spider, true);
    }

    @Test
    public void m896050() throws Exception {
        Spider spider = new Legado1();
        spider.init(null, "https://mao.guibiaoguo.ml/896050.json");
        showFilter(spider, true);
    }

    @Test
    public void goindx1() throws Exception {
        Spider spider = new Legado1();
        spider.init(null, "https://mao.guibiaoguo.ml/jsonpath.json");
        String category = spider.homeContent(true);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 1; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            category = spider.categoryContent(tid, "1", true, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
    }

    @Test
    public void testCat() {
        try {
            String s = OkHttpUtil.string("https://mao.guibiaoguo.ml/212757_debug.json", getHeaders(""));
            JSONObject mao = new JSONObject(s);
            JSONArray sites = mao.optJSONArray("sites");
            JSONArray trueSites = new JSONArray();
            JSONArray failSites = new JSONArray();
            JSONArray playUrls = new JSONArray();
            for (int i = 0; i < sites.length(); i++) {
                int k = 0;
                JSONObject site = sites.optJSONObject(i);
                System.out.println(site.optString("name"));
                try {
                    Spider spider = null;
                    String api = site.optString("api");
                    String ext = site.optString("ext");
                    if (site.optInt("type") == 0 || site.optInt("type") == 1) {
                        if (StringUtil.isAbsUrl(api)) {
                            String content = OkHttpUtil.string(api, getHeaders(""));
                            if (StringUtils.startsWith(content,"<rss") || StringUtils.startsWith(content, "<?xml") || StringUtil.isJson(content)) {
                                System.out.println(api);
                                trueSites.put(site);
                            }
                        } else {
                            trueSites.put(site);
                        }
                        continue;
                    }

                    if (!StringUtil.isAbsUrl(api)) {
                        Class cls = null;
                        try {
                            cls = Class.forName("com.github.catvod.spider." + api.substring(4));
                            spider = (Spider) cls.newInstance();
                        } catch (Exception e) {
                            System.out.println(e.getMessage());
                        }
                        if (spider == null) {
                            continue;
                        }
                        if (StringUtils.isNotEmpty(ext)) {
                            Method method = cls.getMethod("init", Context.class, String.class);
                            method.invoke(spider, null, ext);
                        } else {
                            spider.init(null);
                        }
                        String category = spider.homeContent(false);
                        System.out.println(category);
                        try {
                            String playUrl = "";
                            if (new JSONObject(category).optJSONArray("list") == null) {
                                String category1 = spider.homeVideoContent();
                                System.out.println(category1);
                                playUrl = showCategory(spider, category1, 0);
                            } else {
                                playUrl = showCategory(spider, category, 0);
                            }
                            if (StringUtil.isNotEmpty(playUrl)) {
                                playUrls.put(playUrl);
                                k++;
                            }
                        } catch (Exception e) {
                            SpiderDebug.log(e);
                        }

                        if (StringUtils.isNotEmpty(category)) {
                            JSONObject jsonObject = new JSONObject(category);
                            JSONArray classes = jsonObject.optJSONArray("class");
                            for (int j = 0; j < 1; j++) {
                                String tid = classes.optJSONObject(j).optString("type_id");
                                System.out.println(tid);
                                category = spider.categoryContent(tid, "1", false, null);
                                System.out.println(category);
                                try {
                                    String playUrl = showCategory(spider, category, 0);
                                    playUrls.put(playUrl);
                                    k++;
                                } catch (Exception e) {
                                    SpiderDebug.log(e);
                                }
                            }
                        }
                        String[] keys = {"凡人"};
                        for (String key : keys) {
                            category = spider.searchContent(key, false);
                            System.out.println(category);
                            if (StringUtils.isNotEmpty(category)) {
                                try {
                                    String playUrl = showCategory(spider, category, 0);
                                    playUrls.put(playUrl);
                                    k++;
                                } catch (Exception e) {
                                    SpiderDebug.log(e);
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                    SpiderDebug.log(e);
                }
                if (k > 0)
                    trueSites.put(site);
                else
                    failSites.put(site);
            }
            System.out.println(trueSites.toString(4));
            System.out.println(failSites.toString(4));
            System.out.println(playUrls.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void testSites() {
        String s = OkHttpUtil.string("https://mao.guibiaoguo.tk/212757_debug.json", getHeaders(""));
        try {
            AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
            analyzeRule.setContent(s);
            analyzeRule.setRedirectUrl("");
            List lives = analyzeRule.getElements("$.lives[*]");
            JSONArray c4 = new JSONArray();
            for (Object live : lives) {
                JSONObject c3 = new JSONObject();
                analyzeRule.setContent(live.toString());
                List channels = analyzeRule.getElements("$.channels");
                String group = analyzeRule.getString("$.group");
                JSONArray c2 = new JSONArray();
                for (Object channel : channels) {
                    analyzeRule.setContent(channel.toString());
                    List urls = analyzeRule.getElements("$.urls");
                    JSONObject c = new JSONObject();
                    String name = analyzeRule.getString("$.name");
                    JSONArray urls1 = new JSONArray();
                    urls.forEach(url1 -> {
                        String content = OkHttpUtil.string(url1.toString(), getHeaders(""));
                        if (StringUtils.contains(content, "#EXTM3U")) {
                            urls1.put(url1.toString());
                            System.out.println(url1);
                        }
                    });
                    if (urls1.length() > 0) {
                        c.put("name", name);
                        c.put("urls", urls1);
                    }
                    if (c.length() > 0)
                        c2.put(c);
                }
                if (c2.length() > 0) {
                    c3.put("channels", c2);
                    c3.put("group", group);
                }
                if (c3.length() > 0)
                    c4.put(c3);
            }
            System.out.println(c4.toString(4));
        } catch (Exception e) {

        }
    }

    @Test
    public void testM3u8() {
        String s = OkHttpUtil.string("https://mao.guibiaoguo.tk/212757.json", getHeaders(""));
        try {
            AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
            analyzeRule.setContent(s, "");
            analyzeRule.setRedirectUrl("");
            List lives = analyzeRule.getElements("$.lives[*]");
            JSONArray c4 = new JSONArray();
            StringBuilder builderM3U8 = new StringBuilder("#EXTM3U").append("\n");
            StringBuilder builderTXT = new StringBuilder();
            for (Object live : lives) {
                JSONObject c3 = new JSONObject();
                analyzeRule.setContent(live.toString());
                List channels = analyzeRule.getElements("$.channels");
                String group = analyzeRule.getString("$.group");
                JSONArray c2 = new JSONArray();
                builderTXT.append(group).append(",#genre#").append("\n");
                for (Object channel : channels) {
                    analyzeRule.setContent(channel.toString());
                    List urls = analyzeRule.getElements("$.urls");
                    JSONObject c = new JSONObject();
                    String name = analyzeRule.getString("$.name");
                    c.put("name", name);
                    JSONArray urls1 = new JSONArray();
                    urls.forEach(url1 -> {
                        builderM3U8.append("#EXTINF:-1 group-title=\"" + group + "\"," + name).append("\n");
                        builderM3U8.append(url1).append("\n");
                        builderTXT.append(name).append(",").append(url1).append("\n");
                    });

                    c.put("urls", urls1);
                    c2.put(c);
                }
                c3.put("channels", c2);
                c3.put("group", group);
                c4.put(c3);
            }
            System.out.println(c4.toString(4));
            System.out.println(builderM3U8.toString());
        } catch (Exception e) {

        }
    }

    @Test
    public void hsck1() throws Exception {
        Spider spider = new Legado1();
        spider.init(null, "https://mao.guibiaoguo.ml/hsck1.json");
        String category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
    }

    @Test
    public void descrpt() {
        String body = "9TsgB+aGKkThCBR4vvr4tdiNUrbwsZ3om7U1sXKnXSbSQQibZHJ7qHPmVXtSk2aO7qo5V5OPg7C6vgaxpCxgnxSX7+sK+UnGp9he4XAsGtGpasErZ\\/+4uBL15duIr7Dh";
        String key = "bf70a456195ae394";
        String iv = "184b2e0b1b471cae";
        System.out.println(CipherUtil.aes5(Base64.decode(body, 0),key.getBytes(),iv.getBytes()));
        String token = "26c7037fd5f83d5a0ea2d311bb02482f";
        String timestamp = "1661899198";
        System.out.println(token);
        System.out.println(CipherUtil.md5("1000300001dc431681b806089dac1153fb13960f874" + timestamp + "notice",Misc.UTF8));
    }

    @Test
    public void hsck2() throws Exception {
        Spider spider = new Legado1();
        spider.init(null, "https://mao.guibiaoguo.ml/hsck2.json");
        String category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
        category = spider.searchContent("ABP", false);
        System.out.println(category);
        showCategory(spider, category, 0);
    }

    @Test
    public void base64() {
        System.out.println(new String(Base64.encode("https://api.aliyundrive.com/adrive/v3/file/list?jsonBody={\"share_id\":\"@get:{share_id}\",\"image_url_process\":\"image/resize,w_1920/format,jpeg\",\"parent_file_id\":\"@get:{parent_file_id}\",\"limit\":200,\"order_by\":\"name\",\"order_direction\":\"ASC\",\"video_thumbnail_process\":\"video/snapshot,t_1000,f_jpg,ar_auto,w_300\",\"image_thumbnail_process\":\"image/resize,w_160/format,jpeg\"};post;utf-8;{x-share-token@{{$.share_token}}}@put:{'share_id':'QGdldDp7Y2xhc3N9IyMoLiopIyguKikjIyQx','parent_file_id':'QGdldDp7Y2xhc3N9IyMuKj8jKC4qKSMjJDE='}".getBytes(),Base64.DEFAULT | Base64.URL_SAFE | Base64.NO_WRAP)));
    }

    @Test
    public void alipanso() throws Exception {
        Spider spider = new Legado1();
        spider.init(null, "https://mao.guibiaoguo.ml/alipanso.json");
        String category = "";
        category = spider.homeContent(true);
        System.out.println(category);
        showCategory(spider, category, 1);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; classes != null && i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
        category = spider.searchContent("火影忍者疾风传", false);
        System.out.println(category);
        showCategory(spider, category, 0);
        System.out.println("ends");
    }

    @Test
    public void affhs_legado() throws Exception {
        Spider spider = new Legado1();
        spider.init(null, "http://mao.guibiaoguo.ml/ahhfs.json");
        String category = "";
        category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 1);
        }
        category = spider.searchContent("火影忍者疾风传", false);
        System.out.println(category);
        showCategory(spider, category, 0);
        System.out.println("ends");
    }

    @Test
    public void alps() throws Exception {
        List<String> keys = new ArrayList<>();
        keys.add("名侦探柯南TV版 国语");
        xpathAli("http://185.205.12.38:4004/qq.json", keys);

    }

    @Test
    public void checkAppys() throws Exception {
        String json1 = "[{\"title\":\"思奇影视\",\"url\":\"http://app.siqitv.vip/mogai_api.php/v1.vod\"},{\"title\":\"天天影视\",\"url\":\"http://app.at008.cn/api.php/v1.vod\"},{\"title\":\"久久影院\",\"url\":\"http://l.bhtv.org.cn/mv/api.php/Chengcheng/vod/\"},{\"title\":\"段友影视\",\"url\":\"http://js.66app.me/api.php/app/\"},{\"title\":\"木子电影\",\"url\":\"http://www.muzidy.top/mogai_api.php/v1.vod\"},{\"title\":\"流星雨\",\"url\":\"http://nn.lxyyy.xyz:8/c/api.php/WAiLaowang/vod/\"},{\"title\":\"CJT影院\",\"url\":\"https://www.cjt521.com/api.php/v1.vod\"},{\"title\":\"5060影院\",\"url\":\"https://app.linzhiyuan.xyz/xgapp.php/v1/\"},{\"title\":\"免费看TV\",\"url\":\"http://www.freekan.vip/api.php/iptv/vod/\"},{\"title\":\"飞捷影视\",\"url\":\"https://www.fj6080.com/api.php/v1.vod\"},{\"title\":\"玺娜影视\",\"url\":\"https://pp.wxina.cn/api.php/v1.vod\"},{\"title\":\"哎呀影视\",\"url\":\"https://www.aisvod.tv/xgapp.php/v1/\"},{\"title\":\"淘剧社\",\"url\":\"https://app.shuhai99.com/api.php/v1.vod\"},{\"title\":\"米奇TV\",\"url\":\"http://www.s6ep3.top/api.php/iptv/vod/\"},{\"title\":\"环球影视\",\"url\":\"https://hqystv.com/api.php/app/\"},{\"title\":\"追剧达人\",\"url\":\"http://vipmv.tv/xgapp.php/v1/\"},{\"title\":\"4K影院\",\"url\":\"http://4kdytv.com/api.php/v1.vod\"},{\"title\":\"阿姨追剧\",\"url\":\"https://www.ayzhuiju.com/ruifenglb_api.php/v1.vod\"},{\"title\":\"麻花视频\",\"url\":\"https://www.mahuashipin.com/api.php/app/\"},{\"title\":\"皮皮动漫\",\"url\":\"http://dm.muying.me/mogai_api.php/v1.vod\"},{\"title\":\"汇聚库TV\",\"url\":\"https://www.zzclove666.com/api.php/v1.vod\"},{\"title\":\"海胆影视\",\"url\":\"http://xf123.cc/api.php/app/\"},{\"title\":\"火箭影视\",\"url\":\"http://huojian.wchulian.com.cn/api.php/app/\"},{\"title\":\"聚多影视\",\"url\":\"http://jdyy.weetai.cn/api.php/iptv/vod/\"},{\"title\":\"小强TV\",\"url\":\"http://xqapp.hailanfj.com/xgapp.php/v1/\"},{\"title\":\"爱西西TV\",\"url\":\"http://tv.aixixi.vip/api.php/iptv/vod/\"},{\"title\":\"看365\",\"url\":\"https://www.kan365.xyz/api.php/app/\"},{\"title\":\"星空影视\",\"url\":\"https://xkys.tv/xgapp.php/v1/\"},{\"title\":\"奈非迷\",\"url\":\"https://app.netflixmi.com/api.php/v1.vod\"},{\"title\":\"大师兄\",\"url\":\"http://dsxtv.tv.ci/api.php/dsx/vod/\"},{\"title\":\"免费看\",\"url\":\"https://freekan.vip/mogai_api.php/v1.vod\"},{\"title\":\"绿箭影视\",\"url\":\"http://www.69ty.cc/mogai_api.php/v1.vod\"},{\"title\":\"视听星球\",\"url\":\"http://zjyapijzys.shynwlkj.com/api.php/v1.vod\"},{\"title\":\"TV酷\",\"url\":\"https://www.u23c.com/api.php/app/\"},{\"title\":\"星影相随\",\"url\":\"http://app.rootthree.top/mogai_api.php/v1.vod\"},{\"title\":\"樱花动漫\",\"url\":\"https://www.dmwu.cc/api.php/v1.vod\"},{\"title\":\"吾爱影视\",\"url\":\"http://52ysw.xyz/mogai_api.php/v1.vod\"},{\"title\":\"蜜果TV\",\"url\":\"https://www.miguotv.net/api.php/app/\"},{\"title\":\"白菜追剧\",\"url\":\"http://lbapp.huimaojia.com:30119/mogai_api.php/v1.vod\"},{\"title\":\"奇趣影视\",\"url\":\"https://app.qiqu.me/mogai_api.php/v1.vod\"},{\"title\":\"月色影视\",\"url\":\"http://69ty.cc/mogai_api.php/v1.vod\"},{\"title\":\"虾皮视频\",\"url\":\"http://tv.cmt8.xyz/api.php/iptv/vod/\"},{\"title\":\"QC影视\",\"url\":\"https://www.qcsvip.com/api.php/v1.vod\"},{\"title\":\"小蜻蜓\",\"url\":\"http://3ketv.com/mogai_api.php/v1.vod\"},{\"title\":\"漫岛影视\",\"url\":\"http://app.mdaotv.cn/mubai_api.php/m2.vod\"},{\"title\":\"3080影视\",\"url\":\"http://sv.3080l.me/api.php/app/\"},{\"title\":\"极客\",\"url\":\"https://www.i8k.cc/xgapp.php/v1/\"},{\"title\":\"雪人影视\",\"url\":\"https://xg.qd234.cn/api.php/app/\"},{\"title\":\"宅男影院\",\"url\":\"http://www.sexyy.top/api.php/v1.vod\"},{\"title\":\"80K影视\",\"url\":\"https://1080p.tv/api.php/v1.vod\"},{\"title\":\"米来影视\",\"url\":\"http://42.51.37.161:2346/api.php/iptv/vod/\"},{\"title\":\"麻子追剧\",\"url\":\"http://b.2maz.cn/api.php/v1.vod\"},{\"title\":\"小易影视\",\"url\":\"https://xy.irop.cn/api.php/app/\"},{\"title\":\"菜鸟动漫\",\"url\":\"http://taikong.huangguay.com/mogai_api.php/v1.vod\"},{\"title\":\"刺桐影视\",\"url\":\"http://tv.cttv.vip/api.php/iptv/vod/\"},{\"title\":\"渔渔影视\",\"url\":\"http://luobo.yugenye.site/api.php/v1.vod\"},{\"title\":\"畅视影视\",\"url\":\"http://app.reboju.net/api.php/app/\"},{\"title\":\"益达影院\",\"url\":\"http://luobu.yss6080.com/mogai_api.php/v1.vod\"},{\"title\":\"猪猪影院\",\"url\":\"http://app.2zdyy.com/api.php/v1.vod\"},{\"title\":\"苍蓝资源\",\"url\":\"https://vip.ruifenglb.com:4433/api.php/app/\"},{\"title\":\"我爱跟剧\",\"url\":\"https://www.genmov.com/api.php/v1.vod\"},{\"title\":\"世界电影\",\"url\":\"https://app.lovetv.online/api.php/app/\"},{\"title\":\"山楂影视\",\"url\":\"http://dy6.dcd1.cn/api.php/iptv/vod/\"},{\"title\":\"兔子窝\",\"url\":\"http://cj.huimaojia.com:12345/mogai_api.php/v1.vod\"},{\"title\":\"黄河影视\",\"url\":\"http://i.ledu8.cn/api.php/v1.vod\"},{\"title\":\"辉哥影视\",\"url\":\"https://app.y.hgyule8.com/api.php/v1.vod\"},{\"title\":\"疯狂看\",\"url\":\"http://app.fkkdy.vip/mogai_api.php/v1.vod\"},{\"title\":\"筋斗云\",\"url\":\"https://tv.jindcloud.com/api.php/v1.vod\"},{\"title\":\"艾特影视\",\"url\":\"https://www.aitee.cc/api.php/v1.vod\"},{\"title\":\"暖光影视\",\"url\":\"https://app.bl210.com/api.php/v1.vod\"},{\"title\":\"思古影视\",\"url\":\"https://app.siguyy.com/xgapp.php/v1/\"},{\"title\":\"星球视频\",\"url\":\"http://119.29.121.48:8088/api.php/v1.vod\"},{\"title\":\"yoyo\",\"url\":\"http://jx.wnvod.net/ruifenglb_api.php/v1.vod\"},{\"title\":\"初心影视\",\"url\":\"https://www.18mv.club/api.php/v1.vod\"},{\"title\":\"小易影视\",\"url\":\"http://xy.irop.cn/api.php/v1.vod\"},{\"title\":\"播放呀\",\"url\":\"https://www.bofangya.com/xgapp.php/v1/\"},{\"title\":\"天神影视\",\"url\":\"https://deity.fun/api.php/app/\"},{\"title\":\"影视工场\",\"url\":\"https://www.ysgc.cc/xgapp.php/v1/\"},{\"title\":\"冷视TV\",\"url\":\"https://len.tv/api.php/v1.vod\"},{\"title\":\"南府影视\",\"url\":\"http://app.nfuxs.club/nfuxsapp.php/v1.vod\"},{\"title\":\"奈飞中文\",\"url\":\"https://www.naifei.org/api.php/app/\"},{\"title\":\"海棠视频\",\"url\":\"https://www.haitangsp.net/api.php/app/\"},{\"title\":\"漫岛\",\"url\":\"http://a.mdaotv.cn/api.php/app/\"},{\"title\":\"爱追剧\",\"url\":\"https://4k.lqiyi.cn/api.php/app/\"},{\"title\":\"全能影视\",\"url\":\"https://qnys5566.com/mogai_api.php/v1.vod\"},{\"title\":\"小极影视\",\"url\":\"http://app.8d8q.com/api.php/v1.vod\"},{\"title\":\"雪人资源\",\"url\":\"https://zy.qd234.cn/mogai_api.php/v1.vod\"},{\"title\":\"柠柚影视\",\"url\":\"http://nu.e4tv.cn/lvdou_api.php/v1.vod\"},{\"title\":\"名视影\",\"url\":\"http://app.qqccv.com/mogai_api.php/v1.vod\"},{\"title\":\"莫扎兔\",\"url\":\"http://www.mozhatu.xyz/api.php/app/\"},{\"title\":\"麻瓜视频\",\"url\":\"http://aliyun.k8aa.com/mogai_api.php/v1.vod\"},{\"title\":\"爱看美剧\",\"url\":\"https://www.uumjw.com/api.php/v1.vod\"},{\"title\":\"追剧猫\",\"url\":\"http://tv.kmtvb.com/api.php/v1.vod\"},{\"title\":\"橘子影视\",\"url\":\"http://jz.juzidy.vip/mogai_api.php/v1.vod\"},{\"title\":\"久九影视\",\"url\":\"https://api.58qxk.cn/xgapp.php/v1/\"},{\"title\":\"大熊影视\",\"url\":\"https://dxys2233.com/mogai_api.php/v1.vod\"},{\"title\":\"美剧虫\",\"url\":\"https://meijuchong.com/api.php/v1.vod\"},{\"title\":\"皮皮影视\",\"url\":\"http://pp.ig4.cn/api.php/app/\"},{\"title\":\"林谷影视\",\"url\":\"http://ys.linguyy.xyz/mogai_api.php/v1.vod\"},{\"title\":\"快云影音\",\"url\":\"https://www.kuaiyunyy.com/api.php/app/\"},{\"title\":\"U5影视\",\"url\":\"https://appx.uy07.com/api.php/v1.vod\"},{\"title\":\"二九影视\",\"url\":\"https://app.19kp.com/api.php/v1.vod\"},{\"title\":\"优视影视\",\"url\":\"http://cc.ysys.asia/api.php/v1.vod\"},{\"title\":\"思奇TV\",\"url\":\"http://tv.siqitv.vip/api.php/iptv/vod/\"},{\"title\":\"瓜皮TV\",\"url\":\"http://www.dijiaxia.com/xgapp.php/v1/\"},{\"title\":\"老韩综\",\"url\":\"http://zy.kmoonhh.com/api.php/app/\"},{\"title\":\"天空影视\",\"url\":\"https://www.tkys.tv/api.php/app/\"},{\"title\":\"看剧吧\",\"url\":\"http://app.ishen520.com/api.php/v1.vod\"},{\"title\":\"京广航\",\"url\":\"https://www.jingguanhang.com/api.php/app/\"},{\"title\":\"熊猫动漫\",\"url\":\"http://dongman.k8aa.com/mogai_api.php/v1.vod\"},{\"title\":\"喵乐影视\",\"url\":\"http://miaoleys.com/api.php/v1.vod\"},{\"title\":\"冷月TV\",\"url\":\"https://tv.521x5.com/api.php/iptv/vod/\"},{\"title\":\"天天视频\",\"url\":\"http://app.qianju.cc/api.php/v1.vod\"},{\"title\":\"瑞丰资源\",\"url\":\"https://ts.yjhan.com:4433/ruifenglb_api.php/v1.vod\"},{\"title\":\"小极TV\",\"url\":\"http://api.8d8q.com/mmv/api.php/Chengcheng/vod/\"},{\"title\":\"尘梓TV\",\"url\":\"http://cztv.vip:83/api.php/chenziystv/vod/\"},{\"title\":\"二货影视\",\"url\":\"http://d.zjj.life:88/mv/api.php/Chengcheng/vod/\"},{\"title\":\"小熊猫TV\",\"url\":\"http://tv2.hetaoys.vip/api.php/iptv/vod/\"},{\"title\":\"心爱影视\",\"url\":\"https://xays6677.com/mogai_api.php/v1.vod\"},{\"title\":\"酷扑TV\",\"url\":\"https://www.kupu.cc/api.php/app/\"},{\"title\":\"大鱼TV\",\"url\":\"https://www.dytv123.com/api.php/app/\"},{\"title\":\"看看剧\",\"url\":\"https://www.kankanju.cn/api.php/v1.vod\"},{\"title\":\"蓝光视频\",\"url\":\"http://vip.91iqiyi.com/mogai_api.php/v1.vod\"},{\"title\":\"比邻影视\",\"url\":\"http://0hzy.cn:9990/mogai_api.php/v1.vod\"},{\"title\":\"乐酷TV\",\"url\":\"http://150.138.78.177:2021/api.php/Chengcheng/vod/\"},{\"title\":\"雨果影视\",\"url\":\"http://ygapp.xcys63.com/api.php/v1.vod\"},{\"title\":\"北墨影院\",\"url\":\"http://beimotv.com/api.php/app/\"},{\"title\":\"爱影视\",\"url\":\"https://www.hzlff.cn/api.php/v1.vod\"},{\"title\":\"荔枝影视\",\"url\":\"http://api.zjys.vip/api.php/iptv/vod/\"},{\"title\":\"畅看影视\",\"url\":\"http://www.sxbrd.com/api.php/app/\"},{\"title\":\"杨桃影视\",\"url\":\"https://ytys3456.com/mogai_api.php/v1.vod\"},{\"title\":\"DC影视\",\"url\":\"http://chaorenbb.com/api.php/v1.vod\"},{\"title\":\"我爱电影\",\"url\":\"http://xg.5imv.net/api.php/app/\"},{\"title\":\"雪梨视频\",\"url\":\"https://zsb2233.com/mogai_api.php/v1.vod\"},{\"title\":\"vip影院\",\"url\":\"http://360yy.cn/api.php/app/\"},{\"title\":\"动力影视\",\"url\":\"http://www.love9989.com/api.php/iptv/vod/\"},{\"title\":\"百讯视频\",\"url\":\"https://z.iopenyun.com:99/app_api.php/v1.vod\"},{\"title\":\"豆渣影视\",\"url\":\"http://douzhayss.cc/api.php/v1.vod\"},{\"title\":\"安逸影视\",\"url\":\"http://aytv.wchulian.com.cn:6633/api.php/app/\"},{\"title\":\"蜜果TV\",\"url\":\"http://vv.miguotv.net/m/api.php/Chengcheng/vod/\"},{\"title\":\"温妮影视\",\"url\":\"https://www.wenniys.com/mogai_api.php/v1.vod\"},{\"title\":\"小七影视\",\"url\":\"http://ys.kd60.cn/api.php/app/\"},{\"title\":\"极光影院\",\"url\":\"http://app.winxz.cc/api.php/v1.vod\"},{\"title\":\"神马影院\",\"url\":\"https://www.6080kan.cc/xgapp.php/v1/\"},{\"title\":\"躺平影视\",\"url\":\"http://www.lltpys.com/api.php/app/\"},{\"title\":\"污妖动漫\",\"url\":\"https://www.wyydm.com/api.php/app/\"},{\"title\":\"星辰视频\",\"url\":\"https://m.hj0999.com/api.php/v1.vod\"},{\"title\":\"新享影视\",\"url\":\"https://www.jiagan.cx/api.php/v1.vod\"},{\"title\":\"柚子视频\",\"url\":\"http://yz.26ys.cn/api.php/v1.vod\"},{\"title\":\"饭团影院\",\"url\":\"http://television.wkfile.com/api.php/app/\"},{\"title\":\"若惜影视\",\"url\":\"http://rxw.ruoxinew.com/api.php/Sntv/vod/\"},{\"title\":\"913e影视\",\"url\":\"http://www.913e.net/xgapp.php/v1/\"},{\"title\":\"剧迷视频\",\"url\":\"http://pan.hzafw.com/api.php/v1.vod\"},{\"title\":\"非凡TV\",\"url\":\"https://app.feifan.live:2087/xgapp.php/v1/\"},{\"title\":\"三日影院\",\"url\":\"https://www.3ri.net/api.php/v1.vod\"},{\"title\":\"爱迪影视\",\"url\":\"https://aidi.fun/xgapp.php/v1/\"},{\"title\":\"氢视频\",\"url\":\"http://h1080p.com/api.php/app/\"},{\"title\":\"独播社\",\"url\":\"http://35ys.cc/api.php/v1.vod\"},{\"title\":\"80影视\",\"url\":\"http://www.ccc8.net/api.php/v1.vod\"},{\"title\":\"土豆TV\",\"url\":\"http://xiuxian.qd234.cn/mogai_api.php/v1.vod\"},{\"title\":\"(无名)\",\"url\":\"http://ccxg.xazhutu.com/xgapp.php/v1/\"},{\"title\":\"双子星\",\"url\":\"http://tv.diyoui.cc/api.php/iptv/vod/\"},{\"title\":\"灵狐影视\",\"url\":\"http://x.dmntv.com/api.php/app/\"},{\"title\":\"萌蛋蛋\",\"url\":\"http://app.mengdandan.com/xgapp.php/v1/\"},{\"title\":\"LIBVIO\",\"url\":\"https://www.mkys.me/api.php/app/\"},{\"title\":\"影阅阁\",\"url\":\"http://221.236.18.12:665/api.php/v1.vod\"},{\"title\":\"大头影视\",\"url\":\"http://dy.idsao.com/mogai_api.php/v1.vod\"},{\"title\":\"爱追剧\",\"url\":\"http://81.71.18.95:520/lvdou_api.php/v1.vod\"},{\"title\":\"玺心影视\",\"url\":\"https://tv.arbd.cn/api.php/v1.vod\"},{\"title\":\"傲视影院\",\"url\":\"http://j.zjj.life:88/mv/api.php/Chengcheng/vod/\"},{\"title\":\"抹茶猪\",\"url\":\"https://www.mczdyw.com/api.php/app/\"},{\"title\":\"嗷呜动漫\",\"url\":\"http://app.aowufuns.com:1031/api.php/app/\"},{\"title\":\"盒子影院\",\"url\":\"http://i.nihaohezi.com/api.php/v1.vod\"},{\"title\":\"小白视频\",\"url\":\"https://ccoyytv.com/api.php/app/\"},{\"title\":\"遗忘影视\",\"url\":\"http://www.bywdtk.vip/mogai_api.php/v1.vod\"},{\"title\":\"迪迪影院\",\"url\":\"http://dd88.icu:6080/api.php/app/\"},{\"title\":\"嘀哩嘀哩\",\"url\":\"http://dilidili.la/api.php/app/\"},{\"title\":\"段友影视\",\"url\":\"http://js.66app.me/api.php/v1.vod\"},{\"title\":\"侦探影视\",\"url\":\"http://ys.huangguay.com/mogai_api.php/v1.vod\"},{\"title\":\"HG影视\",\"url\":\"http://hgyx.vip/api.php/v1.vod\"},{\"title\":\"饭后电影\",\"url\":\"http://summ.vip/api.php/v1.vod\"},{\"title\":\"月亮影视\",\"url\":\"http://ys.13tv.top/acj_api.php/v1.vod\"},{\"title\":\"黑龙影视\",\"url\":\"http://vip.ji-ding-he.site/api.php/iptv/vod/\"},{\"title\":\"苗点影视\",\"url\":\"https://www.msdv.cn/api.php/app/\"},{\"title\":\"可米影视\",\"url\":\"http://www.kmysw.vip/api.php/v1.vod\"},{\"title\":\"美剧范\",\"url\":\"http://ttzmz.net/api.php/v1.vod\"},{\"title\":\"HG影视\",\"url\":\"http://api.hgyx.vip/api.php/iptv/vod/\"},{\"title\":\"虎猫视频\",\"url\":\"https://humaosp.com/mogai_api.php/v1.vod\"},{\"title\":\"映迷\",\"url\":\"https://www.inmi.app/xgapp.php/v1/\"},{\"title\":\"手指影视\",\"url\":\"https://szys5678.com/mogai_api.php/v1.vod\"},{\"title\":\"影视大全\",\"url\":\"https://xc.xixi2yy.xyz/mogai_api.php/v1.vod\"},{\"title\":\"1080p\",\"url\":\"https://1080p.one/mogai_api.php/v1.vod\"},{\"title\":\"嘀哩嘀哩\",\"url\":\"https://api.diliktv.xyz/api.php/Chengcheng/vod/\"},{\"title\":\"555电影\",\"url\":\"http://w7tv.com/xgapp.php/v1/\"},{\"title\":\"追剧吧\",\"url\":\"http://zhuiju8.vip/api.php/v1.vod\"},{\"title\":\"爱西西\",\"url\":\"http://app.aixixi.vip/mogai_api.php/v1.vod\"},{\"title\":\"2号币\",\"url\":\"http://phoebe.cf/api.php/iptv/vod/\"},{\"title\":\"蜗牛动漫\",\"url\":\"http://woniudm.woniu.cyou:20000/mogai_api.php/v1.vod\"},{\"title\":\"影视热剧\",\"url\":\"http://lb.26ys.cn/api.php/v1.vod\"},{\"title\":\"毒舌电影\",\"url\":\"https://cms.96ym.cn/api.php/app/\"}]";
        String json2 = "[{\"baseUrl\":\"\",\"apiUrl\":\"http://www.lanmaody.com/api.php/v1.vod\",\"searchUrl\":\"http://www.lanmaody.com/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"懒猫电影\",\"detailUrl\":\"http://www.lanmaody.com/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"https://www.jingguanghang.com\",\"apiUrl\":\"https://www.jingguanghang.com/api.php/app/\",\"searchUrl\":\"https://www.jingguanghang.com/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"京广航\",\"detailUrl\":\"https://www.jingguanghang.com/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"https://www.wyydm.com\",\"apiUrl\":\"https://www.wyydm.com/api.php/app/\",\"searchUrl\":\"https://www.wyydm.com/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"污妖动漫\",\"detailUrl\":\"https://www.wyydm.com/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://tv.78tv.cc/api.php/v1.vod\",\"searchUrl\":\"http://tv.78tv.cc/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"休闲影视\",\"detailUrl\":\"http://tv.78tv.cc/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://ys.huangguay.com/mogai_api.php/v1.vod\",\"searchUrl\":\"http://ys.huangguay.com/mogai_api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"侦探影视\",\"detailUrl\":\"http://ys.huangguay.com/mogai_api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"http://www.dijiaxia.com\",\"apiUrl\":\"http://www.dijiaxia.com/xgapp.php/v1/\",\"searchUrl\":\"http://www.dijiaxia.com/xgapp.php/v1/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"瓜皮TV\",\"detailUrl\":\"http://www.dijiaxia.com/xgapp.php/v1/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://www.videovips.top/api.php/v1.vod\",\"searchUrl\":\"http://www.videovips.top/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"哈尼视频\",\"detailUrl\":\"http://www.videovips.top/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://1080p.tv/api.php/v1.vod\",\"searchUrl\":\"http://1080p.tv/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"80k影视\",\"detailUrl\":\"http://1080p.tv/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://lbapp.huimaojia.com:30119/mogai_api.php/v1.vod\",\"searchUrl\":\"http://lbapp.huimaojia.com:30119/mogai_api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"白菜追剧\",\"detailUrl\":\"http://lbapp.huimaojia.com:30119/mogai_api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"https://tv.13nm.com/api.php/v1.vod\",\"searchUrl\":\"https://tv.13nm.com/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"柠檬影视\",\"detailUrl\":\"https://tv.13nm.com/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://dm.496dy.cn:88/api.php/v1.vod\",\"searchUrl\":\"http://dm.496dy.cn:88/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"追番猫\",\"detailUrl\":\"http://dm.496dy.cn:88/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"https://lb.5277s.com/api.php/v1.vod\",\"searchUrl\":\"https://lb.5277s.com/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"段友影视\",\"detailUrl\":\"https://lb.5277s.com/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://3ketv.com/mogai_api.php/v1.vod\",\"searchUrl\":\"http://3ketv.com/mogai_api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"小蜻蜓视频\",\"detailUrl\":\"http://3ketv.com/mogai_api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://cs.hgyx.vip/api.php/v1.vod\",\"searchUrl\":\"http://cs.hgyx.vip/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"HG影视\",\"detailUrl\":\"http://cs.hgyx.vip/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"https://len.tv/api.php/v1.vod\",\"searchUrl\":\"https://len.tv/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"冷视TV\",\"detailUrl\":\"https://len.tv/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"https://fufu.ixhduta.cn/api.php/v1.vod\",\"searchUrl\":\"https://fufu.ixhduta.cn/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"FUFU影视\",\"detailUrl\":\"https://fufu.ixhduta.cn/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://119.29.121.48/api.php/v1.vod\",\"searchUrl\":\"http://119.29.121.48/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"团夕影院\",\"detailUrl\":\"http://119.29.121.48/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"https://dbzy.cc\",\"apiUrl\":\"https://dbzy.cc/xgapp.php/v1/\",\"searchUrl\":\"https://dbzy.cc/xgapp.php/v1/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"点播TV\",\"detailUrl\":\"https://dbzy.cc/xgapp.php/v1/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"http://w7tv.com\",\"apiUrl\":\"http://w7tv.com/api.php/app/\",\"searchUrl\":\"http://w7tv.com/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"555电影\",\"detailUrl\":\"http://w7tv.com/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"https://www.bofangya.com\",\"apiUrl\":\"https://www.bofangya.com/xgapp.php/v1/\",\"searchUrl\":\"https://www.bofangya.com/xgapp.php/v1/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"播放呀\",\"detailUrl\":\"https://www.bofangya.com/xgapp.php/v1/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://app.shuhai99.com/api.php/v1.vod\",\"searchUrl\":\"http://app.shuhai99.com/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"淘剧社\",\"detailUrl\":\"http://app.shuhai99.com/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"https://www.007ts.cc\",\"apiUrl\":\"https://www.007ts.cc/api.php/app/\",\"searchUrl\":\"https://www.007ts.cc/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"007影视\",\"detailUrl\":\"https://www.007ts.cc/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://app.xiaoysw.com/api.php/v1.vod\",\"searchUrl\":\"http://app.xiaoysw.com/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"小极影视\",\"detailUrl\":\"http://app.xiaoysw.com/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"https://www.dushe520.com\",\"apiUrl\":\"https://www.dushe520.com/api.php/app/\",\"searchUrl\":\"https://www.dushe520.com/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"毒舌电影\",\"detailUrl\":\"https://www.dushe520.com/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://mm.tcsdchina.com:6096/mogai_api.php/v1.vod\",\"searchUrl\":\"http://mm.tcsdchina.com:6096/mogai_api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"公主影视\",\"detailUrl\":\"http://mm.tcsdchina.com:6096/mogai_api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://zly.xjqxz.top/api.php/v1.vod\",\"searchUrl\":\"http://zly.xjqxz.top/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"颖家影院\",\"detailUrl\":\"http://zly.xjqxz.top/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"http://app.reboju.net\",\"apiUrl\":\"http://app.reboju.net/api.php/app/\",\"searchUrl\":\"http://app.reboju.net/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"畅视影视\",\"detailUrl\":\"http://app.reboju.net/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"https://www.u23c.com\",\"apiUrl\":\"https://www.u23c.com/api.php/app/\",\"searchUrl\":\"https://www.u23c.com/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"琳琅影视\",\"detailUrl\":\"https://www.u23c.com/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://app.xkvideo.design/api.php/v1.vod\",\"searchUrl\":\"http://app.xkvideo.design/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"南府追剧\",\"detailUrl\":\"http://app.xkvideo.design/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"https://xy.irop.cn\",\"apiUrl\":\"https://xy.irop.cn/api.php/app/\",\"searchUrl\":\"https://xy.irop.cn/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"小易影视\",\"detailUrl\":\"https://xy.irop.cn/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://szys3355.com/mogai_api.php/v1.vod\",\"searchUrl\":\"http://szys3355.com/mogai_api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"手指影视\",\"detailUrl\":\"http://szys3355.com/mogai_api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"http://dd88.icu:6080\",\"apiUrl\":\"http://dd88.icu:6080/api.php/app/\",\"searchUrl\":\"http://dd88.icu:6080/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"迪迪影院\",\"detailUrl\":\"http://dd88.icu:6080/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://www.ccc8.net/api.php/v1.vod\",\"searchUrl\":\"http://www.ccc8.net/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"80影视\",\"detailUrl\":\"http://www.ccc8.net/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://4kdytv.com/api.php/v1.vod\",\"searchUrl\":\"http://4kdytv.com/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"4K影院\",\"detailUrl\":\"http://4kdytv.com/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"https://lb.5277s.com\",\"apiUrl\":\"https://www.i8k.cc/xgapp.php/v1/\",\"searchUrl\":\"https://www.i8k.cc/xgapp.php/v1/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"极客\",\"detailUrl\":\"https://www.i8k.cc/xgapp.php/v1/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"http://xf123.cc\",\"apiUrl\":\"http://xf123.cc/api.php/app/\",\"searchUrl\":\"http://xf123.cc/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"海胆影视\",\"detailUrl\":\"http://xf123.cc/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://58xtv.net/api.php/v1.vod\",\"searchUrl\":\"http://58xtv.net/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"先锋影视\",\"detailUrl\":\"http://58xtv.net/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://miaoletv.com/api.php/v1.vod\",\"searchUrl\":\"http://miaoletv.com/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"喵乐影视\",\"detailUrl\":\"http://miaoletv.com/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://www.sp.ooo/api.php/v1.vod\",\"searchUrl\":\"http://www.sp.ooo/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"VIP影视\",\"detailUrl\":\"http://www.sp.ooo/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"https://www.ik4.cc\",\"apiUrl\":\"https://www.ik4.cc/api.php/app/\",\"searchUrl\":\"https://www.ik4.cc/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"影视工场\",\"detailUrl\":\"https://www.ik4.cc/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"https://app.linzhiyuan.xyz\",\"apiUrl\":\"https://app.linzhiyuan.xyz/xgapp.php/v1/\",\"searchUrl\":\"https://app.linzhiyuan.xyz/xgapp.php/v1/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"5060影院\",\"detailUrl\":\"https://app.linzhiyuan.xyz/xgapp.php/v1/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"https://www.hzlff.cn/api.php/v1.vod\",\"searchUrl\":\"https://www.hzlff.cn/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"爱影视\",\"detailUrl\":\"https://www.hzlff.cn/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"http://1.wcx.fit:8\",\"apiUrl\":\"http://1.wcx.fit:8/api.php/app/\",\"searchUrl\":\"http://1.wcx.fit:8/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"火箭影视\",\"detailUrl\":\"http://1.wcx.fit:8/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"http://app.jhdyw.vip:1234\",\"apiUrl\":\"http://app.jhdyw.vip:1234/api.php/app/\",\"searchUrl\":\"http://app.jhdyw.vip:1234/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"江湖影视\",\"detailUrl\":\"http://app.jhdyw.vip:1234/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"http://www.languotv.com\",\"apiUrl\":\"http://www.languotv.com/xgapp.php/v1/\",\"searchUrl\":\"http://www.languotv.com/xgapp.php/v1/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"蓝果影视\",\"detailUrl\":\"http://www.languotv.com/xgapp.php/v1/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://www.bd-4k.ml/api.php/v1.vod\",\"searchUrl\":\"http://www.bd-4k.ml/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"一只鱼影视\",\"detailUrl\":\"http://www.bd-4k.ml/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"http://www.913e.net\",\"apiUrl\":\"http://www.913e.net/api.php/app/\",\"searchUrl\":\"http://www.913e.net/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"913E影视\",\"detailUrl\":\"http://www.913e.net/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://longw.xyz:91/api.php/v1.vod\",\"searchUrl\":\"http://longw.xyz:91/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"追影兔\",\"detailUrl\":\"http://longw.xyz:91/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"https://api.58qxk.cn\",\"apiUrl\":\"https://api.58qxk.cn/api.php/app/\",\"searchUrl\":\"https://api.58qxk.cn/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"久九影视\",\"detailUrl\":\"https://api.58qxk.cn/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"https://app.siguyy.com\",\"apiUrl\":\"https://app.siguyy.com/xgapp.php/v1/\",\"searchUrl\":\"https://app.siguyy.com/xgapp.php/v1/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"思古影视\",\"detailUrl\":\"https://app.siguyy.com/xgapp.php/v1/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"http://app.mengdandan.com\",\"apiUrl\":\"http://app.mengdandan.com/xgapp.php/v1/\",\"searchUrl\":\"http://app.mengdandan.com/xgapp.php/v1/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"萌蛋蛋\",\"detailUrl\":\"http://app.mengdandan.com/xgapp.php/v1/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://app.5lp.net/api.php/v1.vod\",\"searchUrl\":\"http://app.5lp.net/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"吾爱影视\",\"detailUrl\":\"http://app.5lp.net/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://app.hetaoys.vip/api.php/v1.vod\",\"searchUrl\":\"http://app.hetaoys.vip/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"核桃影视V1\",\"detailUrl\":\"http://app.hetaoys.vip/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://yuntv.iyxtv.cn/mogai_api.php/v1.vod\",\"searchUrl\":\"http://yuntv.iyxtv.cn/mogai_api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"优炫影视\",\"detailUrl\":\"http://yuntv.iyxtv.cn/mogai_api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"https://www.aisvod.tv\",\"apiUrl\":\"https://www.aisvod.tv/xgapp.php/v1/\",\"searchUrl\":\"https://www.aisvod.tv/xgapp.php/v1/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"爱尚影视\",\"detailUrl\":\"https://www.aisvod.tv/xgapp.php/v1/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://www.fj6080.com/api.php/v1.vod\",\"searchUrl\":\"http://www.fj6080.com/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"飞捷影视\",\"detailUrl\":\"http://www.fj6080.com/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"https://diliktv.xyz\",\"apiUrl\":\"https://diliktv.xyz/xgapp.php/v1/\",\"searchUrl\":\"https://diliktv.xyz/xgapp.php/v1/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"嘀哩嘀哩\",\"detailUrl\":\"https://diliktv.xyz/xgapp.php/v1/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://v.nhdyys.cn/api.php/v1.vod\",\"searchUrl\":\"http://v.nhdyys.cn/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"内涵影视\",\"detailUrl\":\"http://v.nhdyys.cn/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"http://app1.yuzhouys.com\",\"apiUrl\":\"http://app1.yuzhouys.com/api.php/app/\",\"searchUrl\":\"http://app1.yuzhouys.com/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"海绵影视\",\"detailUrl\":\"http://app1.yuzhouys.com/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"https://hou.lu\",\"apiUrl\":\"https://hou.lu/api.php/app/\",\"searchUrl\":\"https://hou.lu/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"大师兄\",\"detailUrl\":\"https://hou.lu/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://www.52gen.com/api.php/v1.vod\",\"searchUrl\":\"http://www.52gen.com/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"我爱跟剧\",\"detailUrl\":\"http://www.52gen.com/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://www.269w.com/api.php/v1.vod\",\"searchUrl\":\"http://www.269w.com/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"小城影视\",\"detailUrl\":\"http://www.269w.com/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"https://app.y.hgyule8.com/api.php/v1.vod\",\"searchUrl\":\"https://app.y.hgyule8.com/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"辉哥影视\",\"detailUrl\":\"https://app.y.hgyule8.com/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://zhuijuba.vip/api.php/v1.vod\",\"searchUrl\":\"http://zhuijuba.vip/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"追剧吧\",\"detailUrl\":\"http://zhuijuba.vip/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"https://vip.wuqcms.com\",\"apiUrl\":\"https://vip.wuqcms.com/api.php/app/\",\"searchUrl\":\"https://vip.wuqcms.com/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"极乐阁\",\"detailUrl\":\"https://vip.wuqcms.com/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"https://www.18mv.club/api.php/v1.vod\",\"searchUrl\":\"https://www.18mv.club/api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"初心影视\",\"detailUrl\":\"https://www.18mv.club/api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"https://ptygx.com\",\"apiUrl\":\"https://ptygx.com/api.php/app/\",\"searchUrl\":\"https://ptygx.com/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"九合视频\",\"detailUrl\":\"https://ptygx.com/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"http://vipmv.tv\",\"apiUrl\":\"http://vipmv.tv/xgapp.php/v1/\",\"searchUrl\":\"http://vipmv.tv/xgapp.php/v1/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"追剧达人\",\"detailUrl\":\"http://vipmv.tv/xgapp.php/v1/video_detail?id=%s\",\"type\":\"AppV0\"},{\"baseUrl\":\"\",\"apiUrl\":\"http://yfys1122.com/mogai_api.php/v1.vod\",\"searchUrl\":\"http://yfys1122.com/mogai_api.php/v1.vod?page=1&limit=10&wd=%s\",\"parserUrl\":\"\",\"sourceName\":\"远方影视\",\"detailUrl\":\"http://yfys1122.com/mogai_api.php/v1.vod/detail?vod_id=%s&rel_limit=10\",\"type\":\"aiKanTv\"},{\"baseUrl\":\"http://www.ayinb.com\",\"apiUrl\":\"http://www.ayinb.com/api.php/app/\",\"searchUrl\":\"http://www.ayinb.com/api.php/app/search?text=%s&pg=1\",\"parserUrl\":\"\",\"sourceName\":\"爱影吧\",\"detailUrl\":\"http://www.ayinb.com/api.php/app/video_detail?id=%s\",\"type\":\"AppV0\"}]";
        JSONArray array1 = new JSONArray(json1);
        JSONArray array2 = new JSONArray(json2);
        JSONArray array3 = new JSONArray();
        JSONArray array4 = new JSONArray();
        for (int i = 0; i < array2.length(); i++) {
            JSONObject ysdq = array2.optJSONObject(i);
            for (int j = 0; j < array1.length(); j++) {
                JSONObject appYs = array1.optJSONObject(j);
                if (ysdq.optString("apiUrl").equalsIgnoreCase(appYs.optString("url"))) {
                    System.out.println(ysdq.toString());
                    array3.put(ysdq);
                    break;
                }
            }
        }
        System.out.println(array3.toString(4));
        System.out.println(array4.toString(4));
    }

    @Test
    public void testM3U8Sites() {
        String s = OkHttpUtil.string("https://gitee.com/shentong_012/HikerRules/raw/master/%E8%A7%86%E7%95%8C.m3u8", getHeaders(""));
        try {
            AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
            analyzeRule.setContent(s, "");
            analyzeRule.setRedirectUrl("");
            List channels = analyzeRule.getElements(":#EX(TINF):-1 group-title=\"(.*)\",(.*)\\s(.*)");
            Map<String, List> c3;
            Map<String, Map<String, List>> c1 = new HashMap<>();
            int i = 0;
            for (Object channel : channels) {
//                        if(i>=300){
//                            break;
//                        }
                analyzeRule.setContent(channel);

                String url1 = analyzeRule.getString("$3");
                String name = analyzeRule.getString("$2");
                String group = analyzeRule.getString("$1");
                if (c1.get(group) == null) {
                    c3 = new HashMap<>();
                    c1.put(group, c3);
                } else {
                    c3 = c1.get(group);
                }
                List urls1;
                if (c3.get(name) == null) {
                    urls1 = new ArrayList();
                    c3.put(name, urls1);
                } else {
                    urls1 = c3.get(name);
                }
                if (url1.endsWith(".m3u8")) {
                    String content = OkHttpUtil.string(url1, getHeaders(""));
                    if (StringUtils.contains(content, "#EXTM3U")) {
                        urls1.add(url1);
                        System.out.println(url1);
                    }
                }
                i++;
            }
            System.out.println(new JSONObject(c1).toString(4));

            JSONArray e1 = new JSONArray();
            c1.forEach((key, value) -> {
                JSONObject d1 = new JSONObject();
                try {
                    JSONArray d2 = new JSONArray();
                    value.forEach((key1, value1) -> {
                        try {

                            if (!value1.isEmpty()) {
                                JSONObject d3 = new JSONObject();
                                d3.put("name", key1);
                                d3.put("urls", value1);
                                d2.put(d3);
                            }
                        } catch (Exception e) {

                        }
                    });
                    d1.put("group", key);
                    d1.put("channels", d2);
                    e1.put(d1);
                } catch (Exception e) {

                }

            });
            System.out.println(e1.toString(4));
        } catch (Exception e) {

        }
    }

    @Test
    public void testMatch() {
        String str = "#EXTM3U\n" +
                "#EXTINF:-1 group-title=\"港台频道\",凤凰资讯台\n" +
                "http://ott.js.chinamobile.com/TVOD/3/224/3221228098/index.m3u8\n" +
                "#EXTINF:-1 group-title=\"港台频道\",凤凰香港台\n" +
                "http://ott.js.chinamobile.com/TVOD/3/224/3221228060/index.m3u8";
        Pattern pattern = Pattern.compile("#EXTINF:-1 group-title=\"(.*)\",(.*)\\s(.*)");
        Matcher matcher = pattern.matcher(str);
        while (matcher.find()) {
            System.out.println(matcher.group(0));
        }
    }

    @Test
    public void testCatLegddo() {
        String s = OkHttpUtil.string("https://mao.guibiaoguo.tk/212757.json", getHeaders(""));
        try {
            JSONObject mao = new JSONObject(s);
            JSONArray sites = mao.optJSONArray("sites");
            JSONArray trueSites = new JSONArray();
            for (int i = 0; i < sites.length(); i++) {
                int k = 0;
                JSONObject site = sites.optJSONObject(i);
                try {
                    Spider spider = null;
                    String api = site.optString("api");
                    String ext = site.optString("ext");
                    if (site.optInt("type") == 0) {
                        if (StringUtil.isAbsUrl(api)) {
                            String content = OkHttpUtil.string(api, getHeaders(""));
                            if (StringUtils.isNotEmpty(content)) {
                                trueSites.put(site);
                            }
                        } else {
                            trueSites.put(site);
                        }
                        continue;
                    }

                    if (!StringUtil.isAbsUrl(api)) {
                        Class cls = null;
                        try {
                            if (api.contains("XPath")) {
                                cls = Class.forName("com.github.catvod.spider.Legado1");
                            } else {
                                cls = Class.forName("com.github.catvod.spider." + api.substring(4));
                            }
                            spider = (Spider) cls.newInstance();
                        } catch (Exception e) {
                            System.out.println(e.getMessage());
                        }
                        if (spider == null) {
                            continue;
                        }
                        if (StringUtils.isNotEmpty(ext)) {
                            Method method = cls.getMethod("init", Context.class, String.class);
                            method.invoke(spider, null, ext);
                        } else {
                            spider.init(null);
                        }
                        String category = spider.homeContent(false);
                        System.out.println(category);
                        try {
                            showCategory(spider, category, 0);
                            k++;
                        } catch (Exception e) {

                        }

                        if (StringUtils.isNotEmpty(category)) {
                            JSONObject jsonObject = new JSONObject(category);
                            JSONArray classes = jsonObject.optJSONArray("class");
                            for (int j = 0; j < classes.length(); j++) {
                                String tid = classes.getJSONObject(j).optString("type_id");
                                System.out.println(tid);
                                category = spider.categoryContent(tid, "1", false, null);
                                System.out.println(category);
                                try {
                                    showCategory(spider, category, 0);
                                    k++;
                                } catch (Exception e) {

                                }
                            }
                        }
                        String[] keys = {"名侦探柯南 普通话"};
                        for (String key : keys) {
                            category = spider.searchContent(key, false);
                            System.out.println(category);
                            if (StringUtils.isNotEmpty(category)) {
                                try {
                                    showCategory(spider, category, 0);
                                    k++;
                                } catch (Exception e) {

                                }
                            }
                        }
                    }
                } catch (Exception e) {
                    SpiderDebug.log(e);
                }
                if (k > 0)
                    trueSites.put(site);
            }
            System.out.println(trueSites.toString(4));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void testXpath() throws Exception {
        AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
        String content = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n" +
                "<!--created on 2022-01-03 02:37:01 - tinyMediaManager 4.2.4-->\n" +
                "<movie>\n" +
                "  <title>星河战队2：联邦英雄</title>\n" +
                "  <originaltitle>Starship Troopers 2: Hero of the Federation</originaltitle>\n" +
                "  <sorttitle/>\n" +
                "  <epbookmark/>\n" +
                "  <year>2004</year>\n" +
                "  <ratings>\n" +
                "    <rating default=\"false\" max=\"10\" name=\"themoviedb\">\n" +
                "      <value>4.2</value>\n" +
                "      <votes>406</votes>\n" +
                "    </rating>\n" +
                "    <rating default=\"true\" max=\"10\" name=\"imdb\">\n" +
                "      <value>3.6</value>\n" +
                "      <votes>22836</votes>\n" +
                "    </rating>\n" +
                "    <rating default=\"false\" max=\"10\" name=\"NFO\">\n" +
                "      <value>3.5</value>\n" +
                "      <votes>0</votes>\n" +
                "    </rating>\n" +
                "  </ratings>\n" +
                "  <userrating>0.0</userrating>\n" +
                "  <top250>0</top250>\n" +
                "  <set>\n" +
                "    <name>星河战队（系列）</name>\n" +
                "    <overview/>\n" +
                "  </set>\n" +
                "  <plot>　　在虫族突袭布宜诺斯艾利斯之后，联邦军队发动反攻，在坦戈约里击溃虫族，并在P行星虏获虫族首领。在此之后，联邦军队乘胜追击，派大军杀向虫族隔离区。残酷的战斗没有止境，机动部队第6战队遭到虫族围攻，苦盼救援部队不得，眼看灭亡在即。关键时刻，第6战队首领夏普德将军（埃德·劳特 Ed Lauter 饰）与几名士兵吸引虫族，命令霍顿（Jason-Shane Scott 饰）、珊蒂余下的战士前往最近的祖鲁角哨站避难。此前，该哨站已经废止，所有人员全部死亡，只有一名中尉幸存。在这个隔绝之地，战士们进行最后的抵抗……</plot>\n" +
                "  <outline>　　在虫族突袭布宜诺斯艾利斯之后，联邦军队发动反攻，在坦戈约里击溃虫族，并在P行星虏获虫族首领。在此之后，联邦军队乘胜追击，派大军杀向虫族隔离区。残酷的战斗没有止境，机动部队第6战队遭到虫族围攻，苦盼救援部队不得，眼看灭亡在即。关键时刻，第6战队首领夏普德将军（埃德·劳特 Ed Lauter 饰）与几名士兵吸引虫族，命令霍顿（Jason-Shane Scott 饰）、珊蒂余下的战士前往最近的祖鲁角哨站避难。此前，该哨站已经废止，所有人员全部死亡，只有一名中尉幸存。在这个隔绝之地，战士们进行最后的抵抗……</outline>\n" +
                "  <tagline/>\n" +
                "  <runtime>88</runtime>\n" +
                "  <thumb aspect=\"poster\">https://image.tmdb.org/t/p/original/9iqrqOjLaFcGNnSQlJxYLfgrhqn.jpg</thumb>\n" +
                "  <fanart>\n" +
                "    <thumb>https://image.tmdb.org/t/p/original/kSEc72AYeZEgwPBHle8bGjmRnAC.jpg</thumb>\n" +
                "  </fanart>\n" +
                "  <mpaa>US:R / US:Rated R</mpaa>\n" +
                "  <certification>US:R / US:Rated R</certification>\n" +
                "  <id>tt0367093</id>\n" +
                "  <tmdbid>10304</tmdbid>\n" +
                "  <tmdbCollectionId>10522</tmdbCollectionId>\n" +
                "  <uniqueid default=\"false\" type=\"Imdb\">tt0367093</uniqueid>\n" +
                "  <uniqueid default=\"false\" type=\"Tmdb\">10304</uniqueid>\n" +
                "  <uniqueid default=\"false\" type=\"tmdb\">10304</uniqueid>\n" +
                "  <uniqueid default=\"false\" type=\"tmdbSet\">10522</uniqueid>\n" +
                "  <uniqueid default=\"true\" type=\"imdb\">tt0367093</uniqueid>\n" +
                "  <country>美国</country>\n" +
                "  <status/>\n" +
                "  <code/>\n" +
                "  <premiered>2004-04-20</premiered>\n" +
                "  <watched>false</watched>\n" +
                "  <playcount>0</playcount>\n" +
                "  <lastplayed/>\n" +
                "  <genre>Adventure</genre>\n" +
                "  <genre>Horror</genre>\n" +
                "  <genre>Action</genre>\n" +
                "  <genre>Science Fiction</genre>\n" +
                "  <studio>Startroop Pictures Inc.</studio>\n" +
                "  <studio>Tippett Studio</studio>\n" +
                "  <credits>Edward Neumeier</credits>\n" +
                "  <director tmdbid=\"7727\">Phil Tippett</director>\n" +
                "  <tag>general</tag>\n" +
                "  <tag>places and planets</tag>\n" +
                "  <tag>extraterrestrial technology</tag>\n" +
                "  <tag>troops</tag>\n" +
                "  <tag>us army</tag>\n" +
                "  <tag>alien life-form</tag>\n" +
                "  <tag>creature</tag>\n" +
                "  <actor>\n" +
                "    <name>Billy Brown</name>\n" +
                "    <role>Pvt. Ottis Brick</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/xE1AQdJeTwgrFq7hdSeSjaHNL9h.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/64805</profile>\n" +
                "    <tmdbid>64805</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Richard Burgi</name>\n" +
                "    <role>Capt. V.J. Dax</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/o4YYXnrZI69OZ8bm57sQCfxQYBT.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/25849</profile>\n" +
                "    <tmdbid>25849</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Kelly Carlson</name>\n" +
                "    <role>Pvt. Charlie Soda</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/ixaaYmWOznjPO1hD2QGRQO6gDu6.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/56447</profile>\n" +
                "    <tmdbid>56447</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Cy Carter</name>\n" +
                "    <role>Pvt. Billie Otter</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/1LQnSwpHY4MaLCySbfHR20dhlte.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/64806</profile>\n" +
                "    <tmdbid>64806</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Sandrine Holt</name>\n" +
                "    <role>Pvt. Jill Sandee</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/iiB6r5Ja19phs5TMlIF3EgjycGe.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/65345</profile>\n" +
                "    <tmdbid>65345</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Ed Lauter</name>\n" +
                "    <role>Gen. Jack Gordon Shepherd</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/5q1CNG6M4cKIrFjFmy7typjEPqt.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/21523</profile>\n" +
                "    <tmdbid>21523</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>J.P. Manoux</name>\n" +
                "    <role>TSgt. Ari Peck</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/lLEfizV970QfahQSBssUvj8Exs7.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/88702</profile>\n" +
                "    <tmdbid>88702</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Lawrence Monoson</name>\n" +
                "    <role>Lt. Pavlov Dill</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/hli6dgeyskxXmfJwghyN1AtZCrn.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/106752</profile>\n" +
                "    <tmdbid>106752</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Colleen Porch</name>\n" +
                "    <role>Pvt. Lei Sahara</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/dJFpGcCBXb99ZmXfVTHipOcTAdg.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/83983</profile>\n" +
                "    <tmdbid>83983</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Drew Powell</name>\n" +
                "    <role>Pvt. Kipper Tor</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/v3iLHQYKDdd7AI8GOqMwqxhzeMH.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/173995</profile>\n" +
                "    <tmdbid>173995</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Ed Quinn</name>\n" +
                "    <role>Cpl. Joe Griff</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/gqvAe9M9FyYiIltLxFUpJVlXRRP.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/53922</profile>\n" +
                "    <tmdbid>53922</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Jason-Shane Scott</name>\n" +
                "    <role>Pvt. Duff Horton</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/pOcUrkdJQaq3FddzcNLnID0RlDI.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/98658</profile>\n" +
                "    <tmdbid>98658</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Brenda Strong</name>\n" +
                "    <role>Sgt. Dede Rake</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/jMfkFmQT2zgTojkcmn67Fju3HU.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/101396</profile>\n" +
                "    <tmdbid>101396</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Brian Tee</name>\n" +
                "    <role>Cpl. Thom Kobe</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/aTouFlcx3enc2AfP4caKr3Rv8gi.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/116278</profile>\n" +
                "    <tmdbid>116278</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>David Wells</name>\n" +
                "    <role>Recruiting Sergeant</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/vb91buPdGmorgzzdFgNCUbcLA4V.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/64236</profile>\n" +
                "    <tmdbid>64236</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Tim Conlon</name>\n" +
                "    <role>Fleet Pilot</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/2spxhPR3kozQQNLXbr5ITTomDHc.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/1212249</profile>\n" +
                "    <tmdbid>1212249</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Bobby C. King</name>\n" +
                "    <role>Smiling Lieutenant</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/yJXXSZnQMulutq418Cg03Z85QNT.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/191377</profile>\n" +
                "    <tmdbid>191377</tmdbid>\n" +
                "  </actor>\n" +
                "  <actor>\n" +
                "    <name>Stephen Stanton</name>\n" +
                "    <role>FedNet (voice)</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/uaoZXILATHT27HUnBh8Q345glc6.jpg</thumb>\n" +
                "    <profile>https://www.themoviedb.org/person/1213640</profile>\n" +
                "    <tmdbid>1213640</tmdbid>\n" +
                "  </actor>\n" +
                "  <producer>\n" +
                "    <name>Edward Neumeier</name>\n" +
                "    <role>Co-Producer</role>\n" +
                "    <thumb>https://image.tmdb.org/t/p/h632/sBkGYHLdTDs3c1OShy9EyB93PCn.jpg</thumb>\n" +
                "  </producer>\n" +
                "  <producer>\n" +
                "    <name>Jon Davison</name>\n" +
                "    <role>Producer</role>\n" +
                "    <thumb/>\n" +
                "  </producer>\n" +
                "  <producer>\n" +
                "    <name>Phil Tippett</name>\n" +
                "    <role>Co-Producer</role>\n" +
                "    <thumb>http://image.tmdb.org/t/p/h632/2uQ0B7fN5cDQk17J1X3pxDSf9y.jpg</thumb>\n" +
                "  </producer>\n" +
                "  <producer>\n" +
                "    <name>Glenn S. Gainor</name>\n" +
                "    <role>Executive Producer</role>\n" +
                "    <thumb/>\n" +
                "  </producer>\n" +
                "  <producer>\n" +
                "    <name>Mykel Denis</name>\n" +
                "    <role>Production Coordinator</role>\n" +
                "    <thumb/>\n" +
                "  </producer>\n" +
                "  <producer>\n" +
                "    <name>Chris Baugh</name>\n" +
                "    <role>Location Manager</role>\n" +
                "    <thumb/>\n" +
                "  </producer>\n" +
                "  <producer>\n" +
                "    <name>Penny Ellers</name>\n" +
                "    <role>Casting</role>\n" +
                "    <thumb/>\n" +
                "  </producer>\n" +
                "  <producer>\n" +
                "    <name>Jan Powell</name>\n" +
                "    <role>Casting Associate</role>\n" +
                "    <thumb/>\n" +
                "  </producer>\n" +
                "  <producer>\n" +
                "    <name>Sophia N. von Bülow</name>\n" +
                "    <role>Production Accountant</role>\n" +
                "    <thumb/>\n" +
                "  </producer>\n" +
                "  <trailer>plugin://plugin.video.youtube/?action=play_video&amp;videoid=9_sXs02IOLs</trailer>\n" +
                "  <languages>English</languages>\n" +
                "  <dateadded>2018-11-13 00:00:00</dateadded>\n" +
                "  <fileinfo>\n" +
                "    <streamdetails>\n" +
                "      <video>\n" +
                "        <codec/>\n" +
                "        <aspect>0.0</aspect>\n" +
                "        <width>0</width>\n" +
                "        <height>0</height>\n" +
                "        <durationinseconds>0</durationinseconds>\n" +
                "        <stereomode/>\n" +
                "      </video>\n" +
                "    </streamdetails>\n" +
                "  </fileinfo>\n" +
                "  <lockdata>true</lockdata>\n" +
                "  <writer>Edward Neumeier</writer>\n" +
                "  <imdbid>tt0367093</imdbid>\n" +
                "  <releasedate>2004-04-20</releasedate>\n" +
                "  <criticrating>33</criticrating>\n" +
                "  <tmdbsetid>10522</tmdbsetid>\n" +
                "  <collectionnumber>10522</collectionnumber>\n" +
                "  <!--tinyMediaManager meta data-->\n" +
                "  <source>BLURAY</source>\n" +
                "  <edition>NONE</edition>\n" +
                "  <original_filename>Starship.Troopers.2.-.Hero.of.the.Federation(2004).mkv</original_filename>\n" +
                "  <user_note/>\n" +
                "</movie>";
        analyzeRule.setContent(content);
//        analyzeRule.getElements(":<actor>[\\S\\s]*?<\\/actor>");
        analyzeRule.getString("tag.thumb@[aspect=\"poster\"]@text");
        analyzeRule.getString("//actor/name/text()&&//actor/thumb/text()");
        analyzeRule.getString("//actor/name/text()");
        analyzeRule.getString("//actor/name/text()||//actor/role/text()");
        analyzeRule.getString("//actor/name/text()%%//actor/thumb/text()");
        analyzeRule.getString("//actor/name/text()&&//actor/thumb/text()");
        analyzeRule.getString("tag.actor@tag.name@text");
        analyzeRule.getString("tag.actor@tag.name@text%%tag.actor@tag.thumb@text");
        analyzeRule.getString("tag.actor@tag.name@text%%tag.actor@tag.tmdbid@text");
        analyzeRule.getString("tag.actor@tag.name@text%%tag.actor@tag.role@text");
    }

    @Test
    public void testJavbus() throws Exception {
        String content = "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>\n" +
                "<movie>\n" +
                "  <plot><![CDATA[プレステージ専属女優『桜ここみ』が男と二人っきりでお泊りデート。大人の色気満々で、男の責めに身を任せてウットリと気持ちよさそうに感じる！肉厚のお尻をカメラに突き出しながら、快感に酔いしれる姿は見逃せません！二人っきりの空間で、独特の味わいを醸し出す性交は臨場感抜群です！]]></plot>\n" +
                "  <outline />\n" +
                "  <lockdata>false</lockdata>\n" +
                "  <dateadded>2020-09-06 18:07:44</dateadded>\n" +
                "  <title>ABP-061 一泊二日、美少女完全予約制。 第二章 ～桜ここみの場合～</title>\n" +
                "  <originaltitle>一泊二日、美少女完全予約制。 第二章 ～桜ここみの場合～</originaltitle>\n" +
                "  <actor>\n" +
                "    <name>桜ここみ</name>\n" +
                "    <type>Actor</type>\n" +
                "  </actor>\n" +
                "  <year>2013</year>\n" +
                "  <sorttitle>ABP-061</sorttitle>\n" +
                "  <mpaa>XXX</mpaa>\n" +
                "  <premiered>2013-10-22</premiered>\n" +
                "  <releasedate>2013-10-22</releasedate>\n" +
                "  <runtime>123</runtime>\n" +
                "  <genre>ハイビジョン</genre>\n" +
                "  <genre>パイズリ</genre>\n" +
                "  <genre>単体作品</genre>\n" +
                "  <genre>美少女</genre>\n" +
                "  <studio>プレステージ</studio>\n" +
                "  <uniqueid type=\"JavScraper\">ABP-061</uniqueid>\n" +
                "  <javscraperid>ABP-061</javscraperid>\n" +
                "  <uniqueid type=\"JavScraper-Json\">{\"OriginalTitle\":\"一泊二日、美少女完全予約制。 第二章 ～桜ここみの場合～\",\"Plot\":\"プレステージ専属女優『桜ここみ』が男と二人っきりでお泊りデート。大人の色気満々で、男の責めに身を任せてウットリと気持ちよさそうに感じる！肉厚のお尻をカメラに突き出しながら、快感に酔いしれる姿は見逃せません！二人っきりの空間で、独特の味わいを醸し出す性交は臨場感抜群です！\",\"Runtime\":\"123 minutes\",\"Studio\":\"プレステージ\",\"Maker\":\"プレステージ\",\"Set\":\"一泊二日、美少女完全予約制。\",\"Genres\":[\"ハイビジョン\",\"パイズリ\",\"単体作品\",\"美少女\"],\"Actors\":[\"桜ここみ\"],\"Samples\":[\"https://pics.dmm.co.jp//digital/video/118abp00061/118abp00061pl.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-1.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-2.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-3.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-4.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-5.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-6.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-7.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-8.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-9.jpg\"],\"Provider\":\"Jav123\",\"Url\":\"https://www.jav321.com/video/118abp00061\",\"Num\":\"ABP-061\",\"Title\":\"一泊二日、美少女完全予約制。 第二章 ～桜ここみの場合～\",\"Cover\":\"http://pics.dmm.co.jp//digital/video/118abp00061/118abp00061pl.jpg\",\"Date\":\"2013-10-22\"}</uniqueid>\n" +
                "  <javscraper-jsonid>{\"OriginalTitle\":\"一泊二日、美少女完全予約制。 第二章 ～桜ここみの場合～\",\"Plot\":\"プレステージ専属女優『桜ここみ』が男と二人っきりでお泊りデート。大人の色気満々で、男の責めに身を任せてウットリと気持ちよさそうに感じる！肉厚のお尻をカメラに突き出しながら、快感に酔いしれる姿は見逃せません！二人っきりの空間で、独特の味わいを醸し出す性交は臨場感抜群です！\",\"Runtime\":\"123 minutes\",\"Studio\":\"プレステージ\",\"Maker\":\"プレステージ\",\"Set\":\"一泊二日、美少女完全予約制。\",\"Genres\":[\"ハイビジョン\",\"パイズリ\",\"単体作品\",\"美少女\"],\"Actors\":[\"桜ここみ\"],\"Samples\":[\"https://pics.dmm.co.jp//digital/video/118abp00061/118abp00061pl.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-1.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-2.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-3.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-4.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-5.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-6.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-7.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-8.jpg\",\"https://pics.dmm.co.jp/digital/video/118abp00061/118abp00061jp-9.jpg\"],\"Provider\":\"Jav123\",\"Url\":\"https://www.jav321.com/video/118abp00061\",\"Num\":\"ABP-061\",\"Title\":\"一泊二日、美少女完全予約制。 第二章 ～桜ここみの場合～\",\"Cover\":\"http://pics.dmm.co.jp//digital/video/118abp00061/118abp00061pl.jpg\",\"Date\":\"2013-10-22\"}</javscraper-jsonid>\n" +
                "  <uniqueid type=\"JavScraper-Url\">https://www.jav321.com/video/118abp00061</uniqueid>\n" +
                "  <javscraper-urlid>https://www.jav321.com/video/118abp00061</javscraper-urlid>\n" +
                "  <fileinfo>\n" +
                "    <streamdetails>\n" +
                "      <video>\n" +
                "        <codec>h264</codec>\n" +
                "        <micodec>h264</micodec>\n" +
                "        <bitrate>5518652</bitrate>\n" +
                "        <width>1920</width>\n" +
                "        <height>1080</height>\n" +
                "        <aspect>16:9</aspect>\n" +
                "        <aspectratio>16:9</aspectratio>\n" +
                "        <framerate>29.97</framerate>\n" +
                "        <language>jpn</language>\n" +
                "        <scantype>progressive</scantype>\n" +
                "        <default>True</default>\n" +
                "        <forced>False</forced>\n" +
                "        <duration>122</duration>\n" +
                "        <durationinseconds>7357</durationinseconds>\n" +
                "      </video>\n" +
                "      <audio>\n" +
                "        <codec>aac</codec>\n" +
                "        <micodec>aac</micodec>\n" +
                "        <bitrate>128686</bitrate>\n" +
                "        <language>jpn</language>\n" +
                "        <scantype>progressive</scantype>\n" +
                "        <channels>2</channels>\n" +
                "        <samplingrate>44100</samplingrate>\n" +
                "        <default>True</default>\n" +
                "        <forced>False</forced>\n" +
                "      </audio>\n" +
                "    </streamdetails>\n" +
                "  </fileinfo>\n" +
                "</movie>";
        AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(content);
        System.out.println(analyzeRule.getString("tag.title@text"));
        System.out.println(analyzeRule.getString("@css:title@text@put:{charset:'@constant:gbk'}"));
        System.out.println(analyzeRule.getString("tag.title@text<js></js>@Fun:urlEncode#@get:{charset}"));
        System.out.println(analyzeRule.getString("@css:uniqueid[type=\"JavScraper-Json\"]@text"));
    }

    @Test
    public void testStringArray(){
        String[] s1 = new String[3];
        Arrays.fill(s1,"");
        for (String s:s1){
            System.out.println(s);
        }
    }

    @Test
    public void myalipanFilter() throws Exception {
        Spider spider = new Legado1();
        spider.init(null, "http://mao.guibiaoguo.ml/myalipan.json");
        showFilter(spider,true);
    }

    @Test
    public void myalipan() throws Exception {
        Spider spider = new Legado1();
        spider.init(null, "http://mao.guibiaoguo.ml/myalipan.json");
        String category = "";
        category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; classes != null && i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
        category = spider.searchContent("火影忍者疾风传", false);
        System.out.println(category);
        showCategory(spider, category, 0);
        System.out.println("ends");
    }

    @Test
    public void testDouban() throws Exception {
        int page = 1;
        int count = 100;
        String weburl = "https://frodo.douban.com/api/v2/movie/movie_showing？？area=全部&" + "playable=0&sort=recommend&score_range=0,10" + "&start=0" + "&count=" + count + "&loc_id=108288&apikey=0dad551ec0f84ed02907ff5c42e8ec70?host=frodo.douban.com;post;{User-Agent@Rexxar-Core/0.1.3 api-client/1 com.douban.frodo/7.9.0.beta2(215) Android/25 product/TAS-AL00 vendor/HUAWEI model/TAS-AL00  rom/android  network/wifi  platform/mobile com.douban.frodo/7.9.0.beta2(215) Rexxar/1.2.151  platform/mobile 1.2.151}";
        //weburl = "https://frodo.douban.com/api/v2/movie/35376457？？apikey=0dad551ec0f84ed02907ff5c42e8ec70?host=frodo.douban.com;post;{User-Agent@Rexxar-Core/0.1.3 api-client/1 com.douban.frodo/7.9.0.beta2(215) Android/25 product/TAS-AL00 vendor/HUAWEI model/TAS-AL00  rom/android  network/wifi  platform/mobile com.douban.frodo/7.9.0.beta2(215) Rexxar/1.2.151  platform/mobile 1.2.151}";
        weburl = "https://frodo.douban.com/api/v2/subject_collection/tv_hot/items？？playable=1&sort=recommend&score_range=0,10&start=0&count=100&apikey=0dad551ec0f84ed02907ff5c42e8ec70?host=frodo.douban.com;post;{User-Agent@Rexxar-Core/0.1.3 api-client/1 com.douban.frodo/7.9.0.beta2(215) Android/25 product/TAS-AL00 vendor/HUAWEI model/TAS-AL00  rom/android  network/wifi  platform/mobile com.douban.frodo/7.9.0.beta2(215) Rexxar/1.2.151  platform/mobile 1.2.151}";
        weburl = "https://frodo.douban.com/api/v2/movie/tag？？start=0&count=30&q=电影,美国&sort=recommend&score_range=0,10&start=0&count=100&apikey=0dad551ec0f84ed02907ff5c42e8ec70?host=frodo.douban.com;post;{User-Agent@Rexxar-Core/0.1.3 api-client/1 com.douban.frodo/7.9.0.beta2(215) Android/25 product/TAS-AL00 vendor/HUAWEI model/TAS-AL00  rom/android  network/wifi  platform/mobile com.douban.frodo/7.9.0.beta2(215) Rexxar/1.2.151  platform/mobile 1.2.151}";
        System.out.println(weburl);
        OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(weburl);

        if (callBack.getResult().code() == 200) {
            try {
                String content = callBack.getResult().body().string();
                System.out.println(content);
                JSONObject jsonObject = new JSONObject(content);
                jsonObject.optInt("count");
            } catch (Exception e) {
                System.out.println(e);
            }
        }
    }

    @Test
    public void qindou() throws Exception {
        Spider spider = new Legado1();
        spider.init(null, "https://mao.guibiaoguo.ml/qindou.json");
        showFilter(spider, true);
    }

    @Test
    public void testTV() throws Exception {
        String weburl = "https://movie.douban.com/subject/35332289/episode/1/";
        String s = OkHttpUtil.string(weburl, getHeaders(""));
        AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(s, "");
        analyzeRule.getString("@css:#footer~script@html");
    }

    @Test
    public void testHtml() throws Exception {
        for (int i = 1; i <= 15; i++) {
            String weburl = "https://movie.douban.com/subject/35332289/episode/" + i + "/";
            String s = OkHttpUtil.string(weburl, getHeaders(""));
            AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
            analyzeRule.setContent(s);
            System.out.println(analyzeRule.getString("@css:#wrapper+script@src"));
            System.out.println(analyzeRule.getString("all##body##"));
            System.out.println(analyzeRule.getString("all##[\\s\\S]*videos = (.*)]},[\\s\\S]*##$1]}<js></js>@Json:$.data[*].play_link[0]##.*url=(.*)##$1<js></js>@Fun:urlDecode"));
        }
    }

    @Test
    public void testMath() throws Exception {
        System.out.println(Math.addExact(2, 35));
        Method method = Math.class.getMethod("addExact", int.class, int.class);
        method.invoke(Math.class, 1, 2);
        Math.subtractExact(5, 2);
        Math.multiplyExact(5, 2);
        System.out.println(method.invoke(Math.class, 2, 5));
        AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(2);
        analyzeRule.getString("@put:{cateId:'@constant:23423','catePg':'@constant:2',count:'@constant:50'}");
        System.out.println(analyzeRule.getString("@get:{catePg}<js></js>@Fun:math#subtractExact#1&&math#multiplyExact#@get:{count}##(\\d+)##https://www.bgdvd.cc/@get:{cateId}/page-$1"));
    }

    @Test
    public void qindou_filter() {
        try {
            JSONArray classes = new JSONArray();
            System.out.println(classes.toString(4));
            JSONObject filter = new JSONObject();
            String items = "{\n" +
                    "        \"subtype\": [\"全部形式\", \"电影\", \"电视剧\", \"综艺\", \"动漫\", \"纪录片\", \"短片\"],\n" +
                    "        \"local\": [\"全部地区\", \"中国大陆\", \"美国\", \"中国香港\", \"中国台湾\", \"日本\", \"韩国\", \"英国\", \"法国\", \"德国\", \"意大利\", \"西班牙\", \"印度\", \"泰国\", \"俄罗斯\", \"伊朗\", \"加拿大\", \"澳大利亚\", \"爱尔兰\", \"瑞典\", \"巴西\", \"丹麦\"],\n" +
                    "        \"type\": [\"全部类型\", \"剧情\", \"喜剧\", \"动作\", \"爱情\", \"科幻\", \"动画\", \"悬疑\", \"惊悚\", \"恐怖\", \"犯罪\", \"同性\", \"音乐\", \"歌舞\", \"传记\", \"历史\", \"战争\", \"西部\", \"奇幻\", \"冒险\", \"灾难\", \"武侠\", \"情色\"],\n" +
                    "        \"year\": [\"全部年代\", \"2021\", \"2020\", \"2019\", \"2010年代\", \"2000年代\", \"90年代\", \"80年代\", \"70年代\", \"60年代\", \"更早\"],\n" +
                    "        \"class\": [\"全部特色\", \"经典\", \"青春\", \"文艺\", \"搞笑\", \"励志\", \"魔幻\", \"感人\", \"女性\", \"黑帮\", \"治愈\", \"美食\", \"宗教\", \"小说改编\", \"超级英雄\"]\n" +
                    "    }";
            JSONObject itemsObject = new JSONObject(items);
            classes = itemsObject.optJSONArray("subtype");
            itemsObject.remove("subtype");
            for (int i = 0; i < classes.length(); i++) {
                String type_id = classes.optString(i);
                JSONArray jsonArray = new JSONArray();
                JSONArray names = itemsObject.names();
                for (int j = 0; j < names.length(); j++) {
                    JSONObject t1 = new JSONObject();
                    JSONArray t2 = new JSONArray();
                    JSONArray itemData = itemsObject.optJSONArray(names.optString(j));
                    for (int k = 0; k < itemData.length(); k++) {
                        JSONObject t3 = new JSONObject();
                        String v = itemData.optString(k);
                        String n = itemData.optString(k);
                        t3.put("v", n);
                        t3.put("n", v);
                        t2.put(t3);
                    }
                    t1.put("key", names.optString(i));
                    t1.put("name", itemsObject.optJSONArray(names.optString(j)).optString(0).replaceAll("全部", ""));
                    t1.put("value", t2);
                    jsonArray.put(t1);
                }
                filter.put(type_id, jsonArray);
            }
            System.out.println(filter.toString());
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    @Test
    public void proxy() throws Exception {
        Proxy spider = new Proxy();
        Map<String, String> params = new HashMap<>();
        params.put("do", "live");
        params.put("type", "txt");
        String url = "https://gitee.com/shentong_012/HikerRules/raw/master/11.txt";
        String ext = Base64.encodeToString(url.getBytes("UTF-8"), com.github.catvod.utils.Base64.DEFAULT | com.github.catvod.utils.Base64.URL_SAFE | com.github.catvod.utils.Base64.NO_WRAP);
        System.out.println(ext);
        params.put("ext", "aHR0cHM6Ly9tYW8uZ3VpYmlhb2d1by5tbC9oc2NrMS50eHQ7aHR0cHM6Ly81bGEuZ2l0aHViLmlvL3YvdG9wbGl2ZS50eHQ=");
        spider.proxy(params);
    }

    @Test
    public void proxy_aimg() {
        Proxy spider = new Proxy();
        Map<String, String> params = new HashMap<>();
        String url = "proxy://do=legado&selector=JC5pdGVtc1sqXS50aHVtYm5haWwjIyguKj8pCi4qIyMkMTtnZXQ7dXRmLTg7e3JlZmVyZXJAaHR0cHM6Ly93d3cuYWxpeXVuZHJpdmUuY29tL30jIyN9&pic=aHR0cHM6Ly9hcGkuYWxpeXVuZHJpdmUuY29tL2Fkcml2ZS92My9maWxlL2xpc3Q/anNvbkJvZHk9eyJzaGFyZV9pZCI6IjZFOUtmUFlxWlNDIiwiaW1hZ2VfdXJsX3Byb2Nlc3MiOiJpbWFnZS9yZXNpemUsd18xOTIwL2Zvcm1hdCxqcGVnIiwicGFyZW50X2ZpbGVfaWQiOiI2MjMwNDg1ODRmZWMyMjBhYWFjMTQxYTJhOWE5NDU1ZDBmMTAzNTk0IiwibGltaXQiOjIwMCwib3JkZXJfYnkiOiJuYW1lIiwib3JkZXJfZGlyZWN0aW9uIjoiQVNDIiwidmlkZW9fdGh1bWJuYWlsX3Byb2Nlc3MiOiJ2aWRlby9zbmFwc2hvdCx0XzEwMDAsZl9qcGcsYXJfYXV0byx3XzMwMCIsImltYWdlX3RodW1ibmFpbF9wcm9jZXNzIjoiaW1hZ2UvcmVzaXplLHdfMTYwL2Zvcm1hdCxqcGVnIn07cG9zdDt1dGYtODt7eC1zaGFyZS10b2tlbkBleUpoYkdjaU9pSlNVekkxTmlJc0luUjVjQ0k2SWtwWFZDSjkuZXlKamRYTjBiMjFLYzI5dUlqb2llMXdpWkc5dFlXbHVYMmxrWENJNlhDSmlhakk1WENJc1hDSnphR0Z5WlY5cFpGd2lPbHdpTmtVNVMyWlFXWEZhVTBOY0lpeGNJbU55WldGMGIzSmNJanBjSWpJME0ySTJZakV6TnpReE1UUXpObUk0WVRFM1kySXhPV1JrTVdNd1l6VmtYQ0lzWENKMWMyVnlYMmxrWENJNlhDSmhibTl1ZVcxdmRYTmNJbjBpTENKamRYTjBiMjFVZVhCbElqb2ljMmhoY21WZmJHbHVheUlzSW1WNGNDSTZNVFkyTWpRMk1UQXlPQ3dpYVdGMElqb3hOall5TkRVek56WTRmUS5DUTB0VkFXM3Q5RnFNU0FnblZoSDFNa25FLXRseE9zTlh3R2FqbnlJSWtsOW1Kd3VzVzFsMk9IcWFRb3NPRXNPMl84YmJhVDdvSGZGWmZucHhCN1B4Q3BocUhIM1ZYMmViNW9iZU9lT3QxRm1kZnVfWUhhMHNGU190Mm8yQ2VEbHU2ZnZmQUtWaUNKWGFwWnowenpVMDJiX2xVNUtERjZ1Y25nQ3RoUVlDbmt9";
        for (String p : url.substring(8).split("&")) {
            params.put(p.split("=")[0], p.split("=")[1]);
        }
        spider.proxy(params);
    }

    @Test
    public void proxy_maimg() {
        Proxy spider = new Proxy();
        Map<String, String> params = new HashMap<>();
        String url = "proxy://do=legado&selector=JC5pdGVtc1sqXS50aHVtYm5haWwjIyguKj8pCi4qIyMkMTtnZXQ7dXRmLTg7e3JlZmVyZXJAaHR0cHM6Ly93d3cuYWxpeXVuZHJpdmUuY29tL30jIyN9&pic=aHR0cHM6Ly9hcGkuYWxpeXVuZHJpdmUuY29tL2Fkcml2ZS92My9maWxlL2xpc3Q_anNvbkJvZHk9eyJzaGFyZV9pZCI6IkVMOG9waDRIQXJYIiwiaW1hZ2VfdXJsX3Byb2Nlc3MiOiJpbWFnZS9yZXNpemUsd18xOTIwL2Zvcm1hdCxqcGVnIiwicGFyZW50X2ZpbGVfaWQiOiI2MjFkYmY0YWMwYjVhMjQzNjRiZTQ3YWZhMjg5ODczZTU1MGY1MWJmIiwibGltaXQiOjIwMCwib3JkZXJfYnkiOiJuYW1lIiwib3JkZXJfZGlyZWN0aW9uIjoiQVNDIiwidmlkZW9fdGh1bWJuYWlsX3Byb2Nlc3MiOiJ2aWRlby9zbmFwc2hvdCx0XzEwMDAsZl9qcGcsYXJfYXV0byx3XzMwMCIsImltYWdlX3RodW1ibmFpbF9wcm9jZXNzIjoiaW1hZ2UvcmVzaXplLHdfMTYwL2Zvcm1hdCxqcGVnIn07cG9zdDt1dGYtODt7eC1zaGFyZS10b2tlbkBleUpoYkdjaU9pSlNVekkxTmlJc0luUjVjQ0k2SWtwWFZDSjkuZXlKamRYTjBiMjFLYzI5dUlqb2llMXdpWkc5dFlXbHVYMmxrWENJNlhDSmlhakk1WENJc1hDSnphR0Z5WlY5cFpGd2lPbHdpUlV3NGIzQm9ORWhCY2xoY0lpeGNJbU55WldGMGIzSmNJanBjSWpnM056VTBOekJsTVRFNFpEUmpaR1U1TlRCa1pUUTNPVEZoT0dKak9UZG1YQ0lzWENKMWMyVnlYMmxrWENJNlhDSmhibTl1ZVcxdmRYTmNJbjBpTENKamRYTjBiMjFVZVhCbElqb2ljMmhoY21WZmJHbHVheUlzSW1WNGNDSTZNVFkwTmpjMU5UazFNQ3dpYVdGMElqb3hOalEyTnpRNE5qa3dmUS5OMEl0a0FVWjZiVUFaZlBOV3J6NGxLbjV5RkNYdTZINFVwWjZVYUU1dVBocDB5UW1mM1VkdGNxWWE5T3ZrVER2ZDdXZzlfR3k3eDdtMWNHaFNjZ2ppX0VSdkpDZ2hBX3huSmhNUGY4TUN0ZjRZZFFXSEloNXVjVTQ1Wl85b0N4aXlZZGl3cEJrc3J4ZWRBWWNhbFpETmFQNWhtWmZIY09iWWVwUTIwZlZ2c1F9";
        for (String p : url.substring(8).split("&")) {
            params.put(p.split("=")[0], p.split("=")[1]);
        }
        spider.proxy(params);
    }

    @Test
    public void proxy_txt() {
        Proxy spider = new Proxy();
        Map<String, String> params = new HashMap<>();
        String url = "proxy://do=legado&selector=eyQuZG93bmxvYWRfdXJsfTtnZXQ7dXRmLTg7e3JlZmVyZXJAaHR0cHM6Ly93d3cuYWxpeXVuZHJpdmUuY29tL30=&pic=aHR0cHM6Ly9hcGkuYWxpeXVuZHJpdmUuY29tL3YyL2ZpbGUvZ2V0X3NoYXJlX2xpbmtfZG93bmxvYWRfdXJsP2pzb25Cb2R5PXsic2hhcmVfaWQiOiJFTDhvcGg0SEFyWCIsImZpbGVfaWQiOiI2MjFkYmZhODYxOWRmNjhlYjI4NDRkNDJiMzhiYzg1ODBkMzQ2ODYxIn07cG9zdDt1dGYtODt7eC1zaGFyZS10b2tlbkBleUpoYkdjaU9pSlNVekkxTmlJc0luUjVjQ0k2SWtwWFZDSjkuZXlKamRYTjBiMjFLYzI5dUlqb2llMXdpWkc5dFlXbHVYMmxrWENJNlhDSmlhakk1WENJc1hDSnphR0Z5WlY5cFpGd2lPbHdpUlV3NGIzQm9ORWhCY2xoY0lpeGNJbU55WldGMGIzSmNJanBjSWpnM056VTBOekJsTVRFNFpEUmpaR1U1TlRCa1pUUTNPVEZoT0dKak9UZG1YQ0lzWENKMWMyVnlYMmxrWENJNlhDSmhibTl1ZVcxdmRYTmNJbjBpTENKamRYTjBiMjFVZVhCbElqb2ljMmhoY21WZmJHbHVheUlzSW1WNGNDSTZNVFkwTmpnMU9EVXdPQ3dpYVdGMElqb3hOalEyT0RVeE1qUTRmUS5IREdZclZsS2JYMF9SaTZIUnFDYWUyQW9tSWFENmtoWEZfUjZtM2VvQmhvbnc2ZWFKalR6Y1YxSzFtZDBkeGV0QjczMEF5UUdoY003RVdxTGRrdmlKZXhUOHFReENVWVhnSXo0bHZzTjMtSkFWRkZUUkpSb1h3d2IyX3dJc19jaGZnWEx1RmhuTk1YRXllWUdxZ2NDZ25wVERHeDNxNktmU2lyYmdrQlhXTVkmJmF1dGhvcml6YXRpb25AZXlKaGJHY2lPaUpTVXpJMU5pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SjFjMlZ5U1dRaU9pSTRNelExWldJNE9HWTBZVGswWVRneFlqa3dNRE5sTmpnMVpURmlaVFJsTlNJc0ltTjFjM1J2YlVwemIyNGlPaUo3WENKamJHbGxiblJKWkZ3aU9sd2lNalZrZWxnemRtSlpjV3QwVm5oNVdGd2lMRndpWkc5dFlXbHVTV1JjSWpwY0ltSnFNamxjSWl4Y0luTmpiM0JsWENJNlcxd2lSRkpKVmtVdVFVeE1YQ0lzWENKVFNFRlNSUzVCVEV4Y0lpeGNJa1pKVEVVdVFVeE1YQ0lzWENKVlUwVlNMa0ZNVEZ3aUxGd2lWa2xGVnk1QlRFeGNJaXhjSWxOVVQxSkJSMFV1UVV4TVhDSXNYQ0pUVkU5U1FVZEZSa2xNUlM1TVNWTlVYQ0lzWENKQ1FWUkRTRndpTEZ3aVQwRlZWRWd1UVV4TVhDSXNYQ0pKVFVGSFJTNUJURXhjSWl4Y0lrbE9Wa2xVUlM1QlRFeGNJaXhjSWtGRFEwOVZUbFF1UVV4TVhDSmRMRndpY205c1pWd2lPbHdpZFhObGNsd2lMRndpY21WbVhDSTZYQ0pvZEhSd2N6b3ZMM2QzZHk1aGJHbDVkVzVrY21sMlpTNWpiMjB2WENJc1hDSmtaWFpwWTJWZmFXUmNJanBjSWpGbU5XUmpabVZqT1dReU56Um1OelU0TmpWbVpUQTRaRGMyTmpkaVlUQTNYQ0o5SWl3aVpYaHdJam94TmpRMk9EVTROVEEzTENKcFlYUWlPakUyTkRZNE5URXlORGQ5LlZ6RnpyT3BJVk9Fb2h2eWktQkhOTDdrVTlGVFEzWm9lQjdYdld2am9YWFkyWEJNVUNyX3JhRmVRbmdYZFEzdWdXRnFPeFV3RFJteS1QOU04V2d6Q20wQkxpV29BZ1ZnX3pKbzRVMGJIeE9ORVFtN2JWTEZmbnVTdVpOODZyNndhdDhyMFpaMzduN0NKdW9TM01LeE9uRktfRnlseXR3WkNQQnY4dUJuSnFIRSYmVXNlci1BZ2VudEBQQ19VQX0=";
        spider.proxy(StringUtil.getParameter(url, "proxy://"));
    }

    @Test
    public void proxy_myaimg() {
        Proxy spider = new Proxy();
        Map<String, String> params = new HashMap<>();
        String url = "proxy://do=legado&selector=JC5pdGVtc1sqXS50aHVtYm5haWwjIyguKj8pCi4qIyMkMTtnZXQ7dXRmLTg7e3JlZmVyZXJAaHR0cHM6Ly93d3cuYWxpeXVuZHJpdmUuY29tL30jIyN9&pic=aHR0cHM6Ly9hcGkuYWxpeXVuZHJpdmUuY29tL2Fkcml2ZS92My9maWxlL2xpc3Q_anNvbkJvZHk9eyJkcml2ZV9pZCI6IjIwNDg5MjAzMCIsImltYWdlX3VybF9wcm9jZXNzIjoiaW1hZ2UvcmVzaXplLHdfMTkyMC9mb3JtYXQsanBlZyIsInBhcmVudF9maWxlX2lkIjoiNjFkNTlmZTVhZDlhNjUzN2U1NmY0MjcwOGQ4ZTJjOTYyZDFhMGZmOCIsImxpbWl0IjoyMDAsIm9yZGVyX2J5IjoibmFtZSIsIm9yZGVyX2RpcmVjdGlvbiI6IkFTQyIsInZpZGVvX3RodW1ibmFpbF9wcm9jZXNzIjoidmlkZW8vc25hcHNob3QsdF8xMDAwLGZfanBnLGFyX2F1dG8sd18zMDAiLCJpbWFnZV90aHVtYm5haWxfcHJvY2VzcyI6ImltYWdlL3Jlc2l6ZSx3XzE2MC9mb3JtYXQsanBlZyJ9O3Bvc3Q7dXRmLTg7e2F1dGhvcml6YXRpb25AZXlKaGJHY2lPaUpTVXpJMU5pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SjFjMlZ5U1dRaU9pSTBNVGRpWXprNU5UbGxaRGswTjJNM1ltUXpORGd6TXpKbE9EZzNZbUkyTVNJc0ltTjFjM1J2YlVwemIyNGlPaUo3WENKamJHbGxiblJKWkZ3aU9sd2lNalZrZWxnemRtSlpjV3QwVm5oNVdGd2lMRndpWkc5dFlXbHVTV1JjSWpwY0ltSnFNamxjSWl4Y0luTmpiM0JsWENJNlcxd2lSRkpKVmtVdVFVeE1YQ0lzWENKVFNFRlNSUzVCVEV4Y0lpeGNJa1pKVEVVdVFVeE1YQ0lzWENKVlUwVlNMa0ZNVEZ3aUxGd2lWa2xGVnk1QlRFeGNJaXhjSWxOVVQxSkJSMFV1UVV4TVhDSXNYQ0pUVkU5U1FVZEZSa2xNUlM1TVNWTlVYQ0lzWENKQ1FWUkRTRndpTEZ3aVQwRlZWRWd1UVV4TVhDSXNYQ0pKVFVGSFJTNUJURXhjSWl4Y0lrbE9Wa2xVUlM1QlRFeGNJaXhjSWtGRFEwOVZUbFF1UVV4TVhDSmRMRndpY205c1pWd2lPbHdpZFhObGNsd2lMRndpY21WbVhDSTZYQ0pvZEhSd2N6b3ZMM2QzZHk1aGJHbDVkVzVrY21sMlpTNWpiMjB2WENJc1hDSmtaWFpwWTJWZmFXUmNJanBjSW1Zek1qVTNZamc0WldVeFpUUXlPVGRoTUdVME9Ea3lNamN4WVRVNE9UWmtYQ0o5SWl3aVpYaHdJam94TmpRMk56WXpNemMyTENKcFlYUWlPakUyTkRZM05UWXhNVFo5LlZ0SUhZLTlKdFpHaVVlTkVCcWNHQWF4WExLSVRBX2Z6VzBCVnpjRWpkcDk4NlNGTFhoR3V6ZmZoUlJsSnFDYkprYTdHbkk4bnJsNl9CeG92c3RjUl8zWTY1dDNZMi1Lal92TENfRFR0VTB0YzZOVzY5TDhlVFlsTElaUDRPMHE3UmE3VVh0TUx0NjRNQjhZZGhtdmFON19qVlVocjhkWlR0QkxILUdJa3pod30=";
        for (String p : url.substring(8).split("&")) {
            params.put(p.split("=")[0], p.split("=")[1]);
        }
        spider.proxy(params);
    }

    @Test
    public void date() {
        Calendar calendar = Calendar.getInstance();
        System.out.println(calendar.get(1));
        System.out.println(calendar.get(2) + 1);
        System.out.println(calendar.get(Calendar.DATE));
    }

    @Test
    public void jx() throws Exception {
        String s = OkHttpUtil.string("https://yisiclub.cn/1725/.html", null);
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent(s);
        List<Object> elements = analyzeRule.getElements(".u-text-format p:has(a)");
        JSONArray jsonArray = new JSONArray();
        for (Object element : elements) {
            analyzeRule.setContent(element);
            String title = analyzeRule.getString("tag.p@text##——.*");
            System.out.println(title);
            String url = analyzeRule.getString("tag.a@href");
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("url", url);
            jsonObject.put("name", title);
            jsonObject.put("type", 0);
            jsonArray.put(jsonObject);
//            String html = OkHttpUtil.string(url+"https://v.qq.com/x/cover/mzc00200oeu0yf4.html", null);
//            System.out.println(url);
//            System.out.println(html);
//            System.out.println(element.toString());
        }
        System.out.println(jsonArray.toString(4));
    }

    @Test
    public void spiderJX() throws Exception {
        LinkedHashMap<String, HashMap<String, String>> jx = new LinkedHashMap<>();
        HashMap<String, String> data = new HashMap<>();
        data.put("data", "解析爬虫");
        data.put("type", "4");
        data.put("url", "spiderJX");
        JSONObject jsonObject = new JSONObject();
        JSONArray jsonArray = new JSONArray();
        JSONObject jsonObject1 = new JSONObject();
        jsonObject1.put("url", "https://yisiclub.cn/1725/.html");
        jsonObject1.put("urlNode", ".u-text-format p:has(a)");
        jsonObject1.put("urlName", "tag.p@text##——.*");
        jsonObject1.put("urlId", "tag.a@href");
        JSONArray flags = new JSONArray();
        flags.put("qq");
        jsonObject1.put("flag", flags);
        jsonArray.put(jsonObject1);
        jsonObject.put("jx", jsonArray);
        data.put("ext", jsonObject.toString());
        jx.put("spiderJx", data);
        MixSpiderJX.parse(jx, "", "qq", "https://v.qq.com/x/cover/mzc00200oeu0yf4.html");
    }

    public String a(String str, String str2) {
        try {
            if (str2 == null) {
                System.out.print("Key为空null");
                return null;
            } else if (str2.length() != 16) {
                System.out.print("Key长度不是16位");
                return null;
            } else {
                SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes("utf-8"), "AES");
                Cipher instance = Cipher.getInstance("AES/ECB/PKCS5Padding");
                instance.init(2, secretKeySpec);
                try {
                    return new String(instance.doFinal(Base64.decode(str, 0)), "utf-8");
                } catch (Exception e) {
                    System.out.println(e.toString());
                    return null;
                }
            }
        } catch (Exception e2) {
            System.out.println(e2.toString());
            return null;
        }
    }

    public static String a(String str) {
        if (StringUtils.isEmpty(str)) {
            return "";
        }
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            String str2 = "";
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & 255);
                if (hexString.length() == 1) {
                    hexString = "0" + hexString;
                }
                str2 = str2 + hexString;
            }
            return str2;
        } catch (NoSuchAlgorithmException e) {

        }
        return "";
    }

    @Test
    public void escape() {
        String json = a("YE1WsGtz7/W3K4SYBJH9AbP4g0rlxg+JfKJAvGRnLCa4yyrZCV0BEezcRKWKMa0eTIYHEbycTmOBGNaXaMiRFyTVP+9rfHAh4FZ7niPtfCcKHbX6ykXCEv/eg2sF2FBZqiWZVma0HSgOzgdSJRed00L3V/ispTDMMi4/YB3v1SlDFOhlCRP6PmFQJBcWl39DYFFtG5pXlQYerz/5bwhQEcCUpZo//ZiyGGNMqfFFzfbM/AtUl21IVYoJdtCgo4h+9568JHYE5ZdZD38VVlBaMrkq+PfNOAaUX0Fhd3Lku5XbsoW2mRKLJqZSQZZ7jbl6lkpis14twDVzdHjy33JFDCoA1JGBLQM/mNSjT8vOAQCSLwxEtNtE+vVu62c9Ps9qU9Wtqf8wABZpqMr4mHGGGGflO1GwVS4B5Uzjg4+SiHAAOcGwgjMM/grdTDz0SgfuripOhQg8UsKdAqjD4+yAc/HGPdxyFq+il4c+lzIS2DBWEHZGwaFkL0HdPhzcrbL6VF1cTwG2t0NXnSMVOLZCQX3CyUDLaIBRFLrYj8++xreec+3vjhdCeGG+wgaB+87vx9waFobm02+W8HkPJIQmGvxwXpGzw4kd9aGVpDulZpM80r3tmc4T/7rjoXSGe753tRCTTutkmHF5e3YVXbCq4AoBavBEvcytSI0V9DW6vcAyS55KP8Wmia9yXjASKZMxZG7JkM/yPhAHsj59IoParqVgSN+S3Aj4oCEQn/QE6zx4f0kExoHT3fOujP2ESHdZ6VJ0EmwEM8LUc3/ppQrLubqYUNATVi5ndmQ6qLdWsdXxnMJ7fD7bf6usQ8EZPXVuM3VeEzSJnikyS7sKtKv4a39ZYrb+VLAUrITgKnXefycjNVvDvmtT/lDkzzajZOE1npsii9WIQFeF+JQZTMzohrkqdYsqE2elXAwRE5KKxlOmme0ppu0rQXpT3awnBXkRRgU+a3bL0d0Ix0jrR3bWI/3ZVDXwOPF37Bf+/0sKPV40ipJ396yl9Ncl5WTV67DbTbBL/972SvAmhV5xJBzO78IJX0dwo03rAXUYDXZ/DIuVZfnUMxQnbqUHLtlDvOydUsH4arbiMlnCHBMhdtz5FB/4nsgPYl/jErIUpzUv7ruIojfbJhslxy2bvGBPwziLmZfWbDUfsEgaLwLqCWO9k7A2Zl/YL3nmmuODYjaK13csxDwQBRFOWSv7HRNQsRGPV3ILHJH9b1aJpphqcrix0ZcASGp3gMloHaENEQCU+TxCOGQQTYk1FtQmkDnjyx/ZRP1L8uQuCti3S/Yad64f5m/FbHZKGqqEJavfzqvB0V2qIkPRT7Tw2EYihIkTGQ3+yV8rKCT3WNlcUroAChr+xEYUpsH5EaoVhHMUUS/coAF/xs2IemB5trkjOzm5mRZpAUshPcnZMbA1+oJqaDazlE6sRj4TkJrn8bdXcz2KOdtf1rMFOWfqsHHZIn1gR/tc3i7yAv5BM2j25oEgc9Bn2JnfpAq415v7m8BY4ZhEHJegB/hPUYbHeAOGgwL56EjbGdNlfbb44G/WnwNhacx8esak+2We7tkpfVIaM8h1Va6UnlER1rC/+Lzlt3/LlrDiRdQfNFCEqKwO0OtEr0IygDg16oD2l87cLUEkPxZ1dX4MYTMxKRXV7Txu2GQ5jElsisLyW4e3cOjbWNus6QrrFoHipqC90K03nqe+fxKZ23VWBKz7EJwxwRV92lG5pSWLOJl4rfZ6+Uk519B/bEYTZ7R5SUN+TB0gadMQ1f+bP3QFjiELIC4Z6C3hi6tbD0awlXT2Vnpc7iRRtviTU3D7tVeyNUhmGXxPtZ3vRmr4xRUdACeDkUs6cREDRT8dGRsqXE8kKux4Me/AuiPGwfHSKc9AV2lQS/zs0nv51qIqZop+CkFMOZ+WcXyh6LuI5uB7", "8b4ea708438bc0442d76281c86a3a71f".substring(5, 21));
        System.out.println(json);
    }

    @Test
    public void datescape() {
        String json = a("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".replace("A9SZzkKb5bJKldYrCBa3", ""), "8b4ea708438bc0442d76281c86a3a71f".substring(5, 21));
        System.out.println(json);
    }

    @Test
    public void bmd5() {
        String md5 = a("8b4ea708438bc0442d76281c86a3a71f" + "6d7caa26b6de5941e3b24fd7c573d0bb");
        System.out.println(md5);
    }

    @Test
    public void test3() throws Exception {
        JSONArray jsonArray = new JSONArray();
        System.out.println(jsonArray);
    }

    @Test
    public void test_img() {
        OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml("https://bj29.cn-beijing.data.alicloudccp.com/5fe9b26213ecc67347f04acc9e1966ab5cfcefe5%2F5fe9b2623ca64d4b919a4589bedac0437f484770?x-oss-access-key-id=LTAIsE5mAn2F493Q&x-oss-additional-headers=referer&x-oss-expires=1646745292&x-oss-process=video%2Fsnapshot%2Ct_120000%2Cf_jpg%2Cw_480%2Car_auto%2Cm_fast&x-oss-signature=FCOjYQ29HM6vfUfcZydSyJPV%2Bpa0w6p11va13yieQjQ%3D&x-oss-signature-version=OSS2;get;utf-8;{referer@https://www.aliyundrive.com/&&User-Agent@PC_UA}");
        System.out.println(callBack.getResult().code());
    }

    @Test
    public void test_BBB() {
        OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml("https://api.bilibili.com/x/web-interface/search/type?search_type=video&keyword=%E7%9B%B8%E5%A3%B0;get;utf-8;{cookie@_uuid=555CC917-FB7A-4C29-E9E9-1FAB7F64C34F35647infoc; buvid3=251BC434-0158-4CF2-9689-415B90DBFD8B167627infoc; b_nut=1639843737; blackside_state=1; rpdid=|(J|kYlJuJm)0J'uYRklkY~Yk; buvid_fp=4c5ef178dbfca047f6f761107813e366; buvid4=62069D91-F760-49DF-A5E3-620800017C4872307-022021107-Up95BNeOMznhkE74VzsPjQ%3D%3D; CURRENT_FNVAL=4048; nostalgia_conf=-1&&User-Agent@PC_UA}");
        System.out.println(callBack.getResult().code());
    }

    /**
     * 转为大写
     * @param key
     * @return
     */
    public String chineseToNum(String key) {
        Map<String, String> chnNumChar = new HashMap();
        chnNumChar.put("零", "0");
        chnNumChar.put("一", "1");
        chnNumChar.put("二", "2");
        chnNumChar.put("三", "3");
        chnNumChar.put("四", "4");
        chnNumChar.put("五", "5");
        chnNumChar.put("六", "6");
        chnNumChar.put("七", "7");
        chnNumChar.put("八", "8");
        chnNumChar.put("九", "9");
        chnNumChar.put("十", "10");
        chnNumChar.put("百", "100");
        chnNumChar.put("千", "1000");
        chnNumChar.put("万", "10000");
        chnNumChar.put("亿", "100000000");
        return chnNumChar.get(key);
    }

    public String conver(String input) {
        Pattern pattern = Pattern.compile("([零一二三四五六七八九十百千万亿])",Pattern.CASE_INSENSITIVE);
        Matcher matcher = pattern.matcher(input);
        StringBuilder a = new StringBuilder();
        int start = 0;

        if (matcher.find()) {
            do {
                if (matcher.start() > start) {
                    a.append(input.substring(start, matcher.start()));
                    System.out.println(input.substring(start, matcher.start()));
                }
                System.out.println(matcher.group());
                a.append(chineseToNum(matcher.group()));
                start = matcher.end();
            } while (matcher.find());
        }
        if (input.length() > start) {
            a.append(input.substring(start));
        }
        return a.toString();
    }

    @Test
    public void test_cn() throws Exception {
        String a = "名侦探柯南第1";
        String b = "名侦探柯南第10";
        System.out.println(a);
        System.out.println(b);
        Comparator<String> comparator = new Comparator<String>() {
            @Override
            public int compare(String o1, String o2) {
                o1 = conver(o1);
                o2 = conver(o2);
                Pattern NUMBER = Pattern.compile("(?<=\\D)(?=\\d)|(?<=\\d)(?=\\D)");
                String[] split1 = NUMBER.split(o1);
                String[] split2 = NUMBER.split(o2);
                for (int i = 0; i < Math.min(split1.length,split2.length); i++) {
                    int c1 = split1[i].codePointAt(0);
                    int c2 = split2[i].codePointAt(0);
                    int cmp = 0;
                    int zeroCharCode = "0".codePointAt(0);
                    int nineCharCode = "9".codePointAt(0);
                    if (c1 >= zeroCharCode && c1 <= nineCharCode && c2 >= zeroCharCode && c2 <= nineCharCode) {
                        cmp = new BigInteger(split1[i]).compareTo(new BigInteger(split2[i]));
                    }
                    if (cmp == 0) {
                        String regex = "[a-zA-Z0-9]";
                        if (Pattern.matches(regex,split1[i]) || Pattern.matches(regex, split2[i])) {
                            cmp = split1[i].compareTo(split2[i]);
                        } else {
                            cmp = Collator.getInstance(Locale.CHINESE).compare(split1[i],split2[i]);
                        }
                    }

                    if (cmp != 0) {
                        return cmp;
                    }
                }
                int lengthCmp = split1.length - split2.length;
                return lengthCmp;
            }
        };
        List<String> names = new ArrayList<>();
        OkHttpUtil.postJson(OkHttpUtil.defaultClient(), "https://alist.guibiaoguo.ml/api/public/path", "{\"path\":\"/阿里2/来自分享/火影忍者(2002) [4K收藏版 720集全]\",\"password\":\"\",\"page_num\":1,\"page_size\":30}", new OKCallBack.OKCallBackString() {
            @Override
            protected void onFailure(Call call, Exception e) {

            }

            @Override
            protected void onResponse(String json) {
                try {
                    JSONObject jsonObject = new JSONObject(json);
                    JSONArray jsonArray = jsonObject.optJSONObject("data").getJSONArray("files");
                    for (int i = 0; i < jsonArray.length(); i++) {
                        names.add(jsonArray.optJSONObject(i).optString("name"));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        System.out.println(names);
        Collections.sort(names,comparator);
        System.out.println(names);
        System.out.println(nameCompare(a,b));
    }

    public int nameCompare(String a, String b) throws Exception {
        a = conver(a);
        b = conver(b);
        Pattern NUMBER = Pattern.compile("(?<=\\D)(?=\\d)|(?<=\\d)(?=\\D)");
        String[] split1 = NUMBER.split(a);
        String[] split2 = NUMBER.split(b);
        System.out.println(new JSONArray(split1).toString());
        System.out.println(new JSONArray(split2).toString());
        for (int i = 0; i < Math.min(split1.length,split2.length); i++) {
            int c1 = split1[i].codePointAt(0);
            int c2 = split2[i].codePointAt(0);
            int cmp = 0;
            int zeroCharCode = "0".codePointAt(0);
            int nineCharCode = "9".codePointAt(0);
            if (c1 >= zeroCharCode && c1 <= nineCharCode && c2 >= zeroCharCode && c2 <= nineCharCode) {
                cmp = new BigInteger(split1[i]).compareTo(new BigInteger(split2[i]));
            }
            if (cmp == 0) {
                String regex = "[a-zA-Z0-9]";
                if (Pattern.matches(regex,split1[i]) || Pattern.matches(regex, split2[i])) {
                    cmp = split1[i].compareTo(split2[i]);
                } else {
                    cmp = Collator.getInstance(Locale.CHINESE).compare(split1[i],split2[i]);
                }
            }

            if (cmp != 0) {
                return cmp;
            }
        }
        int lengthCmp = split1.length - split2.length;
        return lengthCmp;
    }
}

