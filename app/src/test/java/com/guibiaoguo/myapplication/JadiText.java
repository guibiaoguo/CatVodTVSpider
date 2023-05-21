package com.guibiaoguo.myapplication;

import android.text.TextUtils;
import android.util.Log;

import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.legado.LegadoData;
import com.github.catvod.parser.AnalyzeRule;
import com.github.catvod.parser.AnalyzeUrl;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.google.gson.GsonBuilder;
import com.github.catvod.script.Bindings;
import com.github.catvod.script.ScriptEngine;
import com.github.catvod.script.SimpleBindings;
import com.github.catvod.script.rhino.RhinoScriptEngine;

import org.junit.Test;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import okhttp3.Call;


public class JadiText {

    @Test
    public void vod() {
        System.out.println(TextUtils.isEmpty(""));
        System.out.println(d("49"));
        System.out.println(a(new byte[]{3, 9, -35, -31, -95, -17, -120}, new byte[]{64, 115, -82, Byte.MIN_VALUE, -47, -97, -41, 123}));
        System.out.println(a(new byte[]{3, 9, -35, -31, -95, -17, -120}, new byte[]{64, 115, -82, Byte.MIN_VALUE, -47, -97, -41, 123}));
        System.out.println(a(new byte[]{16, -45, -86, 118, -113, -61}, new byte[]{67, -125, -103, 64, -65, -100, -85, 8}));
        System.out.println(a(new byte[]{-64, 84, 66, 2}, new byte[]{-116, 61, 32, 93, -121, -60, 44, 115}));
        System.out.println(a(new byte[]{-58, 2, 111, 59, 23, 17}, new byte[]{-121, 119, 10, 79, 114, 78, -90, 66}));
        System.out.println(a(new byte[]{63, -106, -43, 20, -78, -54, 114, 86}, new byte[]{116, -29, -69, 109, -57, -3, 69, 9}));
        System.out.println(a(new byte[]{92, -16, 113, 39, -37}, new byte[]{24, -108, 8, 84, -124, -62, 109, -103}));
        System.out.println(a(new byte[]{104, -107, 76, -112, 32, -90}, new byte[]{41, -27, 60, -60, 116, -7, 110, -11}));
        System.out.println(a(new byte[]{108, -53, 97, 38, -3, -56, 4}, new byte[]{47, -92, 10, 67, -112, -66, 91, -39}));
        System.out.println(a(new byte[]{-56, -31, 42, 103, 93, 103}, new byte[]{-116, -104, 31, 82, 104, 56, 37, -83}));
        System.out.println(a(new byte[]{-76, 125, -95, 24, 73}, new byte[]{-8, 26, -40, 97, 22, 20, -45, -29}));
        System.out.println(a(new byte[]{97, -122, -48, 86, -67, 51, -84, -120, 72, -80}, new byte[]{45, -17, -92, 51, -4, 67, -36, -28}));
        System.out.println(a(new byte[]{-46, 117, -23, -36, 67, -112, 115, 46}, new byte[]{-103, 0, -120, -75, 40, -15, 29, 113}));
        System.out.println(a(new byte[]{-47, 88, 77, 113, -75}, new byte[]{-104, 19, 44, 31, -22, 116, -126, 84}));
        System.out.println(a(new byte[]{-122, -94, 6, -62, -102, 21}, new byte[]{-33, -53, 119, -85, -15, 74, 112, 88}));
        System.out.println(a(new byte[]{26, 104, 109, -123, 111, 15}, new byte[]{66, 1, 12, -22, 7, 80, -26, -27}));
        System.out.println(d("49"));
        System.out.println(md5(a(new byte[]{3, 9, -35, -31, -95, -17, -120}, new byte[]{64, 115, -82, Byte.MIN_VALUE, -47, -97, -41, 123})));
        System.out.println(md5(a(new byte[]{3, 9, -35, -31, -95, -17, -120}, new byte[]{64, 115, -82, Byte.MIN_VALUE, -47, -97, -41, 123})));
        System.out.println(md5(a(new byte[]{16, -45, -86, 118, -113, -61}, new byte[]{67, -125, -103, 64, -65, -100, -85, 8})));
        System.out.println(md5(a(new byte[]{-64, 84, 66, 2}, new byte[]{-116, 61, 32, 93, -121, -60, 44, 115})));
        System.out.println(md5(a(new byte[]{-58, 2, 111, 59, 23, 17}, new byte[]{-121, 119, 10, 79, 114, 78, -90, 66})));
        System.out.println(md5(a(new byte[]{63, -106, -43, 20, -78, -54, 114, 86}, new byte[]{116, -29, -69, 109, -57, -3, 69, 9})));
        System.out.println(md5(a(new byte[]{92, -16, 113, 39, -37}, new byte[]{24, -108, 8, 84, -124, -62, 109, -103})));
        System.out.println(md5(a(new byte[]{104, -107, 76, -112, 32, -90}, new byte[]{41, -27, 60, -60, 116, -7, 110, -11})));
        System.out.println(md5(a(new byte[]{108, -53, 97, 38, -3, -56, 4}, new byte[]{47, -92, 10, 67, -112, -66, 91, -39})));
        System.out.println(md5(a(new byte[]{-56, -31, 42, 103, 93, 103}, new byte[]{-116, -104, 31, 82, 104, 56, 37, -83})));
        System.out.println(md5(a(new byte[]{-76, 125, -95, 24, 73}, new byte[]{-8, 26, -40, 97, 22, 20, -45, -29})));
        System.out.println(md5(a(new byte[]{97, -122, -48, 86, -67, 51, -84, -120, 72, -80}, new byte[]{45, -17, -92, 51, -4, 67, -36, -28})));
        System.out.println(md5(a(new byte[]{-46, 117, -23, -36, 67, -112, 115, 46}, new byte[]{-103, 0, -120, -75, 40, -15, 29, 113})));
        System.out.println(md5(a(new byte[]{-47, 88, 77, 113, -75}, new byte[]{-104, 19, 44, 31, -22, 116, -126, 84})));
        System.out.println(md5(a(new byte[]{-122, -94, 6, -62, -102, 21}, new byte[]{-33, -53, 119, -85, -15, 74, 112, 88})));
        System.out.println(md5(a(new byte[]{26, 104, 109, -123, 111, 15}, new byte[]{66, 1, 12, -22, 7, 80, -26, -27})));
        System.out.println(d("273E4F"));

        }

