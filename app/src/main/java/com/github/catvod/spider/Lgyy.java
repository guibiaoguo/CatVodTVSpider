package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.utils.Base64;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.Call;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class Lgyy extends Spider {
    protected JSONObject g;
    protected JSONObject l;
    protected Pattern J = Pattern.compile("/vodtype/(\\d+).html");
    protected Pattern dV = Pattern.compile("/voddetail/(\\d+).html");
    protected Pattern rl = Pattern.compile("/vodplay/(\\S+).html");
    protected Pattern cY = Pattern.compile("/vodshow/\\d+--------(\\d+)---.html");
    protected Pattern HL = Pattern.compile("\"url\":\"(.*?)\"");
    private final String lN = "{\"1\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"地区\",\"key\":\"area\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"大陆\",\"v\":\"大陆\"},{\"n\":\"香港\",\"v\":\"香港\"},{\"n\":\"台湾\",\"v\":\"台湾\"},{\"n\":\"美国\",\"v\":\"美国\"},{\"n\":\"法国\",\"v\":\"法国\"},{\"n\":\"英国\",\"v\":\"英国\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"韩国\",\"v\":\"韩国\"},{\"n\":\"德国\",\"v\":\"德国\"},{\"n\":\"泰国\",\"v\":\"泰国\"},{\"n\":\"印度\",\"v\":\"印度\"},{\"n\":\"意大利\",\"v\":\"意大利\"},{\"n\":\"西班牙\",\"v\":\"西班牙\"},{\"n\":\"加拿大\",\"v\":\"加拿大\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"name\":\"类型\",\"key\":\"class\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"喜剧\",\"v\":\"喜剧\"},{\"n\":\"爱情\",\"v\":\"爱情\"},{\"n\":\"科幻\",\"v\":\"科幻\"},{\"n\":\"恐怖\",\"v\":\"恐怖\"},{\"n\":\"剧情\",\"v\":\"剧情\"},{\"n\":\"战争\",\"v\":\"战争\"},{\"n\":\"悬疑\",\"v\":\"悬疑\"},{\"n\":\"冒险\",\"v\":\"冒险\"},{\"n\":\"犯罪\",\"v\":\"犯罪\"},{\"n\":\"奇幻\",\"v\":\"奇幻\"},{\"n\":\"惊悚\",\"v\":\"惊悚\"},{\"n\":\"青春\",\"v\":\"青春\"},{\"n\":\"动画\",\"v\":\"动画\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"2\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"地区\",\"key\":\"area\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"内地\"},{\"n\":\"韩国\",\"v\":\"韩国\"},{\"n\":\"香港\",\"v\":\"香港\"},{\"n\":\"台湾\",\"v\":\"台湾\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"美国\",\"v\":\"美国\"},{\"n\":\"泰国\",\"v\":\"泰国\"},{\"n\":\"英国\",\"v\":\"英国\"},{\"n\":\"新加坡\",\"v\":\"新加坡\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"name\":\"类型\",\"key\":\"class\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"古装\",\"v\":\"古装\"},{\"n\":\"战争\",\"v\":\"战争\"},{\"n\":\"青春偶像\",\"v\":\"青春偶像\"},{\"n\":\"喜剧\",\"v\":\"喜剧\"},{\"n\":\"家庭\",\"v\":\"家庭\"},{\"n\":\"犯罪\",\"v\":\"犯罪\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"奇幻\",\"v\":\"奇幻\"},{\"n\":\"剧情\",\"v\":\"剧情\"},{\"n\":\"历史\",\"v\":\"历史\"},{\"n\":\"经典\",\"v\":\"经典\"},{\"n\":\"乡村\",\"v\":\"乡村\"},{\"n\":\"情景\",\"v\":\"情景\"},{\"n\":\"商战\",\"v\":\"商战\"},{\"n\":\"网剧\",\"v\":\"网剧\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"3\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"地区\",\"key\":\"area\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"内地\"},{\"n\":\"港台\",\"v\":\"港台\"},{\"n\":\"日韩\",\"v\":\"日韩\"},{\"n\":\"欧美\",\"v\":\"欧美\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"5\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"类型\",\"key\":\"class\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"番剧\",\"v\":\"番剧\"},{\"n\":\"国创\",\"v\":\"国创\"},{\"n\":\"动画片\",\"v\":\"动画片\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}]}";
    private final String q3 = "{\"duoduozy\":{\"show\":\"蓝光专线\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"sohu\":{\"show\":\"搜狐\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"qq\":{\"show\":\"腾讯\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"bilibili\":{\"show\":\"哔哩\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"youku\":{\"show\":\"优酷\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"qiyi\":{\"show\":\"爱奇艺\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"mgtv\":{\"show\":\"芒果\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"xigua\":{\"show\":\"西瓜\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"pptv\":{\"show\":\"PPTV\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"}}";
    

    public String detailContent(List<String> list) {
        boolean z;
        try {
            Document g = Jsoup.parse(OkHttpUtil.string("https://www.lgyy.cc/voddetail/" + list.get(0) + ".html", g("https://www.lgyy.cc")));
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            String dV = g.selectFirst("div.module-main:first-child div.module-item-pic > img").attr("data-original");
            String H = g.selectFirst("div.module-main:first-child div.module-info-heading > h1").text();
            String H2 = g.selectFirst("div.module-main:first-child div.module-info-introduction-content > p").text();
            jSONObject2.put("vod_id", list.get(0));
            jSONObject2.put("vod_name", H);
            jSONObject2.put("vod_pic", dV);
            jSONObject2.put("vod_content", H2);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Elements o = g.select("div.module-tab-item > span");
            Elements o2 = g.select("div.module-play-list-content");
            for (int i = 0; i < o.size(); i++) {
                String H3 = o.get(i).text();
                Iterator<String> keys = this.g.keys();
                while (true) {
                    if (!keys.hasNext()) {
                        z = false;
                        break;
                    }
                    if (this.g.optJSONObject(keys.next()).optString("show").equals(H3)) {
                        z = true;
                        break;
                    }
                }
                if (z) {
                    Elements o3 = o2.get(i).select("a");
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < o3.size(); i2++) {
                        Element ik = o3.get(i2);
                        Matcher matcher = this.rl.matcher(ik.attr("href"));
                        if (matcher.find()) {
                            String group = matcher.group(1);
                            String lN = ik.select("span").text();
                            arrayList.add(lN + "$" + group);
                        }
                    }
                    if (arrayList.size() > 0) {
                        linkedHashMap.put(H3, StringUtil.join("#", arrayList));
                    }
                }
            }
            if (linkedHashMap.size() > 0) {
                String join = StringUtil.join("$$$", linkedHashMap.keySet());
                String join2 = StringUtil.join("$$$", linkedHashMap.values());
                jSONObject2.put("vod_play_from", join);
                jSONObject2.put("vod_play_url", join2);
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject2);
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    protected HashMap<String, String> g(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("method", "GET");
        if (!StringUtil.isEmpty(str)) {
            hashMap.put("Referer", str);
        }
        hashMap.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        hashMap.put("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8");
        return hashMap;
    }

    public String homeContent(boolean z) {
        try {
            Document g = Jsoup.parse(OkHttpUtil.string("https://www.lgyy.cc/", g("https://www.lgyy.cc")));
            Elements o = g.select("ul.navbar-items>li>a[href*='vodtype']");
            JSONArray jSONArray = new JSONArray();
            Iterator<Element> it = o.iterator();
            while (it.hasNext()) {
                Element next = it.next();
                String H = next.text();
                Matcher matcher = this.J.matcher(next.attr("href"));
                if (matcher.find()) {
                    String trim = matcher.group(1).trim();
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("type_id", trim);
                    jSONObject.put("type_name", H);
                    jSONArray.put(jSONObject);
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            if (z) {
                jSONObject2.put("filters", this.l);
            }
            jSONObject2.put("class", jSONArray);
            try {
                Elements o2 = g.select("div.active a[href*='voddetail']");
                JSONArray jSONArray2 = new JSONArray();
                for (int i = 0; i < o2.size(); i++) {
                    Element ik = o2.get(i);
                    String dV = ik.attr("title");
                    String dV2 = ik.selectFirst("img.lazy").attr("data-original");
                    String H2 = ik.selectFirst("div.module-item-note").text();
                    Matcher matcher2 = this.dV.matcher(ik.attr("href"));
                    if (matcher2.find()) {
                        String group = matcher2.group(1);
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("vod_id", group);
                        jSONObject3.put("vod_name", dV);
                        jSONObject3.put("vod_pic", dV2);
                        jSONObject3.put("vod_remarks", H2);
                        jSONArray2.put(jSONObject3);
                    }
                }
                jSONObject2.put("list", jSONArray2);
            } catch (Exception e) {
                SpiderDebug.log(e);
            }
            return jSONObject2.toString();
        } catch (Exception e2) {
            SpiderDebug.log(e2);
            return "";
        }
    }

    public void init(Context context) {
        Lgyy.super.init(context);
        try {
            this.g = new JSONObject("{\"duoduozy\":{\"show\":\"蓝光专线\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"sohu\":{\"show\":\"搜狐\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"qq\":{\"show\":\"腾讯\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"bilibili\":{\"show\":\"哔哩\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"youku\":{\"show\":\"优酷\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"qiyi\":{\"show\":\"爱奇艺\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"mgtv\":{\"show\":\"芒果\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"xigua\":{\"show\":\"西瓜\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"},\"pptv\":{\"show\":\"PPTV\",\"des\":\"\",\"ps\":\"0\",\"parse\":\"\"}}");
            this.l = new JSONObject("{\"1\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"地区\",\"key\":\"area\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"大陆\",\"v\":\"大陆\"},{\"n\":\"香港\",\"v\":\"香港\"},{\"n\":\"台湾\",\"v\":\"台湾\"},{\"n\":\"美国\",\"v\":\"美国\"},{\"n\":\"法国\",\"v\":\"法国\"},{\"n\":\"英国\",\"v\":\"英国\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"韩国\",\"v\":\"韩国\"},{\"n\":\"德国\",\"v\":\"德国\"},{\"n\":\"泰国\",\"v\":\"泰国\"},{\"n\":\"印度\",\"v\":\"印度\"},{\"n\":\"意大利\",\"v\":\"意大利\"},{\"n\":\"西班牙\",\"v\":\"西班牙\"},{\"n\":\"加拿大\",\"v\":\"加拿大\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"name\":\"类型\",\"key\":\"class\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"喜剧\",\"v\":\"喜剧\"},{\"n\":\"爱情\",\"v\":\"爱情\"},{\"n\":\"科幻\",\"v\":\"科幻\"},{\"n\":\"恐怖\",\"v\":\"恐怖\"},{\"n\":\"剧情\",\"v\":\"剧情\"},{\"n\":\"战争\",\"v\":\"战争\"},{\"n\":\"悬疑\",\"v\":\"悬疑\"},{\"n\":\"冒险\",\"v\":\"冒险\"},{\"n\":\"犯罪\",\"v\":\"犯罪\"},{\"n\":\"奇幻\",\"v\":\"奇幻\"},{\"n\":\"惊悚\",\"v\":\"惊悚\"},{\"n\":\"青春\",\"v\":\"青春\"},{\"n\":\"动画\",\"v\":\"动画\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"2\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"地区\",\"key\":\"area\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"内地\"},{\"n\":\"韩国\",\"v\":\"韩国\"},{\"n\":\"香港\",\"v\":\"香港\"},{\"n\":\"台湾\",\"v\":\"台湾\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"美国\",\"v\":\"美国\"},{\"n\":\"泰国\",\"v\":\"泰国\"},{\"n\":\"英国\",\"v\":\"英国\"},{\"n\":\"新加坡\",\"v\":\"新加坡\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"name\":\"类型\",\"key\":\"class\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"古装\",\"v\":\"古装\"},{\"n\":\"战争\",\"v\":\"战争\"},{\"n\":\"青春偶像\",\"v\":\"青春偶像\"},{\"n\":\"喜剧\",\"v\":\"喜剧\"},{\"n\":\"家庭\",\"v\":\"家庭\"},{\"n\":\"犯罪\",\"v\":\"犯罪\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"奇幻\",\"v\":\"奇幻\"},{\"n\":\"剧情\",\"v\":\"剧情\"},{\"n\":\"历史\",\"v\":\"历史\"},{\"n\":\"经典\",\"v\":\"经典\"},{\"n\":\"乡村\",\"v\":\"乡村\"},{\"n\":\"情景\",\"v\":\"情景\"},{\"n\":\"商战\",\"v\":\"商战\"},{\"n\":\"网剧\",\"v\":\"网剧\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"3\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"地区\",\"key\":\"area\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"内地\"},{\"n\":\"港台\",\"v\":\"港台\"},{\"n\":\"日韩\",\"v\":\"日韩\"},{\"n\":\"欧美\",\"v\":\"欧美\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"5\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"类型\",\"key\":\"class\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"番剧\",\"v\":\"番剧\"},{\"n\":\"国创\",\"v\":\"国创\"},{\"n\":\"动画片\",\"v\":\"动画片\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}]}");
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
    }

    public String playerContent(String str, String str2, List<String> list) {
        try {
            Elements o = Jsoup.parse(OkHttpUtil.string("https://www.lgyy.cc/vodplay/" + str2 + ".html", g("https://www.lgyy.cc"))).select("script");
            final JSONObject jSONObject = new JSONObject();
            int i = 0;
            while (true) {
                if (i >= o.size()) {
                    break;
                }
                String trim = o.get(i).html().trim();
                if (trim.startsWith("var player_")) {
                    String string = new JSONObject(trim.substring(trim.indexOf(123), trim.lastIndexOf(125) + 1)).optString("url");
                    HashMap hashMap = new HashMap();
                    hashMap.put("url", string);
                    OkHttpUtil.get(OkHttpUtil.defaultClient(), "https://p.tjomet.com/lff/5348837768202767938.jpg", hashMap, new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.Lgyy.1
                        @Override // com.github.catvod.spider.merge.a6
                        protected void onFailure(Call call, Exception exc) {
                        }

                        /* JADX INFO: Access modifiers changed from: protected */
                        public void onResponse(String str3) {
                            try {
                                String str4 = new String(Base64.decode(new JSONObject(str3).optString("url").substring(8).getBytes(), 0));
                                jSONObject.put("url", str4.substring(8, str4.length() - 8));
                            } catch (JSONException e) {
                                e.printStackTrace();
                            }
                        }
                    });
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("User-Agent", " Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36");
                    jSONObject.put("header", new JSONObject(hashMap2).toString());
                    jSONObject.put("parse", "0");
                    jSONObject.put("palyUrl", "");
                    break;
                }
                i++;
            }
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String searchContent(String str, boolean z) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string("https://www.lgyy.cc/index.php/ajax/suggest?mid=1&wd=" + URLEncoder.encode(str) + "&limit=10&timestamp=" + currentTimeMillis, g("https://www.lgyy.cc")));
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (jSONObject.getInt("total") > 0) {
                JSONArray jSONArray2 = new JSONArray(jSONObject.optString("list"));
                for (int i = 0; i < jSONArray2.length(); i++) {
                    JSONObject jSONObject3 = jSONArray2.optJSONObject(i);
                    String string = jSONObject3.optString("id");
                    String string2 = jSONObject3.optString("name");
                    String string3 = jSONObject3.optString("pic");
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("vod_id", string);
                    jSONObject4.put("vod_name", string2);
                    jSONObject4.put("vod_pic", string3);
                    jSONObject4.put("vod_remarks", "");
                    jSONArray.put(jSONObject4);
                }
            }
            jSONObject2.put("list", jSONArray);
            return jSONObject2.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }
}