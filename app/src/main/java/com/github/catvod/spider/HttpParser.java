package com.github.catvod.spider;

import android.util.Log;


import com.github.catvod.crawler.SpiderReq;
import com.github.catvod.crawler.SpiderReqResult;
import com.github.catvod.crawler.SpiderUrl;
import com.github.catvod.utils.SpiderOKClient;
import com.github.catvod.utils.StringUtil;

import org.apache.commons.lang3.StringUtils;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import okhttp3.MediaType;
import okhttp3.RequestBody;

/**
 * 作者：By hdy
 * 日期：On 2018/9/8
 * 时间：At 8:36
 */

public class HttpParser {

    private static final String TAG = "HttpParser";
    private static final String PC_UA = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36";
    private static final String MOBILE_UA = "";

    public static void parseSearchUrlForHtml(String sourceUrl, OnSearchCallBack onSearchCallBack) {
        String[] d = sourceUrl.split(";");
        if (d.length == 1) {
            get(d[0], null, null, onSearchCallBack);
        } else if (d.length == 2) {
            if ("get".equalsIgnoreCase(d[1]) || "*".equals(d[1])) {
                get(d[0], null, getHeaders(sourceUrl), onSearchCallBack);
            } else if ("post".equalsIgnoreCase(d[1])) {
                String[] ss = StringUtil.splitUrlByQuestionMark(d[0]);
                String[] sss;
                if (ss.length > 1) {
                    sss = ss[1].split("&");
                } else {
                    sss = new String[]{};
                }
                HashMap params = new HashMap();
                for (int i = 0; i < sss.length; i++) {
                    if (StringUtils.isEmpty(sss[i])) {
                        continue;
                    }
                    String[] kk = sss[i].split("=");
                    if (kk.length >= 2) {
                        params.put(kk[0], StringUtil.arrayToString(kk, 1, "="));
                    }
                }
                post(ss[0], null, getHeaders(sourceUrl), params, onSearchCallBack);
            } else {
                get(d[0], d[1], getHeaders(sourceUrl), onSearchCallBack);
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
                HashMap params = new HashMap();
                for (int i = 0; i < sss.length; i++) {
                    if (StringUtils.isEmpty(sss[i])) {
                        continue;
                    }
                    String[] kk = sss[i].split("=");
                    if (kk.length >= 2) {
                        params.put(kk[0], StringUtil.arrayToString(kk, 1, "="));
                    }
                }
                post(ss[0], d[2], getHeaders(sourceUrl), params, onSearchCallBack);
            } else {
                get(d[0], d[2], getHeaders(sourceUrl), onSearchCallBack);
            }
        }
    }

    public static String getCode(String searchUrl) {
        if (StringUtils.isEmpty(searchUrl)) {
            return null;
        }
        String[] d = searchUrl.split(";");
        String code = null;
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
        String[] d = searchUrl.split(";");
        String header = d[d.length - 1];
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
                    if ("cookie".equalsIgnoreCase(keyValue[0]) && StringUtil.containsChinese(keyValue[1])) {
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

    public static void get(String url, final String charset, HashMap headers, final OnSearchCallBack onSearchCallBack) {
//        Log.d(TAG, "just get: "+url);
        try {
            url = url.replace(" ", "");
            url = StringUtil.decodeConflictStr(url);
            String finalUrl = url;
            SpiderUrl su = new SpiderUrl(finalUrl, headers);
            SpiderReqResult spiderReqResult;
            if (headers == null) {
                headers = new HashMap<>();
                headers.put("User-Agent", PC_UA);
            }
            if (headers.get("redirect") != null) {
                spiderReqResult = SpiderReq.get(SpiderOKClient.noRedirectClient(), su);
            } else {
                spiderReqResult = SpiderReq.get(su);
            }
            if(spiderReqResult.content.contains("404 Not Found")) {
                onSearchCallBack.onFailure(404,spiderReqResult.content);
            } else {
                onSearchCallBack.onSuccess(finalUrl, spiderReqResult);
            }
        } catch (Exception e) {
            e.printStackTrace();
            onSearchCallBack.onFailure(500, e.toString());
        }
    }

    public static void post(String url, final String code, HashMap<String, String> headers, HashMap<String, String> params, final OnSearchCallBack onSearchCallBack) {
//        Log.d(TAG, "just get: "+url);
        try {
            url = url.replace(" ", "");
            url = StringUtil.decodeConflictStr(url);
            String finalUrl = url;
            if (headers == null) {
                headers = new HashMap<>();
                headers.put("User-Agent", PC_UA);
            }
            SpiderReqResult spiderReqResult;
            if (headers.get("redirect") != null) {
                spiderReqResult = SpiderReq.postForm(SpiderOKClient.noRedirectClient(), finalUrl, params, "sp_req_default", headers);
            } else if (headers.get("redirect") != null && headers.get("json") != null) {
                spiderReqResult = SpiderReq.postJson(SpiderOKClient.noRedirectClient(), finalUrl, params, "sp_req_default", headers);
            } else if (headers.get("json") != null) {
                spiderReqResult = SpiderReq.postJson(finalUrl, params, headers);
            } else if (headers.get("redirect") != null && params.get("jsonBody") != null) {
                spiderReqResult = SpiderReq.postBody(SpiderOKClient.noRedirectClient(), url, RequestBody.create(MediaType.parse("application/json; charset=utf-8"), params.get("jsonBody")), "sp_req_default", headers);
            } else if (params.get("jsonBody") != null) {
                spiderReqResult = SpiderReq.postBody(url, RequestBody.create(MediaType.parse("application/json; charset=utf-8"), params.get("jsonBody")), headers);
            } else {
                spiderReqResult = SpiderReq.postForm(finalUrl, params, headers);
            }
            if(spiderReqResult.content.contains("404 Not Found")) {
                onSearchCallBack.onFailure(404,spiderReqResult.content);
            } else {
                onSearchCallBack.onSuccess(finalUrl, spiderReqResult);
            }
        } catch (Exception e) {
            e.printStackTrace();
            onSearchCallBack.onFailure(500, e.toString());
        }
    }

    public interface OnSearchCallBack {

        void onSuccess(String url, SpiderReqResult s);

        void onFailure(int errorCode, String msg);
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
        for (int i = 0; i < sss.length; i++) {
            if (StringUtils.isEmpty(sss[i])) {
                continue;
            }
            String[] kk = sss[i].split("=");
            if (kk.length >= 2) {
                params.put(kk[0], StringUtil.decodeConflictStr(StringUtil.arrayToString(kk, 1, "=")));
            }
        }
        return params;
    }

}
