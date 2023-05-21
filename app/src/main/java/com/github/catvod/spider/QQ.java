package com.github.catvod.spider;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Filter;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.net.OkHttp;
import com.github.catvod.parser.AnalyzeByJSonPath;
import com.github.catvod.parser.AnalyzeRule;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.mozilla.javascript.NativeObject;
import org.mozilla.javascript.Scriptable;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;


/**
 * bill
 */
public class QQ extends Spider {

    private static final String siteUrl = "https://v.qq.com";

    protected String filterConfig;

    @Override
    public void init(Context context) {
        super.init(context);
        try {
            filterConfig = "{\"tv\":[{\"name\":\"排序\",\"value\":[{\"v\":\"19\",\"n\":\"最新\"},{\"v\":\"18\",\"n\":\"最热\"},{\"v\":\"16\",\"n\":\"好评\"},{\"v\":\"21\",\"n\":\"口碑好剧\"},{\"v\":\"54\",\"n\":\"高分好评\"},{\"v\":\"22\",\"n\":\"知乎高分\"}],\"key\":\"sort\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"偶像爱情\"},{\"v\":\"2\",\"n\":\"古装历史\"},{\"v\":\"3\",\"n\":\"玄幻史诗\"},{\"v\":\"4\",\"n\":\"都市生活\"},{\"v\":\"14\",\"n\":\"当代主旋律\"},{\"v\":\"5\",\"n\":\"罪案谍战\"},{\"v\":\"6\",\"n\":\"历险科幻\"},{\"v\":\"7\",\"n\":\"军旅抗战\"},{\"v\":\"8\",\"n\":\"喜剧\"},{\"v\":\"9\",\"n\":\"武侠江湖\"},{\"v\":\"10\",\"n\":\"青春校园\"},{\"v\":\"11\",\"n\":\"时代传奇\"},{\"v\":\"12\",\"n\":\"体育电竞\"},{\"v\":\"13\",\"n\":\"真人动漫\"},{\"v\":\"15\",\"n\":\"短剧\"},{\"v\":\"44\",\"n\":\"独播\"}],\"key\":\"feature\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"814\",\"n\":\"内地\"},{\"v\":\"815\",\"n\":\"美国\"},{\"v\":\"816\",\"n\":\"英国\"},{\"v\":\"818\",\"n\":\"韩国\"},{\"v\":\"9\",\"n\":\"泰国\"},{\"v\":\"10\",\"n\":\"日本\"},{\"v\":\"14\",\"n\":\"中国香港\"},{\"v\":\"817\",\"n\":\"中国台湾\"},{\"v\":\"819\",\"n\":\"其他\"}],\"key\":\"iarea\"},{\"name\":\"年份\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"2020\",\"n\":\"2020\"},{\"v\":\"4061\",\"n\":\"2019\"},{\"v\":\"4060\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"859\",\"n\":\"2016\"},{\"v\":\"860\",\"n\":\"2015\"},{\"v\":\"861\",\"n\":\"2014\"},{\"v\":\"862\",\"n\":\"2013\"},{\"v\":\"863\",\"n\":\"2012\"},{\"v\":\"864\",\"n\":\"2011\"},{\"v\":\"865\",\"n\":\"2010\"},{\"v\":\"866\",\"n\":\"其他\"}],\"key\":\"year\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"867\",\"n\":\"免费\"},{\"v\":\"6\",\"n\":\"会员\"}],\"key\":\"pay\"}],\"education\":[{\"name\":\"排序\",\"value\":[{\"v\":\"19\",\"n\":\"按更新\"},{\"v\":\"40\",\"n\":\"最热\"}],\"key\":\"sort\"},{\"name\":\"学段\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2\",\"n\":\"小学\"},{\"v\":\"3\",\"n\":\"初中\"},{\"v\":\"4\",\"n\":\"高中\"},{\"v\":\"5\",\"n\":\"大学\"},{\"v\":\"6\",\"n\":\"研究生\"},{\"v\":\"7\",\"n\":\"成人\"}],\"key\":\"section\"},{\"name\":\"学级\",\"value\":[{\"v\":\"1\",\"n\":\"全部\"},{\"v\":\"5\",\"n\":\"一年级\"},{\"v\":\"6\",\"n\":\"二年级\"},{\"v\":\"7\",\"n\":\"三年级\"},{\"v\":\"8\",\"n\":\"四年级\"},{\"v\":\"9\",\"n\":\"五年级\"},{\"v\":\"10\",\"n\":\"六年级\"},{\"v\":\"11\",\"n\":\"初一\"},{\"v\":\"12\",\"n\":\"初二\"},{\"v\":\"13\",\"n\":\"初三\"},{\"v\":\"14\",\"n\":\"高一\"},{\"v\":\"15\",\"n\":\"高二\"},{\"v\":\"16\",\"n\":\"高三\"},{\"v\":\"20\",\"n\":\"大四\"}],\"key\":\"grade\"},{\"name\":\"学科\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"41\",\"n\":\"语文\"},{\"v\":\"42\",\"n\":\"数学\"},{\"v\":\"43\",\"n\":\"英语\"},{\"v\":\"44\",\"n\":\"物理\"},{\"v\":\"45\",\"n\":\"化学\"},{\"v\":\"46\",\"n\":\"生物\"},{\"v\":\"47\",\"n\":\"政治\"},{\"v\":\"50\",\"n\":\"其它\"}],\"key\":\"subject\"}],\"movie\":[{\"name\":\"排序\",\"value\":[{\"v\":\"18\",\"n\":\"最近热播\"},{\"v\":\"19\",\"n\":\"最新上架\"},{\"v\":\"21\",\"n\":\"高分好评\"},{\"v\":\"22\",\"n\":\"知乎高分\"}],\"key\":\"sort\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"100018\",\"n\":\"剧情\"},{\"v\":\"100004\",\"n\":\"喜剧\"},{\"v\":\"100061\",\"n\":\"动作\"},{\"v\":\"100005\",\"n\":\"爱情\"},{\"v\":\"100010\",\"n\":\"惊悚\"},{\"v\":\"4\",\"n\":\"犯罪\"},{\"v\":\"100009\",\"n\":\"悬疑\"},{\"v\":\"100006\",\"n\":\"战争\"},{\"v\":\"100012\",\"n\":\"科幻\"},{\"v\":\"100015\",\"n\":\"动画\"},{\"v\":\"100007\",\"n\":\"恐怖\"},{\"v\":\"100017\",\"n\":\"家庭\"},{\"v\":\"100022\",\"n\":\"传记\"},{\"v\":\"100003\",\"n\":\"冒险\"},{\"v\":\"100016\",\"n\":\"奇幻\"},{\"v\":\"100011\",\"n\":\"武侠\"},{\"v\":\"100021\",\"n\":\"历史\"},{\"v\":\"2\",\"n\":\"运动\"},{\"v\":\"100014\",\"n\":\"歌舞\"},{\"v\":\"100013\",\"n\":\"音乐\"},{\"v\":\"100020\",\"n\":\"纪录\"},{\"v\":\"100019\",\"n\":\"伦理\"},{\"v\":\"3\",\"n\":\"西部\"}],\"key\":\"itype\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"100024\",\"n\":\"内地\"},{\"v\":\"100025\",\"n\":\"中国香港\"},{\"v\":\"100029\",\"n\":\"美国\"},{\"v\":\"100032\",\"n\":\"欧洲\"},{\"v\":\"100026\",\"n\":\"中国台湾\"},{\"v\":\"100027\",\"n\":\"日本\"},{\"v\":\"100028\",\"n\":\"韩国\"},{\"v\":\"100030\",\"n\":\"印度\"},{\"v\":\"100031\",\"n\":\"泰国\"},{\"v\":\"15\",\"n\":\"英国\"},{\"v\":\"16\",\"n\":\"法国\"},{\"v\":\"17\",\"n\":\"德国\"},{\"v\":\"18\",\"n\":\"加拿大\"},{\"v\":\"19\",\"n\":\"西班牙\"},{\"v\":\"20\",\"n\":\"意大利\"},{\"v\":\"21\",\"n\":\"澳大利亚\"},{\"v\":\"22\",\"n\":\"北欧\"},{\"v\":\"23\",\"n\":\"拉丁美洲\"},{\"v\":\"100033\",\"n\":\"其它\"}],\"key\":\"iarea\"},{\"name\":\"特色\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"院线\"},{\"v\":\"2\",\"n\":\"自制电影\"},{\"v\":\"5\",\"n\":\"独播\"},{\"v\":\"8\",\"n\":\"原声\"},{\"v\":\"9\",\"n\":\"粤语\"},{\"v\":\"3\",\"n\":\"蓝光\"},{\"v\":\"6\",\"n\":\"奥斯卡\"}],\"key\":\"characteristic\"},{\"name\":\"年份\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"2020\",\"n\":\"2020\"},{\"v\":\"20\",\"n\":\"2019\"},{\"v\":\"2018\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"2016\",\"n\":\"2016\"},{\"v\":\"100063\",\"n\":\"2015\"},{\"v\":\"100034\",\"n\":\"2014\"},{\"v\":\"100035\",\"n\":\"2013-2011\"},{\"v\":\"100036\",\"n\":\"2010-2006\"},{\"v\":\"100037\",\"n\":\"2005-2000\"},{\"v\":\"100038\",\"n\":\"90年代\"},{\"v\":\"100039\",\"n\":\"80年代\"},{\"v\":\"100040\",\"n\":\"其它\"}],\"key\":\"year\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"免费\"},{\"v\":\"2\",\"n\":\"包月\"},{\"v\":\"3\",\"n\":\"用券\"},{\"v\":\"4\",\"n\":\"付费\"}],\"key\":\"charge\"}],\"variety\":[{\"name\":\"排序\",\"value\":[{\"v\":\"4\",\"n\":\"最热\"},{\"v\":\"5\",\"n\":\"最新\"}],\"key\":\"sort\"},{\"name\":\"独家\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"腾讯自制\"},{\"v\":\"2\",\"n\":\"独播\"}],\"key\":\"exclusive\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"国内\"},{\"v\":\"2\",\"n\":\"海外\"}],\"key\":\"iarea\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"10\",\"n\":\"游戏\"},{\"v\":\"11\",\"n\":\"音乐\"},{\"v\":\"24\",\"n\":\"养成\"},{\"v\":\"12\",\"n\":\"情感\"},{\"v\":\"14\",\"n\":\"喜剧\"},{\"v\":\"2\",\"n\":\"脱口秀\"},{\"v\":\"16\",\"n\":\"表演\"},{\"v\":\"25\",\"n\":\"体验\"},{\"v\":\"17\",\"n\":\"亲子\"},{\"v\":\"26\",\"n\":\"文化\"},{\"v\":\"19\",\"n\":\"美食\"},{\"v\":\"20\",\"n\":\"职场\"},{\"v\":\"21\",\"n\":\"体育\"},{\"v\":\"15\",\"n\":\"潮流文化\"},{\"v\":\"3\",\"n\":\"访谈\"},{\"v\":\"22\",\"n\":\"生活服务\"},{\"v\":\"23\",\"n\":\"萌宠\"},{\"v\":\"7\",\"n\":\"资讯\"},{\"v\":\"6\",\"n\":\"晚会\"}],\"key\":\"itype\"},{\"name\":\"年份\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"50\",\"n\":\"2020\"},{\"v\":\"7\",\"n\":\"2019\"},{\"v\":\"1\",\"n\":\"2018\"},{\"v\":\"2\",\"n\":\"2017\"},{\"v\":\"3\",\"n\":\"2016\"},{\"v\":\"4\",\"n\":\"2015\"},{\"v\":\"5\",\"n\":\"2014\"},{\"v\":\"6\",\"n\":\"2013\"},{\"v\":\"2012\",\"n\":\"2012\"},{\"v\":\"2011\",\"n\":\"2011\"},{\"v\":\"2010\",\"n\":\"2010\"},{\"v\":\"99\",\"n\":\"更早\"}],\"key\":\"iyear\"},{\"name\":\"付费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"会员\"}],\"key\":\"ipay\"}],\"cartoon\":[{\"name\":\"排序\",\"value\":[{\"v\":\"40\",\"n\":\"最热\"},{\"v\":\"23\",\"n\":\"最新\"},{\"v\":\"20\",\"n\":\"好评\"},{\"v\":\"22\",\"n\":\"知乎高分\"}],\"key\":\"sort\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2\",\"n\":\"冒险\"},{\"v\":\"5\",\"n\":\"战斗\"},{\"v\":\"1\",\"n\":\"搞笑\"},{\"v\":\"3\",\"n\":\"经典\"},{\"v\":\"4\",\"n\":\"科幻\"},{\"v\":\"9\",\"n\":\"玄幻\"},{\"v\":\"6\",\"n\":\"魔幻\"},{\"v\":\"13\",\"n\":\"武侠\"},{\"v\":\"7\",\"n\":\"恋爱\"},{\"v\":\"14\",\"n\":\"推理\"},{\"v\":\"11\",\"n\":\"腾讯出品\"},{\"v\":\"15\",\"n\":\"日常\"},{\"v\":\"16\",\"n\":\"校园\"},{\"v\":\"17\",\"n\":\"悬疑\"},{\"v\":\"18\",\"n\":\"真人\"},{\"v\":\"19\",\"n\":\"历史\"},{\"v\":\"20\",\"n\":\"竞技\"},{\"v\":\"12\",\"n\":\"其他\"}],\"key\":\"itype\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"内地\"},{\"v\":\"2\",\"n\":\"日本\"},{\"v\":\"3\",\"n\":\"欧美\"},{\"v\":\"4\",\"n\":\"其他\"}],\"key\":\"iarea\"},{\"name\":\"时间\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"50\",\"n\":\"2020\"},{\"v\":\"11\",\"n\":\"2019\"},{\"v\":\"2018\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"1\",\"n\":\"2016\"},{\"v\":\"2\",\"n\":\"2015\"},{\"v\":\"3\",\"n\":\"2014\"},{\"v\":\"4\",\"n\":\"2013\"},{\"v\":\"5\",\"n\":\"2012\"},{\"v\":\"6\",\"n\":\"2011\"},{\"v\":\"7\",\"n\":\"00年代\"},{\"v\":\"8\",\"n\":\"90年代\"},{\"v\":\"9\",\"n\":\"80年代\"},{\"v\":\"10\",\"n\":\"更早\"}],\"key\":\"iyear\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"免费\"},{\"v\":\"2\",\"n\":\"会员\"}],\"key\":\"ipay\"},{\"name\":\"状态\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"46\",\"n\":\"预告片\"},{\"v\":\"44\",\"n\":\"连载\"},{\"v\":\"45\",\"n\":\"完结\"}],\"key\":\"anime_status\"},{\"name\":\"分类\",\"value\":[{\"v\":\"1\",\"n\":\"全部\"},{\"v\":\"2\",\"n\":\"3D动画\"},{\"v\":\"3\",\"n\":\"2D动画\"},{\"v\":\"4\",\"n\":\"特摄\"},{\"v\":\"5\",\"n\":\"其他\"}],\"key\":\"item\"}],\"doco\":[{\"name\":\"排序\",\"value\":[{\"v\":\"19\",\"n\":\"最新\"},{\"v\":\"18\",\"n\":\"最热\"},{\"v\":\"20\",\"n\":\"好评\"},{\"v\":\"22\",\"n\":\"知乎高分\"}],\"key\":\"sort\"},{\"name\":\"出品机构\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"BBC\"},{\"v\":\"4\",\"n\":\"国家地理\"},{\"v\":\"3175\",\"n\":\"HBO\"},{\"v\":\"2\",\"n\":\"NHK\"},{\"v\":\"7\",\"n\":\"历史频道\"},{\"v\":\"3530\",\"n\":\"ITV\"},{\"v\":\"3174\",\"n\":\"探索频道\"},{\"v\":\"3176\",\"n\":\"ZDF\"},{\"v\":\"3172\",\"n\":\"ARTE\"},{\"v\":\"15\",\"n\":\"腾讯自制\"},{\"v\":\"6\",\"n\":\"合作机构\"},{\"v\":\"5\",\"n\":\"其他\"}],\"key\":\"itrailer\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"4\",\"n\":\"自然\"},{\"v\":\"9\",\"n\":\"美食\"},{\"v\":\"3\",\"n\":\"社会\"},{\"v\":\"5\",\"n\":\"人文\"},{\"v\":\"1\",\"n\":\"历史\"},{\"v\":\"2\",\"n\":\"军事\"},{\"v\":\"7\",\"n\":\"科技\"},{\"v\":\"13\",\"n\":\"财经\"},{\"v\":\"15\",\"n\":\"探险\"},{\"v\":\"6\",\"n\":\"罪案\"},{\"v\":\"11\",\"n\":\"竞技\"},{\"v\":\"10\",\"n\":\"旅游\"}],\"key\":\"itype\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"免费\"},{\"v\":\"2\",\"n\":\"会员\"}],\"key\":\"pay\"}],\"child\":[{\"name\":\"排序\",\"value\":[{\"v\":\"19\",\"n\":\"最新\"},{\"v\":\"18\",\"n\":\"最热\"},{\"v\":\"20\",\"n\":\"好评\"}],\"key\":\"sort\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"欧美\"},{\"v\":\"2\",\"n\":\"日韩\"},{\"v\":\"3\",\"n\":\"国内\"}],\"key\":\"iarea\"},{\"name\":\"年龄\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"0-3岁\"},{\"v\":\"2\",\"n\":\"4-6岁\"},{\"v\":\"3\",\"n\":\"7-9岁\"},{\"v\":\"4\",\"n\":\"10岁以上\"}],\"key\":\"iyear\"},{\"name\":\"性别\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"男孩\"},{\"v\":\"2\",\"n\":\"女孩\"}],\"key\":\"gender\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"儿歌\"},{\"v\":\"2\",\"n\":\"益智\"},{\"v\":\"3\",\"n\":\"手工·绘画\"},{\"v\":\"4\",\"n\":\"玩具\"},{\"v\":\"5\",\"n\":\"英语\"},{\"v\":\"7\",\"n\":\"早教\"},{\"v\":\"6\",\"n\":\"数学\"},{\"v\":\"8\",\"n\":\"国学\"},{\"v\":\"9\",\"n\":\"合家欢\"},{\"v\":\"10\",\"n\":\"冒险\"},{\"v\":\"11\",\"n\":\"交通工具\"},{\"v\":\"12\",\"n\":\"魔幻·科幻\"},{\"v\":\"13\",\"n\":\"动物\"},{\"v\":\"14\",\"n\":\"真人特摄\"},{\"v\":\"15\",\"n\":\"探索\"},{\"v\":\"16\",\"n\":\"其他\"}],\"key\":\"itype\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"免费\"},{\"v\":\"2\",\"n\":\"会员\"}],\"key\":\"ipay\"}],\"knowledge\":[{\"name\":\"排序\",\"value\":[{\"v\":\"41\",\"n\":\"最热\"},{\"v\":\"10\",\"n\":\"最新\"}],\"key\":\"sort\"},{\"name\":\"分类\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2\",\"n\":\"文化历史\"},{\"v\":\"3\",\"n\":\"亲子育儿\"},{\"v\":\"4\",\"n\":\"职场\"},{\"v\":\"5\",\"n\":\"商业理财\"},{\"v\":\"7\",\"n\":\"生活\"},{\"v\":\"9\",\"n\":\"情感心理\"},{\"v\":\"8\",\"n\":\"运动健身\"},{\"v\":\"6\",\"n\":\"艺术兴趣\"},{\"v\":\"12\",\"n\":\"游戏\"},{\"v\":\"14\",\"n\":\"科学科普\"},{\"v\":\"15\",\"n\":\"健康\"},{\"v\":\"16\",\"n\":\"IT/互联网\"}],\"key\":\"pay_level_one\"}]}";
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }

    protected HashMap<String, String> getHeaders(String url) {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("referer", url);
        headers.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        return headers;
    }

    /**
     * 获取分类数据 + 首页最近更新视频列表数据
     *
     * @param filter 是否开启筛选 关联的是 软件设置中 首页数据源里的筛选开关
     */
    @Override
    public String homeContent(boolean filter) {
        List<Vod> list = new ArrayList<>();
        List<Class> classes = new ArrayList<>();
        LinkedHashMap<String, List<Filter>> filters = null;
        String hurl = "https://v.qq.com/channel/tv?listpage=1&channel=tv&sort=18&_all=1";
        Document doc = Jsoup.parse(OkHttp.string(hurl, getHeaders(siteUrl)));
        for (Element element: doc.selectFirst(".nav-wrap > div").select("a")) {
            String id = element.selectFirst("a").attr("href");
            String name = element.selectFirst("a").text();
            if(id.contains("/art")||id.contains("feeds_hotspot")||id.contains("wwe")||id.contains("choice")||id.contains("sports_new")||id.contains("games")||id.contains("lols11")||id.contains("ent")||id.contains("news")||id.contains("fashion")||id.contains("tech")||id.contains("auto")||id.contains("house")||id.contains("finance")||id.contains("astro")||id.contains("nba")||id.contains("fun")||id.contains("baby")||id.contains("music")||id.contains("life")||id.contains("travel")) {
                continue;
            }
            if(id.contains("/channel/")) {
                classes.add(new Class(id.split("/")[2], name));
            }
        }
        if (filter) {
            filters = new Gson().fromJson(filterConfig, new TypeToken<LinkedHashMap<String, List<Filter>>>(){}.getType());
        }
        return Result.string(classes, list, filters);
    }

    @Override
    public String homeVideoContent() {
        List<Vod> list = new ArrayList<>();
        String vurl = siteUrl + "/x/bu/pagesheet/list?_all=1&append=1&channel=choice";
        org.mozilla.javascript.Context cx = org.mozilla.javascript.Context.enter();
        try {
            cx.setOptimizationLevel(-1);
            Scriptable scope = cx.initStandardObjects();
            System.out.println(scope instanceof NativeObject);
            System.out.println(new Gson().toJson(((NativeObject)scope).entrySet()));
            String str = "3/(1+2)";
            Object result = cx.evaluateString(scope, str, "javax.script.filename", 1, null);
            Object result_reader = cx.evaluateReader(scope,new StringReader(str),"javax.script.filename",1, null);
            System.out.println(str + "=" + org.mozilla.javascript.Context.toNumber(result));
        } catch (Exception e) {
            SpiderDebug.log(e);
        }finally {
            org.mozilla.javascript.Context.exit();
        }
        Document doc = Jsoup.parse(OkHttp.string(vurl, getHeaders(siteUrl)));
        for (Element element : doc.select(".list_item")) {
            String img = element.select("img").attr("src");
            img = fixUrl(vurl, img);
            String id = element.select("a").attr("data-float");
            String name = element.select("a").attr("title");
            String remark = element.select(".figure_caption").text();
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(list);
    }

    /**
     * 获取分类信息数据
     *
     * @param tid    分类id
     * @param pg     页数
     * @param filter 同homeContent方法中的filter
     * @param extend 筛选参数{k:v, k1:v1}
     */
    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        List<Vod> list = new ArrayList<>();
        StringBuilder url = new StringBuilder(siteUrl + "/x/bu/pagesheet/list?_all=1&append=1&channel=" + tid + "&listpage=1&offset=" + (Integer.parseInt(pg) - 1) * 21 + "&pagesize=21&sort=18");
        if(extend != null) {
            Set<String> keys = extend.keySet();
            for (String key : keys) {
                String val = extend.get(key).trim();
                if (val.length() == 0)
                    continue;
                url.append("&").append(key).append("=").append(StringUtil.encode(val));
            }
        }
        Document doc = Jsoup.parse(OkHttp.string(url.toString(), getHeaders(siteUrl)));
        for (Element element : doc.select(".list_item")) {
            String img = element.select("img").attr("src");
            img = fixUrl(url.toString(), img);
            String id = element.select("a").attr("data-float");
            String name = element.select("a").attr("title");
            String remark = element.select(".figure_caption").text();
            list.add(new Vod(id, name, img, remark));
        }
        return Result.get().vod(list).page(Integer.parseInt(pg), 0, 90, 0).string();
    }

    @Override
    public String detailContent(List<String> ids) {
        String ssr = OkHttp.string("https://node.video.qq.com/x/api/float_vinfo2?cid=".concat(ids.get(0)), getHeaders(siteUrl));
        JsonObject jsonObject = new Gson().fromJson(ssr, JsonObject.class);
        AnalyzeByJSonPath analyzeByJSonPath = new AnalyzeByJSonPath(ssr);
        SpiderDebug.log(analyzeByJSonPath.getString("$.c.title"));
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent(ssr);
        SpiderDebug.log(analyzeRule.getString("@Json:$.c.title@js:java.md5Encode(result)"));
        SpiderDebug.log(analyzeRule.getString("@Json:$.c.title@js:java.md5Encode(result)"));
        SpiderDebug.log(analyzeRule.getString("@Json:$.c.title@js:java.md5Encode(result);"));
        SpiderDebug.log(analyzeRule.getString("@Json:$.c.title@js:code=java.md5Encode16(\"123456789\");java.log(code);result"));
        SpiderDebug.log(analyzeRule.getString("@js:java.digestHex(\"123456789\",\"sha256\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.digestBase64Str(\"123456789\",\"SHA256\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.HMacHex(\"123456789\",\"HmacSHA256\",\"123456789\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.HmacBase64(\"123456789\",\"HmacSHA256\",\"12345789\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.ajax(\"https://www.huangdizhijia.com\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.get(\"https://m.huangdizhijia.com\",{}).body().string();"));
        SpiderDebug.log(analyzeRule.getString("@js:java.head(\"https://www.huangdizhijia.com\",{})"));
        SpiderDebug.log(analyzeRule.getString("@js:java.post(\"https://m.huangdizhijia.com/index.php?action=search\", \"keyword=我的\", {}).body().string();"));
        SpiderDebug.log(analyzeRule.getString("@js:java.strToBytes(\"123456789\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.strToBytes(\"123456789\",\"utf-8\");"));
        SpiderDebug.log(analyzeRule.getString("@js:java.bytesToStr(java.strToBytes(\"123456789\"))"));
        SpiderDebug.log(analyzeRule.getString("@js:java.base64Decode(\"aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.base64Decode(\"aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy\",2)"));
        SpiderDebug.log(analyzeRule.getString("@js:java.base64Decode(\"aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy\",\"utf-8\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.base64DecodeToByteArray(\"aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.base64DecodeToByteArray(\"aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy\",2)"));
        SpiderDebug.log(analyzeRule.getString("@js:java.base64Encode(\"123456789\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.base64Encode(\"123456789\",2)"));
        SpiderDebug.log(analyzeRule.getString("@js:java.hexDecodeToByteArray(\"123456789\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.hexDecodeToString(\"313233343536373839\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.hexEncodeToByteArray(\"123456789\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.hexEncodeToString(\"123456789\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.timeFormatUTC(1684692908439,\"yyyy\",8)"));
        SpiderDebug.log(analyzeRule.getString("@js:java.timeFormat(1684692908439)"));
        SpiderDebug.log(analyzeRule.getString("@js:java.encodeURI(\"中文\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.encodeURI(\"中文\",\"GBK\")"));
        SpiderDebug.log(analyzeRule.getString("@js:java.randomUUID()"));
        SpiderDebug.log(analyzeRule.getString("@js:symmetricCrypto=java.createSymmetricCrypto(\"AES\",\"1234567812345678\",\"1234567812345678\");"));
        SpiderDebug.log(analyzeRule.getString("@js:symmetricCrypto=java.createSymmetricCrypto(\"AES\",\"1234567812345678\",\"1234567812345678\");code = symmetricCrypto.encryptHex(\"123456789\");java.log(code);"));
        SpiderDebug.log(analyzeRule.getString("@js:symmetricCrypto=java.createSymmetricCrypto(\"AES\",\"1234567812345678\",\"1234567812345678\");code = symmetricCrypto.encryptHex(\"123456789\");java.log(code);dcode = symmetricCrypto.decryptStr(code);java.log(dcode);"));
        SpiderDebug.log(analyzeRule.getString("@js:publicKey = \"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCma/KlvKlXe58kxjDDtk7ju8oHGpl0dfSAQRVg\\n\" +\n" +
                "                \"yWJHIVCfU8F5ZE784fcfOaSF5MB10WuCbAN+WK5S1aPRtKC37jGhMRNBWLwau5bSjuNaALO1Dq0o\\n\" +\n" +
                "                \"rhUc/3NMpvw1MHZgVu/wbLvus1B8Up2+qYsbkelKtbUrjsL2JB+smGq/5QIDAQAB\";\n" +
                "        privateKey = \"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAKZr8qW8qVd7nyTGMMO2TuO7ygca\\n\" +\n" +
                "                \"mXR19IBBFWDJYkchUJ9TwXlkTvzh9x85pIXkwHXRa4JsA35YrlLVo9G0oLfuMaExE0FYvBq7ltKO\\n\" +\n" +
                "                \"41oAs7UOrSiuFRz/c0ym/DUwdmBW7/Bsu+6zUHxSnb6pixuR6Uq1tSuOwvYkH6yYar/lAgMBAAEC\\n\" +\n" +
                "                \"gYADgyllXGnPNLGN/fgp1poBThrRneWZjXhsu92UI9vvoraIDk/53GdFs2KFpa/2ZXa3EIWY2ee+\\n\" +\n" +
                "                \"+GcsIgx+5grdniEQbFyi9CVfQbxwcqDf74y6JNUHdSyWxUK2L0nMEyxbmAUOz/7NMgNGCGj0dWYL\\n\" +\n" +
                "                \"FbPymWLajWQQjs8slu8DBwJBAOnNiAzZtUN+N/BtIPR16+dz5QZc7vWygwbfPAFScvaMOlIa9Xdi\\n\" +\n" +
                "                \"p1Hfv3ukq/NfN+xf/gDCpisT88jydmhAG1cCQQC2OL+TQ2QFom9AUI7TdzpCNwQnMK1MKjkjlR+7\\n\" +\n" +
                "                \"OoTA4hQuWttccxADfGOwQxl+hd+PYdI2g4trxlbO11I9MjUjAkEAqy3XUYlIRJ0x+a78tN9tk+1v\\n\" +\n" +
                "                \"noQGVQ+ZDTv+Y/1ovIiY3qpsVDd/x9spCC7d0ndBq6fwgcACB4I5OEQFW3isSwJBAIQrDxFSTQcl\\n\" +\n" +
                "                \"NUpR4/aPwQrr+rAuR1Q6P+2GKVjU7hs1H+wrbHZW4uOUYn4jfSdfFLNcAWwW55ZJawdl+Dl45D8C\\n\" +\n" +
                "                \"QC6AcAEdPgSV9S0ythvvdphwzspt8aqBlQwqARh4Y+tnQYBXkkJcqVk08DuoVYqPbUe3jjVoA53l\\n\" +\n" +
                "                \"/Od7c/4LNMs=\";asymmetricCrypto = java.createAsymmetricCrypto(\"RSA\", privateKey, publicKey);"));
        SpiderDebug.log(analyzeRule.getString("@js:publicKey = \"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCma/KlvKlXe58kxjDDtk7ju8oHGpl0dfSAQRVg\\n\" +\n" +
                "                \"yWJHIVCfU8F5ZE784fcfOaSF5MB10WuCbAN+WK5S1aPRtKC37jGhMRNBWLwau5bSjuNaALO1Dq0o\\n\" +\n" +
                "                \"rhUc/3NMpvw1MHZgVu/wbLvus1B8Up2+qYsbkelKtbUrjsL2JB+smGq/5QIDAQAB\";\n" +
                "        privateKey = \"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAKZr8qW8qVd7nyTGMMO2TuO7ygca\\n\" +\n" +
                "                \"mXR19IBBFWDJYkchUJ9TwXlkTvzh9x85pIXkwHXRa4JsA35YrlLVo9G0oLfuMaExE0FYvBq7ltKO\\n\" +\n" +
                "                \"41oAs7UOrSiuFRz/c0ym/DUwdmBW7/Bsu+6zUHxSnb6pixuR6Uq1tSuOwvYkH6yYar/lAgMBAAEC\\n\" +\n" +
                "                \"gYADgyllXGnPNLGN/fgp1poBThrRneWZjXhsu92UI9vvoraIDk/53GdFs2KFpa/2ZXa3EIWY2ee+\\n\" +\n" +
                "                \"+GcsIgx+5grdniEQbFyi9CVfQbxwcqDf74y6JNUHdSyWxUK2L0nMEyxbmAUOz/7NMgNGCGj0dWYL\\n\" +\n" +
                "                \"FbPymWLajWQQjs8slu8DBwJBAOnNiAzZtUN+N/BtIPR16+dz5QZc7vWygwbfPAFScvaMOlIa9Xdi\\n\" +\n" +
                "                \"p1Hfv3ukq/NfN+xf/gDCpisT88jydmhAG1cCQQC2OL+TQ2QFom9AUI7TdzpCNwQnMK1MKjkjlR+7\\n\" +\n" +
                "                \"OoTA4hQuWttccxADfGOwQxl+hd+PYdI2g4trxlbO11I9MjUjAkEAqy3XUYlIRJ0x+a78tN9tk+1v\\n\" +\n" +
                "                \"noQGVQ+ZDTv+Y/1ovIiY3qpsVDd/x9spCC7d0ndBq6fwgcACB4I5OEQFW3isSwJBAIQrDxFSTQcl\\n\" +\n" +
                "                \"NUpR4/aPwQrr+rAuR1Q6P+2GKVjU7hs1H+wrbHZW4uOUYn4jfSdfFLNcAWwW55ZJawdl+Dl45D8C\\n\" +\n" +
                "                \"QC6AcAEdPgSV9S0ythvvdphwzspt8aqBlQwqARh4Y+tnQYBXkkJcqVk08DuoVYqPbUe3jjVoA53l\\n\" +\n" +
                "                \"/Od7c/4LNMs=\";asymmetricCrypto = java.createAsymmetricCrypto(\"RSA\", privateKey, publicKey);code = asymmetricCrypto.encryptBase64(\"123456789\", PublicKey);java.log(code);"));
        SpiderDebug.log(analyzeRule.getString("@js:publicKey = \"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCma/KlvKlXe58kxjDDtk7ju8oHGpl0dfSAQRVg\\n\" +\n" +
                "                \"yWJHIVCfU8F5ZE784fcfOaSF5MB10WuCbAN+WK5S1aPRtKC37jGhMRNBWLwau5bSjuNaALO1Dq0o\\n\" +\n" +
                "                \"rhUc/3NMpvw1MHZgVu/wbLvus1B8Up2+qYsbkelKtbUrjsL2JB+smGq/5QIDAQAB\";\n" +
                "        privateKey = \"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAKZr8qW8qVd7nyTGMMO2TuO7ygca\\n\" +\n" +
                "                \"mXR19IBBFWDJYkchUJ9TwXlkTvzh9x85pIXkwHXRa4JsA35YrlLVo9G0oLfuMaExE0FYvBq7ltKO\\n\" +\n" +
                "                \"41oAs7UOrSiuFRz/c0ym/DUwdmBW7/Bsu+6zUHxSnb6pixuR6Uq1tSuOwvYkH6yYar/lAgMBAAEC\\n\" +\n" +
                "                \"gYADgyllXGnPNLGN/fgp1poBThrRneWZjXhsu92UI9vvoraIDk/53GdFs2KFpa/2ZXa3EIWY2ee+\\n\" +\n" +
                "                \"+GcsIgx+5grdniEQbFyi9CVfQbxwcqDf74y6JNUHdSyWxUK2L0nMEyxbmAUOz/7NMgNGCGj0dWYL\\n\" +\n" +
                "                \"FbPymWLajWQQjs8slu8DBwJBAOnNiAzZtUN+N/BtIPR16+dz5QZc7vWygwbfPAFScvaMOlIa9Xdi\\n\" +\n" +
                "                \"p1Hfv3ukq/NfN+xf/gDCpisT88jydmhAG1cCQQC2OL+TQ2QFom9AUI7TdzpCNwQnMK1MKjkjlR+7\\n\" +\n" +
                "                \"OoTA4hQuWttccxADfGOwQxl+hd+PYdI2g4trxlbO11I9MjUjAkEAqy3XUYlIRJ0x+a78tN9tk+1v\\n\" +\n" +
                "                \"noQGVQ+ZDTv+Y/1ovIiY3qpsVDd/x9spCC7d0ndBq6fwgcACB4I5OEQFW3isSwJBAIQrDxFSTQcl\\n\" +\n" +
                "                \"NUpR4/aPwQrr+rAuR1Q6P+2GKVjU7hs1H+wrbHZW4uOUYn4jfSdfFLNcAWwW55ZJawdl+Dl45D8C\\n\" +\n" +
                "                \"QC6AcAEdPgSV9S0ythvvdphwzspt8aqBlQwqARh4Y+tnQYBXkkJcqVk08DuoVYqPbUe3jjVoA53l\\n\" +\n" +
                "                \"/Od7c/4LNMs=\";asymmetricCrypto = java.createAsymmetricCrypto(\"RSA\", privateKey, publicKey);code = asymmetricCrypto.encryptBase64(\"123456789\", PublicKey);java.log(code);dcode = asymmetricCrypto.decryptStr(code, PrivateKey);java.log(dcode);"));
        SpiderDebug.log(analyzeRule.getString("@js:publicKey = \"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCma/KlvKlXe58kxjDDtk7ju8oHGpl0dfSAQRVg\\n\" +\n" +
                "                \"yWJHIVCfU8F5ZE784fcfOaSF5MB10WuCbAN+WK5S1aPRtKC37jGhMRNBWLwau5bSjuNaALO1Dq0o\\n\" +\n" +
                "                \"rhUc/3NMpvw1MHZgVu/wbLvus1B8Up2+qYsbkelKtbUrjsL2JB+smGq/5QIDAQAB\";\n" +
                "        privateKey = \"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAKZr8qW8qVd7nyTGMMO2TuO7ygca\\n\" +\n" +
                "                \"mXR19IBBFWDJYkchUJ9TwXlkTvzh9x85pIXkwHXRa4JsA35YrlLVo9G0oLfuMaExE0FYvBq7ltKO\\n\" +\n" +
                "                \"41oAs7UOrSiuFRz/c0ym/DUwdmBW7/Bsu+6zUHxSnb6pixuR6Uq1tSuOwvYkH6yYar/lAgMBAAEC\\n\" +\n" +
                "                \"gYADgyllXGnPNLGN/fgp1poBThrRneWZjXhsu92UI9vvoraIDk/53GdFs2KFpa/2ZXa3EIWY2ee+\\n\" +\n" +
                "                \"+GcsIgx+5grdniEQbFyi9CVfQbxwcqDf74y6JNUHdSyWxUK2L0nMEyxbmAUOz/7NMgNGCGj0dWYL\\n\" +\n" +
                "                \"FbPymWLajWQQjs8slu8DBwJBAOnNiAzZtUN+N/BtIPR16+dz5QZc7vWygwbfPAFScvaMOlIa9Xdi\\n\" +\n" +
                "                \"p1Hfv3ukq/NfN+xf/gDCpisT88jydmhAG1cCQQC2OL+TQ2QFom9AUI7TdzpCNwQnMK1MKjkjlR+7\\n\" +\n" +
                "                \"OoTA4hQuWttccxADfGOwQxl+hd+PYdI2g4trxlbO11I9MjUjAkEAqy3XUYlIRJ0x+a78tN9tk+1v\\n\" +\n" +
                "                \"noQGVQ+ZDTv+Y/1ovIiY3qpsVDd/x9spCC7d0ndBq6fwgcACB4I5OEQFW3isSwJBAIQrDxFSTQcl\\n\" +\n" +
                "                \"NUpR4/aPwQrr+rAuR1Q6P+2GKVjU7hs1H+wrbHZW4uOUYn4jfSdfFLNcAWwW55ZJawdl+Dl45D8C\\n\" +\n" +
                "                \"QC6AcAEdPgSV9S0ythvvdphwzspt8aqBlQwqARh4Y+tnQYBXkkJcqVk08DuoVYqPbUe3jjVoA53l\\n\" +\n" +
                "                \"/Od7c/4LNMs=\";asymmetricCrypto = java.createAsymmetricCrypto(\"RSA\", privateKey, publicKey);code = asymmetricCrypto.encryptBase64(\"123456789\", PublicKey);java.log(code);dcode = asymmetricCrypto.decryptStr(code, PrivateKey);java.log(dcode);"));
        String name = jsonObject.getAsJsonObject("c").get("title").getAsString();
        String remarks = jsonObject.get("rec").getAsString();
        String img = jsonObject.getAsJsonObject("c").get("pic").getAsString();
        String area = analyzeRule.getString("$.c.title");
        String type = jsonObject.get("typ").toString().replaceAll("[\\[\\]\"]", "");
        String actor = jsonObject.get("nam").toString().replaceAll("[\\[\\]\"]", "");
        String content = jsonObject.getAsJsonObject("c").get("description").getAsString();
        String year = jsonObject.getAsJsonObject("c").get("year").getAsString();
        String director = analyzeRule.getString("@Json:$.c.title@js:java.md5Encode(result)");

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
        List<String> sources = Arrays.asList("qq");
        JsonArray sourceList = jsonObject.getAsJsonObject("c").getAsJsonArray("video_ids");
        for (int i = 0; i < sources.size(); i++) {
            String sourceName = sources.get(0);
            List<String> vodItems = new ArrayList<>();
            for (int j = 0; j < sourceList.size(); j++) {
                vodItems.add(name.concat((j + 1)+ "").concat("$https://v.qq.com/x/cover/").concat(ids.get(0)).concat("/").concat(sourceList.get(j).getAsString()).concat(".html"));
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
        String content = OkHttp.postJson(url, new Gson().toJson(data, Map.class), getHeaders("https://v.qq.com"));
        JsonObject jsonObject = new Gson().fromJson(content, JsonObject.class);
        JsonArray itemList = jsonObject.getAsJsonObject("data").getAsJsonArray("smartboxItemList");
        for (JsonElement jsonElement : itemList) {
            String id = jsonElement.getAsJsonObject().getAsJsonObject("basicDoc").get("id").getAsString();
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
