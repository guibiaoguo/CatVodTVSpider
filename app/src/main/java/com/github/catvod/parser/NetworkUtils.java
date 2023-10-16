package com.github.catvod.parser;

import com.github.catvod.utils.StringUtil;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.List;

import cn.hutool.core.lang.Validator;
import cn.hutool.core.util.StrUtil;
import cn.hutool.core.util.URLUtil;

public class NetworkUtils {
    public static NetworkUtils INSTANCE = new NetworkUtils();
    public static List notNeedEncoding = Arrays.asList("0123456789abcdefghijlmnopqrstuvwxzABCDEFGHIJLMNOPQRSTUVWXZ+-_.$:()!*@&#,[]".toCharArray());

    public boolean hasUrlEncode(String str) {
        Boolean needEncode = false;
        int i = 0;
        while (i < str.length()) {
            char c = str.charAt(i);
             if (notNeedEncoding.contains(c)) {
                i++;
                continue;
            }
            if (c == '%' && i + 2 < str.length()) {
                // 判断是否符合urlEncode规范
                char c1 = str.charAt(++i);
                char c2 = str.charAt(++i);
                if (isDigit16Char(c1) && isDigit16Char(c2)) {
                    i++;
                    continue;
                }
            }
            // 其他字符，肯定需要urlEncode
            needEncode = true;
            break;
        }

        return !needEncode;
    }

    public boolean isDigit16Char(char c) {
        if ((int)('0') <= (int)(c) && (int)(c) <=(int)('9')) {
            return true;
        }
        if ((int)('A') <= (int)(c) && (int)(c) <=(int)('F')) {
            return true;
        }
        return (int) ('a') <= (int) (c) && (int) (c) <= (int) ('f');
    }

    public String getAbsoluteURL(String baseURL,  String relativePath) {
        String relativePathTrim = StringUtil.trimBlanks(relativePath);
        if (baseURL == null || StringUtil.isAbsUrl(relativePathTrim)) {
            return relativePathTrim;
        } else if(StrUtil.startWith(relativePathTrim, "javascript")) {
            return "";
        } else {
            return URLUtil.complateUrl(StrUtil.subBefore(baseURL, ",", false), relativePathTrim);
//            return URLUtil.completeUrl(StrUtil.subBefore(baseURL, ",", false), relativePathTrim);
        }
    }

    
    public String getAbsoluteURL( URL baseURL,  String relativePath) {
        String relativePathTrim = StringUtil.trimBlanks(relativePath);
        if (baseURL == null || StringUtil.isAbsUrl(relativePathTrim)) {
            return relativePathTrim;
        } else if(StrUtil.startWith(relativePathTrim, "javascript")) {
            return "";
        } else {
            return URLUtil.complateUrl(baseURL.toString(), relativePath);
//            return URLUtil.completeUrl(baseURL.toString(), relativePath);
        }
    }

    
    public String getBaseUrl(String url) {
        if (StrUtil.isNotEmpty(url) && StrUtil.startWithAny(url, "http://", "https://")) {
            URL url1 = null;
            try {
                url1 = new URL(url);
            } catch (MalformedURLException e) {
                throw new RuntimeException(e);
            }
            return StrUtil.format("{}://{}",url1.getProtocol(),url1.getHost());
        }
        return url;
    }

    /**
     * 获取域名，供cookie保存和读取，处理失败返回传入的url
     * http://1.2.3.4 => 1.2.3.4
     * https://www.example.com =>  example.com
     * http://www.biquge.com.cn => biquge.com.cn
     * http://www.content.example.com => example.com
     */
    public String getSubDomain(String url) {
        String baseUrl = getBaseUrl(url);
        if (StrUtil.isEmpty(baseUrl)) return url;
        String host = null;
        try {
            host = new URL(baseUrl).getHost();
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
        if (isIPAddress(host)) return host;
        return host;
    }

    public boolean isIPAddress( String input) {
        return isIPv4Address(input) || isIPv6Address(input);
    }

    public boolean isIPv4Address( String input) {
        return StrUtil.isNotEmpty(input) && Validator.isIpv4(input);
    }

    public boolean isIPv6Address( String input) {
        return StrUtil.isNotEmpty(input) && Validator.isIpv6(input);
    }

    private NetworkUtils() {
    }
}

