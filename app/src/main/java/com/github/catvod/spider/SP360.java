package com.github.catvod.spider;

import android.content.Context;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SP360 extends Spider {

    protected JSONObject classes = null;
    private static final String u = new String("https:");
    private static final String Dz = new String("https://api.web.360kan.com/v1/rank?cat=1");
    private static final String Q = new String("https://api.web.360kan.com/v1/filter/list");
    private static final String J = new String("https://api.web.360kan.com/v1/detail");
    private static final String q = new String("https://api.so.360kan.com/index?force_v=1&kw=%s&from=&pageno=1&v_ap=1&tab=all");
    private static final String L = new String("{\"urls\":{\"1\":\"https://api.web.360kan.com/v1\",\"2\":\"https://api.web.360kan.com/v1\",\"3\":\"https://api.web.360kan.com/v1\",\"4\":\"https://api.web.360kan.com/v1\",\"recommend\":\"https://api.web.360kan.com/v1/rank?cat=1\",\"search\":\"https://api.so.360kan.com/index?kw={wd}&pageno=1\"},\"classes\":[{\"type_name\":\"电影\",\"type_id\":\"1\"},{\"type_name\":\"电视剧\",\"type_id\":\"2\"},{\"type_name\":\"综艺\",\"type_id\":\"3\"},{\"type_name\":\"动漫\",\"type_id\":\"4\"}],\"filter\":{\"1\":[{\"key\":\"cat\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"喜剧\",\"v\":\"喜剧\"},{\"n\":\"爱情\",\"v\":\"爱情\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"恐怖\",\"v\":\"恐怖\"},{\"n\":\"科幻\",\"v\":\"科幻\"},{\"n\":\"剧情\",\"v\":\"剧情\"},{\"n\":\"犯罪\",\"v\":\"犯罪\"},{\"n\":\"奇幻\",\"v\":\"奇幻\"},{\"n\":\"战争\",\"v\":\"战争\"},{\"n\":\"悬疑\",\"v\":\"悬疑\"},{\"n\":\"动画\",\"v\":\"动画\"},{\"n\":\"文艺\",\"v\":\"文艺\"},{\"n\":\"纪录\",\"v\":\"纪录\"},{\"n\":\"传记\",\"v\":\"传记\"},{\"n\":\"歌舞\",\"v\":\"歌舞\"},{\"n\":\"古装\",\"v\":\"古装\"},{\"n\":\"历史\",\"v\":\"历史\"},{\"n\":\"惊悚\",\"v\":\"惊悚\"},{\"n\":\"伦理\",\"v\":\"伦理\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"key\":\"year\",\"name\":\"年代\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2010\",\"v\":\"2010\"},{\"n\":\"2009\",\"v\":\"2009\"},{\"n\":\"2008\",\"v\":\"2008\"},{\"n\":\"2007\",\"v\":\"2007\"},{\"n\":\"更早\",\"v\":\"lt_year\"}]},{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"大陆\"},{\"n\":\"中国香港\",\"v\":\"香港\"},{\"n\":\"中国台湾\",\"v\":\"台湾\"},{\"n\":\"泰国\",\"v\":\"泰国\"},{\"n\":\"美国\",\"v\":\"美国\"},{\"n\":\"韩国\",\"v\":\"韩国\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"法国\",\"v\":\"法国\"},{\"n\":\"英国\",\"v\":\"英国\"},{\"n\":\"德国\",\"v\":\"德国\"},{\"n\":\"印度\",\"v\":\"印度\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"key\":\"rank\",\"name\":\"排序\",\"value\":[{\"n\":\"最近热映\",\"v\":\"rankhot\"},{\"n\":\"最近上映\",\"v\":\"ranklatest\"},{\"n\":\"最受好评\",\"v\":\"rankpoint\"}]}],\"2\":[{\"key\":\"cat\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"言情\",\"v\":\"言情\"},{\"n\":\"剧情\",\"v\":\"剧情\"},{\"n\":\"伦理\",\"v\":\"伦理\"},{\"n\":\"喜剧\",\"v\":\"喜剧\"},{\"n\":\"悬疑\",\"v\":\"悬疑\"},{\"n\":\"都市\",\"v\":\"都市\"},{\"n\":\"偶像\",\"v\":\"偶像\"},{\"n\":\"古装\",\"v\":\"古装\"},{\"n\":\"军事\",\"v\":\"军事\"},{\"n\":\"警匪\",\"v\":\"警匪\"},{\"n\":\"历史\",\"v\":\"历史\"},{\"n\":\"励志\",\"v\":\"励志\"},{\"n\":\"神话\",\"v\":\"神话\"},{\"n\":\"谍战\",\"v\":\"谍战\"},{\"n\":\"青春\",\"v\":\"青春剧\"},{\"n\":\"家庭\",\"v\":\"家庭剧\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"情景\",\"v\":\"情景\"},{\"n\":\"武侠\",\"v\":\"武侠\"},{\"n\":\"科幻\",\"v\":\"科幻\"},{\"n\":\"其他\",\"v\":\"其他\"},{\"n\":\"全部\",\"v\":\"\"}]},{\"key\":\"year\",\"name\":\"年代\",\"value\":[{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2010\",\"v\":\"2010\"},{\"n\":\"2009\",\"v\":\"2009\"},{\"n\":\"2008\",\"v\":\"2008\"},{\"n\":\"2007\",\"v\":\"2007\"},{\"n\":\"更早\",\"v\":\"lt_year\"}]},{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"内地\"},{\"n\":\"中国香港\",\"v\":\"香港\"},{\"n\":\"中国台湾\",\"v\":\"台湾\"},{\"n\":\"泰国\",\"v\":\"泰国\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"韩国\",\"v\":\"韩国\"},{\"n\":\"美国\",\"v\":\"美国\"},{\"n\":\"英国\",\"v\":\"英国\"},{\"n\":\"新加坡\",\"v\":\"新加坡\"}]},{\"key\":\"rank\",\"name\":\"排序\",\"value\":[{\"n\":\"最近热映\",\"v\":\"rankhot\"},{\"n\":\"最近上映\",\"v\":\"ranklatest\"},{\"n\":\"最受好评\",\"v\":\"rankpoint\"}]}],\"3\":[{\"key\":\"cat\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"脱口秀\",\"v\":\"脱口秀\"},{\"n\":\"真人秀\",\"v\":\"真人秀\"},{\"n\":\"搞笑\",\"v\":\"搞笑\"},{\"n\":\"选秀\",\"v\":\"选秀\"},{\"n\":\"八卦\",\"v\":\"八卦\"},{\"n\":\"访谈\",\"v\":\"访谈\"},{\"n\":\"情感\",\"v\":\"情感\"},{\"n\":\"生活\",\"v\":\"生活\"},{\"n\":\"晚会\",\"v\":\"晚会\"},{\"n\":\"音乐\",\"v\":\"音乐\"},{\"n\":\"职场\",\"v\":\"职场\"},{\"n\":\"美食\",\"v\":\"美食\"},{\"n\":\"时尚\",\"v\":\"时尚\"},{\"n\":\"游戏\",\"v\":\"游戏\"},{\"n\":\"少儿\",\"v\":\"少儿\"},{\"n\":\"体育\",\"v\":\"体育\"},{\"n\":\"纪实\",\"v\":\"纪实\"},{\"n\":\"科教\",\"v\":\"科教\"},{\"n\":\"曲艺\",\"v\":\"曲艺\"},{\"n\":\"歌舞\",\"v\":\"歌舞\"},{\"n\":\"财经\",\"v\":\"财经\"},{\"n\":\"汽车\",\"v\":\"汽车\"},{\"n\":\"播报\",\"v\":\"播报\"},{\"n\":\"其他\",\"v\":\"其他\"}]},{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"大陆\"},{\"n\":\"中国香港\",\"v\":\"香港\"},{\"n\":\"中国台湾\",\"v\":\"台湾\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"欧美\",\"v\":\"欧美\"}]},{\"key\":\"rank\",\"name\":\"排序\",\"value\":[{\"n\":\"最近热映\",\"v\":\"rankhot\"},{\"n\":\"最近上映\",\"v\":\"ranklatest\"}]}],\"4\":[{\"key\":\"cat\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"热血\",\"v\":\"热血\"},{\"n\":\"科幻\",\"v\":\"科幻\"},{\"n\":\"美少女\",\"v\":\"美少女\"},{\"n\":\"魔幻\",\"v\":\"魔幻\"},{\"n\":\"经典\",\"v\":\"经典\"},{\"n\":\"励志\",\"v\":\"励志\"},{\"n\":\"少儿\",\"v\":\"少儿\"},{\"n\":\"冒险\",\"v\":\"冒险\"},{\"n\":\"搞笑\",\"v\":\"搞笑\"},{\"n\":\"推理\",\"v\":\"推理\"},{\"n\":\"恋爱\",\"v\":\"恋爱\"},{\"n\":\"治愈\",\"v\":\"治愈\"},{\"n\":\"幻想\",\"v\":\"幻想\"},{\"n\":\"校园\",\"v\":\"校园\"},{\"n\":\"动物\",\"v\":\"动物\"},{\"n\":\"机战\",\"v\":\"机战\"},{\"n\":\"亲子\",\"v\":\"亲子\"},{\"n\":\"儿歌\",\"v\":\"儿歌\"},{\"n\":\"运动\",\"v\":\"运动\"},{\"n\":\"悬疑\",\"v\":\"悬疑\"},{\"n\":\"怪物\",\"v\":\"怪物\"},{\"n\":\"战争\",\"v\":\"战争\"},{\"n\":\"益智\",\"v\":\"益智\"},{\"n\":\"青春\",\"v\":\"青春\"},{\"n\":\"童话\",\"v\":\"童话\"},{\"n\":\"竞技\",\"v\":\"竞技\"},{\"n\":\"动作\",\"v\":\"动作\"},{\"n\":\"社会\",\"v\":\"社会\"},{\"n\":\"友情\",\"v\":\"友情\"},{\"n\":\"真人版\",\"v\":\"真人版\"},{\"n\":\"电影版\",\"v\":\"电影版\"},{\"n\":\"OVA版\",\"v\":\"OVA版\"},{\"n\":\"TV版\",\"v\":\"TV版\"},{\"n\":\"新番动画\",\"v\":\"新番动画\"},{\"n\":\"完结动画\",\"v\":\"完结动画\"}]},{\"key\":\"year\",\"name\":\"年代\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"2013\",\"v\":\"2013\"},{\"n\":\"2012\",\"v\":\"2012\"},{\"n\":\"2011\",\"v\":\"2011\"},{\"n\":\"2010\",\"v\":\"2010\"},{\"n\":\"2009\",\"v\":\"2009\"},{\"n\":\"2008\",\"v\":\"2008\"},{\"n\":\"2007\",\"v\":\"2007\"},{\"n\":\"2006\",\"v\":\"2006\"},{\"n\":\"2005\",\"v\":\"2005\"},{\"n\":\"2004\",\"v\":\"2004\"},{\"n\":\"更早\",\"v\":\"更早\"}]},{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"大陆\"},{\"n\":\"日本\",\"v\":\"日本\"},{\"n\":\"美国\",\"v\":\"美国\"}]},{\"key\":\"rank\",\"name\":\"排序\",\"value\":[{\"n\":\"最近热映\",\"v\":\"rankhot\"},{\"n\":\"最近上映\",\"v\":\"ranklatest\"}]}]}}");

    @Override
    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> extend) {
        String str3;
        String str4 = "upinfo";
        String str5 = "total";
        try {
            String str6 = "https://api.web.360kan.com/v1/filter/list?catid=" + str + "&pageno=" + str2;
            if (extend != null) {
                for (String str7 : extend.keySet()) {
                    String trim = extend.get(str7).trim();
                    if (trim.length() != 0) {
                        str6 = str6 + "&" + str7 + "=" + URLEncoder.encode(trim);
                    }
                }
            }
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string(str6, d())).optJSONObject("data");
            JSONArray jSONArray = jSONObject.optJSONArray("movies");
            JSONArray jSONArray2 = new JSONArray();
            int i = 0;
            while (i < jSONArray.length()) {
                JSONObject jSONObject2 = jSONArray.optJSONObject(i);
                JSONObject jSONObject3 = new JSONObject();
                String string = jSONObject2.optString("cover");
                if (jSONObject2.has(str4)) {
                    String string2 = jSONObject2.optString(str4);
                    str3 = str4;
                    jSONObject3.put("vod_id", str + "_" + jSONObject2.optString("id"));
                    jSONObject3.put("vod_name", jSONObject2.optString("title"));
                    jSONObject3.put("vod_pic", "https:" + string);
                    jSONObject3.put("vod_remarks", string2);
                } else {
                    str3 = str4;
                    jSONObject3.put("vod_id", str + "_" + jSONObject2.optString("id"));
                    jSONObject3.put("vod_name", jSONObject2.optString("title"));
                    jSONObject3.put("vod_pic", "https:" + string);
                    jSONObject3.put("vod_remarks", "");
                }
                jSONArray2.put(jSONObject3);
                i++;
                jSONArray = jSONArray;
                str5 = str5;
                jSONObject = jSONObject;
                str4 = str3;
            }
            JSONObject jSONObject4 = new JSONObject();
            int parseInt = jSONObject.optInt("current_page");
            int i2 = jSONObject.optInt(str5);
            int i3 = i2 % 24 == 0 ? i2 / 24 : (i2 / 24) + 1;
            jSONObject4.put("page", parseInt);
            jSONObject4.put("pagecount", i3);
            jSONObject4.put("limit", 24);
            jSONObject4.put(str5, i2);
            jSONObject4.put("list", jSONArray2);
            return jSONObject4.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    protected HashMap<String, String> d() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(new String("User-Agent"), new String("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36"));
        return hashMap;
    }

    @Override
    public String homeContent(boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("class", classes.optJSONArray("classes"));
            if (z) {
                jSONObject.put("filters", classes.optJSONObject("filter"));
            }
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
        return jSONObject.toString();
    }

    @Override
    public String homeVideoContent() {
        SpiderDebug.log("360 homeVideoContent invoke");
        JSONObject jSONObject = new JSONObject();
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("执行请求：");
            String str = Dz;
            sb.append(str);
            SpiderDebug.log(sb.toString());
            String V = OkHttpUtil.string(str, new HashMap());
            SpiderDebug.log("响应请求：" + str);
            JSONArray optJSONArray = new JSONObject(V).optJSONArray("data");
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject jSONObject2 = optJSONArray.optJSONObject(i);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("vod_id", jSONObject2.optString("cat") + "_" + jSONObject2.optString("ent_id"));
                jSONObject3.put("vod_name", jSONObject2.optString("title"));
                jSONObject3.put("vod_pic", jSONObject2.optString("cover"));
                jSONObject3.put("vod_remarks", jSONObject2.optString("upinfo"));
                jSONArray.put(jSONObject3);
            }
            jSONObject.put("list", jSONArray);
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return jSONObject.toString();
    }

    @Override
    public void init(Context context) {
        super.init(context);
        try {
            classes = new JSONObject(L);
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
    }

    public String detailContent(List<String> list) {
        try {
            String[] ids = list.get(0).split("_");
            String str = J + "?cat=" + ids[0] + "&id="+ids[1];
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string(str, d())).optJSONObject("data");
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject3 = new JSONObject();
            String string = jSONObject.optString("title");
            jSONObject3.put("vod_id", jSONObject.optString("ent_id"));
            jSONObject3.put("vod_name", string);
            jSONObject3.put("vod_pic", jSONObject.optString("cdncover"));
            jSONObject3.put("type_name", jSONObject.optString("moviecategory"));
            jSONObject3.put("vod_year", jSONObject.optString("pubdate"));
            jSONObject3.put("vod_area", jSONObject.optString("area"));
            jSONObject3.put("vod_remarks", jSONObject.optString("comment"));
            jSONObject3.put("vod_actor", jSONObject.optString("actor"));
            jSONObject3.put("vod_director", jSONObject.optString("director"));
            jSONObject3.put("vod_content", jSONObject.optString("description").trim());
            JSONArray jSONArray2 = null;
            JSONObject data = null;
            if (jSONObject.optJSONObject("allepidetail") !=null) {
                data = jSONObject.optJSONObject("allepidetail");
            } else if (jSONObject.optJSONObject("playlinksdetail") != null) {
                data = jSONObject.optJSONObject("playlinksdetail");
            }
            jSONArray2 = data.names();
            LinkedHashMap<String, ArrayList> linkedHashMap = new LinkedHashMap();
            for (int i = 0; i < jSONArray2.length(); i++) {
                JSONArray jSONArray3 = null;
                if(data.optJSONArray(jSONArray2.optString(0)) != null){
                    jSONArray3 = data.optJSONArray(jSONArray2.optString(0));
                } else {
                    jSONArray3 = new JSONArray();
                    jSONArray3.put(data.optJSONObject(jSONArray2.optString(0)));
                }
                for (int i2 = 0; i2 < jSONArray3.length(); i2++) {
                    JSONObject jSONObject4 = jSONArray3.optJSONObject(i2);
                    ArrayList arrayList = (ArrayList) linkedHashMap.get(jSONArray2.optString(i));
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        linkedHashMap.put(jSONArray2.optString(i), arrayList);
                    }
                    String trim = jSONObject4.optString("playlink_num").trim();
                    if (trim.isEmpty()) {
                        trim = (i + 1) + "";
                    }
                    arrayList.add(trim + "$" + (StringUtil.isNotEmpty(jSONObject4.optString("url"))?jSONObject4.optString("url"):jSONObject4.optString("default_url")));
                }
            }
            String join = StringUtil.join("$$$", linkedHashMap.keySet());
            StringBuilder sb = new StringBuilder();
            short size = (short) linkedHashMap.size();
            for (ArrayList arrayList2 : linkedHashMap.values()) {
                size = (short) (size - 1);
                sb.append(StringUtil.join("#", arrayList2));
                if (size > 0) {
                    sb.append("$$$");
                }
            }
            jSONObject3.put("vod_play_from", join);
            jSONObject3.put("vod_play_url", sb.toString());
            jSONArray.put(jSONObject3);
            jSONObject2.put("list", jSONArray);
            return jSONObject2.toString();
        } catch (Throwable e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    @Override
    public String playerContent(String str, String str2, List<String> list) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("parse", 1);
            jSONObject.put("url", str2);
            jSONObject.put("jx", "1");
            jSONObject.put("playUrl", "");
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return jSONObject.toString();
    }

    public String searchContent(String str, boolean z) {
        JSONObject optJSONObject;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject optJSONObject2 = new JSONObject(OkHttpUtil.string(String.format(q, str), d())).optJSONObject("data");
            if (!(optJSONObject2 == null || (optJSONObject = optJSONObject2.optJSONObject("longData")) == null)) {
                JSONArray jSONArray = optJSONObject.optJSONArray("rows");
                JSONArray jSONArray2 = new JSONArray();
                jSONObject.put("list", jSONArray2);
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.optJSONObject(i);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("vod_id", jSONObject2.optString("cat_id") + "_" + jSONObject2.optString("en_id"));
                    jSONObject3.put("vod_name", jSONObject2.optString("titleTxt"));
                    jSONObject3.put("vod_pic", jSONObject2.optString("cover"));
                    jSONObject3.put("vod_remarks", jSONObject2.optString("score"));
                    jSONArray2.put(jSONObject3);
                }
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return jSONObject.toString();
    }

}