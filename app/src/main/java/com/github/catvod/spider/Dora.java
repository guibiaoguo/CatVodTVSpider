package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.crawler.Spider;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Dora extends Spider {

    private Spider spider;
    private Map<String, Spider> classMap = new HashMap<>();

    public Dora() {
        classMap.put("8ee655f702d0d21f3643504783babbc3",new CZSPP());
        classMap.put("9248c57eb22ace4a3431fbd1a979465f",new SP360());
        classMap.put("78d057e4d03e47cb62dce13d69b41d6f",new Lib());
        classMap.put("b04b15448ad5bd4312f1fa1fb9aa9b1b",new Auete());
        classMap.put("8b48a0834ee08e5e64977bc9fc8bc3e0",new Kunyu79());
        classMap.put("1cc92323700909e7d46623bc85b958d6",new Ddys());
//        classMap.put("110c922de7d69804467fb83d3bb664b5",new AppTT());
        classMap.put("b88de1329655cca1beba45aa9776de70",new Cokemv());
        classMap.put("f41992bd740145ed58cb212dc0876582",new Dy555());
//        classMap.put("b2e573ff040fcd54b50475660ee1a7d1",new Lgyy());
//        classMap.put("6deed4548c44b18d268a5d828f04d86e",new LiteApple());
//        classMap.put("459b1cb892e317546676a2c9dcec2bff",new Kuaikan());
//        classMap.put("a4ce9a4ba7d4f4bced2ff9dfc4ab4e50",new IKan());
//        classMap.put("8e3aefcba838d8dc5102ac786719d837",new Yiqik());
//        classMap.put("0842c1d2a8534ec62fb3a3ed848851a7",new Xiaoh());
    }
    @Override
    public void init(Context context, String extend) {
        String[] params = extend.split("#");
        String cls = "", ext = "";
        if (params.length == 1) {
            cls = params[0];
            ext = "";
        } else if (params.length == 2) {
            cls = params[0];
            ext = params[1];
        }
        Spider spider = null;
        this.spider = classMap.get(cls);
        spider.init(context, ext);
        super.init(context, extend);
    }

    @Override
    public String homeContent(boolean filter) throws Exception {
        return this.spider.homeContent(filter);
    }

    @Override
    public String homeVideoContent() throws Exception {
        return this.spider.homeVideoContent();
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        return this.spider.categoryContent(tid, pg, filter, extend);
    }

    @Override
    public String detailContent(List<String> ids) throws Exception {
        return this.spider.detailContent(ids);
    }

    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        return this.spider.searchContent(key, quick);
    }

    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
        return this.spider.playerContent(flag, id, vipFlags);
    }

    @Override
    public boolean isVideoFormat(String url) {
        return this.spider.isVideoFormat(url);
    }

    @Override
    public boolean manualVideoCheck() {
        return this.spider.manualVideoCheck();
    }
}
