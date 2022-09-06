package com.github.catvod.spider;

import android.content.Context;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.Call;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class XBiubiu extends Spider {
    protected String ext = null;
    protected JSONObject rule = null;

    private String O(String str, String str2) {
        String optString = this.rule.optString(str);
        return (optString.isEmpty() || optString.equals("空")) ? str2 : optString;
    }

    private JSONObject Qw(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        try {
            fetchRule();
            String str3 = jg("url") + str + str2 + jg("houzhui");
            String w = fetch(str3);
            if (jg("shifouercijiequ").equals("1")) {
                w = s(w, jg("jiequqian"), jg("jiequhou")).get(0);
            }
            String jg = jg("jiequshuzuqian");
            String jg2 = jg("jiequshuzuhou");
            JSONArray jSONArray = new JSONArray();
            ArrayList<String> s = s(w, jg, jg2);
            for (int i = 0; i < s.size(); i++) {
                String str4 = s.get(i);
                String str5 = s(str4, jg("biaotiqian"), jg("biaotihou")).get(0);
                String J = Misc.fixUrl(str3, s(str4, jg("tupianqian"), jg("tupianhou")).get(0));
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("vod_id", str5 + "$$$" + J + "$$$" + s(str4, jg("lianjieqian"), jg("lianjiehou")).get(0));
                jSONObject.put("vod_name", str5);
                jSONObject.put("vod_pic", J);
                jSONObject.put("vod_remarks", "");
                jSONArray.put(jSONObject);
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("page", str2);
            jSONObject2.put("pagecount", Integer.MAX_VALUE);
            jSONObject2.put("limit", 90);
            jSONObject2.put("total", Integer.MAX_VALUE);
            jSONObject2.put("list", jSONArray);
            return jSONObject2;
        } catch (Exception e) {
            SpiderDebug.log(e);
            return null;
        }
    }

    private String jg(String str) {
        return O(str, "");
    }

    private ArrayList<String> s(String str, String str2, String str3) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            Matcher matcher = Pattern.compile(str2 + "(.*?)" + str3).matcher(str);
            while (matcher.find()) {
                arrayList.add(matcher.group(1));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return arrayList;
    }

    protected void fetchRule() {
        String str;
        if (this.rule == null && (str = this.ext) != null) {
            try {
                if (str.startsWith("http")) {
                    this.rule = new JSONObject(OkHttpUtil.string(this.ext, null).replaceAll(",\\s+//.*",",").replaceAll("^//.*","").replaceAll("[ ]+//.*",""));
                } else {
                    this.rule = new JSONObject(this.ext);
                }
            } catch (JSONException e) {
                SpiderDebug.log(e);
            }
        }
    }

    protected String Ua(String str) {
        SpiderDebug.log(str);
        OKCallBack.OKCallBackString callBack = new OKCallBack.OKCallBackString() {
            @Override
            protected void onFailure(Call call, Exception e) {

            }

            @Override
            protected void onResponse(String response) {

            }
        };
        OkHttpUtil.post(OkHttpUtil.defaultClient(), str, callBack);
        return callBack.getResult().replaceAll("\r|\n", "");
    }

    protected HashMap<String, String> VF(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        String str2 = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36";
        String trim = O("UserW", str2).trim();
        if (!trim.isEmpty()) {
            str2 = trim;
        }
        hashMap.put("User-Agent", str2);
        return hashMap;
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        JSONObject Qw = Qw(str, str2, z, hashMap);
        return Qw != null ? Qw.toString() : "";
    }

    public String detailContent(List<String> list) {
        try {
            fetchRule();
            int i = 0;
            String[] split = list.get(0).split("\\$\\$\\$");
            String w = fetch(jg("url") + split[2]);
            if (jg("bfshifouercijiequ").equals("1")) {
                w = s(w, jg("bfjiequqian"), jg("bfjiequhou")).get(0);
            }
            ArrayList arrayList = new ArrayList();
            String jg = jg("bfjiequshuzuqian");
            String jg2 = jg("bfjiequshuzuhou");
            boolean equals = jg("bfyshifouercijiequ").equals("1");
            ArrayList<String> s = s(w, jg, jg2);
            int i2 = 0;
            while (i2 < s.size()) {
                String str = s.get(i2);
                if (equals) {
                    str = s(str, jg("bfyjiequqian"), jg("bfyjiequhou")).get(i);
                }
                ArrayList<String> s2 = s(str, jg("bfyjiequshuzuqian"), jg("bfyjiequshuzuhou"));
                ArrayList arrayList2 = new ArrayList();
                int i3 = 0;
                while (i3 < s2.size()) {
                    arrayList2.add(s(s2.get(i3), jg("bfbiaotiqian"), jg("bfbiaotihou")).get(i) + "$" + s(s2.get(i3), jg("bflianjieqian"), jg("bflianjiehou")).get(0));
                    i3++;
                    i = 0;
                }
                arrayList.add(StringUtil.join("#", arrayList2));
                i2++;
                i = 0;
            }
            String str2 = split[1];
            String str3 = split[0];
            JSONObject jSONObject = new JSONObject();
            int i4 = 0;
            jSONObject.put("vod_id", list.get(0));
            jSONObject.put("vod_name", str3);
            jSONObject.put("vod_pic", str2);
            jSONObject.put("type_name", "");
            jSONObject.put("vod_year", "");
            jSONObject.put("vod_area", "");
            jSONObject.put("vod_remarks", "");
            jSONObject.put("vod_actor", "");
            jSONObject.put("vod_director", "");
            jSONObject.put("vod_content", "");
            ArrayList arrayList3 = new ArrayList();
            while (i4 < arrayList.size()) {
                StringBuilder sb = new StringBuilder();
                sb.append("播放列表");
                i4++;
                sb.append(i4);
                arrayList3.add(sb.toString());
            }
            String join = StringUtil.join("$$$", arrayList3);
            String join2 = StringUtil.join("$$$", arrayList);
            jSONObject.put("vod_play_from", join);
            jSONObject.put("vod_play_url", join2);
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            jSONObject2.put("list", jSONArray);
            return jSONObject2.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String homeContent(boolean z) {
        try {
            fetchRule();
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            for (String str : O("fenlei", "").split("#")) {
                String[] split = str.split("\\$");
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("type_name", split[0]);
                jSONObject2.put("type_id", split[1]);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("class", jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String homeVideoContent() {
        JSONArray optJSONArray;
        try {
            fetchRule();
            if (jg("shouye").equals("1")) {
                JSONArray jSONArray = new JSONArray();
                for (String str : O("fenlei", "").split("#")) {
                    JSONObject Qw = Qw(str.split("\\$")[1], "1", false, new HashMap<>());
                    if (!(Qw == null || (optJSONArray = Qw.optJSONArray("list")) == null)) {
                        int i = 0;
                        while (i < optJSONArray.length() && i < 5) {
                            jSONArray.put(optJSONArray.optJSONObject(i));
                            i++;
                        }
                    }
                    if (jSONArray.length() >= 30) {
                        break;
                    }
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("list", jSONArray);
                return jSONObject.toString();
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return "";
    }

    public void init(Context context) {
        XBiubiu.super.init(context);
    }

    public String playerContent(String str, String str2, List<String> list) {
        try {
            fetchRule();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("parse", 1);
            jSONObject.put("playUrl", "");
            jSONObject.put("url", jg("url") + str2);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    public String searchContent(String str, boolean z) {
        JSONObject jSONObject;
        String str2;
        try {
            fetchRule();
            boolean equals = jg("ssmoshi").equals("0");
            String str3 = jg("url") + jg("sousuoqian") + str + jg("sousuohou");
            int i = 0;
            String str4 = str3.split(";")[0];
            String Ua = str3.contains(";post") ? Ua(str4) : fetch(str4);
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            String str5 = "list";
            if (equals) {
                JSONArray jSONArray2 = new JSONObject(Ua).optJSONArray(str5);
                while (i < jSONArray2.length()) {
                    JSONObject jSONObject3 = jSONArray2.optJSONObject(i);
                    String trim = jSONObject3.optString(jg("jsname")).trim();
                    String trim2 = jSONObject3.optString(jg("jsid")).trim();
                    String J = Misc.fixUrl(str4, jSONObject3.optString(jg("jspic")).trim());
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("vod_id", trim + "$$$" + J + "$$$" + jg("sousuohouzhui") + trim2);
                    jSONObject4.put("vod_name", trim);
                    jSONObject4.put("vod_pic", J);
                    jSONObject4.put("vod_remarks", "");
                    jSONArray.put(jSONObject4);
                    i++;
                    jSONArray2 = jSONArray2;
                    jSONObject2 = jSONObject2;
                    str5 = str5;
                }
                jSONObject = jSONObject2;
                str2 = str5;
            } else {
                jSONObject = jSONObject2;
                str2 = str5;
                if (jg("sousuoshifouercijiequ").equals("1")) {
                    Ua = s(Ua, jg("ssjiequqian"), jg("ssjiequhou")).get(0);
                }
                ArrayList<String> s = s(Ua, jg("ssjiequshuzuqian"), jg("ssjiequshuzuhou"));
                int i2 = 0;
                while (i2 < s.size()) {
                    String str6 = s.get(i2);
                    String str7 = s(str6, jg("ssbiaotiqian"), jg("ssbiaotihou")).get(i);
                    String J2 = Misc.fixUrl(str4, s(str6, jg("sstupianqian"), jg("sstupianhou")).get(i));
                    JSONObject jSONObject5 = new JSONObject();
                    jSONObject5.put("vod_id", str7 + "$$$" + J2 + "$$$" + s(str6, jg("sslianjieqian"), jg("sslianjiehou")).get(0));
                    jSONObject5.put("vod_name", str7);
                    jSONObject5.put("vod_pic", J2);
                    jSONObject5.put("vod_remarks", "");
                    jSONArray.put(jSONObject5);
                    i2++;
                    i = 0;
                }
            }
            jSONObject.put(str2, jSONArray);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    protected String fetch(String str) {
        SpiderDebug.log(str);
        return OkHttpUtil.string(str, VF(str)).replaceAll("\r|\n", "");
    }

    public void init(Context context, String extend) {
        XBiubiu.super.init(context, extend);
        this.ext = extend;
    }
}