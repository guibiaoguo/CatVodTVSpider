package com.github.catvod.spider;

import com.github.catvod.utils.Base64;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.io.ByteArrayInputStream;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.Call;
import okhttp3.Response;
import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class CZSPP extends Spider {
    private static final Pattern g = Pattern.compile("\"([^\"]+)\";var [\\d\\w]+=function dncry.*md5.enc.Utf8.parse\\(\"([\\d\\w]+)\".*md5.enc.Utf8.parse\\(([\\d]+)\\)");
    private static final Pattern l = Pattern.compile("video: \\{url: \"([^\"]+)\"");
    private static final Pattern J = Pattern.compile("subtitle: \\{url:\"([^\"]+\\.vtt)\"");
    private static final Pattern dV = Pattern.compile("src: '([^']+\\.css)',");
    private static final Pattern rl = Pattern.compile("/movie/(\\d+).html");
    private static final Pattern cY = Pattern.compile("/page/(\\d+)");
    private static final Pattern HL = Pattern.compile("/v_play/(.*)\\.html");
    private static final Pattern lN = Pattern.compile("([\\d:.]+) --> ([\\d:.]+)");
    private static final Pattern q3 = Pattern.compile("var vkey = ['\"]([^'\"]+)['\"]");
    private static final Pattern zJ = Pattern.compile("var fvkey = ['\"]([^'\"]+)['\"]");
    private static final Pattern f = Pattern.compile("var ua = ['\"]([^'\"]+)['\"]");
    private static final Pattern V = Pattern.compile("var cip = ['\"]([^'\"]+)['\"]");
    private static final Pattern NR = Pattern.compile("var time = ['\"]([^'\"]+)['\"]");
    private static final Pattern b = Pattern.compile("var url = ['\"]([^'\"]+)['\"]");

    private String g(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & 255);
                while (hexString.length() < 2) {
                    hexString = "0" + hexString;
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static Object[] loadVtt(String str) {
        try {
            String V2 = OkHttpUtil.string(str, null);
            ArrayList arrayList = new ArrayList();
            String[] split = V2.split("\n");
            for (String str2 : split) {
                Matcher matcher = lN.matcher(str2);
                if (matcher.find()) {
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    if (group.split(":").length == 2) {
                        group = "00:" + group;
                    }
                    if (group2.split(":").length == 2) {
                        group2 = "00:" + group2;
                    }
                    str2 = group + " --> " + group2;
                }
                arrayList.add(str2);
            }
            return new Object[]{200, "application/octet-stream", new ByteArrayInputStream(StringUtil.join("\n", arrayList).getBytes())};
        } catch (Exception e) {
            e.printStackTrace();
            SpiderDebug.log(e);
            return null;
        }
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        try {
            JSONObject jSONObject = new JSONObject();
            Document g2 = Jsoup.parse(OkHttpUtil.string("https://czspp.com/" + str + "/page/" + str2, l()));
            int parseInt = Integer.parseInt(str2);
            int parseInt2 = Integer.parseInt(str2);
            Matcher matcher = cY.matcher(g2.select("div.pagenavi_txt > a.extend").first().attr("href"));
            if (matcher.find()) {
                parseInt2 = Integer.parseInt(matcher.group(1));
            }
            Elements o = g2.select("div.mi_ne_kd > ul > li");
            JSONArray jSONArray = new JSONArray();
            for (Element next : o) {
                Matcher matcher2 = rl.matcher(next.selectFirst("a").attr("href"));
                if (matcher2.find()) {
                    String group = matcher2.group(1);
                    String trim = next.selectFirst("img").attr("alt").trim();
                    String trim2 = next.selectFirst("img").attr("data-original").trim();
                    String trim3 = next.selectFirst("div.hdinfo > span").toString().trim();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("vod_id", group);
                    jSONObject2.put("vod_name", trim);
                    jSONObject2.put("vod_pic", trim2);
                    jSONObject2.put("vod_remarks", trim3);
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("list", jSONArray);
            jSONObject.put("page", parseInt);
            jSONObject.put("pagecount", parseInt2);
            jSONObject.put("limit", 24);
            jSONObject.put("total", parseInt2 <= 1 ? jSONArray.length() : parseInt2 * 24);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String detailContent(List<String> list) {
        String str;
        Exception e;
        String str2 = "";
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            Document g2 = Jsoup.parse(OkHttpUtil.string("https://czspp.com/movie/" + list.get(0) + ".html", l()));
            String trim = g2.selectFirst("div.moviedteail_tt > h1").toString().trim();
            String dV2 = g2.selectFirst("div.dyimg > img").attr("src");
            Iterator<Element> it = g2.select("ul.moviedteail_list > li").iterator();
            String str3 = str2;
            String str4 = str3;
            String str5 = str4;
            String str6 = str5;
            String str7 = str6;
            String str8 = str7;
            while (it.hasNext()) {
                String trim2 = it.next().toString().trim();
                str = str2;
                if (trim2.length() >= 4) {
                    try {
                        String substring = trim2.substring(0, 2);
                        String substring2 = trim2.substring(3);
                        switch (substring) {
                            case "类型":
                                str3 = substring2;
                                break;
                            case "地区":
                                str5 = substring2;
                                break;
                            case "年份":
                                str4 = substring2;
                                break;
                            case "导演":
                                str8 = substring2;
                                break;
                            case "主演":
                                str7 = substring2;
                                break;
                            case "豆瓣":
                                str6 = substring2;
                                break;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        SpiderDebug.log(e);
                        return str;
                    }
                }
                str2 = str;
            }
            jSONObject2.put("vod_id", list.get(0));
            jSONObject2.put("vod_name", trim);
            jSONObject2.put("vod_pic", dV2);
            jSONObject2.put("type_name", str3);
            jSONObject2.put("vod_year", str4);
            jSONObject2.put("vod_area", str5);
            jSONObject2.put("vod_remarks", str6);
            jSONObject2.put("vod_actor", str7);
            jSONObject2.put("vod_director", str8);
            jSONObject2.put("vod_content", g2.selectFirst("div.yp_context").toString().trim());
            jSONObject2.put("vod_play_from", "厂长资源");
            ArrayList arrayList = new ArrayList();
            for (Element next : g2.select("div.paly_list_btn > a")) {
                Matcher matcher = HL.matcher(next.attr("href"));
                if (matcher.find()) {
                    arrayList.add(next + "$" + matcher.group(1));
                }
            }
            jSONObject2.put("vod_play_url", StringUtil.join("#", arrayList));
            jSONArray.put(jSONObject2);
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (Exception e3) {
        }
        return "";
    }

    public String homeContent(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            Document g2 = Jsoup.parse(OkHttpUtil.string("https://czspp.com", l()));
            Elements o = g2.select(".navlist > li > a");
            JSONArray jSONArray = new JSONArray();
            for (Element next : o) {
                String dV2 = next.attr("href");
                if (dV2.length() > 1) {
                    String substring = dV2.substring(1);
                    String trim = next.toString().trim();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("type_id", substring);
                    jSONObject2.put("type_name", trim);
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("class", jSONArray);
            Elements o2 = g2.select("div.mi_ne_kd > ul > li");
            JSONArray jSONArray2 = new JSONArray();
            for (Element next2 : o2) {
                Matcher matcher = rl.matcher(next2.selectFirst("a").attr("href"));
                if (matcher.find()) {
                    String group = matcher.group(1);
                    String trim2 = next2.selectFirst("img").attr("alt").trim();
                    String trim3 = next2.selectFirst("img").attr("data-original").trim();
                    String trim4 = next2.selectFirst("div.hdinfo > span").toString().trim();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("vod_id", group);
                    jSONObject3.put("vod_name", trim2);
                    jSONObject3.put("vod_pic", trim3);
                    jSONObject3.put("vod_remarks", trim4);
                    jSONArray2.put(jSONObject3);
                }
            }
            jSONObject.put("list", jSONArray2);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    protected HashMap<String, String> l() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, lElemente Gecko) Chrome/100.0.4896.75 Safari/537.36");
        return hashMap;
    }

    public String playerContent(String str, String str2, List<String> list) {
        String str3;
        String str4;
        Element Xq;
        try {
            String V2 = OkHttpUtil.string("https://czspp.com/v_play/" + str2 + ".html", l());
            Document g2 = Jsoup.parse(V2);
            Matcher matcher = g.matcher(V2);
            if (matcher.find()) {
                String group = matcher.group(1);
                byte[] bytes = matcher.group(2).getBytes();
                byte[] bytes2 = matcher.group(3).getBytes();
                Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
                instance.init(2, new SecretKeySpec(bytes, "AES"), new IvParameterSpec(bytes2));
                String str5 = new String(instance.doFinal(Base64.decode(group, 0)));
                Matcher matcher2 = l.matcher(str5);
                if (matcher2.find()) {
                    str3 = matcher2.group(1);
                } else {
                    str3 = "";
                }
                Matcher matcher3 = J.matcher(str5);
                str4 = matcher3.find() ? matcher3.group(1) : "";
            } else {
                str4 = "";
                str3 = str4;
            }
            if (StringUtil.isEmpty(str3) && (Xq = g2.selectFirst("iframe.viframe")) != null) {
                String dV2 = Xq.attr("src");
                if (dV2.contains("jx.xmflv.com")) {
                    String V3 = OkHttpUtil.string(dV2, l());
                    Pattern pattern = NR;
                    Matcher matcher4 = pattern.matcher(V3);
                    if (!matcher4.find()) {
                        return "";
                    }
                    String group2 = matcher4.group(1);
                    Matcher matcher5 = b.matcher(V3);
                    if (!matcher5.find()) {
                        return "";
                    }
                    String group3 = matcher5.group(1);
                    String V4 = OkHttpUtil.string("https://jx.xmflv.com/player.php?time=" + group2 + "&url=" + group3, l());
                    Matcher matcher6 = q3.matcher(V4);
                    if (!matcher6.find()) {
                        return "";
                    }
                    String group4 = matcher6.group(1);
                    Matcher matcher7 = zJ.matcher(V4);
                    if (!matcher7.find()) {
                        return "";
                    }
                    String group5 = matcher7.group(1);
                    Matcher matcher8 = f.matcher(V4);
                    if (!matcher8.find()) {
                        return "";
                    }
                    String group6 = matcher8.group(1);
                    Matcher matcher9 = V.matcher(V4);
                    if (!matcher9.find()) {
                        return "";
                    }
                    String group7 = matcher9.group(1);
                    Matcher matcher10 = pattern.matcher(V4);
                    if (!matcher10.find()) {
                        return "";
                    }
                    String group8 = matcher10.group(1);
                    byte[] bytes3 = g(group5).getBytes();
                    byte[] bytes4 = "UVE1NTY4MDY2NQ==".getBytes();
                    Cipher instance2 = Cipher.getInstance("AES/CBC/NoPadding");
                    instance2.init(1, new SecretKeySpec(bytes3, "AES"), new IvParameterSpec(bytes4));
                    String encodeToString = Base64.encodeToString(instance2.doFinal(group5.getBytes()), 0);
                    OKCallBack.OKCallBackDefault r6 = new OKCallBack.OKCallBackDefault() {
                        @Override
                        protected void onFailure(Call call, Exception e) {

                        }

                        @Override
                        protected void onResponse(Response response) {

                        }
                    };
                    HashMap hashMap = new HashMap();
                    hashMap.put("url", group3);
                    hashMap.put("time", group8);
                    hashMap.put("ua", group6);
                    hashMap.put("cip", group7);
                    hashMap.put("vkey", group4);
                    hashMap.put("fvkey", encodeToString);
                    OkHttpUtil.get(OkHttpUtil.defaultClient(), "https://jx.xmflv.com/xmflv-1.SVG", hashMap, l(), r6);
                    str3 = new JSONObject(r6.getResult().body().string()).optString("url");
                } else {
                    Matcher matcher11 = dV.matcher(OkHttpUtil.string(dV2, l()));
                    if (matcher11.find()) {
                        str3 = matcher11.group(1);
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("parse", "0");
            jSONObject.put("playUrl", "");
            jSONObject.put("url", str3);
            jSONObject.put("header", "");
            if (!StringUtil.isEmpty(str4)) {
                jSONObject.put("subf", "/vtt/utf-8");
                jSONObject.put("subtitle", Proxy.localProxyUrl() + "?do=czspp&url=" + URLEncoder.encode(str4,"utf-8"));
            }
            return jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            SpiderDebug.log(e);
            return "";
        }
    }

    public String searchContent(String str, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            Elements o = Jsoup.parse(OkHttpUtil.string("https://czspp.com/xssearch?q=" + URLEncoder.encode(str,"utf-8"), l())).select("div.mi_ne_kd > ul > li");
            JSONArray jSONArray = new JSONArray();
            for (Element next : o) {
                Matcher matcher = rl.matcher(next.selectFirst("a").attr("href"));
                if (matcher.find()) {
                    String group = matcher.group(1);
                    String trim = next.selectFirst("img").attr("alt").trim();
                    if (trim.contains(str)) {
                        String trim2 = next.selectFirst("img").attr("src").trim();
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("vod_id", group);
                        jSONObject2.put("vod_name", trim);
                        jSONObject2.put("vod_pic", trim2);
                        jSONObject2.put("vod_remarks", "");
                        jSONArray.put(jSONObject2);
                    }
                }
            }
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }
}