package com.github.catvod.spider;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;

import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;

import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
//import org.mozilla.javascript.NativeObject;
//import org.mozilla.javascript.Scriptable;

import java.net.URLEncoder;
import java.sql.Struct;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import cn.hutool.core.util.StrUtil;


/**
 * bill
 */
public class QQ extends Spider {

    private static final String siteUrl = "https://v.qq.com";

    protected String filterConfig;
    protected String classConfig;
    @Override
    public void init(Context context) {
        super.init(context);
        try {
            filterConfig = "{\"tv\":[{\"name\":\"排序\",\"value\":[{\"v\":\"19\",\"n\":\"最新\"},{\"v\":\"18\",\"n\":\"最热\"},{\"v\":\"16\",\"n\":\"好评\"},{\"v\":\"21\",\"n\":\"口碑好剧\"},{\"v\":\"54\",\"n\":\"高分好评\"},{\"v\":\"22\",\"n\":\"知乎高分\"}],\"key\":\"sort\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"偶像爱情\"},{\"v\":\"2\",\"n\":\"古装历史\"},{\"v\":\"3\",\"n\":\"玄幻史诗\"},{\"v\":\"4\",\"n\":\"都市生活\"},{\"v\":\"14\",\"n\":\"当代主旋律\"},{\"v\":\"5\",\"n\":\"罪案谍战\"},{\"v\":\"6\",\"n\":\"历险科幻\"},{\"v\":\"7\",\"n\":\"军旅抗战\"},{\"v\":\"8\",\"n\":\"喜剧\"},{\"v\":\"9\",\"n\":\"武侠江湖\"},{\"v\":\"10\",\"n\":\"青春校园\"},{\"v\":\"11\",\"n\":\"时代传奇\"},{\"v\":\"12\",\"n\":\"体育电竞\"},{\"v\":\"13\",\"n\":\"真人动漫\"},{\"v\":\"15\",\"n\":\"短剧\"},{\"v\":\"44\",\"n\":\"独播\"}],\"key\":\"feature\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"814\",\"n\":\"内地\"},{\"v\":\"815\",\"n\":\"美国\"},{\"v\":\"816\",\"n\":\"英国\"},{\"v\":\"818\",\"n\":\"韩国\"},{\"v\":\"9\",\"n\":\"泰国\"},{\"v\":\"10\",\"n\":\"日本\"},{\"v\":\"14\",\"n\":\"中国香港\"},{\"v\":\"817\",\"n\":\"中国台湾\"},{\"v\":\"819\",\"n\":\"其他\"}],\"key\":\"iarea\"},{\"name\":\"年份\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"2020\",\"n\":\"2020\"},{\"v\":\"4061\",\"n\":\"2019\"},{\"v\":\"4060\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"859\",\"n\":\"2016\"},{\"v\":\"860\",\"n\":\"2015\"},{\"v\":\"861\",\"n\":\"2014\"},{\"v\":\"862\",\"n\":\"2013\"},{\"v\":\"863\",\"n\":\"2012\"},{\"v\":\"864\",\"n\":\"2011\"},{\"v\":\"865\",\"n\":\"2010\"},{\"v\":\"866\",\"n\":\"其他\"}],\"key\":\"year\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"867\",\"n\":\"免费\"},{\"v\":\"6\",\"n\":\"会员\"}],\"key\":\"pay\"}],\"education\":[{\"name\":\"排序\",\"value\":[{\"v\":\"19\",\"n\":\"按更新\"},{\"v\":\"40\",\"n\":\"最热\"}],\"key\":\"sort\"},{\"name\":\"学段\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2\",\"n\":\"小学\"},{\"v\":\"3\",\"n\":\"初中\"},{\"v\":\"4\",\"n\":\"高中\"},{\"v\":\"5\",\"n\":\"大学\"},{\"v\":\"6\",\"n\":\"研究生\"},{\"v\":\"7\",\"n\":\"成人\"}],\"key\":\"section\"},{\"name\":\"学级\",\"value\":[{\"v\":\"1\",\"n\":\"全部\"},{\"v\":\"5\",\"n\":\"一年级\"},{\"v\":\"6\",\"n\":\"二年级\"},{\"v\":\"7\",\"n\":\"三年级\"},{\"v\":\"8\",\"n\":\"四年级\"},{\"v\":\"9\",\"n\":\"五年级\"},{\"v\":\"10\",\"n\":\"六年级\"},{\"v\":\"11\",\"n\":\"初一\"},{\"v\":\"12\",\"n\":\"初二\"},{\"v\":\"13\",\"n\":\"初三\"},{\"v\":\"14\",\"n\":\"高一\"},{\"v\":\"15\",\"n\":\"高二\"},{\"v\":\"16\",\"n\":\"高三\"},{\"v\":\"20\",\"n\":\"大四\"}],\"key\":\"grade\"},{\"name\":\"学科\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"41\",\"n\":\"语文\"},{\"v\":\"42\",\"n\":\"数学\"},{\"v\":\"43\",\"n\":\"英语\"},{\"v\":\"44\",\"n\":\"物理\"},{\"v\":\"45\",\"n\":\"化学\"},{\"v\":\"46\",\"n\":\"生物\"},{\"v\":\"47\",\"n\":\"政治\"},{\"v\":\"50\",\"n\":\"其它\"}],\"key\":\"subject\"}],\"movie\":[{\"name\":\"排序\",\"value\":[{\"v\":\"18\",\"n\":\"最近热播\"},{\"v\":\"19\",\"n\":\"最新上架\"},{\"v\":\"21\",\"n\":\"高分好评\"},{\"v\":\"22\",\"n\":\"知乎高分\"}],\"key\":\"sort\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"100018\",\"n\":\"剧情\"},{\"v\":\"100004\",\"n\":\"喜剧\"},{\"v\":\"100061\",\"n\":\"动作\"},{\"v\":\"100005\",\"n\":\"爱情\"},{\"v\":\"100010\",\"n\":\"惊悚\"},{\"v\":\"4\",\"n\":\"犯罪\"},{\"v\":\"100009\",\"n\":\"悬疑\"},{\"v\":\"100006\",\"n\":\"战争\"},{\"v\":\"100012\",\"n\":\"科幻\"},{\"v\":\"100015\",\"n\":\"动画\"},{\"v\":\"100007\",\"n\":\"恐怖\"},{\"v\":\"100017\",\"n\":\"家庭\"},{\"v\":\"100022\",\"n\":\"传记\"},{\"v\":\"100003\",\"n\":\"冒险\"},{\"v\":\"100016\",\"n\":\"奇幻\"},{\"v\":\"100011\",\"n\":\"武侠\"},{\"v\":\"100021\",\"n\":\"历史\"},{\"v\":\"2\",\"n\":\"运动\"},{\"v\":\"100014\",\"n\":\"歌舞\"},{\"v\":\"100013\",\"n\":\"音乐\"},{\"v\":\"100020\",\"n\":\"纪录\"},{\"v\":\"100019\",\"n\":\"伦理\"},{\"v\":\"3\",\"n\":\"西部\"}],\"key\":\"itype\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"100024\",\"n\":\"内地\"},{\"v\":\"100025\",\"n\":\"中国香港\"},{\"v\":\"100029\",\"n\":\"美国\"},{\"v\":\"100032\",\"n\":\"欧洲\"},{\"v\":\"100026\",\"n\":\"中国台湾\"},{\"v\":\"100027\",\"n\":\"日本\"},{\"v\":\"100028\",\"n\":\"韩国\"},{\"v\":\"100030\",\"n\":\"印度\"},{\"v\":\"100031\",\"n\":\"泰国\"},{\"v\":\"15\",\"n\":\"英国\"},{\"v\":\"16\",\"n\":\"法国\"},{\"v\":\"17\",\"n\":\"德国\"},{\"v\":\"18\",\"n\":\"加拿大\"},{\"v\":\"19\",\"n\":\"西班牙\"},{\"v\":\"20\",\"n\":\"意大利\"},{\"v\":\"21\",\"n\":\"澳大利亚\"},{\"v\":\"22\",\"n\":\"北欧\"},{\"v\":\"23\",\"n\":\"拉丁美洲\"},{\"v\":\"100033\",\"n\":\"其它\"}],\"key\":\"iarea\"},{\"name\":\"特色\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"院线\"},{\"v\":\"2\",\"n\":\"自制电影\"},{\"v\":\"5\",\"n\":\"独播\"},{\"v\":\"8\",\"n\":\"原声\"},{\"v\":\"9\",\"n\":\"粤语\"},{\"v\":\"3\",\"n\":\"蓝光\"},{\"v\":\"6\",\"n\":\"奥斯卡\"}],\"key\":\"characteristic\"},{\"name\":\"年份\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"2020\",\"n\":\"2020\"},{\"v\":\"20\",\"n\":\"2019\"},{\"v\":\"2018\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"2016\",\"n\":\"2016\"},{\"v\":\"100063\",\"n\":\"2015\"},{\"v\":\"100034\",\"n\":\"2014\"},{\"v\":\"100035\",\"n\":\"2013-2011\"},{\"v\":\"100036\",\"n\":\"2010-2006\"},{\"v\":\"100037\",\"n\":\"2005-2000\"},{\"v\":\"100038\",\"n\":\"90年代\"},{\"v\":\"100039\",\"n\":\"80年代\"},{\"v\":\"100040\",\"n\":\"其它\"}],\"key\":\"year\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"免费\"},{\"v\":\"2\",\"n\":\"包月\"},{\"v\":\"3\",\"n\":\"用券\"},{\"v\":\"4\",\"n\":\"付费\"}],\"key\":\"charge\"}],\"variety\":[{\"name\":\"排序\",\"value\":[{\"v\":\"4\",\"n\":\"最热\"},{\"v\":\"5\",\"n\":\"最新\"}],\"key\":\"sort\"},{\"name\":\"独家\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"腾讯自制\"},{\"v\":\"2\",\"n\":\"独播\"}],\"key\":\"exclusive\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"国内\"},{\"v\":\"2\",\"n\":\"海外\"}],\"key\":\"iarea\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"10\",\"n\":\"游戏\"},{\"v\":\"11\",\"n\":\"音乐\"},{\"v\":\"24\",\"n\":\"养成\"},{\"v\":\"12\",\"n\":\"情感\"},{\"v\":\"14\",\"n\":\"喜剧\"},{\"v\":\"2\",\"n\":\"脱口秀\"},{\"v\":\"16\",\"n\":\"表演\"},{\"v\":\"25\",\"n\":\"体验\"},{\"v\":\"17\",\"n\":\"亲子\"},{\"v\":\"26\",\"n\":\"文化\"},{\"v\":\"19\",\"n\":\"美食\"},{\"v\":\"20\",\"n\":\"职场\"},{\"v\":\"21\",\"n\":\"体育\"},{\"v\":\"15\",\"n\":\"潮流文化\"},{\"v\":\"3\",\"n\":\"访谈\"},{\"v\":\"22\",\"n\":\"生活服务\"},{\"v\":\"23\",\"n\":\"萌宠\"},{\"v\":\"7\",\"n\":\"资讯\"},{\"v\":\"6\",\"n\":\"晚会\"}],\"key\":\"itype\"},{\"name\":\"年份\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"50\",\"n\":\"2020\"},{\"v\":\"7\",\"n\":\"2019\"},{\"v\":\"1\",\"n\":\"2018\"},{\"v\":\"2\",\"n\":\"2017\"},{\"v\":\"3\",\"n\":\"2016\"},{\"v\":\"4\",\"n\":\"2015\"},{\"v\":\"5\",\"n\":\"2014\"},{\"v\":\"6\",\"n\":\"2013\"},{\"v\":\"2012\",\"n\":\"2012\"},{\"v\":\"2011\",\"n\":\"2011\"},{\"v\":\"2010\",\"n\":\"2010\"},{\"v\":\"99\",\"n\":\"更早\"}],\"key\":\"iyear\"},{\"name\":\"付费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"会员\"}],\"key\":\"ipay\"}],\"cartoon\":[{\"name\":\"排序\",\"value\":[{\"v\":\"40\",\"n\":\"最热\"},{\"v\":\"23\",\"n\":\"最新\"},{\"v\":\"20\",\"n\":\"好评\"},{\"v\":\"22\",\"n\":\"知乎高分\"}],\"key\":\"sort\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2\",\"n\":\"冒险\"},{\"v\":\"5\",\"n\":\"战斗\"},{\"v\":\"1\",\"n\":\"搞笑\"},{\"v\":\"3\",\"n\":\"经典\"},{\"v\":\"4\",\"n\":\"科幻\"},{\"v\":\"9\",\"n\":\"玄幻\"},{\"v\":\"6\",\"n\":\"魔幻\"},{\"v\":\"13\",\"n\":\"武侠\"},{\"v\":\"7\",\"n\":\"恋爱\"},{\"v\":\"14\",\"n\":\"推理\"},{\"v\":\"11\",\"n\":\"腾讯出品\"},{\"v\":\"15\",\"n\":\"日常\"},{\"v\":\"16\",\"n\":\"校园\"},{\"v\":\"17\",\"n\":\"悬疑\"},{\"v\":\"18\",\"n\":\"真人\"},{\"v\":\"19\",\"n\":\"历史\"},{\"v\":\"20\",\"n\":\"竞技\"},{\"v\":\"12\",\"n\":\"其他\"}],\"key\":\"itype\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"内地\"},{\"v\":\"2\",\"n\":\"日本\"},{\"v\":\"3\",\"n\":\"欧美\"},{\"v\":\"4\",\"n\":\"其他\"}],\"key\":\"iarea\"},{\"name\":\"时间\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"50\",\"n\":\"2020\"},{\"v\":\"11\",\"n\":\"2019\"},{\"v\":\"2018\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"1\",\"n\":\"2016\"},{\"v\":\"2\",\"n\":\"2015\"},{\"v\":\"3\",\"n\":\"2014\"},{\"v\":\"4\",\"n\":\"2013\"},{\"v\":\"5\",\"n\":\"2012\"},{\"v\":\"6\",\"n\":\"2011\"},{\"v\":\"7\",\"n\":\"00年代\"},{\"v\":\"8\",\"n\":\"90年代\"},{\"v\":\"9\",\"n\":\"80年代\"},{\"v\":\"10\",\"n\":\"更早\"}],\"key\":\"iyear\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"免费\"},{\"v\":\"2\",\"n\":\"会员\"}],\"key\":\"ipay\"},{\"name\":\"状态\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"46\",\"n\":\"预告片\"},{\"v\":\"44\",\"n\":\"连载\"},{\"v\":\"45\",\"n\":\"完结\"}],\"key\":\"anime_status\"},{\"name\":\"分类\",\"value\":[{\"v\":\"1\",\"n\":\"全部\"},{\"v\":\"2\",\"n\":\"3D动画\"},{\"v\":\"3\",\"n\":\"2D动画\"},{\"v\":\"4\",\"n\":\"特摄\"},{\"v\":\"5\",\"n\":\"其他\"}],\"key\":\"item\"}],\"doco\":[{\"name\":\"排序\",\"value\":[{\"v\":\"19\",\"n\":\"最新\"},{\"v\":\"18\",\"n\":\"最热\"},{\"v\":\"20\",\"n\":\"好评\"},{\"v\":\"22\",\"n\":\"知乎高分\"}],\"key\":\"sort\"},{\"name\":\"出品机构\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"BBC\"},{\"v\":\"4\",\"n\":\"国家地理\"},{\"v\":\"3175\",\"n\":\"HBO\"},{\"v\":\"2\",\"n\":\"NHK\"},{\"v\":\"7\",\"n\":\"历史频道\"},{\"v\":\"3530\",\"n\":\"ITV\"},{\"v\":\"3174\",\"n\":\"探索频道\"},{\"v\":\"3176\",\"n\":\"ZDF\"},{\"v\":\"3172\",\"n\":\"ARTE\"},{\"v\":\"15\",\"n\":\"腾讯自制\"},{\"v\":\"6\",\"n\":\"合作机构\"},{\"v\":\"5\",\"n\":\"其他\"}],\"key\":\"itrailer\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"4\",\"n\":\"自然\"},{\"v\":\"9\",\"n\":\"美食\"},{\"v\":\"3\",\"n\":\"社会\"},{\"v\":\"5\",\"n\":\"人文\"},{\"v\":\"1\",\"n\":\"历史\"},{\"v\":\"2\",\"n\":\"军事\"},{\"v\":\"7\",\"n\":\"科技\"},{\"v\":\"13\",\"n\":\"财经\"},{\"v\":\"15\",\"n\":\"探险\"},{\"v\":\"6\",\"n\":\"罪案\"},{\"v\":\"11\",\"n\":\"竞技\"},{\"v\":\"10\",\"n\":\"旅游\"}],\"key\":\"itype\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"免费\"},{\"v\":\"2\",\"n\":\"会员\"}],\"key\":\"pay\"}],\"child\":[{\"name\":\"排序\",\"value\":[{\"v\":\"19\",\"n\":\"最新\"},{\"v\":\"18\",\"n\":\"最热\"},{\"v\":\"20\",\"n\":\"好评\"}],\"key\":\"sort\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"欧美\"},{\"v\":\"2\",\"n\":\"日韩\"},{\"v\":\"3\",\"n\":\"国内\"}],\"key\":\"iarea\"},{\"name\":\"年龄\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"0-3岁\"},{\"v\":\"2\",\"n\":\"4-6岁\"},{\"v\":\"3\",\"n\":\"7-9岁\"},{\"v\":\"4\",\"n\":\"10岁以上\"}],\"key\":\"iyear\"},{\"name\":\"性别\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"男孩\"},{\"v\":\"2\",\"n\":\"女孩\"}],\"key\":\"gender\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"儿歌\"},{\"v\":\"2\",\"n\":\"益智\"},{\"v\":\"3\",\"n\":\"手工·绘画\"},{\"v\":\"4\",\"n\":\"玩具\"},{\"v\":\"5\",\"n\":\"英语\"},{\"v\":\"7\",\"n\":\"早教\"},{\"v\":\"6\",\"n\":\"数学\"},{\"v\":\"8\",\"n\":\"国学\"},{\"v\":\"9\",\"n\":\"合家欢\"},{\"v\":\"10\",\"n\":\"冒险\"},{\"v\":\"11\",\"n\":\"交通工具\"},{\"v\":\"12\",\"n\":\"魔幻·科幻\"},{\"v\":\"13\",\"n\":\"动物\"},{\"v\":\"14\",\"n\":\"真人特摄\"},{\"v\":\"15\",\"n\":\"探索\"},{\"v\":\"16\",\"n\":\"其他\"}],\"key\":\"itype\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"免费\"},{\"v\":\"2\",\"n\":\"会员\"}],\"key\":\"ipay\"}],\"knowledge\":[{\"name\":\"排序\",\"value\":[{\"v\":\"41\",\"n\":\"最热\"},{\"v\":\"10\",\"n\":\"最新\"}],\"key\":\"sort\"},{\"name\":\"分类\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2\",\"n\":\"文化历史\"},{\"v\":\"3\",\"n\":\"亲子育儿\"},{\"v\":\"4\",\"n\":\"职场\"},{\"v\":\"5\",\"n\":\"商业理财\"},{\"v\":\"7\",\"n\":\"生活\"},{\"v\":\"9\",\"n\":\"情感心理\"},{\"v\":\"8\",\"n\":\"运动健身\"},{\"v\":\"6\",\"n\":\"艺术兴趣\"},{\"v\":\"12\",\"n\":\"游戏\"},{\"v\":\"14\",\"n\":\"科学科普\"},{\"v\":\"15\",\"n\":\"健康\"},{\"v\":\"16\",\"n\":\"IT/互联网\"}],\"key\":\"pay_level_one\"}]}";
            classConfig = "[{\"type_id\":\"free\",\"type_name\":\"免费专区\",\"type_flag\":\"\"},{\"type_id\":\"mid_video\",\"type_name\":\"中视频\",\"type_flag\":\"\"},{\"type_id\":\"tv\",\"type_name\":\"电视剧\",\"type_flag\":\"\"},{\"type_id\":\"movie\",\"type_name\":\"电影\",\"type_flag\":\"\"},{\"type_id\":\"variety\",\"type_name\":\"综艺\",\"type_flag\":\"\"},{\"type_id\":\"cartoon\",\"type_name\":\"动漫\",\"type_flag\":\"\"},{\"type_id\":\"child\",\"type_name\":\"少儿\",\"type_flag\":\"\"},{\"type_id\":\"doco\",\"type_name\":\"纪录片\",\"type_flag\":\"\"},{\"type_id\":\"game_new\",\"type_name\":\"游戏\",\"type_flag\":\"\"},{\"type_id\":\"zhongchao\",\"type_name\":\"中超\",\"type_flag\":\"\"},{\"type_id\":\"knowledge\",\"type_name\":\"知识\",\"type_flag\":\"\"},{\"type_id\":\"education\",\"type_name\":\"学堂\",\"type_flag\":\"\"},{\"type_id\":\"health\",\"type_name\":\"健康\",\"type_flag\":\"\"}]";
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }

    protected HashMap<String, String> getHeaders(String url) {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("method", "GET");
        headers.put("referer", url);
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
        try {
            String url = "https://v.qq.com/channel/tv?listpage=1&channel=tv&sort=18&_all=1";
            String srr = OkHttpUtil.string(url, getHeaders(url));
            Document doc = Jsoup.parse(srr);
            JSONArray classes = new JSONArray();
            for (Element cls:doc.select(".nav-wrap > div a")) {
                JSONObject c = new JSONObject();
                String id = cls.selectFirst("a").attr("href");
                if(id.contains("/art")||id.contains("feeds_hotspot")||id.contains("wwe")||id.contains("choice")||id.contains("sports_new")||id.contains("games")||id.contains("lols11")||id.contains("ent")||id.contains("news")||id.contains("fashion")||id.contains("tech")||id.contains("auto")||id.contains("house")||id.contains("finance")||id.contains("astro")||id.contains("nba")||id.contains("fun")||id.contains("baby")||id.contains("music")||id.contains("life")||id.contains("travel")) {
                    continue;
                }
                if(id.contains("/channel/")) {
                    c.put("type_name",cls.selectFirst("a").text());
                    c.put("type_id",id.split("/channel/")[1]);
                    classes.put(c);
                }
            }
            url = siteUrl + "/x/bu/pagesheet/list?_all=1&append=1&channel=choice";
            srr = OkHttpUtil.string(url, getHeaders(url));
            JSONObject result = new JSONObject();
            if (filter) {
                result.put("filters", new JSONObject(filterConfig));
            }
            if (classes.length() > 0)
                result.put("class", classes);
            else
                result.put("class",new JSONArray(classConfig));
            try {
                doc = Jsoup.parse(srr);
                // 取首页推荐视频列表
                Elements list = doc.select(".list_item");
                JSONArray videos = new JSONArray();
                for (int i = 0; i < list.size(); i++) {
                    Element vod = list.get(i);
                    String title = vod.selectFirst("a").attr("title");
                    String cover = vod.selectFirst("img").attr("src");
                    cover=fixUrl(url,cover);
                    String remark = vod.selectFirst(".figure_caption").text();
                    String id = vod.selectFirst("a").attr("data-float");
                    JSONObject v = new JSONObject();
                    v.put("vod_id", id);
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
            JSONObject result = new JSONObject();
            String url = siteUrl + "/x/bu/pagesheet/list?_all=1&append=1&channel=choice";
            String srr = OkHttpUtil.string(url, getHeaders(url));
            try {
                Document doc = Jsoup.parse(srr);
                // 取首页推荐视频列表
                Elements list = doc.select(".list_item");
                JSONArray videos = new JSONArray();
                for (int i = 0; i < list.size(); i++) {
                    Element vod = list.get(i);
                    String title = vod.selectFirst("a").attr("title");
                    String cover = vod.selectFirst("img").attr("src");
                    cover=fixUrl(url,cover);
                    String remark = vod.selectFirst(".figure_caption").text();
                    String id = vod.selectFirst("a").attr("data-float");
                    JSONObject v = new JSONObject();
                    v.put("vod_id", id);
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
     * 获取分类数据 + 首页最近更新视频列表数据
     *
     * @param filter 是否开启筛选 关联的是 软件设置中 首页数据源里的筛选开关
     */
//    @Override
//    public String homeContent(boolean filter) {
//        List<Vod> list = new ArrayList<>();
//        List<Class> classes = new ArrayList<>();
//        LinkedHashMap<String, List<Filter>> filters = null;
//        String hurl = "https://v.qq.com/channel/tv?listpage=1&channel=tv&sort=18&_all=1";
//        try {
//            Document doc = Jsoup.parse (OkHttpUtil.string(hurl, getHeaders(siteUrl)));
//            if (doc.selectFirst(".nav  q-wrap > div") != null) {
//                for (Element element : doc.select(".nav-wrap > div").select("a")) {
//                    String id = element.select("a").attr("href");
//                    String name = element.select("a").text();
//                    if (id.contains("/art") || id.contains("feeds_hotspot") || id.contains("wwe") || id.contains("choice") || id.contains("sports_new") || id.contains("games") || id.contains("lols11") || id.contains("ent") || id.contains("news") || id.contains("fashion") || id.contains("tech") || id.contains("auto") || id.contains("house") || id.contains("finance") || id.contains("astro") || id.contains("nba") || id.contains("fun") || id.contains("baby") || id.contains("music") || id.contains("life") || id.contains("travel")) {
//                        continue;
//                    }
//                    if (id.contains("/channel/")) {
//                        classes.add(new Class(id.split("/")[2], name));
//                    }
//                }
//            } else {
//                classes = Class.arrayFrom(classConfig);
//            }
//            if (filter) {
//                filters = new Gson().fromJson(filterConfig, new TypeToken<LinkedHashMap<String, List<Filter>>>(){}.getType());
//            }
//        } catch (Exception e) {
//            list.add(new Vod("",e.getMessage(),""));
//        }
//        String vurl = siteUrl + "/x/bu/pagesheet/list?_all=1&append=1&channel=choice";
//        try {
//            Document doc = Jsoup.parse (OkHttpUtil.string(vurl, getHeaders(siteUrl)));
//            for (Element element : doc.select(".list_item")) {
//                String img = element.select("img").attr("src");
//                img = fixUrl(vurl, img);
//                String id = element.select("a").attr("data-float");
//                String name = element.select("a").attr("title");
//                String remark = element.select(".figure_caption").text();
//                list.add(new Vod(id, name, img, remark));
//            }
//        } catch (Exception e) {
//            list.add(new Vod("",e.getMessage(),""));
//        }
//        return Result.string(classes, list, filters);
//    }
//
//    @Override
//    public String homeVideoContent() {
//        List<Vod> list = new ArrayList<>();
//        String vurl = siteUrl + "/x/bu/pagesheet/list?_all=1&append=1&channel=choice";
////        org.mozilla.javascript.Context cx = org.mozilla.javascript.Context.enter();
////        try {
////            cx.setOptimizationLevel(-1);
////            Scriptable scope = cx.initStandardObjects();
////            System.out.println(scope instanceof NativeObject);
////            System.out.println(new Gson().toJson(((NativeObject)scope).entrySet()));
////            String str = "3/(1+2)";
////            Object result = cx.evaluateString(scope, str, "javax.script.filename", 1, null);
////            Object result_reader = cx.evaluateReader(scope,new StringReader(str),"javax.script.filename",1, null);
////            System.out.println(str + "=" + org.mozilla.javascript.Context.toNumber(result));
////        } catch (Exception e) {
////            SpiderDebug.log(e);
////        }finally {
////            org.mozilla.javascript.Context.exit();
////        }
//        try {
//            Document doc = Jsoup.parse (OkHttpUtil.string(vurl, getHeaders(siteUrl)));
//            for (Element element : doc.select(".list_item")) {
//                String img = element.select("img").attr("src");
//                img = fixUrl(vurl, img);
//                String id = element.select("a").attr("data-float");
//                String name = element.select("a").attr("title");
//                String remark = element.select(".figure_caption").text();
//                list.add(new Vod(id, name, img, remark));
//            }
//        } catch (Exception e) {
//            list.add(new Vod("",e.getMessage(),""));
//        }
//        return Result.string(list);
//    }

//    /**
//     * 获取分类信息数据
//     *
//     * @param tid    分类id
//     * @param pg     页数
//     * @param filter 同homeContent方法中的filter
//     * @param extend 筛选参数{k:v, k1:v1}
//     */
//    @Override
//    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
//        List<Vod> list = new ArrayList<>();
//        StringBuilder url = new StringBuilder(siteUrl + "/x/bu/pagesheet/list?_all=1&append=1&channel=" + tid + "&listpage=1&offset=" + (Integer.parseInt(pg) - 1) * 21 + "&pagesize=21&sort=18");
//        if(extend != null) {
//            Set<String> keys = extend.keySet();
//            for (String key : keys) {
//                String val = extend.get(key).trim();
//                if (val.length() == 0)
//                    continue;
//                url.append("&").append(key).append("=").append(StringUtil.encode(val));
//            }
//        }
//        Document doc = Jsoup.parse (OkHttpUtil.string(url.toString(), getHeaders(siteUrl)));
//        for (Element element : doc.select(".list_item")) {
//            String img = element.select("img").attr("src");
//            img = fixUrl(url.toString(), img);
//            String id = element.select("a").attr("data-float");
//            String name = element.select("a").attr("title");
//            String remark = element.select(".figure_caption").text();
//            list.add(new Vod(id, name, img, remark));
//        }
//        return Result.get().vod(list).page(Integer.parseInt(pg), 0, 90, 0).string();
//    }

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
            String url = siteUrl + "/x/bu/pagesheet/list?_all=1&append=1&channel=" + tid + "&listpage=1&offset=" + (Integer.parseInt(pg) - 1) * 21 + "&pagesize=21&sort=18";
            if(extend != null) {
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
                Elements list = doc.select(".list_item");
                JSONArray videos = new JSONArray();
                for (int i = 0; i < list.size(); i++) {
                    Element vod = list.get(i);
                    String title = vod.selectFirst("a").attr("title");
                    String cover = vod.selectFirst("img").attr("src");
                    cover = fixUrl(url,cover);
                    String remark = vod.selectFirst(".figure_caption")==null?"":vod.selectFirst(".figure_caption").text();
                    String id = vod.selectFirst("a").attr("data-float");
                    JSONObject v = new JSONObject();
                    v.put("vod_id", id);
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

    @Override
    public String detailContent(List<String> ids) {
        try {
            String url = "https://node.video.qq.com/x/api/float_vinfo2?cid=" + ids.get(0);
            String srr = OkHttpUtil.string(url, getHeaders(url));
            JSONObject jsonObject = new JSONObject(srr);
            JSONObject dataObject = jsonObject.optJSONObject("c");
            if(dataObject == null) {
                return "";
            }
            JSONObject vodList = new JSONObject();
            vodList.put("vod_id", ids.get(0));
            vodList.put("vod_name", dataObject.optString("title"));
            vodList.put("vod_pic", fixUrl(url,dataObject.optString("pic")));
            vodList.put("type_name", jsonObject.optJSONArray("typ").toString().replaceAll("\\[|\\]|\"",""));
            vodList.put("vod_year", dataObject.optString("year"));
            JSONObject people = jsonObject.optJSONObject("people");
            JSONArray main_charactor = jsonObject.optJSONArray("nam").optJSONArray(0);
            List charactors = new ArrayList();
            if (main_charactor !=null) {
                for (int i = 0; i < main_charactor.length(); i++) {
                    charactors.add(main_charactor.opt(i));
                }
            }
            vodList.put("vod_area", jsonObject.optJSONObject("c").optString("title"));
            vodList.put("vod_remarks", jsonObject.optString("rec"));
            vodList.put("vod_actor", TextUtils.join(",",charactors));
            vodList.put("vod_director", jsonObject.optJSONObject("c").optString("title"));
            vodList.put("vod_content", dataObject.optString("description"));
            JSONArray playerList = dataObject.optJSONArray("video_ids");
            List<String> playFlags = new ArrayList<>();
            List<String> plays = new ArrayList<>();
            for (int i = 1; i <= playerList.length(); i++) {
                playFlags.add(playerList.optString(i-1));
                if(i%30==0||i==playerList.length()) {
                    url = "https://union.video.qq.com/fcgi-bin/data?otype=json&tid=682&appid=20001238&appkey=6c03bbe9658448a4&union_platform=1&idlist=" + TextUtils.join(",", playFlags);
                    srr = OkHttpUtil.string(url, getHeaders(url));
                    JSONArray results = new JSONObject(srr.substring(13, srr.length() - 1)).optJSONArray("results");
                    for (int j = 0; j < results.length(); j++) {
                        JSONObject data = results.optJSONObject(j).optJSONObject("fields");
                        if(!data.optString("title").contains("预告"))
                            plays.add(data.optString("title").replace(dataObject.optString("title")+"_","") + "$" + "https://v.qq.com/x/cover/" +ids.get(0) + "/" + data.optString("vid")+".html");
                    }
                    playFlags.clear();
                }
            }

            vodList.put("vod_play_from", "qq");
            vodList.put("vod_play_url", TextUtils.join("#", plays));
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

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        return Result.get().url(id).parse().jx().string();
    }

    @Override
    public String searchContent(String key, boolean quick) {
        List<Vod> list = new ArrayList<>();
        String url = "https://pbaccess.video.qq.com/trpc.videosearch.smartboxServer.HttpRountRecall/Smartbox";
        Map<String, Object> data = new HashMap<>();
        data.put("query", key);
        data.put("appID", "3172");
        data.put("appKey", "lGhFIPeD3HsO9xEp");
        data.put("pageNum", 0);
        data.put("pageSize", 10);
        String content = OkHttpUtil.postJson(url, new Gson().toJson(data, Map.class), getHeaders("https://v.qq.com"));
        JsonObject jsonObject = new Gson().fromJson(content, JsonObject.class);
        JsonArray itemList = jsonObject.getAsJsonObject("data").getAsJsonArray("smartboxItemList");
        for (JsonElement jsonElement : itemList) {
            String id = jsonElement.getAsJsonObject().getAsJsonObject("basicDoc").get("id").getAsString();
            if (StrUtil.isEmpty(id)) {
                continue;
            }
            String name = jsonElement.getAsJsonObject().getAsJsonObject("basicDoc").get("docname").getAsString();
            String img = jsonElement.getAsJsonObject().getAsJsonObject("videoInfo").get("imgUrl").getAsString();
            String remark = jsonElement.getAsJsonObject().getAsJsonObject("videoInfo").get("typeName").getAsString();
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(list);
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
