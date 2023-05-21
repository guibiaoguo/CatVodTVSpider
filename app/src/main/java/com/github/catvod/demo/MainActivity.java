package com.github.catvod.demo;

import android.app.Activity;
import android.os.Bundle;

import com.github.catvod.crawler.Spider;
import com.github.catvod.legado.LegadoData;
import com.github.catvod.spider.Init;
import com.github.catvod.spider.QQ;
import com.github.catvod.script.Bindings;
import com.github.catvod.script.ScriptEngine;
import com.github.catvod.script.SimpleBindings;
import com.github.catvod.script.rhino.RhinoScriptEngine;

import org.mozilla.javascript.Context;
import org.mozilla.javascript.Scriptable;

import java.util.Arrays;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        new Thread(new Runnable() {
            @Override
            public void run() {
                Context cx = Context.enter();
                cx.setOptimizationLevel(-1);
                try {
                    Scriptable scope = cx.initStandardObjects();
                    String str = "3/(1+2)";
                    Object result = cx.evaluateString(scope, str, this.getClass().getName(), 1, null);
//                    try {
//                        Object result_reader = cx.evaluateReader(scope,new StringReader(str),"javax.script.filename",1, null);
//                    } catch (IOException e) {
//                        throw new RuntimeException(e);
//                    }
                    System.out.println(str + "=" + Context.toNumber(result));
                } finally {
                    Context.exit();
                }
                Bindings bindings = new SimpleBindings();
                ScriptEngine scriptEngine = new RhinoScriptEngine(bindings);
                String jsstr = "baseUrl + '111' + source + legado.name";
                LegadoData legadoData = new LegadoData();
                legadoData.name = "test";
                bindings.put("legado", legadoData);
                bindings.put("baseUrl","https://www.baidu.com");
                bindings.put("source","www.google.com");
                Object result = scriptEngine.eval(jsstr, bindings);
                System.out.println(result);
                Init.init(MainActivity.this.getApplicationContext());
                Spider qq = new QQ();
                qq.init(null);
//                qq.init(MainActivity.this.getApplicationContext(), "43073a876e9f4d6c906f1d7df92af59a");
                try {
                    System.out.println(qq.detailContent(Arrays.asList("mzc002009ktefn0")));
//                    SpiderDebug.log(qq.homeContent(true));
//                    SpiderDebug.log(qq.homeVideoContent());
//                    SpiderDebug.log(qq.categoryContent("tv", "1", false, null));
//                    SpiderDebug.log(qq.detailContent(Arrays.asList("https://www.aliyundrive.com/s/xH5vjKHEkW2/folder/6117671f56de2b46691a4302a6b47ac6372c6acb")));
//                    SpiderDebug.log(qq.searchContent("熊出没", false));
//                    SpiderDebug.log(qq.playerContent("qq", "https://v.qq.com/x/cover/mzc00200k1qzwd5/m00468zaiqd.html", Arrays.asList("qq")));
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }

            }
        }).start();
    }

}