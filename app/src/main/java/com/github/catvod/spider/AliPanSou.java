package com.github.catvod.spider;

import android.content.Context;
import com.github.catvod.crawler.Spider;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes.dex */
public class AliPanSou extends Spider {
    private static final Pattern l = Pattern.compile("(https:\\/\\/www.aliyundrive.com\\/s\\/[^\\\"]+)");
    private PushAgent g;

    public String detailContent(List<String> list) {
        try {
            Pattern pattern = l;
            if (pattern.matcher(list.get(0)).find()) {
                return this.g.detailContent(list);
            }
            Matcher matcher = pattern.matcher(OkHttpUtil.string("https://www.upyunso.com" + list.get(0), null));
            if (!matcher.find()) {
                return "";
            }
            list.set(0, matcher.group(1));
            return this.g.detailContent(list);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public void init(Context context) {
        AliPanSou.super.init(context);
        PushAgent pushAgent = new PushAgent();
        this.g = pushAgent;
        pushAgent.init(context);
    }

    public String playerContent(String str, String str2, List<String> list) {
        return this.g.playerContent(str, str2, list);
    }

    public String searchContent(String str, boolean z) {
        try {
            HashMap<String,String> hashMap = new HashMap();
            hashMap.put("7", "文件夹");
            hashMap.put("1", "视频");
            JSONArray jSONArray = new JSONArray();
            for (Map.Entry entry : hashMap.entrySet()) {
                String str2 = (String) entry.getValue();
                Iterator<Element> it = Jsoup.parse(OkHttpUtil.string("https://www.upyunso.com/search?k=" + URLEncoder.encode(str) + "&t=" + ((String) entry.getKey()), null)).select("van-row > a").iterator();
                while (it.hasNext()) {
                    Element next = it.next();
                    String trim = next.attr("template").toString().trim();
                    if (trim.contains(str)) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("vod_id", next.attr("href"));
                        jSONObject.put("vod_name", "[" + str2 + "] " + trim);
                        StringBuilder sb = new StringBuilder();
                        sb.append("https://www.upyunso.com");
                        sb.append(next.selectFirst("van-col > van-card").attr("thumb"));
                        jSONObject.put("vod_pic", sb.toString());
                        jSONArray.put(jSONObject);
                    }
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("list", jSONArray);
            return jSONObject2.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}