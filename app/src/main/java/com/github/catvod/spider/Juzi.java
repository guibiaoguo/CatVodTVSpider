package com.github.catvod.spider;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Juzi extends Spider {
    private HashMap<String, String> o(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("User-Agent", "okhttp/4.9.1");
        return hashMap;
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        try {
            String str3 = "http://81.70.77.5:7800/api.php/lexiang.vod?type=category&pg=" + str2 + "&t=" + str;
            for (String str4 : hashMap.keySet()) {
                String trim = hashMap.get(str4).trim();
                if (trim.length() != 0) {
                    str3 = "&" + str4 + "=" + URLEncoder.encode(trim);
                }
            }
            return new JSONObject(m(OkHttpUtil.string(str3, o(str3)))).toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String detailContent(List<String> list) {
        try {
            String str = "http://81.70.77.5:7800/api.php/lexiang.vod?type=detail&ids=" + list.get(0);
            JSONArray jSONArray = new JSONObject(m(OkHttpUtil.string(str, o(str)))).optJSONObject("data").optJSONArray("list");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String homeContent(boolean z) {
        try {
            JSONArray jSONArray = new JSONObject(m(OkHttpUtil.string("http://81.70.77.5:7800/api.php/lexiang.vod?type=home", o("http://81.70.77.5:7800/api.php/lexiang.vod?type=home")))).optJSONArray("class");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("class", jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String homeVideoContent() {
        try {
            return new JSONObject(m(OkHttpUtil.string("http://81.70.77.5:7800/api.php/lexiang.vod?type=home", o("http://81.70.77.5:7800/api.php/lexiang.vod?type=home")))).toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    protected String m(String str) {
        return str;
    }

    public String playerContent(String str, String str2, List<String> list) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("User-Agent", "Mozi");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("parse", 0);
            jSONObject2.put("playUrl", "");
            jSONObject2.put("url", "http://81.70.77.5:7800/jiexilx?url=" + str2);
            jSONObject2.put("header", jSONObject.toString());
            return jSONObject2.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String searchContent(String str, boolean z) {
        try {
            String str2 = "http://81.70.77.5:7800/api.php/lexiang.vod?type=search&wd=" + URLEncoder.encode(str);
            JSONArray jSONArray = new JSONObject(m(OkHttpUtil.string(str2, o(str2)))).optJSONArray("list");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("list", jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }
}