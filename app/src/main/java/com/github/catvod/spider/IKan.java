package com.github.catvod.spider;

import android.content.Context;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class IKan extends AppYsV2 {
    private final OkHttpClient y;
    private boolean K = false;
    private Context H = null;
    protected String ext = null;

    public IKan() {
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.y = builder.readTimeout(15, timeUnit).writeTimeout(15, timeUnit).connectTimeout(15, timeUnit).cookieJar(new CookieJar() { // from class: com.github.catvod.spider.IKan.1
            final List<Cookie> Mf = new ArrayList();

            public List<Cookie> loadForRequest(HttpUrl httpUrl) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (Cookie cookie : this.Mf) {
                    if (cookie.expiresAt() < System.currentTimeMillis()) {
                        arrayList.add(cookie);
                    } else if (cookie.matches(httpUrl)) {
                        arrayList2.add(cookie);
                    }
                }
                this.Mf.removeAll(arrayList);
                return arrayList2;
            }

            public void saveFromResponse(HttpUrl httpUrl, List<Cookie> list) {
                this.Mf.addAll(list);
            }
        }).retryOnConnectionFailure(true).build();
    }

    private void S(final String str, final String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("user_name", str);
        hashMap.put("user_pwd", str2);
        hashMap.put("user_pwd2", str2);
        try {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("Host", "tvcms.ikan6.vip");
            hashMap2.put("User-Agent", "okhttp/3.11.0");
            OkHttpUtil.post(this.y, "http://tvcms.ikan6.vip/api.php/gctvapi.auth/register", hashMap, hashMap2, new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.IKan.2
                @Override // com.github.catvod.spider.merge.a6
                public void onFailure(Call call, Exception exc) {
                }

                public void onResponse(String str3) {
                    try {
                        if (new JSONObject(str3).optInt("code", 0) == 200) {
                            IKan.this.H.getSharedPreferences("spider_IKan", 0).edit().putString("user", str).putString("pwd", str2).commit();
                            IKan.this.login(str, str2);
                        }
                    } catch (JSONException unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    private void iq() {
        S(random(18), random(8));
    }

    public static String random(int i) {
        Random random = new Random();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            stringBuffer.append("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456".charAt(random.nextInt(59)));
        }
        return stringBuffer.toString();
    }

    String U8(String str) {
        return str;
    }

    public void init(Context context) {
        this.H = context;
    }

    public void login(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("user_name", str);
        hashMap.put("user_pwd", str2);
        try {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("Host", "tvcms.ikan6.vip");
            hashMap2.put("User-Agent", "okhttp/3.11.0");
            OkHttpUtil.post(this.y, "http://tvcms.ikan6.vip/api.php/gctvapi.auth/login", hashMap, hashMap2, new OKCallBack.OKCallBackString() { // from class: com.github.catvod.spider.IKan.3
                @Override // com.github.catvod.spider.merge.a6
                public void onFailure(Call call, Exception exc) {
                }

                public void onResponse(String str3) {
                    try {
                        if (new JSONObject(str3).optInt("code", 0) == 200) {
                            IKan.this.K = true;
                        }
                    } catch (JSONException unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    @Override // com.github.catvod.spider.AppYsV2
    public String playerContent(String str, String str2, List<String> list) {
        try {
            if (str.equals("lekanzyw")) {
                if (!this.K) {
                    iq();
                }
                HashMap hashMap = new HashMap();
                hashMap.put("Host", "tvcms.ikan6.vip");
                hashMap.put("User-Agent", "okhttp/3.11.0");
                OkHttpClient okHttpClient = this.y;
                String str3 = new String(Base64.decode(new JSONObject(OkHttpUtil.string(okHttpClient, "http://tvcms.ikan6.vip/api.php/gctvapi.api/Index?url=" + str2 + "&type=lekanzyw", null, null, hashMap, null)).optString("data"), 0), Misc.UTF8);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("User-Agent", "Lavf/58.12.100");
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("parse", 0);
                jSONObject2.put("playUrl", "");
                jSONObject2.put("url", str3);
                jSONObject2.put("header", jSONObject.toString());
                return jSONObject2.toString();
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return super.playerContent(str, str2, list);
    }

    @Override // com.github.catvod.spider.AppYsV2
    public void init(Context context, String extend) {
        super.init(context, extend);
        this.ext = extend;
    }
}