    private static final String KEY = "jzzuLX";
    private static final String hexString = "0123456789ABCDEF";

    public static String d(String str) {
        ByteArrayOutputStream baos = new ByteArrayOutputStream(str.length() / 2);
        for (int i = 0; i < str.length(); i += 2) {
            baos.write((hexString.indexOf(str.charAt(i)) << 4) | hexString.indexOf(str.charAt(i + 1)));
        }
        byte[] b = baos.toByteArray();
        int len = b.length;
        int keyLen = KEY.length();
        for (int i2 = 0; i2 < len; i2++) {
            b[i2] = (byte) (b[i2] ^ KEY.charAt(i2 % keyLen));
        }
        return new String(b);
    }

    public static String a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int length2 = bArr2.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            if (i2 >= length2) {
                i2 = 0;
            }
            bArr[i] = (byte) (bArr[i] ^ bArr2[i2]);
            i++;
            i2++;
        }
        return new String(bArr);
    }

    public static String md5(String str) {
        try {
            StringBuilder sb = new StringBuilder(new BigInteger(1, MessageDigest.getInstance(d("273E4F")).digest(str.getBytes(d("3F2E3C5874")))).toString(16));
            while (sb.length() < 32) {
                sb.insert(0, d("5A"));
            }
            return sb.toString().toLowerCase();
        } catch (Exception unused) {
            return "";
        }
    }

    /**
     *
     * @return
     */
    @Test
    public void  jsObjFunc() throws IOException {

        Context cx = Context.enter();
        try {
            Scriptable scope = cx.initStandardObjects();
            String str = "3/(1+2)";
            Object result = cx.evaluateString(scope, str, "javax.script.filename", 1, null);
            Object result_reader = cx.evaluateReader(scope,new StringReader(str),"javax.script.filename",1, null);
            System.out.println(str + "=" + Context.toNumber(result));
        } finally {
            Context.exit();
        }
    }

    @Test
    public void test_script() throws Exception {
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
    }


    private Class clazz;
    private org.mozilla.javascript.Context rhino;
    private Scriptable scope;

    private String jsCode = "";
    private String testCode =
            "var method_Api_rhino_test = ScriptAPI.getMethod(\"test\",[java.lang.String])\n" +
                    "function rhino_test() {\n" +
                    "    var str = \"jzy666\";\n" +
                    "    method_Api_rhino_test.invoke(javaContext,str);\n" +
                    "}" +
                    "rhino_test()";

    private void initJsEngine(){
        jsCode = "var ScriptAPI = java.lang.Class.forName(\"" + LegadoData.class.getName() + "\", true, javaLoader);\n"
                + testCode;
    }

    public void request(){
        rhino = org.mozilla.javascript.Context.enter();
        rhino.setOptimizationLevel(-1);
        try{
            scope = rhino.initStandardObjects();
            // 这两句是设置当前的类做为上下文以及获取当前的类加载器，以便于 rhino 通过反射获取档期类
            ScriptableObject.putProperty(scope,"javaContext", org.mozilla.javascript.Context.javaToJS(LegadoData.class,scope));
            ScriptableObject.putProperty(scope,"javaLoader", org.mozilla.javascript.Context.javaToJS(clazz.getClassLoader(),scope));
            //执行 js 代码
            Object x = rhino.evaluateString(scope, jsCode, clazz.getSimpleName(), 1, null);
        }finally {
            //退出
            org.mozilla.javascript.Context.exit();
        }
    }
    // 对应类中需要需要被调用的方法，可以做为 JS 代码执行时的回调
    public void rhino_test(String str){
        Log.i("jzy111","rhino_test: " + str);
    }

    @Test
    public void test_Object() {
        clazz = LegadoData.class;
        initJsEngine();
        request();
    }

    @Test
    public void getResponse() {
        Map<String, Object> data = new HashMap<>();
        data.put("charset","utf-8");
        data.put("method","POST");
        data.put("body","keyword={{key}}&kwtype=0");
        String body = new GsonBuilder().disableHtmlEscaping().create().toJson(data);
        AnalyzeUrl analyzeUrl = new AnalyzeUrl("https://m.huangdizhijia.com/index.php?action=search," + body,"我的",1,"https://m.huangdingzhijia.com");
        analyzeUrl.getRespone(new OKCallBack.OKCallBackString() {
            @Override
            protected void onFailure(Call call, Exception e) {
                System.out.println(e);
            }

            @Override
            protected void onResponse(String response) {
                System.out.println(response);
                AnalyzeRule analyzeRule = new AnalyzeRule();
                analyzeRule.setContent(response, analyzeUrl.getBaseUrl());
                List<Vod> list = new ArrayList<>();
                for (Object element : analyzeRule.getElements("class.search-bookele")) {
                    String name = analyzeRule.getString("tag.h3@text", element,false);
                    String img = analyzeRule.getString("tag.img@src", element, false);
                    String author = analyzeRule.getString("tag.p.0@text", element,false);
                    String type = analyzeRule.getString("tag.p.1@text",element,false);
                    String url = analyzeRule.getString("tag.a@href##.*id=(\\d+)##https://www.huangdizhijia.com/novel/$1",element,false);
                    list.add(new Vod(url,name,img,type));
                }
                System.out.println(Result.string(list));
            }
        });
    }

    @Test
    public void test_java() {

    }
}
