package com.github.catvod.parser;

import android.util.Log;


import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.spider.Legado;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import okhttp3.Call;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/**
 * 作者：By hdy
 * 日期：On 2018/9/8
 * 时间：At 8:36
 */

public class HttpParser {

    private static final String TAG = "HttpParser";
    private static final String PC_UA = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36";
    private static final String MOBILE_UA = "";

    public static OKCallBack<Response> parseSearchUrlForHtml(String sourceUrl) {
        if (StringUtils.startsWith(sourceUrl, "proxy://")) {
            OKCallBack<Response> callBack = new OKCallBack.OKCallBackDefault() {
                @Override
                protected void onFailure(Call call, Exception e) {
                    onResponse(null);
                }

                @Override
                protected void onResponse(Response response) {
                    try {
                        Map<String, String> params = StringUtil.getParameter(sourceUrl, "proxy://");
                        Object[] result = Legado.loadPic(params);
                        Response.Builder builder = new Response.Builder();
                        if (result != null) {
                            InputStream inputStream = (InputStream) result[2];
                            ByteArrayOutputStream bf = new ByteArrayOutputStream();
                            byte[] buffer = new byte[1024];
                            int length;
                            while ((length = inputStream.read(buffer)) != -1) {
                                bf.write(buffer, 0, length);
                            }
                            ResponseBody responseBody = ResponseBody.create(null,bf.toString());
                            Request request = new Request.Builder().url("http://localhost"+sourceUrl).build();
                            builder.request(request);
                            builder.body(responseBody);
                            builder.message("");
                            builder.code(200);
                            builder.request(request);
                            builder.protocol(Protocol.HTTP_1_1);
                        } else {
                            ResponseBody responseBody = ResponseBody.create(null,"404");
                            Request request = new Request.Builder().url("http://localhost"+sourceUrl).build();
                            builder.request(request);
                            builder.body(responseBody);
                            builder.message("404");
                            builder.request(request);
                            builder.protocol(Protocol.HTTP_1_1);
                            builder.code(404);
                        }
                        setResult(builder.build());
                    } catch (Exception e) {
                        SpiderDebug.log(e);
                    }
                }
            };
            OkHttpUtil.get(OkHttpUtil.defaultClient(), "http://localhost/" + sourceUrl, callBack);
            return callBack;
        } else {
            OKCallBack<Response> callBack = new OKCallBack.OKCallBackDefault() {
                @Override
                protected void onFailure(Call call, Exception e) {

                }

                @Override
                protected void onResponse(Response response) {
                    setResult(response);
                }
            };
            String[] d = sourceUrl.split(";");
            if (d.length == 1) {
                get(d[0], null, null, callBack);
            } else if (d.length == 2) {
                if ("get".equalsIgnoreCase(d[1]) || "*".equals(d[1])) {
                    get(d[0], "utf-8", getHeaders(sourceUrl), callBack);
                } else if ("post".equalsIgnoreCase(d[1])) {
                    String[] ss = StringUtil.splitUrlByQuestionMark(d[0]);
                    String[] sss;
                    if (ss.length > 1) {
                        sss = ss[1].split("&");
                    } else {
                        sss = new String[]{};
                    }
                    HashMap<String,String> params = new HashMap<>();
                    for (String s : sss) {
                        if (StringUtils.isEmpty(s)) {
                            continue;
                        }
                        String[] kk = s.split("=");
                        if (kk.length >= 2) {
                            params.put(kk[0], StringUtil.arrayToString(kk, 1, "="));
                        }
                    }
                    post(ss[0], null, getHeaders(sourceUrl), params, callBack);
                } else {
                    get(d[0], d[1], getHeaders(sourceUrl), callBack);
                }
            } else {
                if ("post".equalsIgnoreCase(d[1])) {
                    String[] ss = StringUtil.splitUrlByQuestionMark(d[0]);
                    String[] sss;
                    if (ss.length > 1) {
                        sss = ss[1].split("&");
                    } else {
                        sss = new String[]{};
                    }
                    HashMap<String,String> params = new HashMap<>();
                    for (String s : sss) {
                        if (StringUtils.isEmpty(s)) {
                            continue;
                        }
                        String[] kk = s.split("=");
                        if (kk.length >= 2) {
                            params.put(kk[0], StringUtil.arrayToString(kk, 1, "="));
                        }
                    }
                    post(ss[0], d[2], getHeaders(sourceUrl), params, callBack);
                } else {
                    get(d[0], d[2], getHeaders(sourceUrl), callBack);
                }
            }
            return callBack;
        }
    }

