package com.github.catvod.spider;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;

import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.AES;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import org.json.JSONArray;
import org.json.JSONObject;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

public class YiSo extends Ali {

    private HashMap<String, String> getHeaders() {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", "Mozilla/5.0 (Linux; Android 12; V2049A Build/SP1A.210812.003; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/103.0.5060.129 Mobile Safari/537.36");
        headers.put("Referer", "https://yiso.fun/");
        headers.put("Cookie", "satoken=2854cb58-3884-473b-84c4-34161f67a409");
        return headers;
    }

    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        String json = OkHttpUtil.string("https://yiso.fun/api/search?name=" + URLEncoder.encode(key) + "&pageNo=1&from=ali", getHeaders());
        JSONArray array = new JSONObject(json).getJSONObject("data").getJSONArray("list");
        ArrayList<Vod> list = new ArrayList<>();
        for (int i = 0; i < array.length(); i++) {
            Vod vod = new Vod();
            String name = array.getJSONObject(i).getJSONArray("fileInfos").getJSONObject(0).getString("fileName");
            String remark = array.getJSONObject(i).getString("gmtCreate");
//            vod.setVodId(decrypt(array.getJSONObject(i).getString("url")));
            vod.setVodId(AES.CBC(array.getJSONObject(i).getString("url"),"4OToScUFOaeVTrHE","9CLGao1vHKqm17Oz"));
            vod.setVodName(name);
            vod.setVodRemarks(remark);
            vod.setVodPic("https://inews.gtimg.com/newsapp_bt/0/13263837859/1000");
            list.add(vod);
        }
        return Result.string(list);
    }
}
