package com.guibiaoguo.myapplication;

import android.content.Context;

import com.github.catvod.analyzeRules.AnalyzeByFunction;
import com.github.catvod.analyzeRules.AnalyzeRule;
import com.github.catvod.analyzeRules.RuleData;
import com.github.catvod.analyzeRules.AnalyzeByJSonPath;
import com.github.catvod.analyzeRules.AnalyzeByJSoup;
import com.github.catvod.analyzeRules.AnalyzeByRegex;
import com.github.catvod.analyzeRules.RuleAnalyzer;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.crawler.SpiderReq;
import com.github.catvod.crawler.SpiderReqResult;
import com.github.catvod.crawler.SpiderUrl;
import com.github.catvod.spider.Aidi;


import com.github.catvod.spider.Enlienli;
import com.github.catvod.spider.GoIndex;
import com.github.catvod.spider.Hsck;
import com.github.catvod.spider.HttpParser;
import com.github.catvod.spider.IQIYI;
import com.github.catvod.spider.Juhi;
import com.github.catvod.spider.Legado;
import com.github.catvod.spider.MGTV;
import com.github.catvod.spider.QQ;
import com.github.catvod.spider.XPathAli;
import com.github.catvod.spider.YydsAli2;
import com.github.catvod.utils.StringUtil;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;

import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Ignore;
import org.junit.Test;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import okhttp3.OkHttpClient;

public class CatTest {

    @Test
    public void test1() {
        System.out.println("1");
    }

    @Ignore
    @Test
    public void test2() {
        System.out.println("2");
    }

