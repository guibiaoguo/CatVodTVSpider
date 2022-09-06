package com.github.catvod.spider;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.github.catvod.crawler.SpiderDebug;

/* loaded from: classes.dex */
public class Init {
    private final Handler g = new Handler(Looper.getMainLooper());
    private Application l;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Loader {
        static volatile Init g = new Init();

        private Loader() {
        }
    }

    private static Init g() {
        return Loader.g;
    }

    public static Application getContext() {
        return g().l;
    }

    public static void init(Context context) {
        SpiderDebug.log("自定义爬虫代码加载成功！baddychen fix");
        g().l = (Application) context;
    }

    public static void run(Runnable runnable) {
        g().g.post(runnable);
    }
}