    public static String getCode(String searchUrl) {
        if (StringUtils.isEmpty(searchUrl)) {
            return null;
        }
        if (searchUrl.startsWith("proxy://")) {
            return "UTF-8";
        }
        Pattern pattern = Pattern.compile("(.*);(\\{.*\\}$)");
        Matcher matcher = pattern.matcher(searchUrl);
        String[] d;
        if (matcher.find()) {
            d = matcher.group(1).split(";");
        } else {
            d = searchUrl.split(";");
        }
        String code = "UTF-8";
        if (d.length >= 3) {
            code = d[2];
        }
        if ("*".equals(code)) {
            return "UTF-8";
        }
        return code;
    }

    public static HashMap<String, String> getHeaders(String searchUrl) {
        if (StringUtils.isEmpty(searchUrl)) {
            return null;
        }
        Pattern pattern = Pattern.compile("(.*);(\\{.*\\}$)");
        Matcher matcher = pattern.matcher(searchUrl);
        String header;
        if (matcher.find()) {
            header = matcher.group(2);
        } else {
            String[] d = searchUrl.split(";");
            header = d[d.length -1];
        }
        if (!header.startsWith("{") || !header.endsWith("}")) {
            return null;
        }
        header = StringUtil.decodeConflictStr(header);
        HashMap<String, String> headers = new HashMap<>();
        String h = header.substring(1);
        h = h.substring(0, h.length() - 1);
        String[] hs = h.split("&&");
        for (String h1 : hs) {
            String[] keyValue = h1.split("@");
            if (keyValue.length >= 2) {
                if ("getTimeStamp()".equals(keyValue[1])) {
                    headers.put(keyValue[0], System.currentTimeMillis() + "");
                } else {
                    if ("cookie".equalsIgnoreCase(keyValue[0])) {
                        String[] ck = keyValue[1].split(";");
                        for (int i = 0; i < ck.length; i++) {
                            String[] kvs = ck[i].split("=");
                            if (StringUtil.containsChinese(kvs[0])) {
                                //如果key包含中文那就URL编码一下
                                kvs[0] = encodeUrl(kvs[0]);
                            }
                            if (kvs.length > 1 && StringUtil.containsChinese(kvs[1])) {
                                //如果value包含中文那就URL编码一下
                                kvs[1] = encodeUrl(kvs[1]);
                            }
                            ck[i] = StringUtil.arrayToString(kvs, 0, "=");
                        }
                        keyValue[1] = StringUtil.arrayToString(ck, 0, ";");
                    }
                    headers.put(keyValue[0], keyValue[1].equalsIgnoreCase("PC_UA") ? PC_UA : keyValue[1].equalsIgnoreCase("MOBILE_UA") ? MOBILE_UA : keyValue[1]);
                }
            }
        }
        return headers;
    }

    public static String getHeadersStr(Map<String, String> headers) {
        if (headers == null || headers.isEmpty()) {
            return "{}";
        }
        StringBuilder builder = new StringBuilder("{");
        boolean first = true;
        for (Map.Entry<String, String> en : headers.entrySet()) {
            if (!first) {
                builder.append("&&");
            }
            first = false;
            builder.append(en.getKey()).append("@").append(en.getValue().replace(";", "；；"));
        }
        builder.append("}");
        return builder.toString();
    }

    public static String getRealUrlFilterHeaders(String searchUrl) {
        if (StringUtils.isEmpty(searchUrl)) {
            return "";
        }
        String[] d = searchUrl.split(";");
        String header = d[d.length - 1];
        if (!header.startsWith("{") || !header.endsWith("}")) {
            return searchUrl;
        }
        return d[0];
    }

    private static String getUrlWithHeader(String url, String posUrl) {
        String[] s = url.split(";");
        if (s.length <= 1) {
            return posUrl;
        } else {
            return posUrl + ";" + StringUtil.arrayToString(s, 1, ";");
        }
    }

