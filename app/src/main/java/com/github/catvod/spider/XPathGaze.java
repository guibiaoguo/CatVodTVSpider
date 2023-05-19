package com.github.catvod.spider;

import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.Call;
import okhttp3.Response;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class XPathGaze extends XPathFilter {
    private static final Pattern dV = Pattern.compile("http(s*)://(.+)");

    static Object[] HL(String str) {
        try {
            String V = OkHttpUtil.string(str, null);
            StringBuilder sb = new StringBuilder();
            Matcher matcher = dV.matcher(V);
            int i = 0;
            while (matcher.find()) {
                sb.append((CharSequence) V, i, matcher.start());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(Proxy.getUrl());
                sb2.append("?do=gaze&type=key&url=");
                sb2.append(Base64.encodeToString(matcher.group(0).getBytes(Misc.GBK), 10));
                sb.append((CharSequence) sb2);
                i = matcher.end();
            }
            sb.append((CharSequence) V, i, V.length());
            return new Object[]{200, "application/x-mpegURL", new ByteArrayInputStream(sb.toString().getBytes(Misc.GBK))};
        } catch (Exception e) {
            StringWriter stringWriter = new StringWriter();
            e.printStackTrace(new PrintWriter(stringWriter));
            SpiderDebug.log(e.getMessage());
            SpiderDebug.log(stringWriter.toString());
            return null;
        }
    }

    static Object[] lN(String str) {
        try {
            SpiderDebug.log("I'm here");
            OKCallBack<Response> callBack = new OKCallBack.OKCallBackDefault() {
                @Override
                protected void onFailure(Call call, Exception e) {

                }

                @Override
                protected void onResponse(Response response) {

                }
            };
            OkHttpUtil.get(OkHttpUtil.defaultClient(), str, null, null, callBack);
            Response result = callBack.getResult();
            if (result.code() != 200) {
                return null;
            }
            InputStream byteStream = result.body().byteStream();
            byteStream.skip(125);
            return new Object[]{200, "application/octet-stream", byteStream};
        } catch (Exception e) {
            StringWriter stringWriter = new StringWriter();
            e.printStackTrace(new PrintWriter(stringWriter));
            SpiderDebug.log(e.getMessage());
            SpiderDebug.log(stringWriter.toString());
            return null;
        }
    }

    private String q3(String str, String str2) {
        try {
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            IvParameterSpec ivParameterSpec = new IvParameterSpec("1234567890123456".getBytes(Misc.UTF8));
            byte[] bytes = str.getBytes(Misc.UTF8);
            instance.init(2, new SecretKeySpec(bytes, 0, bytes.length, "AES"), ivParameterSpec);
            return new String(instance.doFinal(Base64.decode(str2, 0)));
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static Object[] vod(Map<String, String> map) {
        String str = map.get("type");
        String str2 = new String(Base64.decode(map.get("url"), 10), Misc.GBK);
        if (str.equals("m3u8")) {
            return HL(str2);
        }
        if (str.equals("key")) {
            return lN(str2);
        }
        return null;
    }

    @Override // com.github.catvod.spider.XPathFilter, com.github.catvod.spider.XPath
    protected void loadRuleExt(String str) {
        super.loadRuleExt(str);
    }

    @Override // com.github.catvod.spider.XPath
    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        Exception e;
        try {
            fetchRule();
        } catch (Exception e2) {
            e = e2;
        }
        try {
            String q3 = this.rule.getCateUrl();
            HashMap<String, String> zJ = zJ();
            HashMap hashMap2 = new HashMap();
            if (z && hashMap != null && hashMap.size() > 0) {
                for (String str3 : hashMap.keySet()) {
                    String str4 = hashMap.get(str3);
                    if (str4.length() > 0) {
                        hashMap2.put(str3, str4);
                    }
                }
            }
            if (!hashMap2.containsKey("mcountry")) {
                hashMap2.put("mcountry", "all");
            }
            if (!hashMap2.containsKey("tag_arr[]")) {
                hashMap2.put("tag_arr[]", "all");
            }
            if (!hashMap2.containsKey("sort")) {
                hashMap2.put("sort", "updatetime");
            }
            if (!hashMap2.containsKey("album")) {
                hashMap2.put("album", "all");
            }
            hashMap2.put("title", "");
            hashMap2.put("mform", str);
            hashMap2.put("page", str2);
            String b = OkHttpUtil.string(OkHttpUtil.defaultClient(), q3, null, hashMap2, zJ, null);
            if (!b.isEmpty()) {
                JSONArray jSONArray = new JSONObject(b).optJSONArray("mlist");
                JSONArray jSONArray2 = new JSONArray();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = new JSONObject();
                    JSONObject jSONObject2 = jSONArray.optJSONObject(i);
                    jSONObject.put("vod_id", jSONObject2.optString("mid"));
                    jSONObject.put("vod_name", jSONObject2.optString("title"));
                    jSONObject.put("vod_pic", jSONObject2.optString("cover_img"));
                    jSONObject.put("vod_remarks", jSONObject2.optString("grade"));
                    jSONArray2.put(jSONObject);
                }
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("page", str2);
                jSONObject3.put("pagecount", Integer.MAX_VALUE);
                jSONObject3.put("limit", 90);
                jSONObject3.put("total", Integer.MAX_VALUE);
                jSONObject3.put("list", jSONArray2);
                return jSONObject3.toString();
            }
        } catch (Exception e3) {
            e = e3;
            SpiderDebug.log(e);
            return "";
        }
        return "";
    }

    protected HashMap<String, String> zJ() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("X-Requested-With", "XMLHttpRequest");
        hashMap.put("User-Agent", this.rule.getUa().isEmpty() ? "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36" : this.rule.getUa());
        return hashMap;
    }
}