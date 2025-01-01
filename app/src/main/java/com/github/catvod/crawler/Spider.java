package com.github.catvod.crawler;

import android.content.Context;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.Dns;

public abstract class Spider {

    public void init(Context context) {}

    public void init(Context context, String extend) {
        init(context);
    }

    public String homeContent(boolean filter) throws Exception {
        return "";
    }

    public String homeVideoContent() throws Exception {
        return "";
    }

    public String categoryContent(String tid, String pg, boolean filter, HashMap < String, String > extend) throws Exception {
        return "";
    }

    public String detailContent(List < String > ids) throws Exception {
        return "";
    }

    public String searchContent(String key, boolean quick) throws Exception {
        return "";
    }

    public String searchContent(String key, boolean quick, String pg) throws Exception {
        return "";
    }

    public String playerContent(String flag, String id, List < String > vipFlags) throws Exception {
        return "";
    }

    public boolean manualVideoCheck() {
        return false;
    }

    public boolean isVideoFormat(String url) {
        return false;
    }

    public Object[] proxyLocal(Map < String, String > params) throws Exception {
        return null;
    }

    public void cancelByTag() {

    }

    public void destroy() {}

    public static Dns safeDns() {
        return null;
    }
}
