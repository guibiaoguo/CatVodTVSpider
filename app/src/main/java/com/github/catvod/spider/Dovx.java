//package com.github.catvod.spider;
//
//import com.github.catvod.bean.Result;
//import com.github.catvod.bean.Vod;
//import com.github.catvod.net.OkHttp;
//
//import java.net.URLEncoder;
//
//public class Dovx extends Ali {
//
//    @Override
//    public String searchContent(String key, boolean quick) {
//        String content = OkHttp.string("https://api.dovx.tk/ali/search?wd=" + URLEncoder.encode(key));
//        Result result = Result.objectFrom(content);
//        for (Vod vod : result.getList()) vod.setVodId(vod.getVodId());
//        return result.string();
//    }
//}
