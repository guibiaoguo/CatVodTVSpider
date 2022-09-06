package com.github.catvod.spider;

import android.content.Context;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes.dElements */
public class Dy555 extends Spider {
    protected JSONObject c;
    protected JSONObject j;
    protected Pattern KO = Pattern.compile("/vodtype/(\\d+).html");
    protected Pattern b = Pattern.compile("/voddetail/(\\d+).html");
    protected Pattern g = Pattern.compile("/vodplay/(\\S+).html");
    protected Pattern v = Pattern.compile("\\d+/(\\d+)");
    private final String Fa = "{\"1\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"地区\",\"key\":\"area\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"大陆\",\"v\":\"大陆\"},{\"n\":\"香港\",\"v\":\"香港\"},{\"n\":\"台湾\",\"v\":\"台湾\"},{\"n\":\"美国\",\"v\":\"美国\"},{\"n\":\"法国\",\"v\":\"法国\"},{\"n\":\"英国\",\"v\":\"英国\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"韩国\",\"v\":\"韩国\"},{\"n\":\"德国\",\"v\":\"德国\"},{\"n\":\"泰国\",\"v\":\"泰国\"},{\"n\":\"印度\",\"v\":\"印度\"},{\"n\":\"意大利\",\"v\":\"意大利\"},{\"n\":\"西班牙\",\"v\":\"西班牙\"},{\"n\":\"加拿大\",\"v\":\"加拿大\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"name\":\"类型\",\"key\":\"class\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"喜剧\",\"v\":\"喜剧\"},{\"n\":\"爱情\",\"v\":\"爱情\"},{\"n\":\"科幻\",\"v\":\"科幻\"},{\"n\":\"恐怖\",\"v\":\"恐怖\"},{\"n\":\"剧情\",\"v\":\"剧情\"},{\"n\":\"战争\",\"v\":\"战争\"},{\"n\":\"悬疑\",\"v\":\"悬疑\"},{\"n\":\"冒险\",\"v\":\"冒险\"},{\"n\":\"犯罪\",\"v\":\"犯罪\"},{\"n\":\"奇幻\",\"v\":\"奇幻\"},{\"n\":\"惊悚\",\"v\":\"惊悚\"},{\"n\":\"青春\",\"v\":\"青春\"},{\"n\":\"动画\",\"v\":\"动画\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"2\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"地区\",\"key\":\"area\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"内地\"},{\"n\":\"韩国\",\"v\":\"韩国\"},{\"n\":\"香港\",\"v\":\"香港\"},{\"n\":\"台湾\",\"v\":\"台湾\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"美国\",\"v\":\"美国\"},{\"n\":\"泰国\",\"v\":\"泰国\"},{\"n\":\"英国\",\"v\":\"英国\"},{\"n\":\"新加坡\",\"v\":\"新加坡\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"name\":\"类型\",\"key\":\"class\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"古装\",\"v\":\"古装\"},{\"n\":\"战争\",\"v\":\"战争\"},{\"n\":\"青春偶像\",\"v\":\"青春偶像\"},{\"n\":\"喜剧\",\"v\":\"喜剧\"},{\"n\":\"家庭\",\"v\":\"家庭\"},{\"n\":\"犯罪\",\"v\":\"犯罪\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"奇幻\",\"v\":\"奇幻\"},{\"n\":\"剧情\",\"v\":\"剧情\"},{\"n\":\"历史\",\"v\":\"历史\"},{\"n\":\"经典\",\"v\":\"经典\"},{\"n\":\"乡村\",\"v\":\"乡村\"},{\"n\":\"情景\",\"v\":\"情景\"},{\"n\":\"商战\",\"v\":\"商战\"},{\"n\":\"网剧\",\"v\":\"网剧\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"3\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"地区\",\"key\":\"area\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"内地\"},{\"n\":\"港台\",\"v\":\"港台\"},{\"n\":\"日韩\",\"v\":\"日韩\"},{\"n\":\"欧美\",\"v\":\"欧美\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"5\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"类型\",\"key\":\"class\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"番剧\",\"v\":\"番剧\"},{\"n\":\"国创\",\"v\":\"国创\"},{\"n\":\"动画片\",\"v\":\"动画片\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}]}";
    private final String l = "{\"xg_app_player\":{\"show\":\"app全局解析\",\"des\":\"\",\"ps\":\"1\",\"parse\":\"https://www.x-n.cc/api.php?url=\"},\"duoduozy\":{\"show\":\"555蓝光\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newduoduo/555tZ4pvzHE3BpiO838.php\",\"parse\":\"https://zyz.sdljwomen.com/server_player/?url=\"},\"bilibili\":{\"show\":\"bilibili\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"youku\":{\"show\":\"优酷\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"qiyi\":{\"show\":\"爱奇艺\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"mgtv\":{\"show\":\"芒果\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"qq\":{\"show\":\"腾讯\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"sohu\":{\"show\":\"搜狐\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"pptv\":{\"show\":\"PPTV\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"m1905\":{\"show\":\"m1905\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"xigua\":{\"show\":\"西瓜视频\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"fuckapp\":{\"show\":\"独家线路\",\"des\":\"555自建资源\",\"ps\":\"0\",\"parse\":\"https://dp.dd520.cc/p.php?url=\"},\"letv\":{\"show\":\"乐视\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"yemao\":{\"show\":\"优质线路1\",\"des\":\"极速蓝光\",\"ps\":\"0\",\"parse\":\"https://jx.manduhu.com/?url=\"},\"sdm3u8\":{\"show\":\"闪电线路\",\"des\":\"闪电\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"},\"fsm3u8\":{\"show\":\"飞速线路\",\"des\":\"飞速\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"},\"wjm3u8\":{\"show\":\"无尽线路\",\"des\":\"无尽\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"},\"dbm3u8\":{\"show\":\"百度线路\",\"des\":\"百度\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"},\"tkm3u8\":{\"show\":\"天空线路\",\"des\":\"天空\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"},\"kbm3u8\":{\"show\":\"快播线路\",\"des\":\"快播\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"},\"zhibo\":{\"show\":\"直播\",\"des\":\"\",\"ps\":\"1\",\"parse\":\"http://suoyou.live/dplay/zb.php?url=\"},\"dujia\":{\"show\":\"独家专线\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"}}";
    private String[] P = {".m3u8", ".mp4", ".mpeg", ".flv"};
    
    public String detailContent(List<String> list) {
        boolean z;
        try {
            Document ue = Jsoup.parse(OkHttpUtil.string("https://www.555dianying.cc/voddetail/" + list.get(0) + ".html", j("https://www.555dianying.cc")));
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            String Pd = ue.selectFirst("div.module-main img").attr("data-original");
            String pE = ue.selectFirst("div.module-main h1").text();
            String pE2 = ue.selectFirst("div.module-main div.module-info-introduction-content >p").text();
            jSONObject2.put("vod_id", list.get(0));
            jSONObject2.put("vod_name", pE);
            jSONObject2.put("vod_pic", Pd);
            jSONObject2.put("vod_content", pE2);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Elements B1 = ue.select("div[id='y-playList'] span");
            Elements B12 = ue.select("div.module-play-list");
            for (int i = 0; i < B1.size(); i++) {
                String pE3 = B1.get(i).text();
                Iterator<String> keys = this.j.keys();
                while (true) {
                    if (!keys.hasNext()) {
                        z = false;
                        break;
                    }
                    if (this.j.optJSONObject(keys.next()).optString("show").equals(pE3)) {
                        z = true;
                        break;
                    }
                }
                if (z) {
                    Elements B13 = B12.get(i).select("a.module-play-list-link");
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < B13.size(); i2++) {
                        Element hq = B13.get(i2);
                        Matcher matcher = this.g.matcher(hq.attr("href"));
                        if (matcher.find()) {
                            String group = matcher.group(1);
                            String pE4 = hq.text();
                            arrayList.add(pE4 + "$" + group);
                        }
                    }
                    if (arrayList.size() > 0) {
                        linkedHashMap.put(pE3, StringUtil.join("#", arrayList));
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

    public String homeContent(boolean z) {
        try {
            Document ue = Jsoup.parse(OkHttpUtil.string("https://www.555dianying.cc/", j("https://www.555dianying.cc")));
            Elements B1 = ue.select("ul.navbar-items > li > a[href*='vodtype']");
            JSONArray jSONArray = new JSONArray();
            Iterator<Element> it = B1.iterator();
            while (it.hasNext()) {
                Element next = it.next();
                String pE = next.text();
                Matcher matcher = this.KO.matcher(next.attr("href"));
                if (matcher.find() && !pE.contains("福利")) {
                    String trim = matcher.group(1).trim();
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("type_id", trim);
                    jSONObject.put("type_name", pE);
                    jSONArray.put(jSONObject);
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            if (z) {
                jSONObject2.put("filters", this.c);
            }
            jSONObject2.put("class", jSONArray);
            try {
                Elements B12 = ue.select("div.module-items> a[href*='voddetail']");
                JSONArray jSONArray2 = new JSONArray();
                for (int i = 0; i < B12.size(); i++) {
                    Element hq = B12.get(i);
                    String Pd = hq.attr("title");
                    String Pd2 = hq.selectFirst("img").attr("data-original");
                    String pE2 = hq.selectFirst("div.module-item-note").text();
                    Matcher matcher2 = this.b.matcher(hq.attr("href"));
                    if (matcher2.find()) {
                        String group = matcher2.group(1);
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("vod_id", group);
                        jSONObject3.put("vod_name", Pd);
                        jSONObject3.put("vod_pic", Pd2);
                        jSONObject3.put("vod_remarks", pE2);
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
        Dy555.super.init(context);
        try {
            this.j = new JSONObject("{\"xg_app_player\":{\"show\":\"app全局解析\",\"des\":\"\",\"ps\":\"1\",\"parse\":\"https://www.x-n.cc/api.php?url=\"},\"duoduozy\":{\"show\":\"555蓝光\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newduoduo/555tZ4pvzHE3BpiO838.php\",\"parse\":\"https://zyz.sdljwomen.com/server_player/?url=\"},\"bilibili\":{\"show\":\"bilibili\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"youku\":{\"show\":\"优酷\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"qiyi\":{\"show\":\"爱奇艺\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"mgtv\":{\"show\":\"芒果\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"qq\":{\"show\":\"腾讯\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"sohu\":{\"show\":\"搜狐\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"pptv\":{\"show\":\"PPTV\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"m1905\":{\"show\":\"m1905\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"xigua\":{\"show\":\"西瓜视频\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"fuckapp\":{\"show\":\"独家线路\",\"des\":\"555自建资源\",\"ps\":\"0\",\"parse\":\"https://dp.dd520.cc/p.php?url=\"},\"letv\":{\"show\":\"乐视\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://jhpc.021huaying.com/newplayer/5348837768203767939.php\",\"parse\":\"https://jhpc.021huaying.com/newplayer/?url=\"},\"yemao\":{\"show\":\"优质线路1\",\"des\":\"极速蓝光\",\"ps\":\"0\",\"parse\":\"https://jx.manduhu.com/?url=\"},\"sdm3u8\":{\"show\":\"闪电线路\",\"des\":\"闪电\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"},\"fsm3u8\":{\"show\":\"飞速线路\",\"des\":\"飞速\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"},\"wjm3u8\":{\"show\":\"无尽线路\",\"des\":\"无尽\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"},\"dbm3u8\":{\"show\":\"百度线路\",\"des\":\"百度\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"},\"tkm3u8\":{\"show\":\"天空线路\",\"des\":\"天空\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"},\"kbm3u8\":{\"show\":\"快播线路\",\"des\":\"快播\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"},\"zhibo\":{\"show\":\"直播\",\"des\":\"\",\"ps\":\"1\",\"parse\":\"http://suoyou.live/dplay/zb.php?url=\"},\"dujia\":{\"show\":\"独家专线\",\"des\":\"\",\"ps\":\"0\",\"api\":\"https://zyz.sdljwomen.com/newm3u8/5348837768203767939.php\",\"parse\":\"https://zyz.sdljwomen.com/newm3u8/?url=\"}}");
            this.c = new JSONObject("{\"1\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"地区\",\"key\":\"area\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"大陆\",\"v\":\"大陆\"},{\"n\":\"香港\",\"v\":\"香港\"},{\"n\":\"台湾\",\"v\":\"台湾\"},{\"n\":\"美国\",\"v\":\"美国\"},{\"n\":\"法国\",\"v\":\"法国\"},{\"n\":\"英国\",\"v\":\"英国\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"韩国\",\"v\":\"韩国\"},{\"n\":\"德国\",\"v\":\"德国\"},{\"n\":\"泰国\",\"v\":\"泰国\"},{\"n\":\"印度\",\"v\":\"印度\"},{\"n\":\"意大利\",\"v\":\"意大利\"},{\"n\":\"西班牙\",\"v\":\"西班牙\"},{\"n\":\"加拿大\",\"v\":\"加拿大\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"name\":\"类型\",\"key\":\"class\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"喜剧\",\"v\":\"喜剧\"},{\"n\":\"爱情\",\"v\":\"爱情\"},{\"n\":\"科幻\",\"v\":\"科幻\"},{\"n\":\"恐怖\",\"v\":\"恐怖\"},{\"n\":\"剧情\",\"v\":\"剧情\"},{\"n\":\"战争\",\"v\":\"战争\"},{\"n\":\"悬疑\",\"v\":\"悬疑\"},{\"n\":\"冒险\",\"v\":\"冒险\"},{\"n\":\"犯罪\",\"v\":\"犯罪\"},{\"n\":\"奇幻\",\"v\":\"奇幻\"},{\"n\":\"惊悚\",\"v\":\"惊悚\"},{\"n\":\"青春\",\"v\":\"青春\"},{\"n\":\"动画\",\"v\":\"动画\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"2\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"地区\",\"key\":\"area\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"内地\"},{\"n\":\"韩国\",\"v\":\"韩国\"},{\"n\":\"香港\",\"v\":\"香港\"},{\"n\":\"台湾\",\"v\":\"台湾\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"美国\",\"v\":\"美国\"},{\"n\":\"泰国\",\"v\":\"泰国\"},{\"n\":\"英国\",\"v\":\"英国\"},{\"n\":\"新加坡\",\"v\":\"新加坡\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"name\":\"类型\",\"key\":\"class\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"古装\",\"v\":\"古装\"},{\"n\":\"战争\",\"v\":\"战争\"},{\"n\":\"青春偶像\",\"v\":\"青春偶像\"},{\"n\":\"喜剧\",\"v\":\"喜剧\"},{\"n\":\"家庭\",\"v\":\"家庭\"},{\"n\":\"犯罪\",\"v\":\"犯罪\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"奇幻\",\"v\":\"奇幻\"},{\"n\":\"剧情\",\"v\":\"剧情\"},{\"n\":\"历史\",\"v\":\"历史\"},{\"n\":\"经典\",\"v\":\"经典\"},{\"n\":\"乡村\",\"v\":\"乡村\"},{\"n\":\"情景\",\"v\":\"情景\"},{\"n\":\"商战\",\"v\":\"商战\"},{\"n\":\"网剧\",\"v\":\"网剧\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"3\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"地区\",\"key\":\"area\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"内地\"},{\"n\":\"港台\",\"v\":\"港台\"},{\"n\":\"日韩\",\"v\":\"日韩\"},{\"n\":\"欧美\",\"v\":\"欧美\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"5\":[{\"name\":\"年份\",\"key\":\"year\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"}]},{\"name\":\"类型\",\"key\":\"class\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"番剧\",\"v\":\"番剧\"},{\"n\":\"国创\",\"v\":\"国创\"},{\"n\":\"动画片\",\"v\":\"动画片\"}]},{\"name\":\"排序\",\"key\":\"by\",\"value\":[{\"n\":\"最新\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}]}");
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
    }

    public boolean isVideoFormat(String str) {
        String lowerCase = str.toLowerCase();
        if (!lowerCase.contains("=http") && !lowerCase.contains("=https") && !lowerCase.contains("=https%3a%2f") && !lowerCase.contains("=http%3a%2f")) {
            for (String str2 : this.P) {
                if (lowerCase.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    protected HashMap<String, String> j(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("method", "GET");
        if (!StringUtil.isEmpty(str)) {
            hashMap.put("Referer", str);
        }
        hashMap.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        hashMap.put("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8");
        return hashMap;
    }

    public boolean manualVideoCheck() {
        return true;
    }

    public String playerContent(String str, String str2, List<String> list) {
        try {
            String str3 = "https://www.555dianying.cc/vodplay/" + str2 + ".html";
            SpiderDebug.log(str3);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("parse", 1);
            jSONObject.put("playUrl", "");
            jSONObject.put("url", str3);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String searchContent(String str, boolean z) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string("https://www.555dianying.cc/index.php/ajax/suggest?mid=1&wd=" + URLEncoder.encode(str) + "&limit=10&timestamp=" + currentTimeMillis, j("https://www.555dianying.cc")));
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