//package com.guibiaoguo.myapplication;
//
//import android.text.TextUtils;
//import android.util.Log;
//
//import com.github.catvod.bean.Result;
//import com.github.catvod.bean.Vod;
//import com.github.catvod.legado.LegadoData;
//import com.github.catvod.parser.AnalyzeRule;
//import com.github.catvod.parser.AnalyzeUrl;
//import com.github.catvod.utils.okhttp.OKCallBack;
//import com.google.gson.GsonBuilder;
//import com.github.catvod.script.Bindings;
//import com.github.catvod.script.ScriptEngine;
//import com.github.catvod.script.SimpleBindings;
//import com.github.catvod.script.rhino.RhinoScriptEngine;
//
//import org.junit.Test;
//import org.mozilla.javascript.Context;
//import org.mozilla.javascript.Scriptable;
//import org.mozilla.javascript.ScriptableObject;
//
//import java.io.ByteArrayOutputStream;
//import java.io.IOException;
//import java.io.StringReader;
//import java.lang.reflect.InvocationTargetException;
//import java.lang.reflect.Method;
//import java.math.BigInteger;
//import java.security.MessageDigest;
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import cn.hutool.core.date.DateUtil;
//import cn.hutool.core.util.HexUtil;
//import cn.hutool.core.util.ReflectUtil;
//import okhttp3.Call;
//
//
//public class JadiText {
//
//    @Test
//    public void vod() {
//        System.out.println(TextUtils.isEmpty(""));
//        System.out.println(d("49"));
//        System.out.println(a(new byte[]{3, 9, -35, -31, -95, -17, -120}, new byte[]{64, 115, -82, Byte.MIN_VALUE, -47, -97, -41, 123}));
//        System.out.println(a(new byte[]{3, 9, -35, -31, -95, -17, -120}, new byte[]{64, 115, -82, Byte.MIN_VALUE, -47, -97, -41, 123}));
//        System.out.println(a(new byte[]{16, -45, -86, 118, -113, -61}, new byte[]{67, -125, -103, 64, -65, -100, -85, 8}));
//        System.out.println(a(new byte[]{-64, 84, 66, 2}, new byte[]{-116, 61, 32, 93, -121, -60, 44, 115}));
//        System.out.println(a(new byte[]{-58, 2, 111, 59, 23, 17}, new byte[]{-121, 119, 10, 79, 114, 78, -90, 66}));
//        System.out.println(a(new byte[]{63, -106, -43, 20, -78, -54, 114, 86}, new byte[]{116, -29, -69, 109, -57, -3, 69, 9}));
//        System.out.println(a(new byte[]{92, -16, 113, 39, -37}, new byte[]{24, -108, 8, 84, -124, -62, 109, -103}));
//        System.out.println(a(new byte[]{104, -107, 76, -112, 32, -90}, new byte[]{41, -27, 60, -60, 116, -7, 110, -11}));
//        System.out.println(a(new byte[]{108, -53, 97, 38, -3, -56, 4}, new byte[]{47, -92, 10, 67, -112, -66, 91, -39}));
//        System.out.println(a(new byte[]{-56, -31, 42, 103, 93, 103}, new byte[]{-116, -104, 31, 82, 104, 56, 37, -83}));
//        System.out.println(a(new byte[]{-76, 125, -95, 24, 73}, new byte[]{-8, 26, -40, 97, 22, 20, -45, -29}));
//        System.out.println(a(new byte[]{97, -122, -48, 86, -67, 51, -84, -120, 72, -80}, new byte[]{45, -17, -92, 51, -4, 67, -36, -28}));
//        System.out.println(a(new byte[]{-46, 117, -23, -36, 67, -112, 115, 46}, new byte[]{-103, 0, -120, -75, 40, -15, 29, 113}));
//        System.out.println(a(new byte[]{-47, 88, 77, 113, -75}, new byte[]{-104, 19, 44, 31, -22, 116, -126, 84}));
//        System.out.println(a(new byte[]{-122, -94, 6, -62, -102, 21}, new byte[]{-33, -53, 119, -85, -15, 74, 112, 88}));
//        System.out.println(a(new byte[]{26, 104, 109, -123, 111, 15}, new byte[]{66, 1, 12, -22, 7, 80, -26, -27}));
//        System.out.println(d("49"));
//        System.out.println(md5(a(new byte[]{3, 9, -35, -31, -95, -17, -120}, new byte[]{64, 115, -82, Byte.MIN_VALUE, -47, -97, -41, 123})));
//        System.out.println(md5(a(new byte[]{3, 9, -35, -31, -95, -17, -120}, new byte[]{64, 115, -82, Byte.MIN_VALUE, -47, -97, -41, 123})));
//        System.out.println(md5(a(new byte[]{16, -45, -86, 118, -113, -61}, new byte[]{67, -125, -103, 64, -65, -100, -85, 8})));
//        System.out.println(md5(a(new byte[]{-64, 84, 66, 2}, new byte[]{-116, 61, 32, 93, -121, -60, 44, 115})));
//        System.out.println(md5(a(new byte[]{-58, 2, 111, 59, 23, 17}, new byte[]{-121, 119, 10, 79, 114, 78, -90, 66})));
//        System.out.println(md5(a(new byte[]{63, -106, -43, 20, -78, -54, 114, 86}, new byte[]{116, -29, -69, 109, -57, -3, 69, 9})));
//        System.out.println(md5(a(new byte[]{92, -16, 113, 39, -37}, new byte[]{24, -108, 8, 84, -124, -62, 109, -103})));
//        System.out.println(md5(a(new byte[]{104, -107, 76, -112, 32, -90}, new byte[]{41, -27, 60, -60, 116, -7, 110, -11})));
//        System.out.println(md5(a(new byte[]{108, -53, 97, 38, -3, -56, 4}, new byte[]{47, -92, 10, 67, -112, -66, 91, -39})));
//        System.out.println(md5(a(new byte[]{-56, -31, 42, 103, 93, 103}, new byte[]{-116, -104, 31, 82, 104, 56, 37, -83})));
//        System.out.println(md5(a(new byte[]{-76, 125, -95, 24, 73}, new byte[]{-8, 26, -40, 97, 22, 20, -45, -29})));
//        System.out.println(md5(a(new byte[]{97, -122, -48, 86, -67, 51, -84, -120, 72, -80}, new byte[]{45, -17, -92, 51, -4, 67, -36, -28})));
//        System.out.println(md5(a(new byte[]{-46, 117, -23, -36, 67, -112, 115, 46}, new byte[]{-103, 0, -120, -75, 40, -15, 29, 113})));
//        System.out.println(md5(a(new byte[]{-47, 88, 77, 113, -75}, new byte[]{-104, 19, 44, 31, -22, 116, -126, 84})));
//        System.out.println(md5(a(new byte[]{-122, -94, 6, -62, -102, 21}, new byte[]{-33, -53, 119, -85, -15, 74, 112, 88})));
//        System.out.println(md5(a(new byte[]{26, 104, 109, -123, 111, 15}, new byte[]{66, 1, 12, -22, 7, 80, -26, -27})));
//        System.out.println(d("273E4F"));
//        System.out.println(a(new byte[]{34, -57, -6, 60, 90, -85, -113, 121, -111, 38, 33, -80, -93, -32, -31, 97, -18, -119}, new byte[]{118, -88, -111, 89, 52, 78, 8, -61}));
////        System.out.println(d("B1ECA1D597FEB1DFA1D297CFB1E6A1D397F3B1D1A1E297FDB1E2A1D197F0B1E5"));
////        System.out.println(d("B1DAA1DD97F8B1E2A1D097FFB1E2A1DE97C2B1DFA1ED97C2B1EDA1D797F3B1DFA1D297C0"));
////        System.out.println(d("B1D2A1DE97CFB1DCA1EA97C0B1E2A1DE97FAB1DBA1D297FCB1E6A1ED97F9B1DEA1DD97C0B1DEA1D497FDB1D1A1EE97FEB1E2A1D397F8"));
//        System.out.println(a(new byte[]{-104, -94, -18, -95, 62, 97}, new byte[]{-22, -51, -116, -51, 81, 25, -1, 30}));
//        System.out.println(a(new byte[]{-102, 100, -15, -110, 33, 62, 68, 64, -121, 121, -88, -125, 100, 73, 100, 0, -39, 110, -5, -53, 109}, new byte[]{-29, 29, -120, -21, 12, 115, 9, 109}));
//        System.out.println(a(new byte[]{-13, -65, 112, 71, -82, 16, 72, -11}, new byte[]{-105, -51, 25, 49, -53, 79, 33, -111}));
//        System.out.println(a(new byte[]{58, 42, -8, -36, 12, -41, 54, 116, 40, 53, -50, -9, 2, -33, 48, Byte.MAX_VALUE}, new byte[]{91, 70, -111, -125, 109, -76, 85, 17}));
//        System.out.println(a(new byte[]{30, 39, -77, 32, -92, -70, 32, 46, 20, 36, -91, 17, -113, -76, 40, 40, 31}, new byte[]{113, 87, -42, 78, -5, -37, 67, 77}));
//        System.out.println(d(d("1E030A10")));
//        System.out.println(HexUtil.decodeHexStr("1E030A10"));
//        System.out.println(HexUtil.decodeHexStr("0511"));
//        System.out.println(d("0511"));
//        System.out.println(d("020E0E057677454B48426268444A544476"));
//        System.out.println(d("0E15"));
//        System.out.println(d("1D1F18112D2E"));
//        System.out.println(d("0911"));
//        System.out.println(d("0B1613"));
//        System.out.println(d("0E1E081E"));
//        System.out.println(d("0B0F1F0129"));
//        System.out.println(d("090009053C"));
//        System.out.println(d("12131B1A24"));
//        System.out.println(a(new byte[]{-63, -75, -12, -80}, new byte[]{-107, -31, -99, -58, -12, -40, -93, -106}));
//        System.out.println(a(new byte[]{9, 99, -116, 76, -81}, new byte[]{93, 55, -25, 41, -42, 111, -57, -100}));
//        System.out.println(a(new byte[]{33, 14, -52, 20, 107, -100}, new byte[]{83, 97, -82, 120, 4, -28, 3, 0}));
//        System.out.println(d("B1DCA1E997F0B1E2A1ED97FEB1E5A1EF97F0B1D1A1ED97C3B1E2A1ED97FCB1DEA1E2"));
//        System.out.println(a(new byte[]{-122, 119, 1, 58, -33, 106, 119, -47, -104, 106, 17, 47, -61, 126, 44, -54, -102, 117, 91, 34, -42, 126, 59, -124, -63, 113, 26, 40, -64, 63, 32}, new byte[]{-18, 3, 117, 74, -84, 80, 88, -2}));
//        System.out.println(DateUtil.date(System.currentTimeMillis()-7200*1000));
//        System.out.println(DateUtil.now());
//        System.out.println(System.currentTimeMillis());
//        System.out.println(DateUtil.parse("2023-05-28 02:00:00 AM","yyyy-MM-dd hh:mm:ss").getTime());
//        System.out.println(a(new byte[]{-102, 100, -15, -110, 33, 62, 68, 64, -121, 121, -88, -125, 100, 73, 100, 0, -39, 110, -5, -53, 109}, new byte[]{-29, 29, -120, -21, 12, 115, 9, 109}));
//    }
//
//    private static final String KEY = "jzzuLX";
//    private static final String hexString = "0123456789ABCDEF";
//
//    public static String d(String str) {
//        ByteArrayOutputStream baos = new ByteArrayOutputStream(str.length() / 2);
//        for (int i = 0; i < str.length(); i += 2) {
//            baos.write((hexString.indexOf(str.charAt(i)) << 4) | hexString.indexOf(str.charAt(i + 1)));
//        }
//        byte[] b = baos.toByteArray();
//        int len = b.length;
//        int keyLen = KEY.length();
//        for (int i2 = 0; i2 < len; i2++) {
//            b[i2] = (byte) (b[i2] ^ KEY.charAt(i2 % keyLen));
//        }
//        return new String(b);
//    }
//
//    public static String a(byte[] bArr, byte[] bArr2) {
//        int length = bArr.length;
//        int length2 = bArr2.length;
//        int i = 0;
//        int i2 = 0;
//        while (i < length) {
//            if (i2 >= length2) {
//                i2 = 0;
//            }
//            bArr[i] = (byte) (bArr[i] ^ bArr2[i2]);
//            i++;
//            i2++;
//        }
//        return new String(bArr);
//    }
//
//    public static String md5(String str) {
//        try {
//            StringBuilder sb = new StringBuilder(new BigInteger(1, MessageDigest.getInstance(d("273E4F")).digest(str.getBytes(d("3F2E3C5874")))).toString(16));
//            while (sb.length() < 32) {
//                sb.insert(0, d("5A"));
//            }
//            return sb.toString().toLowerCase();
//        } catch (Exception unused) {
//            return "";
//        }
//    }
//
//    /**
//     *
//     * @return
//     */
//    @Test
//    public void  jsObjFunc() throws IOException {
//
//        Context cx = Context.enter();
//        try {
//            Scriptable scope = cx.initStandardObjects();
//            String str = "3/(1+2)";
//            Object result = cx.evaluateString(scope, str, "javax.script.filename", 1, null);
//            Object result_reader = cx.evaluateReader(scope,new StringReader(str),"javax.script.filename",1, null);
//            System.out.println(str + "=" + Context.toNumber(result));
//        } finally {
//            Context.exit();
//        }
//    }
//
//    @Test
//    public void test_script() throws Exception {
//        Bindings bindings = new SimpleBindings();
//        ScriptEngine scriptEngine = new RhinoScriptEngine(bindings);
//        String jsstr = "baseUrl + '111' + source + legado.name";
//        LegadoData legadoData = new LegadoData();
//        legadoData.name = "test";
//        bindings.put("legado", legadoData);
//        bindings.put("baseUrl","https://www.baidu.com");
//        bindings.put("source","www.google.com");
//        Object result = scriptEngine.eval(jsstr, bindings);
//        System.out.println(result);
//    }
//
//
//    private Class clazz;
//    private org.mozilla.javascript.Context rhino;
//    private Scriptable scope;
//
//    private String jsCode = "";
//    private String testCode =
//            "var method_Api_rhino_test = ScriptAPI.getMethod(\"test\",[java.lang.String])\n" +
//                    "function rhino_test() {\n" +
//                    "    var str = \"jzy666\";\n" +
//                    "    method_Api_rhino_test.invoke(javaContext,str);\n" +
//                    "}" +
//                    "rhino_test()";
//
//    private void initJsEngine(){
//        jsCode = "var ScriptAPI = java.lang.Class.forName(\"" + LegadoData.class.getName() + "\", true, javaLoader);\n"
//                + testCode;
//    }
//
//    public void request(){
//        rhino = org.mozilla.javascript.Context.enter();
//        rhino.setOptimizationLevel(-1);
//        try{
//            scope = rhino.initStandardObjects();
//            // 这两句是设置当前的类做为上下文以及获取当前的类加载器，以便于 rhino 通过反射获取档期类
//            ScriptableObject.putProperty(scope,"javaContext", org.mozilla.javascript.Context.javaToJS(LegadoData.class,scope));
//            ScriptableObject.putProperty(scope,"javaLoader", org.mozilla.javascript.Context.javaToJS(clazz.getClassLoader(),scope));
//            //执行 js 代码
//            Object x = rhino.evaluateString(scope, jsCode, clazz.getSimpleName(), 1, null);
//        }finally {
//            //退出
//            org.mozilla.javascript.Context.exit();
//        }
//    }
//    // 对应类中需要需要被调用的方法，可以做为 JS 代码执行时的回调
//    public void rhino_test(String str){
//        Log.i("jzy111","rhino_test: " + str);
//    }
//
//    @Test
//    public void test_Object() {
//        clazz = LegadoData.class;
//        initJsEngine();
//        request();
//    }
//
//    @Test
//    public void getResponse() {
//        Map<String, Object> data = new HashMap<>();
//        data.put("charset","utf-8");
//        data.put("method","POST");
//        data.put("body","keyword={{key}}&kwtype=0");
//        String body = new GsonBuilder().disableHtmlEscaping().create().toJson(data);
//        AnalyzeUrl analyzeUrl = new AnalyzeUrl("https://m.huangdizhijia.com/index.php?action=search," + body,"我的",1,"https://m.huangdingzhijia.com");
//        analyzeUrl.getRespone(new OKCallBack.OKCallBackString() {
//            @Override
//            protected void onFailure(Call call, Exception e) {
//                System.out.println(e);
//            }
//
//            @Override
//            protected void onResponse(String response) {
//                System.out.println(response);
//                AnalyzeRule analyzeRule = new AnalyzeRule();
//                analyzeRule.setContent(response, analyzeUrl.getBaseUrl());
//                List<Vod> list = new ArrayList<>();
//                for (Object element : analyzeRule.getElements("class.search-bookele")) {
//                    String name = analyzeRule.getString("tag.h3@text", element,false);
//                    String img = analyzeRule.getString("tag.img@src", element, false);
//                    String author = analyzeRule.getString("tag.p.0@text", element,false);
//                    String type = analyzeRule.getString("tag.p.1@text",element,false);
//                    String url = analyzeRule.getString("tag.a@href##.*id=(\\d+)##https://www.huangdizhijia.com/novel/$1",element,false);
//                    list.add(new Vod(url,name,img,type));
//                }
//                System.out.println(Result.string(list));
//            }
//        });
//    }
//
//    @Test
//    public void test_java() throws ClassNotFoundException, InvocationTargetException, IllegalAccessException, InstantiationException {
//        Class cls = Class.forName("com.github.catvod.parser.AnalyzeRule");
//        Object cls1 = cls.newInstance();
//        Object[] d = new Object[]{"RSA","",null};
//        ReflectUtil.invoke(cls1,"createAsymmetricCrypto",d);
//    }
//
//    @Test
//    public void test_java_class() throws ClassNotFoundException, IllegalAccessException, InstantiationException, InvocationTargetException {
//        Class cls = Class.forName("com.github.catvod.parser.AnalyzeRule");
//        Object javaObject = cls.newInstance();
//        Object[] args = new Object[]{"RSA","",null};
//        for (Method method : cls.getMethods()) {
//            method.setAccessible(true);
//            if (method.getName().equals("createAsymmetricCrypto") && method.getParameterTypes().length> 2 && method.getParameterTypes()[2].getName() == String.class.getName()) {
////                method.invoke(javaObject,args);
//                ReflectUtil.invoke(javaObject,method,args);
//            }
//        }
//    }
//}
