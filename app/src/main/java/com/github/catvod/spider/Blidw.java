//package com.github.catvod.spider;
//
//import android.content.Context;
//import java.util.HashMap;
//import org.json.JSONArray;
//import org.json.JSONException;
//import org.json.JSONObject;
//
///* loaded from: classes.dex */
//public class Blidw extends Bli {
//    private static String O = "动物世界";
//    private static JSONArray jG;
//    private static JSONArray t;
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
//        String str;
//        try {
//            String str2 = O;
//            JSONObject jSONObject = new JSONObject(categoryContent(str2, "1", z, new HashMap<>()));
//            JSONArray jSONArray = new JSONArray();
//            JSONObject jSONObject2 = new JSONObject();
//            int i = 0;
//            while (true) {
//                JSONArray jSONArray2 = jG;
//                if (i < jSONArray2.length()) {
//                    JSONArray jSONArray3 = jG;
//                    String string = jSONArray3.optString(i);
//                    JSONObject jSONObject3 = new JSONObject();
//
//                    if (string.equals("全部")) {
//                        str = O;
//                    } else {
//                        StringBuilder sb = new StringBuilder();
//                        sb.append(string);
//                        sb.append(" ");
//                        sb.append(O);
//                        str = sb.toString();
//                    }
//                    Thread.currentThread();
//                    System.nanoTime();
//                    Thread.activeCount();
//                    System.currentTimeMillis();
//                    jSONObject3.put("type_id", str);
//                    System.nanoTime();
//                    Thread.currentThread();
//                    Thread.interrupted();
//                    jSONObject3.put("type_name", string);
//                    jSONArray.put(jSONObject3);
//                    JSONArray jSONArray4 = t;
//                    jSONObject2.put(str, jSONArray4);
//                    i++;
//                } else {
//                    JSONObject jSONObject4 = new JSONObject();
//                    jSONObject4.put("class", jSONArray);
//                    System.currentTimeMillis();
//                    jSONObject4.put("filters", jSONObject2);
//                    Thread.currentThread();
//                    jSONObject4.put("list", jSONObject.optJSONArray("list"));
//                    return jSONObject4.toString();
//                }
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        }
//    }
//
//    public void init(Context context) {
//        super.init(context);
//        try {
//            jG = new JSONArray("[\"全部\"]");
//            t = new JSONArray("[{\"key\":\"duration\",\"name\":\"时长\",\"value\":[{\"n\":\"60分钟以上\",\"v\":\"4\"},{\"n\":\"30~60分钟\",\"v\":\"3\"},{\"n\":\"10~30分钟\",\"v\":\"2\"},{\"n\":\"10分钟以下\",\"v\":\"1\"},{\"n\":\"全部\",\"v\":\"0\"}]}]");
//        } catch (JSONException e) {
//            e.printStackTrace();
//        }
//    }
//}