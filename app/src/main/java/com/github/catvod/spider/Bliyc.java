package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Bliyc extends Bli {
    private static int H = 5;
    private static JSONArray O = null;
    private static String jG = "演唱会";
    private static JSONArray t;

    static {
        try {
            t = new JSONArray();
            O = new JSONArray("[{\"key\":\"duration\",\"name\":\"时长\",\"value\":[{\"n\":\"60分钟以上\",\"v\":\"4\"},{\"n\":\"30~60分钟\",\"v\":\"3\"},{\"n\":\"10~30分钟\",\"v\":\"2\"},{\"n\":\"10分钟以下\",\"v\":\"1\"},{\"n\":\"全部\",\"v\":\"0\"}]}]");
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override // com.github.catvod.spider.Bli
    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        if (!hashMap.containsKey("duration")) {
            hashMap.put("duration", "4");
        }
        return super.categoryContent(str, str2, z, hashMap);
    }

    public String homeContent(boolean z) {
        String str;
        try {
            JSONObject jSONObject = new JSONObject(categoryContent(jG, "1", z, new HashMap<>()));
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            for (int i = 0; i < t.length(); i++) {
                String string = t.optString(i);
                JSONObject jSONObject3 = new JSONObject();
                if (string.equals("全部")) {
                    str = jG;
                } else {
                    str = string + " " + jG;
                }
                jSONObject3.put("type_id", str);
                jSONObject3.put("type_name", string);
                jSONArray.put(jSONObject3);
                jSONObject2.put(str, O);
            }
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("class", jSONArray);
            jSONObject4.put("filters", jSONObject2);
            jSONObject4.put("list", jSONObject.optJSONArray("list"));
            return jSONObject4.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public void init(Context context) {
        Bliyc.super.init(context);
    }

    public String searchContent(String str, boolean z) {
        try {
            if (!str.contains(jG)) {
                str = str + " " + jG;
            }
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("duration", "4");
            JSONArray jSONArray = new JSONObject(categoryContent(str, "1", true, hashMap)).optJSONArray("list");
            JSONArray jSONArray2 = new JSONArray();
            int i = 0;
            while (i < jSONArray.length() && i < H) {
                jSONArray2.put(jSONArray.optJSONObject(i));
                i++;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("list", jSONArray2);
            return jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}