    public static void get(String url, final String charset, HashMap headers, OKCallBack callBack) {
//        Log.d(TAG, "just get: "+url);
        try {
            url = url.replace(" ", "");
            url = StringUtil.decodeConflictStr(url);
            String finalUrl = url;
            if (headers == null) {
                headers = new HashMap<>();
                headers.put("User-Agent", PC_UA);
            }
            if (headers.get("redirect") != null) {
                Map<String, List<String>> respHeaders = new TreeMap<>();
                OkHttpUtil.get(OkHttpUtil.noRedirectClient(), finalUrl, callBack);
            } else {
                OkHttpUtil.get(OkHttpUtil.defaultClient(), finalUrl, null, headers, callBack);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void post(String url, final String code, HashMap<String, String> headers, HashMap<String, String> params, OKCallBack callBack) {
//        Log.d(TAG, "just get: "+url);
        try {
            url = url.replace(" ", "");
            url = StringUtil.decodeConflictStr(url);
            String finalUrl = url;
            if (headers == null) {
                headers = new HashMap<>();
                headers.put("User-Agent", PC_UA);
            }
            JSONObject jsonObject = new JSONObject();
            for (Map.Entry<String, String> entry : params.entrySet()) {
                jsonObject.put(entry.getKey(), entry.getValue());
            }
            if (headers.get("redirect") != null) {
                OkHttpUtil.post(OkHttpUtil.noRedirectClient(), finalUrl, params, headers, callBack);
            } else if (headers.get("redirect") != null && headers.get("json") != null) {
                OkHttpUtil.postJson(OkHttpUtil.noRedirectClient(), finalUrl, jsonObject.toString(), headers, callBack);
            } else if (headers.get("json") != null) {
                OkHttpUtil.postJson(OkHttpUtil.defaultClient(), finalUrl, jsonObject.toString(), headers, callBack);
            } else if (headers.get("redirect") != null && params.get("jsonBody") != null) {
                OkHttpUtil.postJson(OkHttpUtil.noRedirectClient(), finalUrl, params.get("jsonBody"), headers, callBack);
            } else if (params.get("jsonBody") != null) {
                OkHttpUtil.postJson(OkHttpUtil.defaultClient(), finalUrl, params.get("jsonBody"), headers, callBack);
            } else {
                OkHttpUtil.post(OkHttpUtil.defaultClient(), finalUrl, params, headers, callBack);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String encodeUrl(String str, String code) {//url解码
        if (StringUtil.isEmpty(code) || "UTF-8".equals(code.toUpperCase()) || "*".equals(code)) {
            return str;
        }
        try {
            str = java.net.URLEncoder.encode(str, code);
        } catch (UnsupportedEncodingException e) {
            Log.e(TAG, "encodeUrl: ", e);
        }
        return str;
    }

    public static String encodeUrl(String str) {//url解码
        try {
            str = java.net.URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            Log.e(TAG, "encodeUrl: ", e);
        }
        return str;
    }

    public static String decodeUrl(String str, String code) {//url解码
        try {
            str = str.replaceAll("%(?![0-9a-fA-F]{2})", "%25");
            str = str.replaceAll("\\+", "%2B");
            str = java.net.URLDecoder.decode(str, code);
        } catch (UnsupportedEncodingException e) {
            Log.e(TAG, "decodeUrl: ", e);
        }
        return str;
    }

    public static String getFirstPageUrl(String url) {
        if (StringUtil.isEmpty(url)) {
            return url;
        }
        try {
            if (url.startsWith("x5Rule://")) {
                return url.split("@")[0].replace("x5Rule://", "");
            } else if (url.startsWith("hiker://empty#http")) {
                url = StringUtils.replaceOnce(url, "hiker://empty#", "");
            } else if (url.startsWith("hiker://empty##http")) {
                url = StringUtils.replaceOnce(url, "hiker://empty##", "");
            }
            int page = 1;
            String[] allUrl = url.split(";");
            String[] urls = allUrl[0].split("\\[firstPage=");
            if (urls.length > 1) {
                return urls[1].split("]")[0];
            } else if (urls[0].contains("fypage@")) {
                //fypage@-1@*2@/fyclass
                String[] strings = urls[0].split("fypage@");
                String[] pages = strings[1].split("@");
                for (int i = 0; i < pages.length - 1; i++) {
                    if (pages[i].startsWith("-")) {
                        page = page - Integer.parseInt(pages[i].replace("-", ""));
                    } else if (pages[i].startsWith("+")) {
                        page = page + Integer.parseInt(pages[i].replace("+", ""));
                    } else if (pages[i].startsWith("*")) {
                        page = page * Integer.parseInt(pages[i].replace("*", ""));
                    } else if (pages[i].startsWith("/")) {
                        page = page / Integer.parseInt(pages[i].replace("/", ""));
                    }
                }
                //前缀 + page + 后缀
                return strings[0] + page + pages[pages.length - 1];
            } else {
                return urls[0].replace("fypage", page + "");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return url;
    }

    public static Map<String, String> getParamsByUrl(String url) {
        if (StringUtil.isEmpty(url)) {
            return new HashMap<>();
        }
        String[] d = url.split(";");
        Map<String, String> params = new HashMap<>();
        String[] ss = StringUtil.splitUrlByQuestionMark(d[0]);
        String[] sss;
        if (ss.length > 1) {
            sss = ss[1].split("&");
        } else {
            sss = new String[]{};
        }
        for (String s : sss) {
            if (StringUtils.isEmpty(s)) {
                continue;
            }
            String[] kk = s.split("=");
            if (kk.length >= 2) {
                params.put(kk[0], StringUtil.decodeConflictStr(StringUtil.arrayToString(kk, 1, "=")));
            }
        }
        return params;
    }

    public static String getContent(String url,ResponseBody content) {
        String code = getCode(url);
        try {
            if (content != null)
                return new String(content.bytes(), code);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

}
