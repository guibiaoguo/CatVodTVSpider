package com.github.catvod.spider;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.live.TxtSubscribe;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.util.Map;

public class Proxy extends Spider {

    public static int g = -1;

    static void g() {
        if (g <= 0) {
            for (int i = 9978; i < 10000; i++) {
                if (OkHttpUtil.string("http://127.0.0.1:" + i + "/proxy?do=ck", null).equals("ok")) {
                    SpiderDebug.log("Found local server port " + i);
                    g = i;
                    return;
                }
            }
        }
    }

    public static String localProxyUrl() {
        g();
        return "http://127.0.0.1:" + g + "/proxy";
    }

    public static Object[] proxy(Map<String, String> params) {
        try {
            String what = params.get("do");
            if (what.equals("nekk")) {
                String pic = params.get("pic");
                return Nekk.loadPic(pic);
            } else if (what.equals("legado")) {
                return Legado.loadPic(params);
            } else if (what.equals("live")) {
                String type = params.get("type");
                if (type.equals("txt")) {
                    String ext = params.get("ext");
                    ext = new String(Base64.decode(ext, Base64.DEFAULT | Base64.URL_SAFE | Base64.NO_WRAP), "UTF-8");
                    return TxtSubscribe.load(ext);
                }
            }
        } catch (Throwable th) {

        }
        return null;
    }

}
