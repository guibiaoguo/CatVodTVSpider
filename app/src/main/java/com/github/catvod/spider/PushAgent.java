package com.github.catvod.spider;

import android.content.Context;
import android.net.UrlQuerySanitizer;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import okhttp3.Call;
import okhttp3.Response;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class PushAgent extends Spider {
    private static long Kr = 0;
    public static String L = null;
    private static long f = 0;
    private static String x = "";
    private static final Map<String, String> AS = new HashMap();
    private static final Map<String, Long> e = new HashMap();
    private static final Map<String, Map<String, String>> LR = new HashMap();
    private static final ReentrantLock aX = new ReentrantLock();
    private static final Pattern FG = Pattern.compile("(https://www.aliyundrive.com/s/[^\"]+)");
    public static Pattern mh = Pattern.compile("www.aliyundrive.com/s/([^/]+)(/folder/([^/]+))?");

    private static synchronized String AS(String str, String str2) {
        synchronized (PushAgent.class) {
            synchronized (PushAgent.class) {
                try {
                    long x2 = x();
                    Map<String, String> map = AS;
                    String str3 = map.get(str);
                    Map<String, Long> map2 = e;
                    Long l = map2.get(str);
                    if (!StringUtil.isEmpty(str3) && l.longValue() - x2 > 600) {
                        return str3;
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("share_id", str);
                    jSONObject.put("share_pwd", str2);
                    JSONObject jSONObject2 = new JSONObject(e("https://api.aliyundrive.com/v2/share_link/get_share_token", jSONObject.toString(), f()));
                    String string = jSONObject2.optString("share_token");
                    map2.put(str, Long.valueOf(x2 + jSONObject2.getLong("expires_in")));
                    map.put(str, string);
                    return string;
                } catch (Exception e2) {
                    SpiderDebug.log(e2);
                    return "";
                }
            }
        }
    }

    public static Object[] File(Map<String, String> map) {
        try {
            String str = map.get("share_id");
            return new Object[]{200, "application/octet-stream", new ByteArrayInputStream(Kr(str, AS(str, ""), map.get("file_id")).getBytes())};
        } catch (Exception e2) {
            SpiderDebug.log(e2);
            return null;
        }
    }

    private static String Kr(String str, String str2, String str3) {
        int i;
        JSONObject jSONObject;
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("share_id", str);
            jSONObject2.put("category", "live_transcoding");
            jSONObject2.put("file_id", str3);
            jSONObject2.put("template_id", "");
            HashMap<String, String> f2 = f();
            f2.put("x-share-token", str2);
            f2.put("authorization", x);
            JSONObject jSONObject3 = new JSONObject(e("https://api.aliyundrive.com/v2/file/get_share_link_video_preview_play_info", jSONObject2.toString(), f2));
            ArrayList arrayList = new ArrayList();
            arrayList.add("FHD");
            arrayList.add("HD");
            arrayList.add("SD");
            JSONArray jSONArray = jSONObject3.optJSONObject("video_preview_play_info").optJSONArray("live_transcoding_task_list");
            Iterator it = arrayList.iterator();
            String str4 = "";
            while (true) {
                i = 0;
                if (!it.hasNext()) {
                    break;
                }
                String str5 = (String) it.next();
                if (!str4.isEmpty()) {
                    break;
                }
                while (true) {
                    if (i < jSONArray.length()) {
                        jSONObject = jSONArray.optJSONObject(i);
                        if (jSONObject.optString("template_id").equals(str5)) {
                            break;
                        }
                        i++;
                    }
                }
                str4 = jSONObject.optString("url");
            }
            if (StringUtil.isEmpty(str4)) {
                str4 = jSONArray.optJSONObject(0).optString("url");
            }
            HashMap hashMap = new HashMap();
            OkHttpUtil.string(str4, f(), hashMap);
            String cY = OkHttpUtil.getRedirectLocation(hashMap);
            String V = OkHttpUtil.string(cY, f());
            String str6 = cY.substring(0, cY.lastIndexOf("/")) + "/";
            ArrayList arrayList2 = new ArrayList();
            HashMap hashMap2 = new HashMap();
            String[] split = V.split("\n");
            int length = split.length;
            int i2 = 0;
            while (i < length) {
                String str7 = split[i];
                if (str7.contains("x-oss-expires")) {
                    i2++;
                    hashMap2.put("" + i2, str6 + str7);
                    str7 = Proxy.localProxyUrl() + "?do=ali&type=media&share_id=" + str + "&file_id=" + str3 + "&media_id=" + i2;
                }
                arrayList2.add(str7);
                i++;
            }
            LR.put(str3, hashMap2);
            return StringUtil.join("\n", arrayList2);
        } catch (Exception e2) {
            SpiderDebug.log(e2);
            return "";
        }
    }

    private static void LR() {
        long x2 = x();
        if (x.isEmpty() || Kr - x2 <= 600) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("refresh_token", L);
                JSONObject jSONObject2 = new JSONObject(e("https://api.aliyundrive.com/token/refresh", jSONObject.toString(), f()));
                x = jSONObject2.optString("token_type") + " " + jSONObject2.optString("access_token");
                long j = jSONObject2.getLong("expires_in");
                f = j;
                Kr = x2 + j;
            } catch (Exception e2) {
                SpiderDebug.log(e2);
            }
        }
    }

    public static Object[] ProxyMedia(Map<String, String> map) {
        try {
            String str = map.get("share_id");
            String str2 = map.get("file_id");
            String str3 = map.get("media_id");
            String AS2 = AS(str, "");
            ReentrantLock reentrantLock = aX;
            reentrantLock.lock();
            Map<String, Map<String, String>> map2 = LR;
            String str4 = map2.get(str2).get(str3);
            if (new Long(new UrlQuerySanitizer(str4).getValue("x-oss-expires")).longValue() - x() <= 60) {
                Kr(str, AS2, str2);
                str4 = map2.get(str2).get(str3);
            }
            reentrantLock.unlock();
            new HashMap();
            OKCallBack.OKCallBackDefault callBack = new OKCallBack.OKCallBackDefault() {
                @Override
                protected void onFailure(Call call, Exception e) {

                }

                @Override
                protected void onResponse(Response response) {

                }
            };
            OkHttpUtil.get(OkHttpUtil.defaultClient(), str4, null, f(), callBack);
            return new Object[]{200, "video/MP2T", callBack.getResult().body().byteStream()};
        } catch (Exception e2) {
            SpiderDebug.log(e2);
            return null;
        }
    }

    private static String e(String str, String str2, Map<String, String> map) {
        OKCallBack.OKCallBackString callBack = new OKCallBack.OKCallBackString() {
            @Override
            protected void onFailure(Call call, Exception e) {

            }

            @Override
            protected void onResponse(String response) {

            }
        };
        OkHttpUtil.postJson(OkHttpUtil.defaultClient(), str, str2, map, callBack);
        return callBack.getResult();
    }

    private static HashMap<String, String> f() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36");
        hashMap.put("Referer", "https://www.aliyundrive.com/");
        return hashMap;
    }

    public static Object[] loadsub(String str) {
        try {
            return new Object[]{200, "application/octet-stream", new ByteArrayInputStream(OkHttpUtil.string(str, f()).getBytes())};
        } catch (Exception e2) {
            e2.printStackTrace();
            SpiderDebug.log(e2);
            return null;
        }
    }

    public static Object[] vod(Map<String, String> map) {
        String str = map.get("type");
        if (str.equals("m3u8")) {
            return File(map);
        }
        if (str.equals("media")) {
            return ProxyMedia(map);
        }
        return null;
    }

    protected static long x() {
        return (System.currentTimeMillis() / 1000) + 0;
    }

    public void init(Context context) {
        PushAgent.super.init(context);
        L = OkHttpUtil.string("https://mao.guibiaoguo.ml/ali-token.json", null);
    }

    public void listFiles(Map<String, String> map, String str, String str2, String str3) {
        Exception e2;
        String str4;
        try {
            String str5 = "https://api.aliyundrive.com/adrive/v3/file/list";
            HashMap<String, String> f2 = f();
            f2.put("x-share-token", str2);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("image_thumbnail_process", "image/resize,w_160/format,jpeg");
            jSONObject.put("image_url_process", "image/resize,w_1920/format,jpeg");
            jSONObject.put("limit", 200);
            jSONObject.put("order_by", "updated_at");
            jSONObject.put("order_direction", "DESC");
            jSONObject.put("parent_file_id", str3);
            jSONObject.put("share_id", str);
            jSONObject.put("video_thumbnail_process", "video/snapshot,t_1000,f_jpg,ar_auto,w_300");
            String str6 = "";
            ArrayList arrayList = new ArrayList();
            int i = 1;
            while (i <= 50 && (i < 2 || !StringUtil.isEmpty(str6))) {
                jSONObject.put("marker", str6);
                JSONObject jSONObject2 = new JSONObject(e(str5, jSONObject.toString(), f2));
                JSONArray jSONArray = jSONObject2.optJSONArray("items");
                int i2 = 0;
                while (i2 < jSONArray.length()) {
                    JSONObject jSONObject3 = jSONArray.optJSONObject(i2);
                    if (jSONObject3.optString("type").equals("folder")) {
                        arrayList.add(jSONObject3.optString("file_id"));
                        str4 = str5;
                    } else {
                        str4 = str5;
                        if (jSONObject3.optString("mime_type").contains("video")) {
                            String replace = jSONObject3.optString("name").replace("#", "_").replace("$", "_");
                            map.put(replace, str + "+" + str2 + "+" + jSONObject3.optString("file_id"));
                        }
                    }
                    i2++;
                    str5 = str4;
                }
                str6 = jSONObject2.optString("next_marker");
                i++;
                str5 = str5;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                try {
                    listFiles(map, str, str2, (String) it.next());
                } catch (Exception e3) {
                    try {
                        SpiderDebug.log(e3);
                        return;
                    } catch (Exception e4) {
                        e2 = e4;
                        SpiderDebug.log(e2);
                        return;
                    }
                }
            }
        } catch (Exception e5) {
            e2 = e5;
        }
    }

    public String playerContent(String str, String str2, List<String> list) {
        char c = 65535;
        try {
            switch (str.hashCode()) {
                case 980842:
                    if (str.equals("直连")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1049412:
                    if (str.equals("网页")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1120781:
                    if (str.equals("解析")) {
                        c = 0;
                        break;
                    }
                    break;
                case 1182373524:
                    if (str.equals("阿里云盘")) {
                        c = 3;
                        break;
                    }
                    break;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            SpiderDebug.log(e2);
        }
        try {
            if (c == 0) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("parse", 1);
                jSONObject.put("jx", "1");
                jSONObject.put("url", str2);
                return jSONObject.toString();
            } else if (c == 1) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("parse", 0);
                jSONObject2.put("playUrl", "");
                jSONObject2.put("url", str2);
                return jSONObject2.toString();
            } else if (c != 2) {
                if (c == 3) {
                    LR();
                    String[] split = str2.split("\\+");
                    String str3 = Proxy.localProxyUrl() + "?do=ali&type=m3u8&share_id=" + split[0] + "&file_id=" + split[2];
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("parse", "0");
                    jSONObject3.put("playUrl", "");
                    jSONObject3.put("url", str3);
                    jSONObject3.put("header", "");
                    return jSONObject3.toString();
                }
                return "";
            } else {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("parse", 1);
                jSONObject4.put("playUrl", "");
                jSONObject4.put("url", str2);
                return jSONObject4.toString();
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    public String searchContent(String str, boolean z) {
        try {
            String trim = str.trim();
            if (!FG.matcher(trim).find()) {
                return "";
            }
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("vod_id", trim);
            jSONObject.put("vod_name", trim);
            jSONArray.put(jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("list", jSONArray);
            return jSONObject2.toString();
        } catch (Exception e2) {
            SpiderDebug.log(e2);
            return "";
        }
    }
}