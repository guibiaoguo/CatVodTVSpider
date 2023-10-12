package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.crawler.Spider;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.github.tvbox.quickjs.JSArray;
import com.github.tvbox.quickjs.JSCallFunction;
import com.github.tvbox.quickjs.JSModule;
import com.github.tvbox.quickjs.JSObject;
import com.github.tvbox.quickjs.QuickJSContext;

import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

public class SpiderJS extends Spider {

    private static final String TAG = "SpiderJS";
    private final String key;
    private String js;
    private final String ext;
    private JSObject jsObject = null;

    private QuickJSContext ctx = QuickJSContext.create();
    private JSObject globalObject = ctx.getGlobalObject();

    void initConsole() {
        ctx.evaluate("var console = {};");
        JSObject console = (JSObject) ctx.getGlobalObject().getProperty("console");
        console.setProperty("log", new JSCallFunction() {
            @Override
            public Object call(Object... args) {
                StringBuilder b = new StringBuilder();
                for (Object o : args) {
                    b.append(o == null ? "null" : o.toString());
                }
                System.out.println(TAG + " >>> " + b);
                return null;
            }
        });
    }

    public SpiderJS(String key, String js, String ext) {
        this.key = key;
        this.js = js;
        this.ext = ext;
    }

    void checkLoaderJS() {
        if (jsObject == null) {
            try {
                String moduleKey = "__" + UUID.randomUUID().toString().replace("-", "") + "__";
                String jsContent = loadModule(js);
                try {
                    if (js.contains(".js?")) {
                        int spIdx = js.indexOf(".js?");
                        String[] query = js.substring(spIdx + 4).split("&|=");
                        js = js.substring(0, spIdx);
                        for (int i = 0; i < query.length; i += 2) {
                            String key = query[i];
                            String val = query[i + 1];
                            String sub = JSModule.convertModuleName(js, val);
                            String content = OkHttpUtil.string(sub, null);
                            jsContent = jsContent.replace("__" + key.toUpperCase() + "__", content);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (jsContent.contains("export default{")) {
                    jsContent = jsContent.replace("export default{", "globalThis." + moduleKey + " ={");
                } else if (jsContent.contains("export default {")) {
                    jsContent = jsContent.replace("export default {", "globalThis." + moduleKey + " ={");
                } else {
                    jsContent = jsContent.replace("__JS_SPIDER__", "globalThis." + moduleKey);
                }
                ctx.evaluateModule(jsContent, js);
                jsObject = (JSObject) ctx.getProperty(globalObject, moduleKey);
                jsObject.getJSFunction("init").call(ext);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }
        }
    }

    String postFunc(String func, Object... args) {
        checkLoaderJS();
        if (jsObject != null) {
            try {
                return jsObject.getJSFunction(func).call(args).toString();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }
        }
        return "";
    }

    @Override
    public void init(Context context, String extend) {
        super.init(context, extend);
        JSModule.setModuleLoader(new JSModule.Loader() {
            @Override
            public String getModuleScript(String moduleName) {
                return loadModule(moduleName);
            }
        });
        initConsole();
        checkLoaderJS();
    }

    static String loadModule(String name) {
        try {
            String content = null;
            if (name.startsWith("http://") || name.startsWith("https://")) {
                content = OkHttpUtil.string(name,null);
            }
            if (name.startsWith("assets://")) {
                InputStream is = Init.context().getAssets().open(name.substring(9));
                byte[] data = new byte[is.available()];
                is.read(data);
                content = new String(data, StandardCharsets.UTF_8);
            }
            if (content != null && !content.isEmpty()) {
                return content;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    @Override
    public String homeContent(boolean filter) {
        return postFunc("home", filter);
    }

    @Override
    public String homeVideoContent() {
        return postFunc("homeVod");
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        try {
            JSObject o = ctx.createNewJSObject();
            if (extend != null) {
                for (String s : extend.keySet()) {
                    o.setProperty(s, extend.get(s));
                }
            }
            return postFunc("category", tid, pg, filter, o);
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }
        return "";

    }

    @Override
    public String detailContent(List<String> ids) {
        return postFunc("detail", ids.get(0));
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        try {

            JSArray arr = ctx.createNewJSArray();
            if (vipFlags != null) {
                for (int i = 0; i < vipFlags.size(); i++) {
                    arr.set(vipFlags.get(i), i);
                }
            }
            return postFunc("play", flag, id, arr);
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }
        return "";
    }

    @Override
    public String searchContent(String key, boolean quick) {
        return postFunc("search", key, quick);
    }
}