    @Test
    public void nfx() throws Exception {
        Aidi aidi = new Aidi();
        aidi.init(null);
        String homeContent = aidi.homeContent(true);
        System.out.println(homeContent);
        aidi.homeVideoContent();
        JSONObject jsonObject = new JSONObject(homeContent);
        JSONArray classes = jsonObject.optJSONArray("class");
        String tid = classes.getJSONObject(1).optString("type_id");
        System.out.println(tid);
        //org.seimicrawler.xpath.core.function;
        String category = aidi.categoryContent(tid, "2", false, null);
        System.out.println(category);
        List<String> ids = new ArrayList<>();

        jsonObject = new JSONObject(category);
        classes = jsonObject.optJSONArray("list");
        ids.add(classes.getJSONObject(1).optString("vod_id"));
        System.out.println(ids);

        String detail = aidi.detailContent(ids);
        System.out.println(detail);

        jsonObject = new JSONObject(detail);
        classes = jsonObject.optJSONArray("list");
        String playurl = classes.getJSONObject(0).optString("vod_play_url").split("#")[0].split("\\$")[1];
        System.out.println(playurl);

        System.out.println(aidi.playerContent("", playurl, new ArrayList<>()));
        System.out.println(aidi.searchContent("美", false));
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
            //org.seimicrawler.xpath.core.function;
            String category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            List<String> ids = new ArrayList<>();

            jsonObject = new JSONObject(category);
            JSONArray categorys = jsonObject.optJSONArray("list");
            ids.add(categorys.getJSONObject(1).optString("vod_id"));
            System.out.println(ids);

            String detail = spider.detailContent(ids);
            System.out.println(detail);
            if (detail == "") {
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
            //org.seimicrawler.xpath.core.function;
            String category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            List<String> ids = new ArrayList<>();

            jsonObject = new JSONObject(category);
            JSONArray categorys = jsonObject.optJSONArray("list");
            ids.add(categorys.getJSONObject(1).optString("vod_id"));
            System.out.println(ids);
            String detail = spider.detailContent(ids);
            if (detail == "") {
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
            //org.seimicrawler.xpath.core.function;
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

    @Test
    public void juhi() {
        Spider spider = new Juhi();
        spider.init(null);
        String homeContent = spider.homeContent(true);
        System.out.println(homeContent);
    }

    @Test
    public void qq_filter() {
        try {
            String url = "https://v.qq.com/channel/tv?listpage=1&channel=tv&sort=18&_all=1";
            SpiderUrl su = new SpiderUrl(url, null);
            SpiderReqResult srr = SpiderReq.get(su);
            Document doc = Jsoup.parse(srr.content);
            JSONArray classes = new JSONArray();
            for (Element cls : doc.select(".nav_cell")) {
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
                su = new SpiderUrl(url, null);
                srr = SpiderReq.get(su);
                doc = Jsoup.parse(srr.content);
                Elements elements = doc.select(".filter_line");
                if (elements == null) {
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
            System.out.println(filter.toString());
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    @Test
    public void enlienli() {
        Spider spider = new Enlienli();
        spider.init(null);
        String homeContent = spider.homeContent(true);
        System.out.println(homeContent);
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
            SpiderUrl su = new SpiderUrl(url, null);
            SpiderReqResult srr = SpiderReq.get(su);
            System.out.println(srr.content);
            JSONObject jsonObject = new JSONObject(srr.content);
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
        SpiderUrl su = new SpiderUrl(url, null);
        SpiderReqResult srr = SpiderReq.get(su);
        JSONObject jsonObject = new JSONObject(srr.content);
        JSONArray data = jsonObject.optJSONArray("data");
        JSONArray classes = new JSONArray();
        for (int i = 0; i < data.length(); i++) {
            JSONObject cate = data.optJSONObject(i);
            JSONObject c = new JSONObject();
            c.put("type_name", cate.optString("channelName"));
            c.put("type_id", cate.optString("channelId"));
            classes.put(c);
        }
        System.out.println(classes.toString());
        JSONObject filter = new JSONObject();
        for (int i = 0; i < classes.length(); i++) {
            String type_id = classes.optJSONObject(i).optString("type_id");
            url = "https://pianku.api.mgtv.com/rider/config/channel/v1?channelId=" + type_id + "&platform=msite&abroad=0&_support=10000000" + type_id + "?listpage=1&channel=";
            su = new SpiderUrl(url, null);
            srr = SpiderReq.get(su);
            jsonObject = new JSONObject(srr.content);
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
        System.out.println(filter.toString());
    }

    @Test
    public void hsck_url() {
        String ext = "https://user.seven301.xyz:8899/?u=http://hsck.us/&p=/";
        //使用
        OkHttpClient client = new OkHttpClient.Builder()
                .followRedirects(false)
                .build();
        SpiderReqResult spiderReqResult = SpiderReq.header(client, ext, "sp_req_default", getHeaders(ext));
        System.out.println(spiderReqResult.headers.get("location"));

    }

    @Test
    public void hsck() throws Exception {
        Spider spider = new Hsck();
        spider.init(null, "https://www.buscdn.fun/");
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
            //org.seimicrawler.xpath.core.function;
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

    public void showCategory(Spider spider, String category, int index) throws JSONException {
        JSONObject jsonObject = new JSONObject(category);
        JSONArray categorys = jsonObject.optJSONArray("list");
        if (category != null && categorys.length() > index) {
            List<String> ids = new ArrayList<>();
            ids.add(categorys.getJSONObject(index).optString("vod_id"));
            System.out.println(ids);

            String detail = spider.detailContent(ids);
            System.out.println(detail);
            jsonObject = new JSONObject(detail);
            JSONArray details = jsonObject.optJSONArray("list");
            String playurls = details.getJSONObject(0).optString("vod_play_url");
            if (!playurls.equals("")) {
                String playurl = playurls.split("#")[0].split("\\$")[1];
                System.out.println(playurl);
                System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurls.split("#")[0].split("\\$")[1], new ArrayList<>()));
//                System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurls.split("#")[1].split("\\$")[1], new ArrayList<>()));
                System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurls.split("#")[2].split("\\$")[1], new ArrayList<>()));
                System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurls.split("#")[3].split("\\$")[1], new ArrayList<>()));
                System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurls.split("#")[4].split("\\$")[1], new ArrayList<>()));
            }
        }
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
//            //org.seimicrawler.xpath.core.function;
//            String category = spider.categoryContent(tid, "1", false, null);
//            System.out.println(category);
//            if (StringUtils.isNotEmpty(category))
//                showCategory(spider, category, 0);
//        }
    }

    @Test
    public void yydsAli() throws Exception {
        Spider spider = new YydsAli2();
        String ext = "https://mao.guibiaoguo.tk/qq.json";
        spider.init(null, ext);
        String category = spider.searchContent("雪中悍刀行", false);
        System.out.println(category);
        JSONObject jsonObject = null;
//        System.out.println(spider.searchContent("小姨", false));
//        System.out.println(spider.searchContent("百家", false));
//        System.out.println(spider.searchContent("快乐大本营", false));
//        String homeContent = spider.homeContent(true);
//        System.out.println(homeContent);
//        JSONObject jsonObject = new JSONObject(homeContent);
//        JSONArray classes = jsonObject.optJSONArray("class");
//        for (int i = 0; i < classes.length(); i++) {
//            String tid = classes.getJSONObject(i).optString("type_id");
//            System.out.println(tid);
//            //org.seimicrawler.xpath.core.function;
//            category = spider.categoryContent(tid, "1", false, null);
//            System.out.println(category);
        List<String> ids = new ArrayList<>();

        jsonObject = new JSONObject(category);
        JSONArray categorys = jsonObject.optJSONArray("list");
        ids.add(categorys.getJSONObject(0).optString("vod_id"));
        System.out.println(ids);

        String detail = spider.detailContent(ids);
        System.out.println(detail);
        if (!detail.equals("")) {
            jsonObject = new JSONObject(detail);
            JSONArray details = jsonObject.optJSONArray("list");
            String playurls = details.getJSONObject(0).optString("vod_play_url");
            if (!playurls.equals("")) {
                String playurl = playurls.split("#")[0].split("\\$")[1];
                System.out.println(playurl);

                System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurl, new ArrayList<>()));
            }
        }


//        }
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
            //org.seimicrawler.xpath.core.function;
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
    }

    @Test
    public void jsonpath() throws Exception {
        String ext = "https://mao.guibiaoguo.tk/jsonpath.json";
        Spider spider = new Legado();
        spider.init(null, ext);
        String category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 2);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            //org.seimicrawler.xpath.core.function;
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
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
        SpiderUrl su = new SpiderUrl(ext, getHeaders(ext));
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        analyzeRule.setContent(json, ext);
        rulestr = ":class=\"text-muted number\"(?:[^\"]*\"){3}([^\"]*)\" title=\"([^\"]*)\">";
        object = analyzeRule.getElement(rulestr);
        System.out.println(object.toString());
        System.out.println(analyzeRule.getElements(rulestr));
        analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(json);
        System.out.println(analyzeRule.getElement("@css:.chapterTitle"));
        ext = "https://mao.guibiaoguo.tk/jsonpath.json";
        su = new SpiderUrl(ext, getHeaders(ext));
        json = SpiderReq.get(su).content;
        analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(json, ext);
        System.out.println(analyzeRule.getElement("$.ua"));
        String webUrl = analyzeRule.getString("@fun:{base64Encode:'$.homeUrl'}");
        System.out.println(webUrl);
        HttpParser.parseSearchUrlForHtml(webUrl, new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                AnalyzeRule analyzeRule1 = new AnalyzeRule(new RuleData());
                analyzeRule1.setContent(s.content, url);
                Object nodes = analyzeRule1.getStringList("$.data.files[1]%%$.data.files[3]");
                System.out.println(nodes.toString());
                if (nodes instanceof JSONArray) {
                    for (int i = 0; i < ((JSONArray) nodes).length(); i++) {
                        analyzeRule1.setContent(((JSONArray) nodes).opt(i).toString());
                        System.out.println(analyzeRule1.getString("$.name"));
                    }
                }
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
        HttpParser.parseSearchUrlForHtml("https://www.zqystv.com/zqys/dydq.html", new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
                analyzeRule.setContent(s.content, url);
                analyzeRule.setRedirectUrl(url);
                System.out.println(analyzeRule.getElements("@css:.stui-vodlist>li"));
                System.out.println(analyzeRule.getElements("class.stui-vodlist@tag.li.1"));
                System.out.println(analyzeRule.getElements("class.stui-vodlist@tag.li[2:5]"));
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
    }

    @Test
    public void test() {
        String queue = "[test}";
        System.out.println(queue.charAt(0));
        RuleAnalyzer analyzer = new RuleAnalyzer("{$.name}||{$.id}", false);
        analyzer.trim();
        System.out.println(analyzer.splitRule("&&", "||"));
        analyzer = new RuleAnalyzer("$.store.book[0].title@$.name");
        System.out.println(analyzer.splitRule("@", "&&"));
        String rulestr = "class=\"text-muted number\"(?:[^\"]*\"){3}([^\"]*)\" title=\"([^\"]*)\">";
        String ext = "http://www.paper027.com/home/chapter/lists/id/77485.html";
        SpiderUrl su = new SpiderUrl(ext, getHeaders(ext));
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        System.out.println(AnalyzeByRegex.getElement(json, StringUtils.split(rulestr, "&&"), 0));
        System.out.println(AnalyzeByRegex.getElements(json, StringUtils.split(rulestr, "&&"), 0));
        ext = "https://mao.guibiaoguo.tk/jsonpath.json";
        su = new SpiderUrl(ext, getHeaders(ext));
        json = SpiderReq.get(su).content;
        System.out.println(new AnalyzeByJSonPath(json).getString("{$.homeUrl}/test"));
        System.out.println(new AnalyzeByJSonPath(json).getString("$.ua"));
        HttpParser.parseSearchUrlForHtml(new AnalyzeByJSonPath(json).getString("$.homeUrl"), new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                System.out.println(new AnalyzeByJSonPath(s.content).getString("$.data.files[1]"));
                System.out.println(new AnalyzeByJSonPath(s.content).getString("$.data.files[*]"));
                System.out.println(new AnalyzeByJSonPath(s.content).getString("$.data.files[1:3]"));
                System.out.println(new AnalyzeByJSonPath(s.content).getString("$.data.files[1]"));
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });

        HttpParser.parseSearchUrlForHtml("http://www.paper027.com/home/chapter/lists/id/77485.html", new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                System.out.println(new AnalyzeByJSoup(s.content).getElements("@css:.chapterTitle"));
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
        HttpParser.parseSearchUrlForHtml("https://www.zqystv.com/zqys/dydq.html", new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                System.out.println(new AnalyzeByJSoup(s.content).getElements("@css:.stui-vodlist>li"));
                System.out.println(new AnalyzeByJSoup(s.content).getElements("class.stui-vodlist@tag.li.1"));
                System.out.println(new AnalyzeByJSoup(s.content).getElements("class.stui-vodlist@tag.li!1:2"));
                System.out.println(new AnalyzeByJSoup(s.content).getElements("class.stui-vodlist@tag.li[2:5]"));
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
    }

    @Test
    public void testJsonPath() {
        HttpParser.parseSearchUrlForHtml("https://mao.guibiaoguo.tk/jsonpath.json", new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                System.out.println(new AnalyzeByJSonPath(s.content).getString("{$.homeUrl}/test"));
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
    }

    @Test
    public void testJsonPathKt() {
        HttpParser.parseSearchUrlForHtml("https://mao.guibiaoguo.tk/jsonpath.json", new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                System.out.println(new AnalyzeRule(new RuleData()).setContent(s.content, url).getString("{$.homeUrl}/test"));
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
    }

    @Test
    public void testJsoupKt() {
        HttpParser.parseSearchUrlForHtml("http://www.paper027.com/home/chapter/lists/id/77485.html", new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
                analyzeRule.setContent(s.content, url);
                analyzeRule.setRedirectUrl(url);
                System.out.println(analyzeRule.getElements("@css:.chapterTitle"));
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
    }

    @Test
    public void testXpathKt() {
        HttpParser.parseSearchUrlForHtml("http://www.paper027.com/home/chapter/lists/id/77485.html", new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
                analyzeRule.setContent(s.content, url);
                analyzeRule.setRedirectUrl(url);
                System.out.println(analyzeRule.getElements("//*[contains(@class,\"chapterTitle\")]"));
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
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
    }

    @Test
    public void bagedvd() throws Exception {
        Spider spider = new Legado();
        spider.init(null, "https://mao.guibiaoguo.tk/bagedvd.json");
        String category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            //org.seimicrawler.xpath.core.function;
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
    }

    @Test
    public void zqystv() throws Exception {
        Spider spider = new Legado();
        spider.init(null, "https://mao.guibiaoguo.tk/zqystv.json");
        String category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            //org.seimicrawler.xpath.core.function;
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
    }

    @Test
    public void goindx1() throws Exception {
        Spider spider = new Legado();
        spider.init(null, "https://mao.guibiaoguo.tk/jsonpath.json");
        String category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 0);
//        JSONObject jsonObject = new JSONObject(category);
//        JSONArray classes = jsonObject.optJSONArray("class");
//        for (int i = 0; i < classes.length(); i++) {
//            String tid = classes.getJSONObject(i).optString("type_id");
//            System.out.println(tid);
//            //org.seimicrawler.xpath.core.function;
//            category = spider.categoryContent(tid, "1", false, null);
//            System.out.println(category);
//            showCategory(spider, category, 0);
//        }
    }

    @Test
    public void testCat() {
        HttpParser.parseSearchUrlForHtml("https://mao.guibiaoguo.tk/212757.json", new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                try {
                    JSONObject mao = new JSONObject(s.content);
                    JSONArray sites = mao.optJSONArray("sites");
                    JSONArray trueSites = new JSONArray();
                    for (int i = 42; i < sites.length(); i++) {
                        int k = 0;
                        JSONObject site = sites.optJSONObject(i);
                        try {
                            Spider spider = null;
                            String api = site.optString("api");
                            String ext = site.optString("ext");
                            if (site.optInt("type") == 0) {
                                if (StringUtil.isAbsUrl(api)) {
                                    HttpParser.parseSearchUrlForHtml(api, new HttpParser.OnSearchCallBack() {
                                        @Override
                                        public void onSuccess(String url, SpiderReqResult s) {
                                            trueSites.put(site);
                                        }

                                        @Override
                                        public void onFailure(int errorCode, String msg) {

                                        }
                                    });
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
                                        //org.seimicrawler.xpath.core.function;
                                        category = spider.categoryContent(tid, "1", false, null);
                                        System.out.println(category);
                                        try {
                                            showCategory(spider, category, 0);
                                            k++;
                                        } catch (Exception e) {

                                        }
                                    }
                                }
                                String[] keys = {"钢铁侠", "熊出没", "柯南"};
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

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
    }

    @Test
    public void testSites() {
        HttpParser.parseSearchUrlForHtml("https://mao.guibiaoguo.tk/212757.json", new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                try {
                    AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
                    analyzeRule.setContent(s.content, url);
                    analyzeRule.setRedirectUrl(url);
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
                            c.put("name", name);
                            JSONArray urls1 = new JSONArray();
                            urls.forEach(url1 -> {
                                HttpParser.parseSearchUrlForHtml(url1.toString(), new HttpParser.OnSearchCallBack() {
                                    @Override
                                    public void onSuccess(String url, SpiderReqResult s) {
                                        if (s.content.contains("#EXTM3U"))
                                            urls1.put(url);
                                        System.out.println(url);
                                    }

                                    @Override
                                    public void onFailure(int errorCode, String msg) {

                                    }
                                });
                            });
                            if (urls1.length() > 0)
                                c.put("urls", urls1);
                            if(c.length() > 0)
                                c2.put(c);
                        }
                        if (c2.length() > 0) {
                            c3.put("channels", c2);
                            c3.put("group", group);
                        }
                        if(c3.length() > 0)
                            c4.put(c3);
                    }
                    System.out.println(c4.toString(4));
                } catch (Exception e) {

                }
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
    }

    @Test
    public void testM3u8() {
        HttpParser.parseSearchUrlForHtml("https://mao.guibiaoguo.tk/212757.json", new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                try {
                    AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
                    analyzeRule.setContent(s.content, url);
                    analyzeRule.setRedirectUrl(url);
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

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
    }

    @Test
    public void hsck1() throws Exception {
        Spider spider = new Legado();
        spider.init(null, "https://mao.guibiaoguo.tk/hsck1.json");
        String category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            //org.seimicrawler.xpath.core.function;
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
    }

    @Test
    public void hsck2() throws Exception {
        Spider spider = new Legado();
        spider.init(null, "https://mao.guibiaoguo.tk/hsck2.json");
        String category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            //org.seimicrawler.xpath.core.function;
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
    }

    @Test
    public void alipanso() throws Exception {
        Spider spider = new Legado();
        spider.init(null, "http://185.205.12.38:4004/alipanso.json");
        String category = "";
        category = spider.searchContent("火影忍者 4K", false);
        System.out.println(category);
        showCategory(spider, category, 0);
        category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            //org.seimicrawler.xpath.core.function;
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
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
        HttpParser.parseSearchUrlForHtml("https://gitee.com/shentong_012/HikerRules/raw/master/%E8%A7%86%E7%95%8C.m3u8", new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                try {
                    AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
                    analyzeRule.setContent(s.content, url);
                    analyzeRule.setRedirectUrl(url);
                    List channels = analyzeRule.getElements(":#EX(TINF):-1 group-title=\"(.*)\",(.*)\\s(.*)");
                    Map<String,List> c3;
                    Map<String,Map<String,List>> c1 = new HashMap<>();
                    int i = 0;
                    for (Object channel : channels) {
//                        if(i>=300){
//                            break;
//                        }
                        analyzeRule.setContent(channel);

                        String url1 = analyzeRule.getString("$3");
                        String name = analyzeRule.getString("$2");;
                        String group = analyzeRule.getString("$1");;
                        if(c1.get(group) == null){
                            c3=new HashMap<>();
                            c1.put(group,c3);
                        } else {
                            c3 = c1.get(group);
                        }
                        List urls1 ;
                        if(c3.get(name) == null){
                            urls1 = new ArrayList();
                            c3.put(name,urls1);
                        } else {
                            urls1 = c3.get(name);
                        }
                        if(url1.endsWith(".m3u8")){
                            HttpParser.parseSearchUrlForHtml(url1, new HttpParser.OnSearchCallBack() {
                                @Override
                                public void onSuccess(String url, SpiderReqResult s) {
                                    if (s.content.contains("#EXTM3U"))
                                        urls1.add(url);
                                    System.out.println(url);
                                }

                                @Override
                                public void onFailure(int errorCode, String msg) {

                                }
                            });
                        }
                        i++;
                    }
                    System.out.println(new JSONObject(c1).toString(4));

                    JSONArray e1 = new JSONArray();
                    c1.forEach((key,value)->{
                        JSONObject d1 = new JSONObject();
                        try {
                            JSONArray d2 = new JSONArray();
                            value.forEach((key1,value1)->{
                                try {

                                    if(!value1.isEmpty()){
                                        JSONObject d3 = new JSONObject();
                                        d3.put("name",key1);
                                        d3.put("urls",value1);
                                        d2.put(d3);
                                    }
                                } catch (Exception e) {

                                }
                            });
                            d1.put("group",key);
                            d1.put("channels",d2);
                            e1.put(d1);
                        }catch (Exception e) {

                        }

                    });
                    System.out.println(e1.toString(4));
                } catch (Exception e) {

                }
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
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
        HttpParser.parseSearchUrlForHtml("https://mao.guibiaoguo.tk/212757.json", new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                try {
                    JSONObject mao = new JSONObject(s.content);
                    JSONArray sites = mao.optJSONArray("sites");
                    JSONArray trueSites = new JSONArray();
                    for (int i = 36; i < 43; i++) {
                        int k = 0;
                        JSONObject site = sites.optJSONObject(i);
                        try {
                            Spider spider = null;
                            String api = site.optString("api");
                            String ext = site.optString("ext");
                            if (site.optInt("type") == 0) {
                                if (StringUtil.isAbsUrl(api)) {
                                    HttpParser.parseSearchUrlForHtml(api, new HttpParser.OnSearchCallBack() {
                                        @Override
                                        public void onSuccess(String url, SpiderReqResult s) {
                                            trueSites.put(site);
                                        }

                                        @Override
                                        public void onFailure(int errorCode, String msg) {

                                        }
                                    });
                                } else {
                                    trueSites.put(site);
                                }
                                continue;
                            }

                            if (!StringUtil.isAbsUrl(api)) {
                                Class cls = null;
                                try {
                                    if(api.contains("XPath")) {
                                        cls = Class.forName("com.github.catvod.spider.Legado");
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
                                        //org.seimicrawler.xpath.core.function;
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

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
    }

    @Test
    public void testHD() throws Exception{
        String s1 = new String(Base64.getUrlDecoder().decode("JTdCJTIycGFyZW50X25hbWUlMjI6JTIyOzAwMS0xMDA7MDAxLTEwMCUyMiwlMjJmb2xkZXJfaWQlMjI6JTIyNjE3NDgxYTAyNmI1M2EwZDA1Zjg0Y2RjYTU3NjljMDVkODhmNmU3ZiUyMiwlMjJmaWxlX2lkJTIyOiUyMjYxNzQ4MWEwMDBlNWQ3ZGQzNTFjNGJhMWI0NjM1YmY3MDljM2QwOGYlMjIsJTIyZmlsZV9uYW1lJTIyOiUyMiVFNSU5MCU4RCVFNCVCRSVBNiVFNiU4RSVBMiVFNiU5RiVBRiVFNSU4RCU5Ny5FUDAwMS4lRTYlOTklQUUlRTklODAlOUElRTglQUYlOUQuJUU3JUFDJUFDMDAxJUU4JUFGJTlELiVFNCVCQSU5MSVFOSU5QyU4NCVFOSVBMyU5RSVFOCVCRCVBNiVFNiU5RCU4MCVFNCVCQSVCQSVFNCVCQSU4QiVFNCVCQiVCNi5tcDQlMjIsJTIyc2hhcmVfaWQlMjI6JTIyaGlSc3d2WmlKd0glMjIsJTIyc2hhcmVfcHdkJTIyOiUyMiUyMiwlMjJleHBpcmF0aW9uJTIyOiUyMiUyMiU3RA=="));
        System.out.println(s1);
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
    public void myalipan() throws Exception {
        Spider spider = new Legado();
        spider.init(null, "http://185.205.12.38:4004/myalipan.json");
        String category = "";
//        category = spider.searchContent("名侦探柯南TV版 国语", false);
//        System.out.println(category);
//        showCategory(spider, category, 0);
        category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            //org.seimicrawler.xpath.core.function;
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
        System.out.println("ends");
    }

    @Test
    public void testDouban() throws Exception {
        int page = 1;
        int count =100;
        String weburl = "https://frodo.douban.com/api/v2/movie/movie_showing？？area=全部&" + "playable=0&sort=recommend&score_range=0,10" + "&start=0"+"&count="+count+"&loc_id=108288&apikey=0dad551ec0f84ed02907ff5c42e8ec70?host=frodo.douban.com;post;{User-Agent@Rexxar-Core/0.1.3 api-client/1 com.douban.frodo/7.9.0.beta2(215) Android/25 product/TAS-AL00 vendor/HUAWEI model/TAS-AL00  rom/android  network/wifi  platform/mobile com.douban.frodo/7.9.0.beta2(215) Rexxar/1.2.151  platform/mobile 1.2.151}";
        //weburl = "https://frodo.douban.com/api/v2/movie/35376457？？apikey=0dad551ec0f84ed02907ff5c42e8ec70?host=frodo.douban.com;post;{User-Agent@Rexxar-Core/0.1.3 api-client/1 com.douban.frodo/7.9.0.beta2(215) Android/25 product/TAS-AL00 vendor/HUAWEI model/TAS-AL00  rom/android  network/wifi  platform/mobile com.douban.frodo/7.9.0.beta2(215) Rexxar/1.2.151  platform/mobile 1.2.151}";
        weburl = "https://frodo.douban.com/api/v2/subject_collection/tv_hot/items？？playable=1&sort=recommend&score_range=0,10&start=0&count=100&apikey=0dad551ec0f84ed02907ff5c42e8ec70?host=frodo.douban.com;post;{User-Agent@Rexxar-Core/0.1.3 api-client/1 com.douban.frodo/7.9.0.beta2(215) Android/25 product/TAS-AL00 vendor/HUAWEI model/TAS-AL00  rom/android  network/wifi  platform/mobile com.douban.frodo/7.9.0.beta2(215) Rexxar/1.2.151  platform/mobile 1.2.151}";
        weburl = "https://frodo.douban.com/api/v2/movie/tag？？start=0&count=30&q=电影,美国&sort=recommend&score_range=0,10&start=0&count=100&apikey=0dad551ec0f84ed02907ff5c42e8ec70?host=frodo.douban.com;post;{User-Agent@Rexxar-Core/0.1.3 api-client/1 com.douban.frodo/7.9.0.beta2(215) Android/25 product/TAS-AL00 vendor/HUAWEI model/TAS-AL00  rom/android  network/wifi  platform/mobile com.douban.frodo/7.9.0.beta2(215) Rexxar/1.2.151  platform/mobile 1.2.151}";
        System.out.println(weburl);
        HttpParser.parseSearchUrlForHtml(weburl, new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                try {
                    System.out.println(s.content);
                    JSONObject jsonObject = new JSONObject(s.content);
                    jsonObject.optInt("count");
                } catch (Exception e) {
                    onFailure(300,e.getMessage());
                }
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
    }
    @Test
    public void qindou() throws Exception {
        Spider spider = new Legado();
        spider.init(null, "http://185.205.12.38:4004/qindou.json");
        String category = "";
//        category = spider.searchContent("名侦探柯南TV版 国语", false);
//        System.out.println(category);
//        showCategory(spider, category, 0);
        category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider, category, 0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            //org.seimicrawler.xpath.core.function;
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider, category, 0);
        }
        System.out.println("ends");
    }

    @Test
    public void testTV() throws Exception {
        String weburl = "https://movie.douban.com/subject/35332289/episode/1/";
        HttpParser.parseSearchUrlForHtml(weburl, new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
                analyzeRule.setContent(s.content,url);
                analyzeRule.getString("@css:#footer~script@html");
            }

            @Override
            public void onFailure(int errorCode, String msg) {

            }
        });
    }

    @Test
    public void testHtml() throws Exception {
        for (int i=1;i<=15;i++) {
            String weburl = "https://movie.douban.com/subject/35332289/episode/"+i+"/";
            HttpParser.parseSearchUrlForHtml(weburl, new HttpParser.OnSearchCallBack() {
                @Override
                public void onSuccess(String url, SpiderReqResult s) {
                    AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
                    analyzeRule.setContent(s.content);
                    System.out.println(analyzeRule.getString("@css:#wrapper+script@src"));
                    System.out.println(analyzeRule.getString("all##body##"));
                    System.out.println(analyzeRule.getString("all##[\\s\\S]*videos = (.*)]},[\\s\\S]*##$1]}<js></js>@Json:$.data[*].play_link[0]##.*url=(.*)##$1<js></js>@Fun:urlDecode"));

                }

                @Override
                public void onFailure(int errorCode, String msg) {

                }
            });
        }
    }

    @Test
    public void testMath() throws Exception {
        System.out.println(Math.addExact(2,35));
        Method method = Math.class.getMethod("addExact", int.class, int.class);
        method.invoke(Math.class, 1, 2);
        Math.subtractExact(5,2);
        Math.multiplyExact(5,2);
        System.out.println(method.invoke(Math.class,2,5));
        AnalyzeByFunction analyzeByFunction = new AnalyzeByFunction(2);
        System.out.println(analyzeByFunction.getString("math#subtractExact#1&&math#multiplyExact#30"));
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
                for (int j=0;j<names.length();j++) {
                    JSONObject t1 = new JSONObject();
                    JSONArray t2 = new JSONArray();
                    JSONArray itemData = itemsObject.optJSONArray(names.optString(j));
                    for (int k=0;k<itemData.length();k++) {
                        JSONObject t3 = new JSONObject();
                        String v = itemData.optString(k);
                        String n = itemData.optString(k);
                        t3.put("v", n);
                        t3.put("n", v);
                        t2.put(t3);
                    }
                    t1.put("key", names.optString(i));
                    t1.put("name", itemsObject.optJSONArray(names.optString(j)).optString(0).replaceAll("全部",""));
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
}

