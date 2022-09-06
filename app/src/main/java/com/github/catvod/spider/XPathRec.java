package com.github.catvod.spider;

import android.content.Context;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Base64;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class XPathRec extends XPath {
    private boolean dV;
    private boolean rl;
    private String cY = "";
    private String HL = "[\\W|\\S|.]*?MacPlayerConfig.player_list[\\W|\\S|.]*?=([\\W|\\S|.]*?),MacPlayerConfig.downer_list";
    private HashMap<String, String> lN = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.github.catvod.spider.XPath
    public void loadRuleExt(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.dV = jSONObject.optBoolean("dcPlayUrl", false);
            this.rl = jSONObject.optBoolean("dcVipFlag", false);
            JSONObject optJSONObject = jSONObject.optJSONObject("dcShow2Vip");
            if (optJSONObject != null) {
                Iterator<String> keys = optJSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    this.lN.put(next.trim(), optJSONObject.optString(next).trim());
                }
            }
            this.cY = jSONObject.optString("pCfgJs").trim();
            this.HL = jSONObject.optString("pCfgJsR", this.HL).trim();
        } catch (JSONException e) {
            SpiderDebug.log(e);
        }
    }

    @Override // com.github.catvod.spider.XPath
    protected String categoryUrl(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        String q3 = this.rule.getCateUrl();
        if (z && hashMap != null && hashMap.size() > 0) {
            for (String str3 : hashMap.keySet()) {
                String str4 = hashMap.get(str3);
                if (str4.length() > 0) {
                    q3 = q3.replace("{" + str3 + "}", URLEncoder.encode(str4));
                }
            }
        }
        String replace = q3.replace("{cateId}", str).replace("{catePg}", str2);
        Matcher matcher = Pattern.compile("\\{(.*?)\\}").matcher(replace);
        while (matcher.find()) {
            String replace2 = matcher.group(0).replace("{", "").replace("}", "");
            String replace3 = replace.replace(matcher.group(0), "");
            replace = replace3.replace("/" + replace2 + "/", "");
        }
        return replace;
    }

    @Override // com.github.catvod.spider.XPath
    public void init(Context context, String str) {
        super.init(context, str);
    }

    @Override // com.github.catvod.spider.XPath
    public String playerContent(String str, String str2, List<String> list) {
        String decode = null;
        fetchRule();
        if (!this.rule.getPlayUrl().isEmpty()) {
            str2 = this.rule.getPlayUrl().replace("{playUrl}", str2);
        }
        String str3 = null;
        try {
            Elements o = Jsoup.parse(fetch(str2)).select("script");
            int i = 0;
            while (true) {
                if (i >= o.size()) {
                    break;
                }
                String trim = o.get(i).html().trim();
                if (trim.startsWith("var player_")) {
                    JSONObject jSONObject = new JSONObject(trim.substring(trim.indexOf(123), trim.lastIndexOf(125) + 1));
                    String string = jSONObject.optString("url");
                    if (jSONObject.has("encrypt")) {
                        int i2 = jSONObject.getInt("encrypt");
                        if (i2 == 1) {
                            decode = URLDecoder.decode(string,"utf-8");
                        } else if (i2 == 2) {
                            decode = URLDecoder.decode(new String(Base64.decode(string, 0)),"utf-8");
                        }
                        str3 = decode;
                    }
                    str3 = string;
                } else {
                    i++;
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("parse", 0);
            jSONObject2.put("playUrl", "");
            jSONObject2.put("url", str3);
            jSONObject2.put("header", "");
            return jSONObject2.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }
}