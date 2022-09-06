package com.github.catvod.spider;

import android.content.Context;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
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
public class Qicui extends Spider {
    protected JSONObject g;
    protected Pattern l = Pattern.compile("/index.php/vod/type/id/(\\d+).html");
    protected Pattern J = Pattern.compile("/index.php/vod/detail/id/(\\d+).html");
    protected Pattern dV = Pattern.compile("/index.php/vod/play/id/(\\S+).html");
    protected Pattern rl = Pattern.compile("/index.php/vod/show/id/\\d+/page/(\\d+).html");
    protected Pattern cY = Pattern.compile("\"url\":\"(.*?)\"");

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int J(String str, String str2) {
        try {
            int i = this.g.optJSONObject(str).getInt("or");
            int i2 = this.g.optJSONObject(str2).getInt("or");
            if (i != i2 && i - i2 <= 0) {
                return -1;
            }
            return 1;
        } catch (JSONException e) {
            SpiderDebug.log(e);
            return 1;
        }
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        int i;
        int i2;
        try {
            TreeMap<String, String> treeMap = new TreeMap();
            int i3 = 1;
            if (StringUtil.isEmpty(str2) || Integer.parseInt(str2.trim()) <= 1) {
                i = 1;
            } else {
                i = Integer.parseInt(str2.trim());
                treeMap.put("page", i + "");
            }
            if (hashMap != null && hashMap.size() > 0) {
                treeMap.putAll(hashMap);
            }
            treeMap.put("id", str);
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : treeMap.entrySet()) {
                if (!"".equals(entry.getValue())) {
                    arrayList.add(((String) entry.getKey()) + "/" + ((String) entry.getValue()));
                }
            }
            String str3 = "http://www.blssv.com/index.php/vod/show/" + StringUtil.join("/", arrayList) + ".html";
            SpiderDebug.log(str3);
            String V = OkHttpUtil.string(str3, l("http://www.blssv.com"));
            Document g = Jsoup.parse(V);
            JSONObject jSONObject = new JSONObject();
            Elements o = g.select("div[id=page] > a");
            int i4 = 0;
            if (o.size() > 0) {
                int i5 = 0;
                while (true) {
                    if (i5 >= o.size()) {
                        break;
                    }
                    Element Xq = o.get(i5).selectFirst("a");
                    if (Xq != null && Xq.text().equals("尾页")) {
                        Matcher matcher = this.rl.matcher(Xq.attr("href"));
                        if (matcher.find()) {
                            i2 = Integer.parseInt(matcher.group(1).trim());
                        }
                    }
                    i5++;
                }
            }
            i2 = 1;
            JSONArray jSONArray = new JSONArray();
            if (!V.contains("没有找到您想要的结果哦")) {
                Elements o2 = g.select("div.module-items > a ");
                while (i4 < o2.size()) {
                    Element ik = o2.get(i4);
                    String dV = ik.attr("title");
                    String dV2 = ik.selectFirst("img.lazy").attr("data-original");
                    String H = ik.selectFirst("div.module-item-note").text();
                    Matcher matcher2 = this.J.matcher(ik.attr("href"));
                    if (matcher2.find()) {
                        String group = matcher2.group(i3);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("vod_id", group);
                        jSONObject2.put("vod_name", dV);
                        jSONObject2.put("vod_pic", dV2);
                        jSONObject2.put("vod_remarks", H);
                        jSONArray.put(jSONObject2);
                    }
                    i4++;
                    i3 = 1;
                }
            }
            jSONObject.put("page", i);
            jSONObject.put("pagecount", i2);
            jSONObject.put("limit", 48);
            jSONObject.put("total", i2 <= 1 ? jSONArray.length() : i2 * 48);
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String detailContent(List<String> list) {
        boolean z;
        String str;
        try {
            Document g = Jsoup.parse(OkHttpUtil.string("http://www.blssv.com/index.php/vod/detail/id/" + list.get(0) + ".html", l("http://www.blssv.com")));
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            String dV = g.selectFirst("div.module-item-pic > img").attr("data-original");
            String H = g.selectFirst("div.module-info-heading > h1").text();
            String H2 = g.selectFirst("div.module-info-introduction-content > p").text();
            jSONObject2.put("vod_id", list.get(0));
            jSONObject2.put("vod_name", H);
            jSONObject2.put("vod_pic", dV);
            jSONObject2.put("vod_content", H2);
            TreeMap treeMap = new TreeMap(new Comparator() { // from class: com.github.catvod.spider.merge.TX
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Qicui.this.J((String) obj, (String) obj2);
                }
            });
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
                    String next = keys.next();
                    if (this.g.optJSONObject(next).optString("sh").equals(H3)) {
                        H3 = next;
                        z = true;
                        break;
                    }
                }
                if (z) {
                    Elements o3 = o2.get(i).select("a");
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < o3.size(); i2++) {
                        Element ik = o3.get(i2);
                        Matcher matcher = this.dV.matcher(ik.attr("href"));
                        if (matcher.find()) {
                            String group = matcher.group(1);
                            String lN = ik.select("span").text();
                            arrayList.add(lN + "$" + group);
                        }
                    }
                    if (arrayList.size() > 0) {
                        str = StringUtil.join("#", arrayList);
                    } else {
                        str = "";
                    }
                    if (str.length() != 0) {
                        treeMap.put(H3, str);
                    }
                }
            }
            if (treeMap.size() > 0) {
                String join = StringUtil.join("$$$", treeMap.keySet());
                String join2 = StringUtil.join("$$$", treeMap.values());
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

    public void init(Context context) {
        Qicui.super.init(context);
        try {
            this.g = new JSONObject("{\"ddzy\":{\"sh\":\"蓝光自营\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"ltnb\":{\"sh\":\"奇粹LT-蓝光新\",\"or\":999,\"sn\":0,\"pu\":\"http://q.blssv.com/?url=\"},\"naifeimi\":{\"sh\":\"奈非迷专线\",\"or\":999,\"sn\":1,\"pu\":\"http://ltnb.ikuwoo.cn/?url=\"},\"1920i\":{\"sh\":\"蓝光备用线路i\",\"or\":999,\"sn\":1,\"pu\":\"https://bfq.ikuwoo.cn/m3u8.php?url=\"},\"1920l\":{\"sh\":\"蓝光备用线路l\",\"or\":999,\"sn\":1,\"pu\":\"https://bfq.ikuwoo.cn/m3u8.php?url=\"},\"dm1920\":{\"sh\":\"蓝光备用线路dm\",\"or\":999,\"sn\":1,\"pu\":\"https://bfq.ikuwoo.cn/m3u8.php?url=\"},\"renrenmi\":{\"sh\":\"奇粹RM-超清线路\",\"or\":999,\"sn\":0,\"pu\":\"http://q.blssv.com/?url=\"},\"qq\":{\"sh\":\"腾讯视频\",\"or\":999,\"sn\":0,\"pu\":\"https://mika.ovooa.com/api/player/?url=\"},\"qiyi\":{\"sh\":\"爱奇艺\",\"or\":999,\"sn\":0,\"pu\":\"https://mika.ovooa.com/api/player/?url=\"},\"youku\":{\"sh\":\"优酷\",\"or\":999,\"sn\":0,\"pu\":\"https://mika.ovooa.com/api/player/?url=\"},\"mgtv\":{\"sh\":\"芒果TV\",\"or\":999,\"sn\":0,\"pu\":\"http://bfqhd.blssv.com/?url=\"},\"bilibili\":{\"sh\":\"哔哩哔哩\",\"or\":999,\"sn\":1,\"pu\":\"https://mika.ovooa.com/api/player/?url=\"},\"kbm3u8\":{\"sh\":\"在线快播\",\"or\":999,\"sn\":1,\"pu\":\"http://bfq.blssv.com/?url=\"},\"ukm3u8\":{\"sh\":\"U酷点播\",\"or\":999,\"sn\":1,\"pu\":\"http://bfq.blssv.com/?url=\"},\"sgm3u8\":{\"sh\":\"速更播放器\",\"or\":999,\"sn\":1,\"pu\":\"https://cdn.zyc888.top/?url=\"},\"wjm3u8\":{\"sh\":\"无尽①\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"hnm3u8\":{\"sh\":\"红牛在线\",\"or\":999,\"sn\":1,\"pu\":\"https://cdn.zyc888.top/?url=\"},\"sohu\":{\"sh\":\"搜狐视频\",\"or\":999,\"sn\":1,\"pu\":\"http://xbfq.ikuwoo.cn/?url=\"},\"letv\":{\"sh\":\"乐视\",\"or\":999,\"sn\":1,\"pu\":\"http://xbfq.ikuwoo.cn/?url=\"},\"xigua\":{\"sh\":\"西瓜\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"wolong\":{\"sh\":\"wolong\",\"or\":999,\"sn\":1,\"pu\":\"http://bfqhd.blssv.com/?url=\"},\"m1905\":{\"sh\":\"1905电影网\",\"or\":999,\"sn\":1,\"pu\":\"http://lh.ikuwoo.cn/player/?url=\"},\"pptv\":{\"sh\":\"PPTV\",\"or\":999,\"sn\":1,\"pu\":\"http://q.blssv.com/?url=\"},\"videojs\":{\"sh\":\"videojs-H5播放器\",\"or\":999,\"sn\":1,\"pu\":\"http://106.52.174.22/jx/?url=\"},\"iframe\":{\"sh\":\"iframe外链数据\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"link\":{\"sh\":\"外链数据\",\"or\":999,\"sn\":0,\"pu\":\"http://103.41.65.238/languang/?url=\"},\"swf\":{\"sh\":\"Flash文件\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"flv\":{\"sh\":\"Flv文件\",\"or\":999,\"sn\":0,\"pu\":\"\"},\"mim3u8\":{\"sh\":\"mim3u8\",\"or\":999,\"sn\":1,\"pu\":\"http://lh.ikuwoo.cn/player/?url=\"},\"duoduozy\":{\"sh\":\"多多资源\",\"or\":999,\"sn\":1,\"pu\":\"https://mika.ovooa.com/api/player/?url=\"},\"xfyun\":{\"sh\":\"xfyun\",\"or\":999,\"sn\":0,\"pu\":\"\"}}");
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
    }

    protected HashMap<String, String> l(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("method", "GET");
        if (!StringUtil.isEmpty(str)) {
            hashMap.put("Referer", str);
        }
        hashMap.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36");
        hashMap.put("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8");
        return hashMap;
    }

    public String playerContent(String str, String str2, List<String> list) {
        try {
            Elements o = Jsoup.parse(OkHttpUtil.string("http://www.blssv.com/index.php/vod/play/id/" + str2 + ".html", l("http://www.blssv.com"))).select("script");
            final JSONObject jSONObject = new JSONObject();
            int i = 0;
            while (true) {
                if (i >= o.size()) {
                    break;
                }
                String trim = o.get(i).html().trim();
                if (trim.startsWith("var player_")) {
                    String substring = trim.substring(trim.indexOf(123), trim.lastIndexOf(125) + 1);
                    SpiderDebug.log("player = " + substring);
                    JSONObject jSONObject2 = new JSONObject(substring);
                    if (this.g.has(jSONObject2.optString("from"))) {
                        JSONObject jSONObject3 = this.g.optJSONObject(jSONObject2.optString("from"));
                        if (!StringUtil.isEmpty(jSONObject3.optString("pu"))) {
                            String string = jSONObject3.optString("pu");
                            String string2 = jSONObject2.optString("url");
                            String string3 = jSONObject2.optString("tm");
                            String string4 = jSONObject2.optString("key");
                            HashMap hashMap = new HashMap();
                            hashMap.put("User-Agent", " Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36");
                            jSONObject.put("header", new JSONObject(hashMap).toString());
                            jSONObject.put("parse", "0");
                            jSONObject.put("palyUrl", "");
                            if (Arrays.asList("").contains(jSONObject2.optString("from"))) {
                                HashMap hashMap2 = new HashMap();
                                hashMap2.put("url", string2);
                                hashMap2.put("time", string3);
                                SpiderDebug.log("tm.len=" + string3.length());
                                SpiderDebug.log("key.len=" + string4.length());
                                hashMap2.put("key", string4);
                                HashMap hashMap3 = new HashMap();
                                hashMap3.put("X-Requested-With", "XMLHttpRequest");
                                hashMap3.put("referer", "http://www.blssv.com/");
                                hashMap3.put("Cache-Control", "no-cache");
                                hashMap3.put("Accept", "application/json, text/javascript, */*; q=0.01");
                                hashMap3.put("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
                                hashMap3.put("Pragma", "no-cache");
                                hashMap3.put("Host", "q.blssv.com");
                                hashMap3.put("Origin", "http://q.blssv.com");
                                hashMap3.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36");
                                OkHttpUtil.get(OkHttpUtil.noRedirectClient(), "http://q.blssv.com/API.php", hashMap2, hashMap3, new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.Qicui.1
                                    @Override // com.github.catvod.spider.merge.a6
                                    protected void onFailure(Call call, Exception exc) {
                                    }

                                    /* JADX INFO: Access modifiers changed from: protected */
                                    public void onResponse(String str3) {
                                        try {
                                            jSONObject.put("url", new JSONObject(str3).optString("url"));
                                        } catch (JSONException e) {
                                            SpiderDebug.log(e);
                                        }
                                    }
                                });
                            } else {
                                Matcher matcher = this.cY.matcher(OkHttpUtil.string(string + string2, l("http://www.blssv.com")));
                                if (matcher.find()) {
                                    jSONObject.put("url", matcher.group(1));
                                }
                            }
                        }
                    }
                } else {
                    i++;
                }
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
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string("http://www.blssv.com/index.php/ajax/suggest?mid=1&wd=" + URLEncoder.encode(str) + "&limit=10&timestamp=" + currentTimeMillis, l("http://www.blssv.com")));
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