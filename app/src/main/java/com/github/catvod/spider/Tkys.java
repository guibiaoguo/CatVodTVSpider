package com.github.catvod.spider;

import android.content.Context;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class Tkys extends Spider {
    private static final Pattern[] X = {Pattern.compile("player=new"), Pattern.compile("<div id=\"video\""), Pattern.compile("<div id=\"[^\"]*?player\""), Pattern.compile("//视频链接"), Pattern.compile("HlsJsPlayer\\("), Pattern.compile("<iframe[\\s\\S]*?src=\"[^\"]+?\""), Pattern.compile("<video[\\s\\S]*?src=\"[^\"]+?\"")};
    protected JSONObject K = new JSONObject();
    private final HashMap<String, ArrayList<String>> G = new HashMap<>();

    private JSONObject X(String str, ArrayList<String> arrayList, String str2) {
        Iterator<String> it = arrayList.iterator();
        String str3 = "";
        while (true) {
            boolean z = true;
            JSONObject jSONObject = null;
            if (it.hasNext()) {
                String next = it.next();
                if (!next.isEmpty() && !next.equals("null")) {
                    String V = OkHttpUtil.string(next + str2, null);
                    try {
                        jSONObject = Misc.jsonParse(str2, V);
                    } catch (Throwable unused) {
                    }
                    if (jSONObject != null && jSONObject.has("url") && jSONObject.has("header")) {
                        try {
                            jSONObject.put("header", jSONObject.optJSONObject("header").toString());
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        return jSONObject;
                    } else if (V.contains("<html")) {
                        Pattern[] patternArr = X;
                        int length = patternArr.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                z = false;
                                break;
                            } else if (patternArr[i].matcher(V).find()) {
                                break;
                            } else {
                                i++;
                            }
                        }
                        if (z) {
                            str3 = next;
                        }
                    }
                }
            } else if (str3.isEmpty()) {
                return null;
            } else {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("parse", 1);
                    jSONObject2.put("playUrl", str3);
                    jSONObject2.put("url", str2);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                return jSONObject2;
            }
        }
    }

    protected HashMap<String, String> K(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("User-Agent", "Lavf/58.12.100");
        return hashMap;
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        try {
            String str3 = "https://tkys.tv/xgapp.php/v2/video?tid=" + str + "&pg=" + str2 + "&token=";
            for (String str4 : hashMap.keySet()) {
                str3 = str3 + "&" + str4 + "=" + URLEncoder.encode(hashMap.get(str4));
            }
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string(str3, K(str3)));
            JSONArray jSONArray = jSONObject.optJSONArray("data");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.optJSONObject(i);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("vod_id", jSONObject2.optString("vod_id"));
                jSONObject3.put("vod_name", jSONObject2.optString("vod_name"));
                jSONObject3.put("vod_pic", jSONObject2.optString("vod_pic"));
                jSONObject3.put("vod_remarks", jSONObject2.optString("vod_remarks"));
                jSONArray2.put(jSONObject3);
            }
            JSONObject jSONObject4 = new JSONObject();
            int i2 = jSONObject.getInt("page");
            int i3 = jSONObject.getInt("total");
            int i4 = jSONObject.getInt("pagecount");
            jSONObject4.put("page", i2);
            jSONObject4.put("pagecount", i4);
            jSONObject4.put("limit", 20);
            jSONObject4.put("total", i3);
            jSONObject4.put("list", jSONArray2);
            return jSONObject4.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String detailContent(List<String> list) {
        try {
            String str = "https://tkys.tv/xgapp.php/v2/video_detail?id=" + list.get(0) + "&token=";
            JSONObject jSONObject = new JSONObject(OkHttpUtil.string(str, K(str))).optJSONObject("data");
            if (jSONObject.has("vod_info")) {
                try {
                    jSONObject = jSONObject.optJSONObject("vod_info");
                } catch (Exception unused) {
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("vod_id", jSONObject.optString("vod_id"));
            jSONObject2.put("vod_name", jSONObject.optString("vod_name"));
            jSONObject2.put("vod_pic", jSONObject.optString("vod_pic"));
            jSONObject2.put("type_name", jSONObject.optString("vod_class"));
            jSONObject2.put("vod_year", jSONObject.optString("vod_year"));
            jSONObject2.put("vod_area", jSONObject.optString("vod_area"));
            jSONObject2.put("vod_remarks", jSONObject.optString("vod_remarks"));
            jSONObject2.put("vod_actor", jSONObject.optString("vod_actor"));
            jSONObject2.put("vod_director", jSONObject.optString("vod_director"));
            jSONObject2.put("vod_content", jSONObject.optString("vod_content"));
            JSONArray jSONArray = jSONObject.optJSONArray("vod_url_with_player");
            final ArrayList arrayList = new ArrayList();
            HashMap hashMap = new HashMap();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject3 = jSONArray.optJSONObject(i);
                String string = jSONObject3.optString("code");
                hashMap.put(string, jSONObject3.optString("url"));
                jSONObject3.remove("url");
                this.K.put(string, jSONObject3);
                arrayList.add(string);
            }
            TreeMap treeMap = new TreeMap(new Comparator<String>() { // from class: com.github.catvod.spider.Tkys.1
                public int compare(String str2, String str3) {
                    int indexOf = arrayList.indexOf(str2);
                    int indexOf2 = arrayList.indexOf(str3);
                    return (indexOf != indexOf2 && indexOf - indexOf2 <= 0) ? -1 : 1;
                }
            });
            String[] split = jSONObject.optString("vod_play_from").split("\\$\\$\\$");
            String[] split2 = jSONObject.optString("vod_play_url").split("\\$\\$\\$");
            for (int i2 = 0; i2 < split.length; i2++) {
                String str2 = split[i2];
                if (i2 < split2.length && split2[i2].trim().length() != 0) {
                    treeMap.put(split[i2], split2[i2]);
                }
                if (hashMap.containsKey(str2) && ((String) hashMap.get(str2)).trim().length() > 0) {
                    treeMap.put(split[i2], (String) hashMap.get(str2));
                }
            }
            String join = StringUtil.join("$$$", treeMap.keySet());
            String join2 = StringUtil.join("$$$", treeMap.values());
            jSONObject2.put("vod_play_from", join);
            jSONObject2.put("vod_play_url", join2);
            JSONObject jSONObject4 = new JSONObject();
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(jSONObject2);
            jSONObject4.put("list", jSONArray2);
            return jSONObject4.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00db A[Catch: Exception -> 0x0151, TryCatch #4 {Exception -> 0x0151, blocks: (B:44:0x00d3, B:47:0x00db, B:50:0x00ea), top: B:86:0x00d3 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.String homeContent(boolean r23) {
        /*
        // Method dump skipped, instructions count: 416
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.catvod.spider.Tkys.homeContent(boolean):java.lang.String");
    }

    public String homeVideoContent() {
        try {
            JSONArray jSONArray = new JSONObject(OkHttpUtil.string("https://tkys.tv/xgapp.php/v2/index_video?token=", K("https://tkys.tv/xgapp.php/v2/index_video?token="))).optJSONArray("data");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONArray jSONArray3 = jSONArray.optJSONObject(i).optJSONArray("vlist");
                int i2 = 0;
                while (i2 < jSONArray3.length() && i2 < 6) {
                    JSONObject jSONObject = jSONArray3.optJSONObject(i2);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("vod_id", jSONObject.optString("vod_id"));
                    jSONObject2.put("vod_name", jSONObject.optString("vod_name"));
                    jSONObject2.put("vod_pic", jSONObject.optString("vod_pic"));
                    jSONObject2.put("vod_remarks", jSONObject.optString("vod_remarks"));
                    jSONArray2.put(jSONObject2);
                    i2++;
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("list", jSONArray2);
            return jSONObject3.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public void init(Context context) {
        Tkys.super.init(context);
    }

    public boolean isVideoFormat(String str) {
        return Misc.isVideoFormat(str);
    }

    public boolean manualVideoCheck() {
        return true;
    }

    public String playerContent(String str, String str2, List<String> list) {
        JSONObject X2;
        try {
            ArrayList<String> arrayList = this.G.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            if (!arrayList.isEmpty() && (X2 = X(str, arrayList, str2)) != null) {
                return X2.toString();
            }
            if (str2.contains("LT-")) {
                HashMap hashMap = new HashMap();
                return Misc.jsonParse(str2, OkHttpUtil.string("https://jf.96ym.cn/api/?key=89lC7jgdlbZV5T1nIy&url=" + str2, hashMap)).toString();
            } else if (str2.contains("renrenmi")) {
                HashMap hashMap2 = new HashMap();
                return Misc.jsonParse(str2, OkHttpUtil.string("https://kuba.renrenmi.cc:2266/api/?key=a2bSwx5iAGx1g2qn4h&url=" + str2, hashMap2)).toString();
            } else if (Misc.isVideoFormat(str2)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("parse", 0);
                jSONObject.put("playUrl", "");
                jSONObject.put("url", str2);
                return jSONObject.toString();
            } else {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("parse", 1);
                jSONObject2.put("jx", "1");
                jSONObject2.put("url", str2);
                return jSONObject2.toString();
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String searchContent(String str, boolean z) {
        if (z) {
            return "";
        }
        try {
            String str2 = "https://tkys.tv/xgapp.php/v2/search?text=" + URLEncoder.encode(str) + "&pg=1";
            JSONArray jSONArray = new JSONObject(OkHttpUtil.string(str2, K(str2))).optJSONArray("data");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.optJSONObject(i);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("vod_id", jSONObject.optString("vod_id"));
                jSONObject2.put("vod_name", jSONObject.optString("vod_name"));
                jSONObject2.put("vod_pic", jSONObject.optString("vod_pic"));
                jSONObject2.put("vod_remarks", jSONObject.optString("vod_remarks"));
                jSONArray2.put(jSONObject2);
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("list", jSONArray2);
            return jSONObject3.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }
}