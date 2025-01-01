package com.github.catvod.spider;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.live.TxtSubscribe;

import com.github.catvod.utils.Base64;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.io.ByteArrayInputStream;
import java.util.Map;

public class Proxy extends Spider {

    public static int port = -1;

    static void adjustPort() {
        if (Proxy.port > 0) return;
        int port = 9978;
        while (port < 10000) {
            String resp = OkHttpUtil.string("http://127.0.0.1:" + port + "/proxy?do=ck", null);
            if (resp.equals("ok")) {
                SpiderDebug.log("Found local server port " + port);
                Proxy.port = port;
                break;
            }
            port++;
        }
    }

    public static String getUrl() {
        adjustPort();
        return "http://127.0.0.1:" + port + "/proxy";
    }

    public static String localProxyUrl() {
        adjustPort();
        return "http://127.0.0.1:" + Proxy.port + "/proxy";
    }

    public static Object[] proxy(Map<String, String> params) {
        try {
            String what = params.get("do");
            switch (what) {
                case "legado":
                    return Legado.vod(params);
                case "live":
                    String type = params.get("type");
                    if (type.equals("txt")) {
                        String ext = params.get("ext");
                        ext = new String(Base64.decode(ext, Base64.DEFAULT | Base64.URL_SAFE | Base64.NO_WRAP), "UTF-8");
                        return TxtSubscribe.load(ext);
                    }
                    break;
                case "ali":
                    return Ali.vod(params);
                case "quark":
                    return Quark.vod(params);
                case "uc":
                    return UC.vod(params);
//                case "push":
//                    return Push.vod(params);
                case "webdav":
                    return WebDAV.vod(params);
                case "ddys":
                    return Ddys.loadsub(params);
                case "ck":
                    Object[] result = new Object[3];
                    result[0] = 200;
                    result[1] = "text/plain; charset=utf-8";
                    ByteArrayInputStream baos = new ByteArrayInputStream("ok".getBytes("UTF-8"));
                    result[2] = baos;
                    return result;
            }
        } catch (Throwable th) {

        }
        return null;
    }

}
