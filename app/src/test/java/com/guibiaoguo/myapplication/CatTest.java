package com.guibiaoguo.myapplication;
import com.github.catvod.analyzeRules.AnalyzeRule;
import com.github.catvod.analyzeRules.RuleData;
import com.github.catvod.analyzeRules.AnalyzeByJSonPath;
import com.github.catvod.analyzeRules.AnalyzeByJSoup;
import com.github.catvod.analyzeRules.AnalyzeByRegex;
import com.github.catvod.analyzeRules.RuleAnalyzer;
import com.github.catvod.crawler.Spider;
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

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
        spider.init(null,"https://mao.guibiaoguo.tk/qq.json");
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
        xpathAli("https://mao.guibiaoguo.tk/ahhfs.json",keys);
    }

    @Test
    public void alps() throws Exception {
        List<String> keys = new ArrayList<>();
//        keys.add("钢铁侠");
        xpathAli("https://mao.guibiaoguo.tk/qq.json",keys);
    }

    public void showCategory(Spider spider,String category,int index) throws Exception {
        JSONObject jsonObject = new JSONObject(category);
        JSONArray categorys = jsonObject.optJSONArray("list");
        if(category !=null && categorys.length()>index) {
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
                System.out.println(spider.playerContent(details.getJSONObject(0).optString("vod_play_from"), playurl, new ArrayList<>()));
            }
        }
    }

    public void xpathAli(String ext,List<String> keys) throws Exception {
        Spider spider = new XPathAli();
        if (StringUtils.isEmpty(ext))
            ext = "https://mao.guibiaoguo.tk/qq.json";
        spider.init(null, ext);
        for(String key:keys) {
            String category = spider.searchContent("钢铁侠", false);
            System.out.println(category);
            if(StringUtils.isNotEmpty(category))
                showCategory(spider,category,0);
        }
        JSONObject jsonObject = null;
//        System.out.println(spider.searchContent("小姨", false));
//        System.out.println(spider.searchContent("百家", false));
//        System.out.println(spider.searchContent("快乐大本营", false));
        String homeContent = spider.homeContent(true);
        System.out.println(homeContent);
        jsonObject = new JSONObject(homeContent);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            //org.seimicrawler.xpath.core.function;
            String category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            if(StringUtils.isNotEmpty(category))
                showCategory(spider,category,0);
        }
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
        String ext = "https://mao.guibiaoguo.tk/goindex.json";
        Spider spider = new GoIndex();
        spider.init(null,ext);
        String category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider,category,0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            //org.seimicrawler.xpath.core.function;
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider,category,0);
        }
    }
    @Test
    public void jsonpath() throws Exception {
        String ext = "https://mao.guibiaoguo.tk/jsonpath.json";
        Spider spider = new Legado();
        spider.init(null,ext);
        String category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider,category,0);
        JSONObject jsonObject = new JSONObject(category);
        JSONArray classes = jsonObject.optJSONArray("class");
        for (int i = 0; i < classes.length(); i++) {
            String tid = classes.getJSONObject(i).optString("type_id");
            System.out.println(tid);
            //org.seimicrawler.xpath.core.function;
            category = spider.categoryContent(tid, "1", false, null);
            System.out.println(category);
            showCategory(spider,category,0);
        }
    }

    @Test
    public void analyze() {
        String content = "下一站";
        String rulestr = "##一站##一战";
        AnalyzeRule analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(content,"");
        Object object = analyzeRule.getElement(rulestr);
        System.out.println(object);
        String ext = "http://www.paper027.com/home/chapter/lists/id/77485.html";
        SpiderUrl su = new SpiderUrl(ext, getHeaders(ext));
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        analyzeRule.setContent(json,ext);
        rulestr = ":class=\"text-muted number\"(?:[^\"]*\"){3}([^\"]*)\" title=\"([^\"]*)\">";
        object = analyzeRule.getElement(rulestr);
        System.out.println(object.toString());
        System.out.println(analyzeRule.getElements(rulestr));
        analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(json);
        System.out.println(analyzeRule.getElement("@css:.chapterTitle"));
        ext = "https://mao.guibiaoguo.tk/jsonpath.json";
        su = new SpiderUrl(ext,getHeaders(ext));
        json = SpiderReq.get(su).content;
        analyzeRule = new AnalyzeRule(new RuleData());
        analyzeRule.setContent(json,ext);
        System.out.println(analyzeRule.getElement("$.ua"));
        String webUrl = analyzeRule.getString("{$.homeUrl}");
        System.out.println(webUrl);
        HttpParser.parseSearchUrlForHtml(webUrl, new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                AnalyzeRule analyzeRule1 = new AnalyzeRule(new RuleData());
                analyzeRule1.setContent(s.content,url);
                Object nodes = analyzeRule1.getStringList("$.data.files[1]%%$.data.files[3]");
                System.out.println(nodes.toString());
                if(nodes instanceof JSONArray) {
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
                analyzeRule.setContent(s.content,url);
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
    public void legado() throws Exception {
        String ext = "https://mao.guibiaoguo.tk/jsonpath.json";
        ext = "{\n" +
                "  \"ua\": \"Mozilla/5.0 (Linux; Android 11; Mi 10 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.152 Mobile Safari/537.36\",\n" +
                "  \"videoName\":\"谷歌硬盘\",\n" +
                "  \"homeUrl\": \"https://joes.shentong.workers.dev/0:/%E5%8A%A8%E6%BC%AB/2000-2019%E9%87%8C%E7%95%AA/?page_index=0;post\",\n" +
                "  \"cateNode\": \"\",\n" +
                "  \"cateName\": \"\",\n" +
                "  \"cateId\": \"\",\n" +
                "  \"cateIdR\": \"\",\n" +
                "  \"cateManual\": {\"M01\":\"M01\",\"M02\":\"M02\",\"M03\":\"M03\",\"M04\":\"M04\",\"M05\":\"M05\",\"M06\":\"M06\",\"M07\":\"M07\",\"M08\":\"M08\",\"M09\":\"M09\",\"M10\":\"M10\",\"M11\":\"M11\"},\n" +
                "  \"homeVodNode\": \"$.data.files[*]\",\n" +
                "  \"homeVodName\": \"name\",\n" +
                "  \"homeVodId\": \"$.name\",\n" +
                "  \"homeVodIdR\": \"\",\n" +
                "  \"homeVodImg\": \"name\",\n" +
                "  \"homeVodImgR\": \"\",\n" +
                "  \"homeVodMark\": \"name\",\n" +
                "  \"cateUrl\": \"https://joes.shentong.workers.dev/0:/%E4%B8%A2%E4%B8%A2%E7%94%B5%E5%BD%B1/{cateId}/?page_index=0;post\",\n" +
                "  \"cateVodNode\": \"$.data.files[*]\",\n" +
                "  \"cateVodName\": \"name\",\n" +
                "  \"cateVodId\": \"name\",\n" +
                "  \"cateVodIdR\": \"\",\n" +
                "  \"cateVodImg\": \"\",\n" +
                "  \"cateVodImgR\": \"\",\n" +
                "  \"cateVodMark\": \"\",\n" +
                "  \"dtUrl\": \"{vid}/?page_index=0;post\",\n" +
                "  \"dtNode\": \"$.data.files[*]\",\n" +
                "  \"dtName\": \"name\",\n" +
                "  \"dtNameR\": \"\",\n" +
                "  \"dtImg\": \"\",\n" +
                "  \"dtImgR\": \"\",\n" +
                "  \"dtFromNode\": \"\",\n" +
                "  \"dtFromName\": \"\",\n" +
                "  \"dtFromNameR\": \"\",\n" +
                "  \"dtUrlNode\": \"$.data.files[*]\",\n" +
                "  \"dtUrlSubNode\": \"\",\n" +
                "  \"dtUrlId\": \"$.name\",\n" +
                "  \"dtUrlIdR\": \"\",\n" +
                "  \"dtUrlName\": \"$.name\",\n" +
                "  \"dtUrlNameR\": \"\",\n" +
                "  \"playUrl\": \"{playUrl}\",\n" +
                "  \"playUa\": \"\",\n" +
                "  \"searchUrl\": \"https://joes.shentong.workers.dev/0.search?q=**;post\",\n" +
                "  \"scVodNode\": \"json:data>files\",\n" +
                "  \"scVodName\": \"name\",\n" +
                "  \"scVodId\": \"name\",\n" +
                "  \"scVodIdR\": \"\",\n" +
                "  \"scVodImg\": \"\",\n" +
                "  \"leaf\": \"mimeType\",\n" +
                "  \"nodeValue\": \"application/vnd.google-apps.folder\",\n" +
                "  \"defaultFrom\": \"workerdev\",\n" +
                "  \"leafValue\": \"video/x-matroska,application/vnd.rn-realmedia\",\n" +
                "  \"nodeUrl\": \"{$.name}/?page_index=0;post\",\n" +
                "  \"scVodMark\": \"\"\n" +
                "}";
        ext = "https://mao.guibiaoguo.tk/jsonpath.json";
        Spider spider = new Legado();
        spider.init(null,ext);
        String category = spider.homeContent(false);
        System.out.println(category);
        showCategory(spider,category,1);
    }

    @Test
    public void test() {
        String queue = "[test}";
        System.out.println(queue.charAt(0));
        RuleAnalyzer analyzer = new RuleAnalyzer("{$.name}||{$.id}",false);
        analyzer.trim();
        System.out.println(analyzer.splitRule("&&","||"));
        analyzer = new RuleAnalyzer("$.store.book[0].title@$.name");
        System.out.println(analyzer.splitRule("@","&&"));
        String rulestr = "class=\"text-muted number\"(?:[^\"]*\"){3}([^\"]*)\" title=\"([^\"]*)\">";
        String ext = "http://www.paper027.com/home/chapter/lists/id/77485.html";
        SpiderUrl su = new SpiderUrl(ext, getHeaders(ext));
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        System.out.println(AnalyzeByRegex.getElement(json,StringUtils.split(rulestr,"&&"),0));
        System.out.println(AnalyzeByRegex.getElements(json,StringUtils.split(rulestr,"&&"),0));
        ext = "https://mao.guibiaoguo.tk/jsonpath.json";
        su = new SpiderUrl(ext,getHeaders(ext));
        json = SpiderReq.get(su).content;
        System.out.println(new AnalyzeByJSonPath(json).getString("{$.homeUrl}/test"));
        System.out.println(new AnalyzeByJSonPath(json).getString("$.ua"));
        HttpParser.parseSearchUrlForHtml(new AnalyzeByJSonPath(json).getString("$.homeUrl"), new HttpParser.OnSearchCallBack() {
            @Override
            public void onSuccess(String url, SpiderReqResult s) {
                System.out.println(new AnalyzeByJSonPath(s.content).getString("$.data.files[1]"));
                System.out.println(new AnalyzeByJSonPath(s.content).getString("$.data.files[*]"));
                System.out.println(new AnalyzeByJSonPath(s.content).getString("$.data.files[1]%%$.data.files[3]"));
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
                System.out.println(new AnalyzeRule(new RuleData()).setContent(s.content,url).getString("{$.homeUrl}/test"));
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
                analyzeRule.setContent(s.content,url);
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
                analyzeRule.setContent(s.content,url);
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
        RuleAnalyzer analyzer = new RuleAnalyzer("{$.name}||{$.id}",false);
        analyzer.trim();
        System.out.println(analyzer.splitRule("&&","||"));
        analyzer = new RuleAnalyzer("$.store.book[0].title@$.name",false);
        System.out.println(analyzer.splitRule("@","&&"));
        String rulestr = ":class=\"text-muted number\"(?:[^\"]*\"){3}([^\"]*)\" title=\"([^\"]*)\">";
    }
}

