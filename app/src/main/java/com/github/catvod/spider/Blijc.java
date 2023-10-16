//package com.github.catvod.spider;
//
//import android.content.Context;
//import android.os.Environment;
//import android.os.Looper;
//import android.os.Process;
//import java.util.HashMap;
//import org.json.JSONArray;
//import org.json.JSONObject;
//
///* loaded from: classes.dex */
//public class Blijc extends Bli {
//    private static String jG = "窗 白噪音";
//
//    static {
//        Process.myUid();
//    }
//
//    @Override // com.github.catvod.spider.Bli
//    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
//        if (!hashMap.containsKey("duration")) {
//            hashMap.put("duration", "4");
//        }
//        return super.categoryContent(str, str2, z, hashMap);
//    }
//
//    public String homeContent(boolean z) {
//
//        Environment.getRootDirectory();
//        Thread.activeCount();
//        try {
//            Process.myUid();
//            Process.myPid();
//            Process.myPid();
//            new HashMap();
//            Runtime.getRuntime();
//            System.currentTimeMillis();
//            JSONObject jSONObject = new JSONObject(categoryContent(jG, "1", z, new HashMap<>()));
//            JSONArray jSONArray = new JSONArray();
//            JSONObject jSONObject2 = new JSONObject();
//            Environment.getDataDirectory();
//
//            Environment.getDataDirectory();
//            Looper.myLooper();
//            jSONObject2.put("type_id", jG);
//            Process.myTid();
//            System.currentTimeMillis();
//            System.currentTimeMillis();
//            Environment.getRootDirectory();
//            jSONObject2.put("type_name", "全部");
//            Process.myTid();
//            jSONArray.put(jSONObject2);
//            JSONObject jSONObject3 = new JSONObject();
//            Thread.interrupted();
//            Environment.getRootDirectory();
//            Process.getElapsedCpuTime();
//            jSONObject3.put("class", jSONArray);
//            jSONObject3.put("list", jSONObject.optJSONArray("list"));
//            return jSONObject3.toString();
//        } catch (Exception e) {
//            Environment.getDataDirectory();
//            Runtime.getRuntime();
//            e.printStackTrace();
//            return null;
//        }
//    }
//
//    public void init(Context context) {
//        Blijc.super.init(context);
//    }
//}