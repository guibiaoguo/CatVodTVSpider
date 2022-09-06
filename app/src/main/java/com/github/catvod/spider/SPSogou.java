package com.github.catvod.spider;

import android.content.Context;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class SPSogou extends Spider {
    private final String A = "http:";
    protected JSONObject ed = null;
    private HashMap<String, String> uK = new HashMap<>();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c0, code lost:
        if (r7.equals("dianying") == false) goto L_0x00a2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private java.lang.String jT(java.lang.String r7, java.lang.String r8, java.util.HashMap<java.lang.String, java.lang.String> r9) {
        /*
        // Method dump skipped, instructions count: 290
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.catvod.spider.SPSogou.jT(java.lang.String, java.lang.String, java.util.HashMap):java.lang.String");
    }

    private HashMap<String, String> jf(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36");
        return hashMap;
    }

    private String q(String str)  {
        return "http:" + this.ed.optJSONObject("urls").optString("main") + "player/" + str + "/";
    }

    private String x(String str) {
        SpiderDebug.log(str);
        return OkHttpUtil.string(str, jf(str));
    }

    protected String L(JSONObject jSONObject, String str) {
        ArrayList arrayList = new ArrayList();
        JSONArray jSONArray = jSONObject.optJSONArray(str);
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.optString(i));
        }
        return StringUtil.join(",", arrayList);
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        Elements mPVar;
        String str3;
        JSONObject jSONObject = new JSONObject();
        try {
            String jT = jT(str, str2, hashMap);
            String x = x(jT);
            if (x.startsWith("{")) {
                mPVar = Jsoup.parse(new JSONObject(x).optString("data")).select("li");
            } else {
                mPVar = Jsoup.parse(x).select("ul#container > li");
            }
            JSONArray jSONArray = new JSONArray();
            int i = 0;
            while (true) {
                str3 = "";
                if (i >= mPVar.size()) {
                    break;
                }
                Element ik = (Element) mPVar.get(i);
                String replaceAll = ik.selectFirst("a").attr("href").replaceAll("/player/(\\S+)/", "$1");
                String H = ik.selectFirst("p.name").text();
                String J = Misc.fixUrl(jT, ik.selectFirst("img").attr("src"));
                try {
                    str3 = ik.selectFirst("span.img_info").text();
                } catch (Exception unused) {
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("vod_id", replaceAll);
                jSONObject2.put("vod_name", H);
                jSONObject2.put("vod_pic", J);
                jSONObject2.put("vod_remarks", str3);
                jSONArray.put(jSONObject2);
                i++;
            }
            if (jSONArray.length() == 0) {
                return str3;
            }
            jSONObject.put("page", str2);
            jSONObject.put("pagecount", Integer.MAX_VALUE);
            jSONObject.put("limit", 90);
            jSONObject.put("total", Integer.MAX_VALUE);
            jSONObject.put("list", jSONArray);
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return jSONObject.toString();
    }

    public String detailContent(String str) {
        String str2;
        String str3;
        String str4;
        int i;
        JSONObject jSONObject;
        HashMap hashMap;
        JSONArray jSONArray;
        String str5;
        ArrayList arrayList;
        String q = q(str);
        String x = x(q);
        try {
            int indexOf = x.indexOf("var detailData={") + 16;
            JSONObject jSONObject2 = new JSONObject(x.substring(indexOf - 1, x.indexOf("};", indexOf) + 1));
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("vod_id", str);
            jSONObject3.put("vod_name", jSONObject2.optString("title"));
            jSONObject3.put("type_name", L(jSONObject2, "cate"));
            jSONObject3.put("vod_year", jSONObject2.optString("mtime"));
            jSONObject3.put("vod_area", jSONObject2.optString("area"));
            jSONObject3.put("vod_remarks", "");
            jSONObject3.put("vod_actor", jSONObject2.optString("star_match"));
            jSONObject3.put("vod_director", jSONObject2.optString("director_match"));
            jSONObject3.put("vod_content", jSONObject2.optString("summary"));
            HashMap hashMap2 = new HashMap();
            Document g = Jsoup.parse(x);
            jSONObject3.put("vod_pic", Misc.fixUrl(q, g.selectFirst("div.direct img").attr("src")));
            Elements o = g.select("ul.source_list>li>a");
            int i2 = 0;
            while (true) {
                str2 = "href";
                if (i2 >= o.size()) {
                    break;
                }
                Element ik = o.get(i2);
                String dV = ik.selectFirst("i").attr("sid");
                this.uK.put(dV, ik.text());
                hashMap2.put(dV, ik.attr(str2));
                i2++;
            }
            String str6 = "http:" + this.ed.optJSONObject("urls").optString("main");
            String string = jSONObject2.optString("vtype");
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            JSONArray jSONArray2 = jSONObject2.optJSONArray("playids");
            int i3 = 0;
            while (i3 < jSONArray2.length()) {
                JSONObject jSONObject4 = jSONArray2.optJSONObject(i3);
                String string2 = jSONObject4.optString("siteid");
                String str7 = this.uK.get(string2);
                String string3 = jSONObject4.optString("vid");
                if (string.equals("1")) {
                    arrayList2.add(str7);
                    arrayList3.add("立即播放$" + ((String) hashMap2.get(string2)));
                    str3 = str6;
                    jSONObject = jSONObject3;
                    jSONArray = jSONArray2;
                    hashMap = hashMap2;
                    str5 = string;
                    str4 = str2;
                    arrayList = arrayList3;
                    i = i3;
                } else {
                    jSONArray = jSONArray2;
                    hashMap = hashMap2;
                    jSONObject = jSONObject3;
                    i = i3;
                    str4 = str2;
                    if (string.equals("2")) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(str6);
                        sb.append("tvEpList?vid=");
                        sb.append(string3);
                        sb.append("&rand=");
                        arrayList = arrayList3;
                        sb.append(Math.random());
                        JSONObject jSONObject5 = new JSONObject(x(sb.toString())).optJSONObject("data");
                        String string4 = jSONObject5.optString("playLink");
                        Iterator<String> keys = jSONObject5.optJSONObject("epInfo").keys();
                        ArrayList arrayList4 = new ArrayList();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            arrayList4.add(next + "$" + string4.replaceAll("(\\S+&index=)(\\d+)(\\S+)", "$1" + next + "$3"));
                        }
                        arrayList2.add(str7);
                        arrayList.add(StringUtil.join("#", arrayList4));
                        str5 = string;
                        str3 = str6;
                    } else {
                        arrayList = arrayList3;
                        str5 = string;
                        if (str5.equals("4")) {
                            StringBuilder sb2 = new StringBuilder();
                            String str8 = str6;
                            sb2.append(str8);
                            sb2.append("varietyEpList?vid=");
                            sb2.append(string3);
                            sb2.append("&rand=");
                            sb2.append(Math.random());
                            JSONArray jSONArray3 = new JSONObject(x(sb2.toString())).optJSONObject("data").optJSONObject("videoInfo").optJSONArray("epList");
                            ArrayList arrayList5 = new ArrayList();
                            int i4 = 0;
                            while (i4 < jSONArray3.length() && i4 < 5) {
                                Iterator<Element> it = Jsoup.parse(new JSONObject(x(str8 + "varietyCurEpList?vid=" + string3 + "&time=" + jSONArray3.optJSONObject(i4).optString("raw") + "&rand=" + Math.random())).optString("data")).select("div.schedule_list>div.info>h2>a").iterator();
                                while (it.hasNext()) {
                                    Element next2 = it.next();
                                    arrayList5.add(next2.text() + "$" + next2.attr(str4));
                                }
                                i4++;
                                jSONArray3 = jSONArray3;
                                string3 = string3;
                                str8 = str8;
                            }
                            str3 = str8;
                            arrayList2.add(str7);
                            arrayList.add(StringUtil.join("#", arrayList5));
                            str4 = str4;
                        } else {
                            str3 = str6;
                            if (str5.equals("3")) {
                                StringBuilder sb3 = new StringBuilder();
                                str4 = str4;
                                sb3.append(str3);
                                sb3.append("cartoonEpList?vid=");
                                sb3.append(string3);
                                sb3.append("&rand=");
                                sb3.append(Math.random());
                                JSONObject jSONObject6 = new JSONObject(x(sb3.toString())).optJSONObject("data");
                                String string5 = jSONObject6.optString("playLink");
                                Iterator<String> keys2 = jSONObject6.optJSONObject("epInfo").keys();
                                ArrayList arrayList6 = new ArrayList();
                                while (keys2.hasNext()) {
                                    String next3 = keys2.next();
                                    arrayList6.add(next3 + "$" + string5.replaceAll("(\\S+&index=)(\\d+)(\\S+)", "$1" + next3 + "$3"));
                                }
                                arrayList2.add(str7);
                                arrayList.add(StringUtil.join("#", arrayList6));
                            } else {
                                str4 = str4;
                            }
                        }
                    }
                }
                i3 = i + 1;
                arrayList3 = arrayList;
                string = str5;
                jSONArray2 = jSONArray;
                hashMap2 = hashMap;
                jSONObject3 = jSONObject;
                str2 = str4;
                str6 = str3;
            }
            for (int size = arrayList2.size() - 1; size >= 0; size--) {
                if (((String) arrayList2.get(size)).isEmpty()) {
                    arrayList2.remove(size);
                }
            }
            for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
                if (((String) arrayList3.get(size2)).isEmpty()) {
                    arrayList3.remove(size2);
                }
            }
            for (int size3 = arrayList3.size() - 1; size3 >= 0; size3--) {
                if (size3 >= arrayList2.size()) {
                    arrayList3.remove(size3);
                }
            }
            String join = StringUtil.join("$$$", arrayList2);
            String join2 = StringUtil.join("$$$", arrayList3);
            jSONObject3.put("vod_play_from", join);
            jSONObject3.put("vod_play_url", join2);
            JSONObject jSONObject7 = new JSONObject();
            JSONArray jSONArray4 = new JSONArray();
            jSONArray4.put(jSONObject3);
            jSONObject7.put("list", jSONArray4);
            return jSONObject7.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    public String homeContent(boolean z) {
        String H = null;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = this.ed.optJSONArray("classes");
            jSONObject.put("class", jSONArray);
            if (z) {
                jSONObject.put("filters", this.ed.optJSONObject("filter"));
            }
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    String string = jSONArray.optJSONObject(i).optString("type_id");
                    String str = "http:" + this.ed.optJSONObject("urls").optString(string) + string + "/";
                    Elements o = Jsoup.parse(x(str)).select("div.list li");
                    int i2 = 0;
                    while (i2 < o.size() && i2 < 8) {
                        Element ik = o.get(i2);
                        String replaceAll = ik.selectFirst("a").attr("href").replaceAll("/player/(\\S+)/", "$1");
                        String H2 = ik.selectFirst("p.name").text();
                        String J = Misc.fixUrl(str, ik.selectFirst("img").attr("src"));
                        try {
                            H = ik.selectFirst("span.img_info").text();
                        } catch (Exception unused) {
                        }
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("vod_id", replaceAll);
                        jSONObject2.put("vod_name", H2);
                        jSONObject2.put("vod_pic", J);
                        jSONObject2.put("vod_remarks", H);
                        jSONArray2.put(jSONObject2);
                        i2++;
                    }
                } catch (Exception e) {
                    SpiderDebug.log(e);
                }
            }
            jSONObject.put("list", jSONArray2);
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return jSONObject.toString();
    }

    public void init(Context context) {
        SPSogou.super.init(context);
        try {
            this.ed = new JSONObject("{\"urls\":{\"dianying\":\"//m.kan.sogou.com/\",\"dianshiju\":\"//m.kan.sogou.com/\",\"zongyi\":\"//m.kan.sogou.com/\",\"dongman\":\"//m.kan.sogou.com/\",\"main\":\"//m.kan.sogou.com/\",\"search\":\"//m.kan.sogou.com/search?keyword={wd}\"},\"classes\":[{\"type_name\":\"电影\",\"type_id\":\"dianying\"},{\"type_name\":\"电视剧\",\"type_id\":\"dianshiju\"},{\"type_name\":\"综艺\",\"type_id\":\"zongyi\"},{\"type_name\":\"动漫\",\"type_id\":\"dongman\"}],\"filter\":{\"dianying\":[{\"key\":\"type\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"爱情\",\"v\":\"aiqing\"},{\"n\":\"动画\",\"v\":\"donghua\"},{\"n\":\"动作\",\"v\":\"dongzuo\"},{\"n\":\"纪录片\",\"v\":\"jilupian\"},{\"n\":\"惊悚\",\"v\":\"jingsong\"},{\"n\":\"警匪\",\"v\":\"jingfei\"},{\"n\":\"剧情\",\"v\":\"juqing\"},{\"n\":\"科幻\",\"v\":\"kehuan\"},{\"n\":\"恐怖\",\"v\":\"kongbu\"},{\"n\":\"伦理\",\"v\":\"lunli\"},{\"n\":\"奇幻\",\"v\":\"qihuan\"},{\"n\":\"青春\",\"v\":\"qingchun\"},{\"n\":\"微电影\",\"v\":\"weidianying\"},{\"n\":\"文艺\",\"v\":\"wenyi\"},{\"n\":\"武侠\",\"v\":\"wuxia\"},{\"n\":\"喜剧\",\"v\":\"xiju\"},{\"n\":\"悬疑\",\"v\":\"xuanyi\"},{\"n\":\"音乐\",\"v\":\"yinyue\"},{\"n\":\"灾难\",\"v\":\"zainan\"},{\"n\":\"战争\",\"v\":\"zhanzheng\"},{\"n\":\"其他\",\"v\":\"qita\"}]},{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"韩国\",\"v\":\"hanguo\"},{\"n\":\"内地\",\"v\":\"neidi\"},{\"n\":\"香港\",\"v\":\"xianggang\"},{\"n\":\"台湾\",\"v\":\"taiwan\"},{\"n\":\"美国\",\"v\":\"meiguo\"},{\"n\":\"欧洲\",\"v\":\"ouzhou\"},{\"n\":\"法国\",\"v\":\"faguo\"},{\"n\":\"日本\",\"v\":\"riben\"},{\"n\":\"泰国\",\"v\":\"taiguo\"},{\"n\":\"其他\",\"v\":\"qita\"}]},{\"key\":\"year\",\"name\":\"年份\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"更早\",\"v\":\"1\"}]}],\"dianshiju\":[{\"key\":\"type\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"青春\",\"v\":\"qingchun\"},{\"n\":\"家庭\",\"v\":\"jiating\"},{\"n\":\"军旅\",\"v\":\"junlv\"},{\"n\":\"言情\",\"v\":\"yanqing\"},{\"n\":\"古装\",\"v\":\"guzhuang\"},{\"n\":\"武侠\",\"v\":\"wuxia\"},{\"n\":\"偶像\",\"v\":\"ouxiang\"},{\"n\":\"谍战\",\"v\":\"diezhan\"},{\"n\":\"宫廷\",\"v\":\"gongting\"},{\"n\":\"喜剧\",\"v\":\"xiju\"},{\"n\":\"悬疑\",\"v\":\"xunayi\"},{\"n\":\"历史\",\"v\":\"lishi\"},{\"n\":\"年代\",\"v\":\"niandai\"},{\"n\":\"都市\",\"v\":\"dushi\"},{\"n\":\"伦理\",\"v\":\"lunli\"},{\"n\":\"警匪\",\"v\":\"jingfei\"},{\"n\":\"科幻\",\"v\":\"kehuan\"},{\"n\":\"动作\",\"v\":\"dongzuo\"},{\"n\":\"农村\",\"v\":\"nongcun\"},{\"n\":\"神话\",\"v\":\"shenhua\"},{\"n\":\"战争\",\"v\":\"zhanzheng\"},{\"n\":\"情景\",\"v\":\"qingjing\"},{\"n\":\"纪录片\",\"v\":\"jilupian\"},{\"n\":\"其他\",\"v\":\"qita\"}]},{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"内地\",\"v\":\"neidi\"},{\"n\":\"香港\",\"v\":\"xianggang\"},{\"n\":\"台湾\",\"v\":\"taiwan\"},{\"n\":\"韩国\",\"v\":\"hanguo\"},{\"n\":\"日本\",\"v\":\"riben\"},{\"n\":\"美国\",\"v\":\"meiguo\"},{\"n\":\"新加坡\",\"v\":\"xinjiapo\"},{\"n\":\"泰国\",\"v\":\"taiguo\"},{\"n\":\"英国\",\"v\":\"yingguo\"},{\"n\":\"其他\",\"v\":\"qita\"}]},{\"key\":\"year\",\"name\":\"年份\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"2022\",\"v\":\"2022\"},{\"n\":\"2021\",\"v\":\"2021\"},{\"n\":\"2020\",\"v\":\"2020\"},{\"n\":\"2019\",\"v\":\"2019\"},{\"n\":\"2018\",\"v\":\"2018\"},{\"n\":\"2017\",\"v\":\"2017\"},{\"n\":\"2016\",\"v\":\"2016\"},{\"n\":\"2015\",\"v\":\"2015\"},{\"n\":\"2014\",\"v\":\"2014\"},{\"n\":\"更早\",\"v\":\"1\"}]}],\"zongyi\":[{\"key\":\"type\",\"name\":\"类型\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"qinggan\",\"n\":\"情感\"},{\"v\":\"zhenrenxiu\",\"n\":\"真人秀\"},{\"v\":\"fangtan\",\"n\":\"访谈\"},{\"v\":\"xuanxiu\",\"n\":\"选秀\"},{\"v\":\"gaoxiao\",\"n\":\"搞笑\"},{\"v\":\"tuokouxiu\",\"n\":\"脱口秀\"},{\"v\":\"jiaoyou\",\"n\":\"交友\"},{\"v\":\"meishi\",\"n\":\"美食\"},{\"v\":\"yinyue\",\"n\":\"音乐\"},{\"v\":\"quyi\",\"n\":\"曲艺\"},{\"v\":\"tiyu\",\"n\":\"体育\"},{\"v\":\"qiuzhi\",\"n\":\"求职\"},{\"v\":\"jushi\",\"n\":\"军事\"},{\"v\":\"lvyou\",\"n\":\"旅游\"},{\"v\":\"caijing\",\"n\":\"财经\"},{\"v\":\"jiaoyu\",\"n\":\"教育\"},{\"v\":\"shenghuo\",\"n\":\"生活\"},{\"v\":\"yangsheng\",\"n\":\"养生\"},{\"v\":\"shishang\",\"n\":\"时尚\"},{\"v\":\"qita\",\"n\":\"其他\"}]},{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"v\":\"\",\"n\":\"全部\"},{\"v\":\"dalu\",\"n\":\"大陆\"},{\"v\":\"gangtai\",\"n\":\"港台\"},{\"v\":\"hanguo\",\"n\":\"韩国\"},{\"v\":\"oumei\",\"n\":\"欧美\"},{\"v\":\"riben\",\"n\":\"日本\"},{\"v\":\"qita\",\"n\":\"其他\"}]}],\"dongman\":[{\"key\":\"type\",\"name\":\"类型\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"动作\",\"v\":\"dongzuo\"},{\"n\":\"亲子\",\"v\":\"qinzi\"},{\"n\":\"热血\",\"v\":\"rexue\"},{\"n\":\"冒险\",\"v\":\"maoxian\"},{\"n\":\"同人\",\"v\":\"tongren\"},{\"n\":\"原创\",\"v\":\"yuanchuang\"},{\"n\":\"古代\",\"v\":\"gudai\"},{\"n\":\"未来\",\"v\":\"weilai\"},{\"n\":\"竞技\",\"v\":\"jingji\"},{\"n\":\"体育\",\"v\":\"tiyu\"},{\"n\":\"搞笑\",\"v\":\"gaoxiao\"},{\"n\":\"言情\",\"v\":\"yanqing\"},{\"n\":\"校园\",\"v\":\"xiaoyuan\"},{\"n\":\"都市\",\"v\":\"dushi\"},{\"n\":\"魔幻\",\"v\":\"mohuan\"},{\"n\":\"科幻\",\"v\":\"kehuan\"},{\"n\":\"励志\",\"v\":\"lizhi\"},{\"n\":\"剧情\",\"v\":\"juqing\"},{\"n\":\"悬疑\",\"v\":\"xuanyi\"},{\"n\":\"宠物\",\"v\":\"chongwu\"},{\"n\":\"LOLI\",\"v\":\"loli\"},{\"n\":\"益智\",\"v\":\"yizhi\"},{\"n\":\"童话\",\"v\":\"tonghua\"},{\"n\":\"真人\",\"v\":\"zhenren\"},{\"n\":\"神话\",\"v\":\"shenhua\"},{\"n\":\"其他\",\"v\":\"qita\"}]},{\"key\":\"area\",\"name\":\"地区\",\"value\":[{\"n\":\"全部\",\"v\":\"\"},{\"n\":\"日本\",\"v\":\"riben\"},{\"n\":\"美国\",\"v\":\"meiguo\"},{\"n\":\"大陆\",\"v\":\"dalu\"},{\"n\":\"台湾\",\"v\":\"taiwan\"},{\"n\":\"英国\",\"v\":\"yingguo\"},{\"n\":\"韩国\",\"v\":\"hanguo\"},{\"n\":\"其他\",\"v\":\"qita\"}]}]}}");
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public String playerContent(String str, String str2, List<String> list) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (str2.startsWith("/epjump")) {
                String str3 = "http:" + this.ed.optJSONObject("urls").optString("main") + str2.substring(1);
                TreeMap treeMap = new TreeMap();
                OkHttpUtil.stringNoRedirect(str3, jf(str3), treeMap);
                str2 = OkHttpUtil.getRedirectLocation(treeMap);
            }
            jSONObject.put("parse", 1);
            jSONObject.put("playUrl", "");
            jSONObject.put("jx", "1");
            jSONObject.put("url", str2);
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return jSONObject.toString();
    }

    public String searchContent(String str, boolean z) {
        String str2;
        JSONObject jSONObject = new JSONObject();
        try {
            String str3 = "http:" + this.ed.optJSONObject("urls").optString("search").replace("{wd}", URLEncoder.encode(str));
            String x = x(str3);
            JSONArray jSONArray = new JSONArray();
            Elements o = Jsoup.parse(x).select("div#container>div");
            int i = 0;
            while (i < o.size() && i < 8) {
                Element ik = o.get(i);
                String replaceAll = ik.selectFirst("a").attr("href").replaceAll("/player/(\\S+)/", "$1");
                String trim = ik.selectFirst("div.info").attr("title").trim();
                if (!trim.isEmpty() && trim.contains(str)) {
                    String J = Misc.fixUrl(str3, ik.selectFirst("img").attr("src"));
                    try {
                        str2 = ik.selectFirst("span.img_info").text();
                    } catch (Exception unused) {
                        str2 = "";
                    }
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("vod_id", replaceAll);
                    jSONObject2.put("vod_name", trim);
                    jSONObject2.put("vod_pic", J);
                    jSONObject2.put("vod_remarks", str2);
                    jSONArray.put(jSONObject2);
                }
                i++;
            }
            jSONObject.put("list", jSONArray);
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return jSONObject.toString();
    }
}