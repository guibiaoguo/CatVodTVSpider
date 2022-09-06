package com.github.catvod.spider;

import android.content.Context;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class Newfii extends Spider {
    private JSONObject LT;
    private JSONObject VM;
    private Pattern L = Pattern.compile("/index.php/vod/type/id/(\\d+).html");
    private Pattern p = Pattern.compile("/index.php/vod/detail/id/(\\d+).html");
    private Pattern M = Pattern.compile("/index.php/vod/play/id/(\\d+)/sid/(\\d+)/nid/(\\d+).html");
    private Pattern o = Pattern.compile("/index.php/vod/show/(\\S+).html");
    private Pattern T8 = Pattern.compile("(http\\S+)");

    private static String L(Pattern pattern, String str) {
        if (pattern == null) {
            return str;
        }
        try {
            Matcher matcher = pattern.matcher(str);
            if (matcher.find()) {
                return matcher.group(1).trim();
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return str;
    }

    protected HashMap<String, String> LT(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.62 Safari/537.36");
        hashMap.put("Referer", "https://newfii.com");
        return hashMap;
    }

    public String detailContent(List<String> list) {
        String str;
        Exception e;
        String str2;
        boolean z;
        try {
            String str3 = "https://newfii.com/index.php/vod/detail/id/" + list.get(0) + ".html";
            Document g = Jsoup.parse(OkHttpUtil.string(str3, LT(str3)));
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            Elements o = g.select("div.box");
            String L = L(this.T8, o.get(0).selectFirst("div.video-cover div div img").attr("data-src"));
            String LT = o.get(0).select("div.video-cover div div img").attr("alt");
            Elements o2 = g.select(".tag-link");
            String dV = o2.get(0).attr("title");
            String H = o2.get(3).text();
            str = "";
            try {
                String H2 = o2.get(2).text();
                String o3 = g.select("div.video-info-items").get(3).select("div").text();
                ArrayList arrayList = new ArrayList();
                String str4 = "sh";
                Elements o4 = g.select("div.video-info-items").get(1).select("div a");
                for (int i = 0; i < o4.size(); i++) {
                    try {
                        arrayList.add(o4.get(i).text());
                    } catch (Exception e2) {
                        e = e2;
                    }
                }
                String join = StringUtil.join(",", arrayList);
                ArrayList arrayList2 = new ArrayList();
                Elements o5 = g.select("div.video-info-items").get(0).select("div a");
                for (int i2 = 0; i2 < o5.size(); i2++) {
                    arrayList2.add(o5.get(i2).text());
                }
                String join2 = StringUtil.join(",", arrayList2);
                String trim = g.selectFirst("p.sqjj_a").text().trim();
                jSONObject2.put("vod_id", list.get(0));
                jSONObject2.put("vod_name", LT);
                jSONObject2.put("vod_pic", L);
                jSONObject2.put("type_name", dV);
                jSONObject2.put("vod_year", H2);
                jSONObject2.put("vod_area", H);
                jSONObject2.put("vod_remarks", o3);
                jSONObject2.put("vod_actor", join);
                jSONObject2.put("vod_director", join2);
                jSONObject2.put("vod_content", trim);
                try {
                    TreeMap treeMap = new TreeMap(new Comparator<String>() { // from class: com.github.catvod.spider.Newfii.1
                        public int compare(String str5, String str6) {
                            try {
                                int i3 = Newfii.this.LT.optJSONObject(str5).getInt("or");
                                int i4 = Newfii.this.LT.optJSONObject(str6).getInt("or");
                                if (i3 != i4 && i3 - i4 <= 0) {
                                    return -1;
                                }
                                return 1;
                            } catch (JSONException e3) {
                                SpiderDebug.log(e3);
                                return 1;
                            }
                        }
                    });
                    Elements o6 = g.select("div.module-tab-item span");
                    Elements o7 = g.select("div.scroll-content");
                    int i3 = 0;
                    while (i3 < o6.size()) {
                        String H3 = o6.get(i3).text();
                        Iterator<String> keys = this.LT.keys();
                        while (true) {
                            if (!keys.hasNext()) {
                                str2 = str4;
                                z = false;
                                break;
                            }
                            String next = keys.next();
                            str2 = str4;
                            if (this.LT.optJSONObject(next).optString(str2).equals(H3)) {
                                H3 = this.LT.optJSONObject(next).optString(str2);
                                z = true;
                                break;
                            }
                            str4 = str2;
                        }
                        if (z) {
                            Elements o8 = o7.get(i3).select("a");
                            ArrayList arrayList3 = new ArrayList();
                            for (int i4 = 0; i4 < o8.size(); i4++) {
                                Element ik = o8.get(i4);
                                Matcher matcher = this.M.matcher(ik.attr("href"));
                                if (matcher.find()) {
                                    arrayList3.add(ik.text() + "$" + (matcher.group(1) + "/sid/" + matcher.group(2) + "/nid/" + matcher.group(3)));
                                }
                            }
                            String join3 = arrayList3.size() > 0 ? StringUtil.join("#", arrayList3) : str;
                            if (join3.length() != 0) {
                                treeMap.put(H3, join3);
                            }
                        }
                        i3++;
                        str4 = str2;
                    }
                    if (treeMap.size() > 0) {
                        String join4 = StringUtil.join("$$$", treeMap.keySet());
                        String join5 = StringUtil.join("$$$", treeMap.values());
                        jSONObject2.put("vod_play_from", join4);
                        jSONObject2.put("vod_play_url", join5);
                    }
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(jSONObject2);
                    jSONObject.put("list", jSONArray);
                    return jSONObject.toString();
                } catch (Exception e3) {
                    e = e3;
                    SpiderDebug.log(e);
                    return str;
                }
            } catch (Exception e4) {
                e = e4;
            }
        } catch (Exception e5) {
            e = e5;
            str = "";
        }
        return "";
    }

    public String homeContent(boolean z) {
        int i;
        try {
            Document g = Jsoup.parse(OkHttpUtil.string("https://newfii.com", p("https://newfii.com")));
            Elements o = g.select("div.grid-box ul li a");
            JSONArray jSONArray = new JSONArray();
            Iterator<Element> it = o.iterator();
            while (true) {
                i = 0;
                if (!it.hasNext()) {
                    break;
                }
                Element next = it.next();
                String dV = next.attr("title");
                if (dV.equals("电影") || dV.equals("剧集") || dV.equals("动漫") || dV.equals("综艺") || dV.equals("BiLiBiLi") || dV.equals("纪录片")) {
                    i = 1;
                }
                if (i != 0) {
                    Matcher matcher = this.L.matcher(next.attr("href"));
                    if (matcher.find()) {
                        String trim = matcher.group(1).trim();
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("type_id", trim);
                        jSONObject.put("type_name", dV);
                        jSONArray.put(jSONObject);
                    }
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            if (z) {
                jSONObject2.put("filters", this.VM);
            }
            jSONObject2.put("class", jSONArray);
            try {
                Elements o2 = g.select("div.module").get(0).select("div.module-items div.module-item");
                JSONArray jSONArray2 = new JSONArray();
                while (i < o2.size()) {
                    Element ik = o2.get(i);
                    String H = ik.selectFirst("div.video-name a").text();
                    Matcher matcher2 = this.T8.matcher(ik.selectFirst("div.module-item-pic img").attr("data-src"));
                    if (matcher2.find()) {
                        String group = matcher2.group(1);
                        String H2 = ik.selectFirst("div.module-item-text").text();
                        Matcher matcher3 = this.p.matcher(ik.selectFirst("div.video-name a").attr("href"));
                        if (matcher3.find()) {
                            String group2 = matcher3.group(1);
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("vod_id", group2);
                            jSONObject3.put("vod_name", H);
                            jSONObject3.put("vod_pic", group);
                            jSONObject3.put("vod_remarks", H2);
                            jSONArray2.put(jSONObject3);
                        }
                    }
                    i++;
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
        Newfii.super.init(context);
        try {
            this.LT = new JSONObject("{\"miaoparty\":{\"sh\":\"独家蓝光一\",\"pu\":\"https://qilin.manmankan.top/miaoparty/languang/?url=\",\"sn\":1,\"or\":999},\"miaoparty2\":{\"sh\":\"蓝光(失效)\",\"pu\":\"\",\"sn\":1,\"or\":999},\"miaoparty3\":{\"sh\":\"蓝光三(失效)\",\"pu\":\"\",\"sn\":1,\"or\":999},\"qiyi\":{\"sh\":\"爱奇艺\",\"pu\":\"https://qilin.manmankan.top/miaoparty/?url=\",\"sn\":1,\"or\":999},\"qq\":{\"sh\":\"腾讯\",\"pu\":\"https://qilin.manmankan.top/miaoparty/?url=\",\"sn\":1,\"or\":999},\"mgtv\":{\"sh\":\"芒果\",\"pu\":\"https://qilin.manmankan.top/miaoparty/?url=\",\"sn\":1,\"or\":999},\"youku\":{\"sh\":\"优酷\",\"pu\":\"https://qilin.manmankan.top/miaoparty/?url=\",\"sn\":1,\"or\":999},\"bilibili\":{\"sh\":\"哔哩\",\"pu\":\"\",\"sn\":1,\"or\":999},\"sohu\":{\"sh\":\"搜狐\",\"pu\":\"https://qilin.manmankan.top/miaoparty/?url=\",\"sn\":1,\"or\":999},\"m1905\":{\"sh\":\"M1905\",\"pu\":\"https://qilin.manmankan.top/miaoparty/?url=\",\"sn\":1,\"or\":999},\"pptv\":{\"sh\":\"PPTV\",\"pu\":\"https://qilin.manmankan.top/miaoparty/?url=\",\"sn\":1,\"or\":999},\"letv\":{\"sh\":\"乐视\",\"pu\":\"https://qilin.manmankan.top/miaoparty/?url=\",\"sn\":1,\"or\":999},\"xigua\":{\"sh\":\"西瓜\",\"pu\":\"https://qilin.manmankan.top/miaoparty/?url=\",\"sn\":1,\"or\":999},\"lem3u8\":{\"sh\":\"备用一\",\"pu\":\"https://zy.aoxtv.com/m3u8.php?url=\",\"sn\":1,\"or\":999},\"yhm3u8\":{\"sh\":\"备用二\",\"pu\":\"https://zy.aoxtv.com/m3u8.php?url=\",\"sn\":1,\"or\":999}}");
            this.VM = new JSONObject("{\"1\":[{\"key\":\"tid\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"1\"},{\"n\":\"科幻\",\"v\":\"6\"},{\"n\":\"动作\",\"v\":\"7\"},{\"n\":\"喜剧\",\"v\":\"8\"},{\"n\":\"爱情\",\"v\":\"9\"},{\"n\":\"恐怖\",\"v\":\"10\"},{\"n\":\"剧情\",\"v\":\"11\"},{\"n\":\"战争\",\"v\":\"12\"},{\"n\":\"动画\",\"v\":\"20\"},{\"n\":\"伦理\",\"v\":\"32\"}]},{\"key\":\"class\",\"name\":\"剧情\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"喜剧\",\"v\":\"喜剧\"},{\"n\":\"爱情\",\"v\":\"爱情\"},{\"n\":\"恐怖\",\"v\":\"恐怖\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"科幻\",\"v\":\"科幻\"},{\"n\":\"剧情\",\"v\":\"剧情\"},{\"n\":\"战争\",\"v\":\"战争\"},{\"n\":\"警匪\",\"v\":\"警匪\"},{\"n\":\"犯罪\",\"v\":\"犯罪\"},{\"n\":\"动画\",\"v\":\"动画\"},{\"n\":\"奇幻\",\"v\":\"奇幻\"},{\"n\":\"武侠\",\"v\":\"武侠\"},{\"n\":\"冒险\",\"v\":\"冒险\"},{\"n\":\"枪战\",\"v\":\"枪战\"},{\"n\":\"恐怖\",\"v\":\"恐怖\"},{\"n\":\"悬疑\",\"v\":\"悬疑\"},{\"n\":\"惊悚\",\"v\":\"惊悚\"},{\"n\":\"经典\",\"v\":\"经典\"},{\"n\":\"青春\",\"v\":\"青春\"},{\"n\":\"文艺\",\"v\":\"文艺\"},{\"n\":\"微电影\",\"v\":\"微电影\"},{\"n\":\"古装\",\"v\":\"古装\"},{\"n\":\"历史\",\"v\":\"历史\"},{\"n\":\"运动\",\"v\":\"运动\"},{\"n\":\"农村\",\"v\":\"农村\"},{\"n\":\"儿童\",\"v\":\"儿童\"},{\"n\":\"网络电影\",\"v\":\"网络电影\"}]},{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"内地\"},{\"n\":\"香港\",\"v\":\"香港\"},{\"n\":\"台湾\",\"v\":\"台湾\"},{\"n\":\"美国\",\"v\":\"美国\"},{\"n\":\"法国\",\"v\":\"法国\"},{\"n\":\"英国\",\"v\":\"英国\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"韩国\",\"v\":\"韩国\"},{\"n\":\"德国\",\"v\":\"德国\"},{\"n\":\"泰国\",\"v\":\"泰国\"},{\"n\":\"印度\",\"v\":\"印度\"},{\"n\":\"意大利\",\"v\":\"意大利\"},{\"n\":\"西班牙\",\"v\":\"西班牙\"},{\"n\":\"加拿大\",\"v\":\"加拿大\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"key\":\"lang\",\"name\":\"语言\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"国语\",\"v\":\"国语\"},{\"n\":\"英语\",\"v\":\"英语\"},{\"n\":\"粤语\",\"v\":\"粤语\"},{\"n\":\"闽南语\",\"v\":\"闽南语\"},{\"n\":\"韩语\",\"v\":\"韩语\"},{\"n\":\"日语\",\"v\":\"日语\"},{\"n\":\"法语\",\"v\":\"法语\"},{\"n\":\"德语\",\"v\":\"德语\"},{\"n\":\"其它\",\"v\":\"其它\"}]},{\"key\":\"year\",\"name\":\"年份\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"},{\"n\":\"2009\",\"v\":\"2009\"},{\"n\":\"2008\",\"v\":\"2008\"},{\"n\":\"2007\",\"v\":\"2007\"},{\"n\":\"2006\",\"v\":\"2006\"},{\"n\":\"2005\",\"v\":\"2005\"},{\"n\":\"2004\",\"v\":\"2004\"},{\"n\":\"2003\",\"v\":\"2003\"},{\"n\":\"2002\",\"v\":\"2002\"},{\"n\":\"2001\",\"v\":\"2001\"},{\"n\":\"2000\",\"v\":\"2000\"},{\"n\":\"1999\",\"v\":\"1999\"},{\"n\":\"1998\",\"v\":\"1998\"},{\"n\":\"1997\",\"v\":\"1997\"},{\"n\":\"1996\",\"v\":\"1996\"},{\"n\":\"1995\",\"v\":\"1995\"},{\"n\":\"1994\",\"v\":\"1994\"},{\"n\":\"1993\",\"v\":\"1993\"},{\"n\":\"1992\",\"v\":\"1992\"},{\"n\":\"1991\",\"v\":\"1991\"},{\"n\":\"1990\",\"v\":\"1990\"},{\"n\":\"1989\",\"v\":\"1989\"},{\"n\":\"1988\",\"v\":\"1988\"},{\"n\":\"1987\",\"v\":\"1987\"},{\"n\":\"1986\",\"v\":\"1986\"},{\"n\":\"1985\",\"v\":\"1985\"},{\"n\":\"1984\",\"v\":\"1984\"},{\"n\":\"1983\",\"v\":\"1983\"}]},{\"key\":\"letter\",\"name\":\"字母\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"A\",\"v\":\"A\"},{\"n\":\"B\",\"v\":\"B\"},{\"n\":\"C\",\"v\":\"C\"},{\"n\":\"D\",\"v\":\"D\"},{\"n\":\"E\",\"v\":\"E\"},{\"n\":\"F\",\"v\":\"F\"},{\"n\":\"G\",\"v\":\"G\"},{\"n\":\"H\",\"v\":\"H\"},{\"n\":\"I\",\"v\":\"I\"},{\"n\":\"J\",\"v\":\"J\"},{\"n\":\"K\",\"v\":\"K\"},{\"n\":\"L\",\"v\":\"L\"},{\"n\":\"M\",\"v\":\"M\"},{\"n\":\"N\",\"v\":\"N\"},{\"n\":\"O\",\"v\":\"O\"},{\"n\":\"P\",\"v\":\"P\"},{\"n\":\"Q\",\"v\":\"Q\"},{\"n\":\"R\",\"v\":\"R\"},{\"n\":\"S\",\"v\":\"S\"},{\"n\":\"T\",\"v\":\"T\"},{\"n\":\"U\",\"v\":\"U\"},{\"n\":\"V\",\"v\":\"V\"},{\"n\":\"W\",\"v\":\"W\"},{\"n\":\"X\",\"v\":\"X\"},{\"n\":\"Y\",\"v\":\"Y\"},{\"n\":\"Z\",\"v\":\"Z\"},{\"n\":\"0-9\",\"v\":\"0-9\"}]},{\"key\":\"by\",\"name\":\"排序\",\"value\":[{\"n\":\"时间\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"2\":[{\"key\":\"tid\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"国产剧\",\"v\":\"13\"},{\"n\":\"港台剧\",\"v\":\"14\"},{\"n\":\"日韩剧\",\"v\":\"15\"},{\"n\":\"欧美剧\",\"v\":\"16\"},{\"n\":\"海外剧\",\"v\":\"21\"}]},{\"key\":\"class\",\"name\":\"剧情\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"古装\",\"v\":\"古装\"},{\"n\":\"战争\",\"v\":\"战争\"},{\"n\":\"青春偶像\",\"v\":\"青春偶像\"},{\"n\":\"喜剧\",\"v\":\"喜剧\"},{\"n\":\"家庭\",\"v\":\"家庭\"},{\"n\":\"犯罪\",\"v\":\"犯罪\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"奇幻\",\"v\":\"奇幻\"},{\"n\":\"剧情\",\"v\":\"剧情\"},{\"n\":\"历史\",\"v\":\"历史\"},{\"n\":\"经典\",\"v\":\"经典\"},{\"n\":\"乡村\",\"v\":\"乡村\"},{\"n\":\"情景\",\"v\":\"情景\"},{\"n\":\"商战\",\"v\":\"商战\"},{\"n\":\"网剧\",\"v\":\"网剧\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"内地\"},{\"n\":\"韩国\",\"v\":\"韩国\"},{\"n\":\"香港\",\"v\":\"香港\"},{\"n\":\"台湾\",\"v\":\"台湾\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"美国\",\"v\":\"美国\"},{\"n\":\"泰国\",\"v\":\"泰国\"},{\"n\":\"英国\",\"v\":\"英国\"},{\"n\":\"新加坡\",\"v\":\"新加坡\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"key\":\"lang\",\"name\":\"语言\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"国语\",\"v\":\"国语\"},{\"n\":\"英语\",\"v\":\"英语\"},{\"n\":\"粤语\",\"v\":\"粤语\"},{\"n\":\"闽南语\",\"v\":\"闽南语\"},{\"n\":\"韩语\",\"v\":\"韩语\"},{\"n\":\"日语\",\"v\":\"日语\"},{\"n\":\"其它\",\"v\":\"其它\"}]},{\"key\":\"year\",\"name\":\"年份\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"},{\"n\":\"2009\",\"v\":\"2009\"},{\"n\":\"2008\",\"v\":\"2008\"},{\"n\":\"2007\",\"v\":\"2007\"},{\"n\":\"2006\",\"v\":\"2006\"},{\"n\":\"2005\",\"v\":\"2005\"},{\"n\":\"2004\",\"v\":\"2004\"},{\"n\":\"2003\",\"v\":\"2003\"},{\"n\":\"2002\",\"v\":\"2002\"},{\"n\":\"2001\",\"v\":\"2001\"},{\"n\":\"2000\",\"v\":\"2000\"},{\"n\":\"1999\",\"v\":\"1999\"},{\"n\":\"1998\",\"v\":\"1998\"},{\"n\":\"1997\",\"v\":\"1997\"},{\"n\":\"1996\",\"v\":\"1996\"},{\"n\":\"1995\",\"v\":\"1995\"},{\"n\":\"1994\",\"v\":\"1994\"},{\"n\":\"1993\",\"v\":\"1993\"},{\"n\":\"1992\",\"v\":\"1992\"},{\"n\":\"1991\",\"v\":\"1991\"},{\"n\":\"1990\",\"v\":\"1990\"},{\"n\":\"1989\",\"v\":\"1989\"},{\"n\":\"1988\",\"v\":\"1988\"},{\"n\":\"1987\",\"v\":\"1987\"},{\"n\":\"1986\",\"v\":\"1986\"},{\"n\":\"1985\",\"v\":\"1985\"},{\"n\":\"1984\",\"v\":\"1984\"},{\"n\":\"1983\",\"v\":\"1983\"}]},{\"key\":\"letter\",\"name\":\"字母\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"A\",\"v\":\"A\"},{\"n\":\"B\",\"v\":\"B\"},{\"n\":\"C\",\"v\":\"C\"},{\"n\":\"D\",\"v\":\"D\"},{\"n\":\"E\",\"v\":\"E\"},{\"n\":\"F\",\"v\":\"F\"},{\"n\":\"G\",\"v\":\"G\"},{\"n\":\"H\",\"v\":\"H\"},{\"n\":\"I\",\"v\":\"I\"},{\"n\":\"J\",\"v\":\"J\"},{\"n\":\"K\",\"v\":\"K\"},{\"n\":\"L\",\"v\":\"L\"},{\"n\":\"M\",\"v\":\"M\"},{\"n\":\"N\",\"v\":\"N\"},{\"n\":\"O\",\"v\":\"O\"},{\"n\":\"P\",\"v\":\"P\"},{\"n\":\"Q\",\"v\":\"Q\"},{\"n\":\"R\",\"v\":\"R\"},{\"n\":\"S\",\"v\":\"S\"},{\"n\":\"T\",\"v\":\"T\"},{\"n\":\"U\",\"v\":\"U\"},{\"n\":\"V\",\"v\":\"V\"},{\"n\":\"W\",\"v\":\"W\"},{\"n\":\"X\",\"v\":\"X\"},{\"n\":\"Y\",\"v\":\"Y\"},{\"n\":\"Z\",\"v\":\"Z\"},{\"n\":\"0-9\",\"v\":\"0-9\"}]},{\"key\":\"by\",\"name\":\"排序\",\"value\":[{\"n\":\"时间\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"3\":[{\"key\":\"tid\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"国漫\",\"v\":\"22\"},{\"n\":\"日漫\",\"v\":\"25\"},{\"n\":\"欧漫\",\"v\":\"23\"},{\"n\":\"童漫\",\"v\":\"24\"}]},{\"key\":\"class\",\"name\":\"剧情\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"选秀\",\"v\":\"选秀\"},{\"n\":\"情感\",\"v\":\"情感\"},{\"n\":\"访谈\",\"v\":\"访谈\"},{\"n\":\"播报\",\"v\":\"播报\"},{\"n\":\"旅游\",\"v\":\"旅游\"},{\"n\":\"音乐\",\"v\":\"音乐\"},{\"n\":\"美食\",\"v\":\"美食\"},{\"n\":\"纪实\",\"v\":\"纪实\"},{\"n\":\"曲艺\",\"v\":\"曲艺\"},{\"n\":\"生活\",\"v\":\"生活\"},{\"n\":\"游戏互动\",\"v\":\"游戏互动\"},{\"n\":\"财经\",\"v\":\"财经\"},{\"n\":\"求职\",\"v\":\"求职\"}]},{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"内地\"},{\"n\":\"港台\",\"v\":\"港台\"},{\"n\":\"日韩\",\"v\":\"日韩\"},{\"n\":\"欧美\",\"v\":\"欧美\"}]},{\"key\":\"lang\",\"name\":\"语言\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"国语\",\"v\":\"国语\"},{\"n\":\"英语\",\"v\":\"英语\"},{\"n\":\"粤语\",\"v\":\"粤语\"},{\"n\":\"闽南语\",\"v\":\"闽南语\"},{\"n\":\"韩语\",\"v\":\"韩语\"},{\"n\":\"日语\",\"v\":\"日语\"},{\"n\":\"其它\",\"v\":\"其它\"}]},{\"key\":\"year\",\"name\":\"年份\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"},{\"n\":\"2009\",\"v\":\"2009\"},{\"n\":\"2008\",\"v\":\"2008\"},{\"n\":\"2007\",\"v\":\"2007\"},{\"n\":\"2006\",\"v\":\"2006\"},{\"n\":\"2005\",\"v\":\"2005\"},{\"n\":\"2004\",\"v\":\"2004\"},{\"n\":\"2003\",\"v\":\"2003\"},{\"n\":\"2002\",\"v\":\"2002\"},{\"n\":\"2001\",\"v\":\"2001\"},{\"n\":\"2000\",\"v\":\"2000\"},{\"n\":\"1999\",\"v\":\"1999\"},{\"n\":\"1998\",\"v\":\"1998\"},{\"n\":\"1997\",\"v\":\"1997\"},{\"n\":\"1996\",\"v\":\"1996\"},{\"n\":\"1995\",\"v\":\"1995\"},{\"n\":\"1994\",\"v\":\"1994\"},{\"n\":\"1993\",\"v\":\"1993\"},{\"n\":\"1992\",\"v\":\"1992\"},{\"n\":\"1991\",\"v\":\"1991\"},{\"n\":\"1990\",\"v\":\"1990\"},{\"n\":\"1989\",\"v\":\"1989\"},{\"n\":\"1988\",\"v\":\"1988\"},{\"n\":\"1987\",\"v\":\"1987\"},{\"n\":\"1986\",\"v\":\"1986\"},{\"n\":\"1985\",\"v\":\"1985\"},{\"n\":\"1984\",\"v\":\"1984\"},{\"n\":\"1983\",\"v\":\"1983\"}]},{\"key\":\"letter\",\"name\":\"字母\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"A\",\"v\":\"A\"},{\"n\":\"B\",\"v\":\"B\"},{\"n\":\"C\",\"v\":\"C\"},{\"n\":\"D\",\"v\":\"D\"},{\"n\":\"E\",\"v\":\"E\"},{\"n\":\"F\",\"v\":\"F\"},{\"n\":\"G\",\"v\":\"G\"},{\"n\":\"H\",\"v\":\"H\"},{\"n\":\"I\",\"v\":\"I\"},{\"n\":\"J\",\"v\":\"J\"},{\"n\":\"K\",\"v\":\"K\"},{\"n\":\"L\",\"v\":\"L\"},{\"n\":\"M\",\"v\":\"M\"},{\"n\":\"N\",\"v\":\"N\"},{\"n\":\"O\",\"v\":\"O\"},{\"n\":\"P\",\"v\":\"P\"},{\"n\":\"Q\",\"v\":\"Q\"},{\"n\":\"R\",\"v\":\"R\"},{\"n\":\"S\",\"v\":\"S\"},{\"n\":\"T\",\"v\":\"T\"},{\"n\":\"U\",\"v\":\"U\"},{\"n\":\"V\",\"v\":\"V\"},{\"n\":\"W\",\"v\":\"W\"},{\"n\":\"X\",\"v\":\"X\"},{\"n\":\"Y\",\"v\":\"Y\"},{\"n\":\"Z\",\"v\":\"Z\"},{\"n\":\"0-9\",\"v\":\"0-9\"}]},{\"key\":\"by\",\"name\":\"排序\",\"value\":[{\"n\":\"时间\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"4\":[{\"key\":\"tid\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"国产综艺\",\"v\":\"28\"},{\"n\":\"日韩综艺\",\"v\":\"30\"},{\"n\":\"欧美综艺\",\"v\":\"29\"},{\"n\":\"港台综艺\",\"v\":\"31\"}]},{\"key\":\"class\",\"name\":\"剧情\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"情感\",\"v\":\"情感\"},{\"n\":\"科幻\",\"v\":\"科幻\"},{\"n\":\"热血\",\"v\":\"热血\"},{\"n\":\"推理\",\"v\":\"推理\"},{\"n\":\"搞笑\",\"v\":\"搞笑\"},{\"n\":\"冒险\",\"v\":\"冒险\"},{\"n\":\"萝莉\",\"v\":\"萝莉\"},{\"n\":\"校园\",\"v\":\"校园\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"机战\",\"v\":\"机战\"},{\"n\":\"运动\",\"v\":\"运动\"},{\"n\":\"战争\",\"v\":\"战争\"},{\"n\":\"少年\",\"v\":\"少年\"},{\"n\":\"少女\",\"v\":\"少女\"},{\"n\":\"社会\",\"v\":\"社会\"},{\"n\":\"原创\",\"v\":\"原创\"},{\"n\":\"亲子\",\"v\":\"亲子\"},{\"n\":\"益智\",\"v\":\"益智\"},{\"n\":\"励志\",\"v\":\"励志\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"国产\",\"v\":\"国产\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"欧美\",\"v\":\"欧美\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"key\":\"lang\",\"name\":\"语言\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"国语\",\"v\":\"国语\"},{\"n\":\"英语\",\"v\":\"英语\"},{\"n\":\"粤语\",\"v\":\"粤语\"},{\"n\":\"闽南语\",\"v\":\"闽南语\"},{\"n\":\"韩语\",\"v\":\"韩语\"},{\"n\":\"日语\",\"v\":\"日语\"},{\"n\":\"其它\",\"v\":\"其它\"}]},{\"key\":\"year\",\"name\":\"年份\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"},{\"n\":\"2009\",\"v\":\"2009\"},{\"n\":\"2008\",\"v\":\"2008\"},{\"n\":\"2007\",\"v\":\"2007\"},{\"n\":\"2006\",\"v\":\"2006\"},{\"n\":\"2005\",\"v\":\"2005\"},{\"n\":\"2004\",\"v\":\"2004\"},{\"n\":\"2003\",\"v\":\"2003\"},{\"n\":\"2002\",\"v\":\"2002\"},{\"n\":\"2001\",\"v\":\"2001\"},{\"n\":\"2000\",\"v\":\"2000\"},{\"n\":\"1999\",\"v\":\"1999\"},{\"n\":\"1998\",\"v\":\"1998\"},{\"n\":\"1997\",\"v\":\"1997\"},{\"n\":\"1996\",\"v\":\"1996\"},{\"n\":\"1995\",\"v\":\"1995\"},{\"n\":\"1994\",\"v\":\"1994\"},{\"n\":\"1993\",\"v\":\"1993\"},{\"n\":\"1992\",\"v\":\"1992\"},{\"n\":\"1991\",\"v\":\"1991\"},{\"n\":\"1990\",\"v\":\"1990\"},{\"n\":\"1989\",\"v\":\"1989\"},{\"n\":\"1988\",\"v\":\"1988\"},{\"n\":\"1987\",\"v\":\"1987\"},{\"n\":\"1986\",\"v\":\"1986\"},{\"n\":\"1985\",\"v\":\"1985\"},{\"n\":\"1984\",\"v\":\"1984\"},{\"n\":\"1983\",\"v\":\"1983\"}]},{\"key\":\"letter\",\"name\":\"字母\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"A\",\"v\":\"A\"},{\"n\":\"B\",\"v\":\"B\"},{\"n\":\"C\",\"v\":\"C\"},{\"n\":\"D\",\"v\":\"D\"},{\"n\":\"E\",\"v\":\"E\"},{\"n\":\"F\",\"v\":\"F\"},{\"n\":\"G\",\"v\":\"G\"},{\"n\":\"H\",\"v\":\"H\"},{\"n\":\"I\",\"v\":\"I\"},{\"n\":\"J\",\"v\":\"J\"},{\"n\":\"K\",\"v\":\"K\"},{\"n\":\"L\",\"v\":\"L\"},{\"n\":\"M\",\"v\":\"M\"},{\"n\":\"N\",\"v\":\"N\"},{\"n\":\"O\",\"v\":\"O\"},{\"n\":\"P\",\"v\":\"P\"},{\"n\":\"Q\",\"v\":\"Q\"},{\"n\":\"R\",\"v\":\"R\"},{\"n\":\"S\",\"v\":\"S\"},{\"n\":\"T\",\"v\":\"T\"},{\"n\":\"U\",\"v\":\"U\"},{\"n\":\"V\",\"v\":\"V\"},{\"n\":\"W\",\"v\":\"W\"},{\"n\":\"X\",\"v\":\"X\"},{\"n\":\"Y\",\"v\":\"Y\"},{\"n\":\"Z\",\"v\":\"Z\"},{\"n\":\"0-9\",\"v\":\"0-9\"}]},{\"key\":\"by\",\"name\":\"排序\",\"value\":[{\"n\":\"时间\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"34\":[{\"key\":\"tid\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"番剧\",\"v\":\"35\"},{\"n\":\"国创\",\"v\":\"36\"}]},{\"key\":\"year\",\"name\":\"年份\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"},{\"n\":\"2009\",\"v\":\"2009\"},{\"n\":\"2008\",\"v\":\"2008\"},{\"n\":\"2007\",\"v\":\"2007\"},{\"n\":\"2006\",\"v\":\"2006\"},{\"n\":\"2005\",\"v\":\"2005\"},{\"n\":\"2004\",\"v\":\"2004\"},{\"n\":\"2003\",\"v\":\"2003\"},{\"n\":\"2002\",\"v\":\"2002\"},{\"n\":\"2001\",\"v\":\"2001\"},{\"n\":\"2000\",\"v\":\"2000\"},{\"n\":\"1999\",\"v\":\"1999\"},{\"n\":\"1998\",\"v\":\"1998\"},{\"n\":\"1997\",\"v\":\"1997\"},{\"n\":\"1996\",\"v\":\"1996\"},{\"n\":\"1995\",\"v\":\"1995\"},{\"n\":\"1994\",\"v\":\"1994\"},{\"n\":\"1993\",\"v\":\"1993\"},{\"n\":\"1992\",\"v\":\"1992\"},{\"n\":\"1991\",\"v\":\"1991\"},{\"n\":\"1990\",\"v\":\"1990\"},{\"n\":\"1989\",\"v\":\"1989\"},{\"n\":\"1988\",\"v\":\"1988\"},{\"n\":\"1987\",\"v\":\"1987\"},{\"n\":\"1986\",\"v\":\"1986\"},{\"n\":\"1985\",\"v\":\"1985\"},{\"n\":\"1984\",\"v\":\"1984\"},{\"n\":\"1983\",\"v\":\"1983\"}]},{\"key\":\"letter\",\"name\":\"字母\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"A\",\"v\":\"A\"},{\"n\":\"B\",\"v\":\"B\"},{\"n\":\"C\",\"v\":\"C\"},{\"n\":\"D\",\"v\":\"D\"},{\"n\":\"E\",\"v\":\"E\"},{\"n\":\"F\",\"v\":\"F\"},{\"n\":\"G\",\"v\":\"G\"},{\"n\":\"H\",\"v\":\"H\"},{\"n\":\"I\",\"v\":\"I\"},{\"n\":\"J\",\"v\":\"J\"},{\"n\":\"K\",\"v\":\"K\"},{\"n\":\"L\",\"v\":\"L\"},{\"n\":\"M\",\"v\":\"M\"},{\"n\":\"N\",\"v\":\"N\"},{\"n\":\"O\",\"v\":\"O\"},{\"n\":\"P\",\"v\":\"P\"},{\"n\":\"Q\",\"v\":\"Q\"},{\"n\":\"R\",\"v\":\"R\"},{\"n\":\"S\",\"v\":\"S\"},{\"n\":\"T\",\"v\":\"T\"},{\"n\":\"U\",\"v\":\"U\"},{\"n\":\"V\",\"v\":\"V\"},{\"n\":\"W\",\"v\":\"W\"},{\"n\":\"X\",\"v\":\"X\"},{\"n\":\"Y\",\"v\":\"Y\"},{\"n\":\"Z\",\"v\":\"Z\"},{\"n\":\"0-9\",\"v\":\"0-9\"}]},{\"key\":\"by\",\"name\":\"排序\",\"value\":[{\"n\":\"时间\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}],\"27\":[{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"内地\"},{\"n\":\"韩国\",\"v\":\"韩国\"},{\"n\":\"香港\",\"v\":\"香港\"},{\"n\":\"台湾\",\"v\":\"台湾\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"美国\",\"v\":\"美国\"},{\"n\":\"泰国\",\"v\":\"泰国\"},{\"n\":\"英国\",\"v\":\"英国\"},{\"n\":\"新加坡\",\"v\":\"新加坡\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"key\":\"lang\",\"name\":\"语言\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"国语\",\"v\":\"国语\"},{\"n\":\"英语\",\"v\":\"英语\"},{\"n\":\"粤语\",\"v\":\"粤语\"},{\"n\":\"闽南语\",\"v\":\"闽南语\"},{\"n\":\"韩语\",\"v\":\"韩语\"},{\"n\":\"日语\",\"v\":\"日语\"},{\"n\":\"其它\",\"v\":\"其它\"}]},{\"key\":\"year\",\"name\":\"年份\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"},{\"n\":\"2009\",\"v\":\"2009\"},{\"n\":\"2008\",\"v\":\"2008\"},{\"n\":\"2007\",\"v\":\"2007\"},{\"n\":\"2006\",\"v\":\"2006\"},{\"n\":\"2005\",\"v\":\"2005\"},{\"n\":\"2004\",\"v\":\"2004\"},{\"n\":\"2003\",\"v\":\"2003\"},{\"n\":\"2002\",\"v\":\"2002\"},{\"n\":\"2001\",\"v\":\"2001\"},{\"n\":\"2000\",\"v\":\"2000\"},{\"n\":\"1999\",\"v\":\"1999\"},{\"n\":\"1998\",\"v\":\"1998\"},{\"n\":\"1997\",\"v\":\"1997\"},{\"n\":\"1996\",\"v\":\"1996\"},{\"n\":\"1995\",\"v\":\"1995\"},{\"n\":\"1994\",\"v\":\"1994\"},{\"n\":\"1993\",\"v\":\"1993\"},{\"n\":\"1992\",\"v\":\"1992\"},{\"n\":\"1991\",\"v\":\"1991\"},{\"n\":\"1990\",\"v\":\"1990\"},{\"n\":\"1989\",\"v\":\"1989\"},{\"n\":\"1988\",\"v\":\"1988\"},{\"n\":\"1987\",\"v\":\"1987\"},{\"n\":\"1986\",\"v\":\"1986\"},{\"n\":\"1985\",\"v\":\"1985\"},{\"n\":\"1984\",\"v\":\"1984\"},{\"n\":\"1983\",\"v\":\"1983\"}]},{\"key\":\"letter\",\"name\":\"字母\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"A\",\"v\":\"A\"},{\"n\":\"B\",\"v\":\"B\"},{\"n\":\"C\",\"v\":\"C\"},{\"n\":\"D\",\"v\":\"D\"},{\"n\":\"E\",\"v\":\"E\"},{\"n\":\"F\",\"v\":\"F\"},{\"n\":\"G\",\"v\":\"G\"},{\"n\":\"H\",\"v\":\"H\"},{\"n\":\"I\",\"v\":\"I\"},{\"n\":\"J\",\"v\":\"J\"},{\"n\":\"K\",\"v\":\"K\"},{\"n\":\"L\",\"v\":\"L\"},{\"n\":\"M\",\"v\":\"M\"},{\"n\":\"N\",\"v\":\"N\"},{\"n\":\"O\",\"v\":\"O\"},{\"n\":\"P\",\"v\":\"P\"},{\"n\":\"Q\",\"v\":\"Q\"},{\"n\":\"R\",\"v\":\"R\"},{\"n\":\"S\",\"v\":\"S\"},{\"n\":\"T\",\"v\":\"T\"},{\"n\":\"U\",\"v\":\"U\"},{\"n\":\"V\",\"v\":\"V\"},{\"n\":\"W\",\"v\":\"W\"},{\"n\":\"X\",\"v\":\"X\"},{\"n\":\"Y\",\"v\":\"Y\"},{\"n\":\"Z\",\"v\":\"Z\"},{\"n\":\"0-9\",\"v\":\"0-9\"}]},{\"key\":\"by\",\"name\":\"排序\",\"value\":[{\"n\":\"时间\",\"v\":\"time\"},{\"n\":\"人气\",\"v\":\"hits\"},{\"n\":\"评分\",\"v\":\"score\"}]}]}");
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
    }

    protected HashMap<String, String> p(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("method", "GET");
        hashMap.put("Host", "newfii.com");
        hashMap.put("Upgrade-Insecure-Requests", "1");
        hashMap.put("DNT", "1");
        hashMap.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        hashMap.put("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8");
        hashMap.put("Accept-Language", "zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2");
        return hashMap;
    }

    public String playerContent(String str, String str2, List<String> list) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("origin", "https://newfii.com");
            jSONObject.put("User-Agent", " Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
            jSONObject.put("Accept", " */*");
            jSONObject.put("Accept-Language", " zh-CN,zh;q=0.9,en-US;q=0.3,en;q=0.7");
            jSONObject.put("Accept-Encoding", " gzip, deflate");
            String str3 = "https://newfii.com/index.php/vod/play/id/" + str2 + ".html";
            Elements o = Jsoup.parse(OkHttpUtil.string(str3, p(str3))).select("script");
            JSONObject jSONObject2 = new JSONObject();
            int i = 0;
            while (true) {
                if (i >= o.size()) {
                    break;
                }
                String trim = o.get(i).html().trim();
                if (trim.startsWith("var player_")) {
                    JSONObject jSONObject3 = new JSONObject(trim.substring(trim.indexOf(123), trim.lastIndexOf(125) + 1));
                    if (this.LT.has(jSONObject3.optString("from"))) {
                        String string = this.LT.optJSONObject(jSONObject3.optString("from")).optString("pu");
                        String string2 = jSONObject3.optString("url");
                        if (Misc.isVideoFormat(jSONObject3.optString("url"))) {
                            jSONObject2.put("parse", 0);
                            jSONObject2.put("playUrl", "");
                            jSONObject2.put("url", str2);
                            return jSONObject2.toString();
                        } else if (!string.isEmpty()) {
                            String str4 = string + string2;
                            Elements o2 = Jsoup.parse(OkHttpUtil.string(str4, LT(str4))).select("body script");
                            for (int i2 = 0; i2 < o2.size(); i2++) {
                                String trim2 = o2.get(i2).html().trim();
                                if (trim2.startsWith("var player")) {
                                    String string3 = new JSONObject(trim2.substring(trim2.indexOf(123), trim2.lastIndexOf(125) + 1)).optString("source");
                                    jSONObject2.put("parse", 0);
                                    jSONObject2.put("playUrl", "");
                                    jSONObject2.put("url", string3);
                                } else {
                                    Matcher matcher = Pattern.compile("(?<=url:\\s\").*?(?=\")").matcher(trim2);
                                    if (matcher.find()) {
                                        String group = matcher.group(0);
                                        jSONObject2.put("parse", 0);
                                        jSONObject2.put("playUrl", "");
                                        jSONObject2.put("url", group);
                                    }
                                }
                            }
                        } else {
                            jSONObject2.put("parse", 1);
                            jSONObject2.put("jx", "1");
                            jSONObject2.put("url", string2);
                            return jSONObject2.toString();
                        }
                    }
                } else {
                    i++;
                }
            }
            return jSONObject2.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String searchContent(String str, boolean z) {
        try {
            String str2 = "https://newfii.com/index.php/ajax/suggest?mid=1&wd=" + URLEncoder.encode(str) + "&limit=10&timestamp=" + System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string(str2, p(str2)));
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