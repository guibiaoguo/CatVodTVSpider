package com.github.catvod.analyzeRules;

import android.os.Build.VERSION;

import com.github.catvod.utils.StringUtil;

import org.apache.commons.lang3.StringUtils;

import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Enumeration;
import java.util.regex.Pattern;

public class NetworkUtils {
    private static final Pattern IPV4_PATTERN;
    
    public static final NetworkUtils INSTANCE;

    public final boolean isAvailable() {
        if (VERSION.SDK_INT < 23) {
            Object var1 = null;
        }

        return false;
    }
    
    private final boolean isDigit16Char(char c) {
        boolean var10000;
        label36: {
            if ('0' <= c) {
                if ('9' >= c) {
                    break label36;
                }
            }

            if ('A' <= c) {
                if ('F' >= c) {
                    break label36;
                }
            }

            if ('a' <= c) {
                if ('f' >= c) {
                    break label36;
                }
            }

            var10000 = false;
            return var10000;
        }

        var10000 = true;
        return var10000;
    }

    
    public final String getAbsoluteURL( String baseURL,  String relativePath) {
        CharSequence var3 = (CharSequence)baseURL;
        if (var3 == null || var3.length() == 0) {
            return relativePath;
        } else if (StringUtil.isAbsUrl(relativePath)) {
            return relativePath;
        } else {
            try {
                URL absoluteUrl = new URL(StringUtils.substringBefore(baseURL, ","));
                URL parseUrl = new URL(absoluteUrl, relativePath);
                String var10000 = parseUrl.toString();
                String relativeUrl = var10000;
                return relativeUrl;
            } catch (Exception var6) {
                return relativePath;
            }
        }
    }

    
    public final String getAbsoluteURL( URL baseURL,  String relativePath) throws MalformedURLException {
        if (baseURL == null || StringUtil.isAbsUrl(relativePath)) {
            return relativePath;
        } else {
            String var10000;
            String relativeUrl;
            try {
                relativePath = URLEncoder.encode(relativePath,"utf-8")
                        .replaceAll("%2F","/")
                        .replaceAll("%3F","?")
                        .replaceAll("%3D","=")
                        .replaceAll("%3B",";")
                        .replaceAll("\\+","%20");
                URL parseUrl = new URL(baseURL, relativePath);
                var10000 = parseUrl.toURI().toASCIIString();
                relativeUrl = var10000;
                return relativeUrl;
            } catch (Exception var5) {
                var10000 = (new URL(baseURL, relativePath)).toString();
                relativeUrl = var10000;
                return relativeUrl;
            }
        }
    }

    
    public final String getBaseUrl( String url) {
        if (url != null && StringUtils.startsWith(url, "http")) {
            int index = StringUtils.indexOf(url, "/", 9);
            String var10000;
            if (index == -1) {
                var10000 = url;
            } else {
                byte var4 = 0;
                String var5 = url.substring(var4, index);
                var10000 = var5;
            }

            return var10000;
        } else {
            return null;
        }
    }

    
    public final String getSubDomain( String url) {
        String var10000 = this.getBaseUrl(url);
        if (var10000 != null) {
            String baseUrl = var10000;
            int var4;
            String var5;
            if (StringUtils.indexOf(baseUrl, ".", 0) == StringUtils.lastIndexOf(baseUrl, ".")) {
                var4 = StringUtils.lastIndexOf(baseUrl, "/") + 1;
                var5 = baseUrl.substring(var4);
                var10000 = var5;
            } else {
                var4 = StringUtils.indexOf(baseUrl, ".") + 1;
                var5 = baseUrl.substring(var4);
                var10000 = var5;
            }

            return var10000;
        } else {
            return "";
        }
    }

    
    public final InetAddress getLocalIPAddress() {
        Enumeration enumeration = (Enumeration)null;

        try {
            enumeration = NetworkInterface.getNetworkInterfaces();
        } catch (SocketException var5) {
        }

        if (enumeration != null) {
            while(true) {
                Enumeration addresses;
                do {
                    if (!enumeration.hasMoreElements()) {
                        return null;
                    }

                    NetworkInterface nif = (NetworkInterface)enumeration.nextElement();
                    addresses = nif.getInetAddresses();
                } while(addresses == null);

                while(addresses.hasMoreElements()) {
                    InetAddress address = (InetAddress)addresses.nextElement();
                    if (!address.isLoopbackAddress() && this.isIPv4Address(address.getHostAddress())) {
                        return address;
                    }
                }
            }
        } else {
            return null;
        }
    }

    public final boolean isIPv4Address( String input) {
        return input != null && IPV4_PATTERN.matcher((CharSequence)input).matches();
    }

    private NetworkUtils() {
    }

    static {
        NetworkUtils var0 = new NetworkUtils();
        INSTANCE = var0;
        IPV4_PATTERN = Pattern.compile("^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$");
    }
}

