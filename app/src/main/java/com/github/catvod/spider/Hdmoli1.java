package com.github.catvod.spider;

import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class Hdmoli1 extends XPathFilter {
    @Override // com.github.catvod.spider.XPath
    public String playerContent(String str, String str2, List<String> list) {
        String str3;
        Iterator<Element> it;
        String str4;
        String str5 = "video";
        String str6 = "\"";
        try {
            JSONObject jSONObject = new JSONObject();
            String str7 = "https://www.hdmoli.com/play/" + str2 + ".html";
            Elements o = Jsoup.parse(OkHttpUtil.string(str7, getHeaders(str7))).select("div>script");
            JSONObject jSONObject2 = new JSONObject();
            Iterator<Element> it2 = o.iterator();
            String str8 = "";
            String str9 = str8;
            while (it2.hasNext()) {
                String[] split = it2.next().html().split("var");
                int length = split.length;
                int i = 0;
                while (i < length) {
                    String str10 = split[i];
                    if (!str10.contains("=") || !str10.contains("now")) {
                        str4 = str5;
                        str3 = str6;
                        it = it2;
                    } else {
                        String replaceAll = str10.split(str6)[1].replaceAll(str6, "").replaceAll(";", "");
                        if (str10.contains("wmkk")) {
                            str8 = replaceAll;
                        }
                        str3 = str6;
                        it = it2;
                        if (!str10.contains(str5) && !str10.contains("|") && !str10.contains("mp4")) {
                            str4 = str5;
                        }
                        str4 = str5;
                        if (str10.contains(str5)) {
                            if (str10.contains("|")) {
                                String trim = Jsoup.parse(OkHttpUtil.string(replaceAll.substring(replaceAll.indexOf("https"), replaceAll.lastIndexOf(124)), getHeaders(str7))).html().trim();
                                str8 = trim.substring(trim.indexOf("https"), trim.lastIndexOf("vr") + 1);
                            } else {
                                String trim2 = Jsoup.parse(OkHttpUtil.string(replaceAll, getHeaders(str7))).html().trim();
                                str8 = trim2.substring(trim2.indexOf("https"), trim2.lastIndexOf("mp4") + 3);
                            }
                        }
                        if (str10.contains("mp4")) {
                            String trim3 = Jsoup.parse(OkHttpUtil.string(replaceAll.substring(replaceAll.indexOf("https"), replaceAll.lastIndexOf("mp4") + 3), getHeaders(str7))).html().trim();
                            str8 = trim3.substring(trim3.indexOf("https"), trim3.lastIndexOf("mp4") + 3);
                        }
                        if (str10.contains("vvt")) {
                            str9 = replaceAll.substring(replaceAll.indexOf(124) + 1, replaceAll.lastIndexOf(116) + 1);
                        }
                    }
                    i++;
                    it2 = it;
                    str6 = str3;
                    str5 = str4;
                }
                jSONObject2.put("parse", 0);
                jSONObject2.put("subf", "/vvt/utf-8");
                jSONObject2.put("subt", str9);
                jSONObject2.put("url", str8);
                jSONObject2.put("header", jSONObject.toString());
                it2 = it2;
                str6 = str6;
                str5 = str5;
            }
            return jSONObject2.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }
}