package com.guibiaoguo.myapplication;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderReq;
import com.github.catvod.crawler.SpiderReqResult;
import com.github.catvod.crawler.SpiderUrl;
import com.github.catvod.spider.Aidi;

import com.github.catvod.spider.Alipanso;
import com.github.catvod.spider.Enlienli;
import com.github.catvod.spider.GoIndex;
import com.github.catvod.spider.Hsck;
import com.github.catvod.spider.IQIYI;
import com.github.catvod.spider.Juhi;
import com.github.catvod.spider.MGTV;
import com.github.catvod.spider.QQ;
import com.github.catvod.spider.XPathAli;
import com.github.catvod.spider.YydsAli1;
import com.github.catvod.spider.YydsAli2;
import com.jayway.jsonpath.DocumentContext;
import com.jayway.jsonpath.JsonPath;
import com.jayway.jsonpath.ReadContext;
import com.jayway.jsonpath.internal.JsonContext;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;

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
        Spider spider = new Alipanso();
        spider.init(null);
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
        xpathAli("https://cat.guibiaoguo.tk/ahhfs.json",keys);
    }

    public void showCategory(Spider spider,String category) throws Exception {
        JSONObject jsonObject = new JSONObject(category);
        JSONArray categorys = jsonObject.optJSONArray("list");
        List<String> ids = new ArrayList<>();
        ids.add(categorys.getJSONObject(0).optString("vod_id"));
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

    public void xpathAli(String ext,List<String> keys) throws Exception {
        Spider spider = new XPathAli();
        if (StringUtils.isEmpty(ext))
            ext = "https://cat.guibiaoguo.tk/qq.json";
        spider.init(null, ext);
        for(String key:keys) {
            String category = spider.searchContent("钢铁侠", false);
            System.out.println(category);
            if(StringUtils.isNotEmpty(category))
                showCategory(spider,category);
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
                showCategory(spider,category);
        }
    }

    @Test
    public void yydsAli() throws Exception {
        Spider spider = new YydsAli2();
        String ext = "https://cat.guibiaoguo.tk/qq.json";
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
    public void jsonpath() throws Exception {
        String ext = "https://cat.guibiaoguo.tk/goindex.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        Spider spider = new GoIndex();
        spider.init(null,ext);
        String category = spider.homeContent(false);
        System.out.println(category);
        JSONObject jsonObject = null;
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
    }

}

