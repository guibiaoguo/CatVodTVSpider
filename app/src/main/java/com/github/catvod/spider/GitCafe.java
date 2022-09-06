package com.github.catvod.spider;

import android.content.Context;
import com.github.catvod.crawler.Spider;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;


public class GitCafe extends Spider {
    private Context AS = null;
    private PushAgent Kr;
    private JSONObject e;
    private List<String> f;
    private JSONObject x;

    private HashMap<String, String> f() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36");
        return hashMap;
    }

    JSONObject AS(String str) {
        try {
            File file = new File(this.AS.getCacheDir() + "/xzt/");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(this.AS.getCacheDir() + "/xzt/" + str + ".json.t");
            if (!file2.exists()) {
                return null;
            }
            File file3 = new File(this.AS.getCacheDir() + "/xzt/" + str + ".json");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2), Misc.UTF8));
            if (System.currentTimeMillis() - Long.parseLong(bufferedReader.readLine().trim()) > 3600000) {
                bufferedReader.close();
                return null;
            }
            bufferedReader.close();
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file3), Misc.UTF8));
            while (true) {
                String readLine = bufferedReader2.readLine();
                if (readLine != null) {
                    sb.append(readLine);
                } else {
                    bufferedReader2.close();
                    return new JSONObject(sb.toString());
                }
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    JSONObject Kr(String str) {
        try {
            JSONObject AS = AS(str);
            if (AS != null) {
                return AS;
            }
            String V = OkHttpUtil.string("https://gitcafe.net/alipaper/data/" + str + ".json?v=" + System.currentTimeMillis(), f());
            e(str, V);
            return new JSONObject(V);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        try {
            JSONArray jSONArray = Kr(str).optJSONArray("data");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.optJSONObject(i);
                if (jSONObject.optString("cat", "").equals(str)) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("vod_id", "https://www.aliyundrive.com/s/" + jSONObject.optString("key"));
                    jSONObject2.put("vod_name", jSONObject.optString("title"));
                    jSONObject2.put("vod_pic", "https://pic.rmb.bdstatic.com/bjh/1d0b02d0f57f0a42201f92caba5107ed.jpeg");
                    jSONArray2.put(jSONObject2);
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("page", 1);
            jSONObject3.put("pagecount", 1);
            jSONObject3.put("limit", jSONArray2.length());
            jSONObject3.put("total", jSONArray2.length());
            jSONObject3.put("list", jSONArray2);
            return jSONObject3.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public String detailContent(List<String> list) {
        return this.Kr.detailContent(Collections.singletonList(list.get(0)));
    }

    void e(String str, String str2) {
        try {
            File file = new File(this.AS.getCacheDir() + "/xzt/" + str + ".json.t");
            FileOutputStream fileOutputStream = new FileOutputStream(this.AS.getCacheDir() + "/xzt/" + str + ".json");
            fileOutputStream.write(str2.getBytes(Misc.UTF8));
            fileOutputStream.flush();
            fileOutputStream.close();
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            fileOutputStream2.write((System.currentTimeMillis() + "").getBytes(Misc.UTF8));
            fileOutputStream2.flush();
            fileOutputStream2.close();
        } catch (Throwable unused) {
        }
    }

    public JSONObject getAllData() {
        try {
            if (this.e == null) {
                this.e = new JSONObject(OkHttpUtil.string("http://81.70.77.5:7800/xztzy/xzt.json", f()));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.e;
    }

    public String homeContent(boolean z) {
        try {
            JSONArray jSONArray = x().optJSONObject("info").optJSONArray("new");
            JSONArray jSONArray2 = new JSONArray();
            for (String str : this.f) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("type_id", str);
                jSONObject.put("type_name", this.x.optString(str));
                jSONArray2.put(jSONObject);
            }
            JSONArray jSONArray3 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.optJSONObject(i);
                if (this.f.contains(jSONObject2.optString("cat", ""))) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("vod_id", "https://www.aliyundrive.com/s/" + jSONObject2.optString("key"));
                    jSONObject3.put("vod_name", jSONObject2.optString("title"));
                    jSONObject3.put("vod_pic", "https://pic.rmb.bdstatic.com/bjh/1d0b02d0f57f0a42201f92caba5107ed.jpeg");
                    jSONObject3.put("vod_remarks", jSONObject2.optString("date"));
                    jSONArray3.put(jSONObject3);
                }
            }
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("class", jSONArray2);
            jSONObject4.put("list", jSONArray3);
            return jSONObject4.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public void init(Context context) {
        GitCafe.super.init(context);
        PushAgent pushAgent = new PushAgent();
        this.Kr = pushAgent;
        pushAgent.init(context);
        try {
            this.x = new JSONObject("{\"hyds\":\"华语电视\",\"rhds\":\"日韩电视\",\"omds\":\"欧美电视\",\"qtds\":\"其他电视\",\"hydy\":\"华语电影\",\"rhdy\":\"日韩电影\",\"omdy\":\"欧美电影\",\"qtdy\":\"其他电影\",\"hydm\":\"华语动漫\",\"rhdm\":\"日韩动漫\",\"omdm\":\"欧美动漫\",\"jlp\":\"纪录片\",\"zyp\":\"综艺片\",\"jypx\":\"教育培训\",\"qtsp\":\"其他视频\",\"hyyy\":\"华语音乐\",\"rhyy\":\"日韩音乐\",\"omyy\":\"欧美音乐\",\"qtyy\":\"其他音乐\",\"kfrj\":\"娱乐软件\",\"xtrj\":\"系统软件\",\"wlrj\":\"网络软件\",\"bgrj\":\"办公软件\",\"qtrj\":\"其他软件\",\"mh\":\"漫画\",\"xs\":\"小说\",\"cbs\":\"出版书\",\"zspx\":\"知识培训\",\"qtwd\":\"其他文档\",\"bz\":\"壁纸\",\"rw\":\"人物\",\"fj\":\"风景\",\"qttp\":\"其他图片\",\"qt\":\"其他\"}");
        } catch (Exception e) {
            e.printStackTrace();
        }
        ArrayList arrayList = new ArrayList();
        this.f = arrayList;
        arrayList.add("hydm");
        this.f.add("hyds");
        this.f.add("hydy");
        this.f.add("omdm");
        this.f.add("omds");
        this.f.add("omdy");
        this.f.add("rhdm");
        this.f.add("rhds");
        this.f.add("rhdy");
        this.f.add("qtds");
        this.f.add("qtdy");
        this.f.add("qtsp");
        this.f.add("jlp");
        this.f.add("zyp");
        this.f.add("hyyy");
        this.f.add("rhyy");
        this.f.add("omyy");
        this.f.add("qtyy");
        this.f.add("qt");
    }

    public String playerContent(String str, String str2, List<String> list) {
        return this.Kr.playerContent(str, str2, list);
    }

    public String searchContent(String str, boolean z) {
        try {
            JSONArray jSONArray = getAllData().optJSONArray("data");
            JSONArray jSONArray2 = new JSONArray();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.optJSONObject(i);
                if (this.f.contains(jSONObject.optString("cat"))) {
                    String string = jSONObject.optString("title");
                    if (string.contains(str)) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("vod_id", "https://www.aliyundrive.com/s/" + jSONObject.optString("key"));
                        jSONObject2.put("vod_name", string);
                        jSONArray2.put(jSONObject2);
                    }
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("list", jSONArray2);
            return jSONObject3.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    JSONObject x() {
        try {
            JSONObject AS = AS("home");
            if (AS != null) {
                return AS;
            }
            String V = OkHttpUtil.string("https://gitcafe.net/alipaper/home.json?v=" + System.currentTimeMillis(), f());
            e("home", V);
            return new JSONObject(V);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}