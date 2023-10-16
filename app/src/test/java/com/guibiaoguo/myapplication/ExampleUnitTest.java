//package com.guibiaoguo.myapplication;
//
//import com.github.catvod.bean.Filter;
//import com.github.catvod.crawler.Spider;
//import com.github.catvod.spider.Legado1;
//import com.github.catvod.spider.XPath;
//import com.google.gson.Gson;
//import com.google.gson.reflect.TypeToken;
//
//import org.json.JSONArray;
//import org.json.JSONObject;
//import org.junit.Test;
//
//import java.util.ArrayList;
//import java.util.LinkedHashMap;
//import java.util.List;
//import java.util.Map;
//
//
///**
// * Example local unit test, which will execute on the development machine (host).
// *
// * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
// */
//public class ExampleUnitTest {
//
//    public void echo(String json) throws Exception {
//        Spider aidi = new Legado1();
//        aidi.init(null, json);
//        String homeContent = aidi.homeContent(true);
//        System.out.println(homeContent);
//        aidi.homeVideoContent();
//        JSONObject jsonObject = new JSONObject(homeContent);
//        JSONArray classes = jsonObject.optJSONArray("class");
//        String tid = classes.getJSONObject(1).optString("type_id");
//        System.out.println(tid);
//        //org.seimicrawler.xpath.core.function;
//        String category = aidi.categoryContent(tid, "2", false, null);
//        System.out.println(category);
//        List<String> ids = new ArrayList<>();
//
//        jsonObject = new JSONObject(category);
//        classes = jsonObject.optJSONArray("list");
//        ids.add(classes.getJSONObject(1).optString("vod_id"));
//        System.out.println(ids);
//
//        String detail = aidi.detailContent(ids);
//        System.out.println(detail);
//
//        jsonObject = new JSONObject(detail);
//        classes = jsonObject.optJSONArray("list");
//        String playurl = classes.getJSONObject(0).optString("vod_play_url").split("#")[0].split("\\$")[1];
//        System.out.println(playurl);
//
//        System.out.println(aidi.playerContent("", playurl, new ArrayList<>()));
//        System.out.println(aidi.searchContent("美", false));
//    }
//
//    @Test
//    public void test_hsck() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/hsck.json";
//        echo(ext);
//    }
//
//    @Test
//    public void test_bagedvd() throws Exception {
//        String ext = "http://cat.guibiaoguo.tk/bagedvd.json";
//
//        echo(ext);
//    }
//
////    @Test
//    public void test_yunleys() throws Exception {
//        String ext = "http://cat.guibiaoguo.tk/yunleys.json";
//
//        echo(ext);
//    }
//
//////    @Test
////    public void test_xindiediao() throws Exception {
////        String ext = "https://cat.guibiaoguo.tk/xindiediao.json";
////        SpiderUrl su = new SpiderUrl(ext, null);
////        String json = SpiderReq.get(su).content;
////        System.out.println(json);
////        echo(ext);
////    }
//
//    @Test
////    @Ignore
//    public void test_juztv() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/juztv.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_shunmintv() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/shunmintv.json";
//
//        echo(ext);
//    }
//
////    @Test
////    public void test_c8ms() throws Exception {
////        String ext = "https://cat.guibiaoguo.tk/c8ms.json";
////        SpiderUrl su = new SpiderUrl(ext, null);
////        String json = SpiderReq.get(su).content;
////        System.out.println(json);
////        echo(ext);
////    }
//
//    @Test
////    @Ignore
//    public void test_ttspt() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/ttspt.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_xxintv() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/xxintv.json";
//
//        echo(ext);
//    }
//
//    @Test
//////    @Ignore
//    public void test_zqystv() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/zqystv.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_98net() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/98net.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_fys58() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/fys58.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_limintv() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/limintv.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_cunzhangba() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/cunzhangba.json";
//
//        echo(ext);
//    }
//
////    @Test
////    public void test_stuivodlist_139ys() throws Exception {
////        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/139ys.json";
////        SpiderUrl su = new SpiderUrl(ext, null);
////        String json = SpiderReq.get(su).content;
////        System.out.println(json);
////        echo(ext);
////    }
////
////    @Test
////    public void test_stuivodlist_25ys() throws Exception {
////        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/25ys.json";
////        SpiderUrl su = new SpiderUrl(ext, null);
////        String json = SpiderReq.get(su).content;
////        System.out.println(json);
////        echo(ext);
////    }
////
////    @Test
////    public void test_stuivodlist_28et() throws Exception {
////        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/28et.json";
////        SpiderUrl su = new SpiderUrl(ext, null);
////        String json = SpiderReq.get(su).content;
////        System.out.println(json);
////        echo(ext);
////    }
////
////    @Test
////    public void test_stuivodlist_294kan() throws Exception {
////        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/294kan.json";
////        SpiderUrl su = new SpiderUrl(ext, null);
////        String json = SpiderReq.get(su).content;
////        System.out.println(json);
////        echo(ext);
////    }
////
////    @Test
////    public void test_stuivodlist_00hdy() throws Exception {
////        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/00hdy.json";
////        SpiderUrl su = new SpiderUrl(ext, null);
////        String json = SpiderReq.get(su).content;
////        System.out.println(json);
////        echo(ext);
////    }
//
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_00hdy() throws Exception{
//        String ext = "https://gitee.com/shentong_012/mao/raw/master/stui-vodlist/00hdy.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_114gq() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/114gq.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_139ys() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/139ys.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_25ys() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/25ys.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_28et() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/28et.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_294kan() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/294kan.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_2hys() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/2hys.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_3355() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/3355.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_3ggt() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/3ggt.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_40yb() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/40yb.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_4480da() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/4480daco.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_4480yw() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/4480ysw.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_4567kp() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/4567kp.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_45tg23() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/45tg23.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_52dgm() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/52dgm.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_52dy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/52dy.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_53u7xd() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/53u7xd.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_5678yp() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/5678yp.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_5ji() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/5ji.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_5kpw() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/5kpw.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_60dyw() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/60dyw.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_66dongman() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/66dongman.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_6d2hatv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/6d2hatv.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_6ygo() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/6ygo.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_74ms() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/74ms.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_789ys() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/789ys.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_7xiady() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/7xiady.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_80xd() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/80xd.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_81rongjun() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/81rongjun.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_88kandy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/88kandy.json";
//
//        echo(ext);
//    }
//
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_8byy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/8byy.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_8hyyw() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/8hyyw.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_913543() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/913543.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_91mayi() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/91mayi.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_98bbw() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/98bbw.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_98net() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/98net.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_9do9() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/9do9.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_9fm() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/9fm.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_9kp() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/9kp.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_9mdyy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/9mdyy.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_aifengys() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/aifengys.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_aikanla() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/aikanla.json";
//
//        echo(ext);
//    }
//
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_akyy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/akyy.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_anluyg() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/anluyg.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_apiappearoo() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/apiappearoo.top.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_apiqd234() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/apiqd234.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_apitymov() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/apitymov.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_appmovie() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/appmovie.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_aspmao() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/aspmao.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_auedu() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/auedu.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_bagedvd() throws Exception{
//        String ext = "http://cat.guibiaoguo.tk/stui-vodlist/bagedvd.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_bgdy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/bgdy.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_bjkgs() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/bjkgs.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_bjoku() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/bjoku.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_bk360() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/bk360.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_bpkkk() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/bpkkk.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_c8ms() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/c8ms.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_caomin666() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/caomin666.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_cerrd() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/cerrd.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_chinaqualitytest() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/chinaqualitytest.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_chinayunc() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/chinayunc.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_chok8() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/chok8.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_cjsgz() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/cjsgz.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_ck7788() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ck7788.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_crwmart() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/crwmart.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_cunzhangba() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/cunzhangba.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_d7ys() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/d7ys.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_daluju123() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/daluju123.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_dgdcyz() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/dgdcyz.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_dgklq() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/dgklq.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_dgyytv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/dgyytv.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_diskgirl() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/diskgirl.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_dongmanw() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/dongmanw.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_doubiyy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/doubiyy.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_duoduozy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/duoduozy.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_duonao1() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/duonao1.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_dy6g() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/dy6g.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_dytvw() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/dytvw.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_edant() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/edant.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_ekids() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ekids.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_fys58() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/fys58.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_ganfantv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ganfantv.json";
//
//        echo(ext);
//    }
//
//    @Test
//    public void test_stuivodlist_ganpian() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ganpian.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_gygysp() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/gygysp.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_hanjucom() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/hanjucom.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_hnojl() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/hnojl.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_hugedy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/hugedy.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_huolikan() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/huolikan.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_iliubei() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/iliubei.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_imahuatv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/imahuatv.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_iooyun() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/iooyun.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_itaojuba() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/itaojuba.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_jijizy1() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/jijizy1.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_jingguanhang() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/jingguanhang.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_jisuyy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/jisuyy.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_juztv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/juztv.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_kandaxue() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/kandaxue.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_kanjd() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/kanjd.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_kedou777() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/kedou777.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_kkkkp() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/kkkkp.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_kpian() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/kpian.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_kukedy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/kukedy.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_languotv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/languotv.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_libangde() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/libangde.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_libvio() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/libvio.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_limintv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/limintv.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_liuliuyy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/liuliuyy.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_lunlik() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/lunlik.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_lzystv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/lzystv.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_m1934() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/m1934.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_m2dog() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/m2dog.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_m9080kp() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/m9080kp.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_mahuaba() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mahuaba.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_mayiyingshi() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mayiyingshi.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_meijuxq() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/meijuxq.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_mfeiniukan() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mfeiniukan.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_mfgtop() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mfgtop.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_mfvod() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mfvod.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_mgtv5() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mgtv5.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_mhmytv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mhmytv.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_minfovod() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/minfovod.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_mizi123() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mizi123.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_mlxg58() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mlxg58.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_mmys() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mmys.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_moody5() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/moody5.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_movie37mk() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/movie37mk.top.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_mrehuo() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mrehuo.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_msouady() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/msouady.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_msztoyota() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/msztoyota.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_mtaohaokan() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mtaohaokan.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_mtiantk() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mtiantk.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_mu9yy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mu9yy.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_mxiamov() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mxiamov.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_mxindiediao() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mxindiediao.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_myejudy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/myejudy.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_myyzone() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/myyzone.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_neenl() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/neenl.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_new4480() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/new4480.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_nndyw() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/nndyw.json";
//
//        echo(ext);
//    }
//
////    @Test
//////    @Ignore
////    public void test_stuivodlist_offing() throws Exception{
////        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/offing.json";
////        SpiderUrl su = new SpiderUrl(ext, null);
////        String json = SpiderReq.get(su).content;
////        System.out.println(json);
////        echo(ext);
////    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_okdyw() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/okdyw.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_okdyy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/okdyy.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_okzytop() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/okzytop.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_omofun() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/omofun.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_paisuo() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/paisuo.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_pianba() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/pianba.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_popogg() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/popogg.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_poxiaotv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/poxiaotv.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_pxys888() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/pxys888.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_qcvod() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/qcvod.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_qhddjcom() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/qhddjcom.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_qianshihouse() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/qianshihouse.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_qiyou8() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/qiyou8.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_rejuttyy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/rejuttyy.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_renrenkan() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/renrenkan.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_rwgaoxin() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/rwgaoxin.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_shliangjie() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/shliangjie.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_shsumai() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/shsumai.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_shudx() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/shudx.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_shunmintv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/shunmintv.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_sjzvip() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/sjzvip.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_szztp() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/szztp.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_taijuu() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/taijuu.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_ttk17() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ttk17.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_ttspt() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ttspt.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_ttvideopro() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ttvideopro.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_tv360i() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/tv360i.top.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_tyzxk() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/tyzxk.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_unss() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/unss.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_uuyuuy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/uuyuuy.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_videorongxingvr() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/videorongxingvr.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_vipdy5() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/vipdy5.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_vipliuliuyy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/vipliuliuyy.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_vipweiaidy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/vipweiaidy.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_vipys5() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/vipys5.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_vxigua() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/vxigua.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_wanggouchao() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/wanggouchao.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_wgyy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/wgyy.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_wlyy5() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/wlyy5.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_wnysw() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/wnysw.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_xhkan() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xhkan.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_xiafandy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xiafandy.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_xigua00() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xigua00.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_xinxing668() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xinxing668.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_xn_256_zm3fr26s() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xn-256-zm3fr26s.json";
//
//        echo(ext);
//    }
//
//    @Test
//    public void test_stuivodlist_xn_cysr98fj6g2mp() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xn-cysr98fj6g2mp.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_xn_ehq01tnu8a5dv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xn-ehq01tnu8a5dv.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_xn_tv_ks3d939o() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xn-tv-ks3d939o.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_xskdm() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xskdm.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_xxintv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xxintv.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_xxysimg() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xxysimg.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_xxysvip() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xxysvip.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_yeyemi() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yeyemi.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_yhsp10() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yhsp10.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_yingdouco() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yingdouco.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_yjdy5() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yjdy5.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_ymhslf() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ymhslf.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_ys6080co() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ys6080co.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_yueak() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yueak.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_yunleys() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yunleys.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_yy604() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yy604.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_yy60900() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/60900yy.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_yzyyy() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yzyyy.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_zgjz() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zgjz.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_zhengzhinonghua() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zhengzhinonghua.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_zhongzu365() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zhongzu365.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_zhuijuju() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zhuijuju.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_zpcxb() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zpcxb.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_zpdyw() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zpdyw.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_zqystv() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zqystv.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_zxzjme() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zxzjme.json";
//
//        echo(ext);
//    }
//
////    @Test
//    @Deprecated
//    public void test_stuivodlist_zy88jiexi() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zy88jiexi.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_zzlianjie() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zzlianjie.json";
//
//        echo(ext);
//    }
//
//    @Test
////    @Ignore
//    public void test_stuivodlist_zzrx() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zzrx.json";
//
//        echo(ext);
//    }
//
//    @Test
//    public void addition_isCorrect() throws Exception {
//        XPath aidi = new XPath();
//        aidi.init(null, "{\n" +
//                "  \"ua\": \"\",\n" +
//                "  \"homeUrl\": \"http://695ck.cc\",\n" +
//                "  \"cateNode\": \"//ul[contains(@class,'stui-header__menu clearfix')]/li[position()>1]/a\",\n" +
//                "  \"cateName\": \"/text()\",\n" +
//                "  \"cateId\": \"/@href\",\n" +
//                "  \"cateIdR\": \"/vodtype/(\\\\w+).html\",\n" +
//                "  \"cateManual\": {},\n" +
//                "  \"homeVodNode\": \"//ul[contains(@class,'stui-vodlist')]/li\",\n" +
//                "  \"homeVodName\": \"//h4/a/text()\",\n" +
//                "  \"homeVodId\": \"//h4/a/@href\",\n" +
//                "  \"homeVodIdR\": \"\",\n" +
//                "  \"homeVodImg\": \"//a/@data-original\",\n" +
//                "  \"homeVodImgR\": \"\\\\S+(http\\\\S+)\",\n" +
//                "  \"homeVodMark\": \"//a[contains(@class,'stui-vodlist__thumb')]/text()\",\n" +
//                "  \"cateUrl\": \"http://695ck.cc/vodtype/{cateId}-{catePg}.html\",\n" +
//                "  \"cateVodNode\": \"//ul[contains(@class,'stui-vodlist')]/li\",\n" +
//                "  \"cateVodName\": \"//h4/a/text()\",\n" +
//                "  \"cateVodId\": \"//h4/a/@href\",\n" +
//                "  \"cateVodIdR\": \"\",\n" +
//                "  \"cateVodImg\": \"//a/@data-original\",\n" +
//                "  \"cateVodImgR\": \"\\\\S+(http\\\\S+)\",\n" +
//                "  \"cateVodMark\": \"//a/span[contains(@class,'pic-text')]/text()\",\n" +
//                "  \"dtUrl\": \"http://695ck.cc/{vid}\",\n" +
//                "  \"dtNode\": \"//div[contains(@class,'stui-player__video')]/script\",\n" +
//                "  \"dtName\": \"/text()\",\n" +
//                "  \"dtNameR\": \"\",\n" +
//                "  \"dtImg\": \"/text()\",\n" +
//                "  \"dtImgR\": \"\",\n" +
//                "  \"dtDesc\": \"/text()\",\n" +
//                "  \"dtDescR\": \"\",\n" +
//                "  \"dtFromNode\": \"///div[contains(@class,'stui-player__video')]\",\n" +
//                "  \"dtFromName\": \"/script[1]/text()\",\n" +
//                "  \"dtFromNameR\": \"\\\"from\\\":\\\"(.*?)\\\"\",\n" +
//                "  \"dtUrlNode\": \"//div[contains(@class,'stui-player__video')]\",\n" +
//                "  \"dtUrlSubNode\": \"/script[1]/text()\",\n" +
//                "  \"dtUrlId\": \"/text()\",\n" +
//                "  \"dtUrlIdR\": \"\\\"link\\\":\\\"\\\\/vodplay\\\\/(.*)\\\"\",\n" +
//                "  \"dtUrlName\": \"/text()\",\n" +
//                "  \"dtUrlNameR\": \"\\\"from\\\":\\\"(.*?)\\\"\",\n" +
//                "  \"playUrl\": \"http://695ck.cc/vodplay/{playUrl}.html\",\n" +
//                "  \"playUa\": \"\",\n" +
//                "  \"searchUrl\": \"http://695ck.cc/vodsearch/-------------.html?wd={wd}&submit=\",\n" +
//                "  \"scVodNode\": \"//ul[contains(@class,'stui-vodlist__media')]/li\",\n" +
//                "  \"scVodName\": \"//a/@title\",\n" +
//                "  \"scVodId\": \"//a/@href\",\n" +
//                "  \"scVodIdR\": \"\",\n" +
//                "  \"scVodImg\": \"//a/@data-original\",\n" +
//                "  \"scVodMark\": \"//a/span[contains(@class,'pic-text')]/text()\"\n" +
//                "}");
//        System.out.println(aidi.homeContent(true));
//        System.out.println(aidi.homeVideoContent());
//        System.out.println(aidi.categoryContent("2", "1", false, null));
//        List<String> ids = new ArrayList<>();
//        ids.add("vodplay/649-1-1.html");
//        System.out.println(aidi.detailContent(ids));
//        System.out.println(aidi.playerContent("", "11111", new ArrayList<>()));
//        System.out.println(aidi.searchContent("陪你一起", false));
//    }
//
//    class Address {
//        private String fid;
//        private String name;
//        private String hospitalld;
//    }
//    @Test
//    public void testGson() {
//        String arr = "{'list':[{'fid':'1','name':'北京','hospitalld':'99999996'}, {'fid':'2','name':'深圳','hospitalld':'05786799'}]}";
//        Map data = new Gson().fromJson(arr, new TypeToken<LinkedHashMap<String, List<Address>>>(){}.getType());
//        System.out.println(data.get("list"));
//    }
//
//    @Test
//    public void testFilter() {
//        String arr = "{\"tv\":[{\"name\":\"排序\",\"value\":[{\"v\":\"19\",\"n\":\"最新\"},{\"v\":\"18\",\"n\":\"最热\"},{\"v\":\"16\",\"n\":\"好评\"},{\"v\":\"21\",\"n\":\"口碑好剧\"},{\"v\":\"54\",\"n\":\"高分好评\"},{\"v\":\"22\",\"n\":\"知乎高分\"}],\"key\":\"sort\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"偶像爱情\"},{\"v\":\"2\",\"n\":\"古装历史\"},{\"v\":\"3\",\"n\":\"玄幻史诗\"},{\"v\":\"4\",\"n\":\"都市生活\"},{\"v\":\"14\",\"n\":\"当代主旋律\"},{\"v\":\"5\",\"n\":\"罪案谍战\"},{\"v\":\"6\",\"n\":\"历险科幻\"},{\"v\":\"7\",\"n\":\"军旅抗战\"},{\"v\":\"8\",\"n\":\"喜剧\"},{\"v\":\"9\",\"n\":\"武侠江湖\"},{\"v\":\"10\",\"n\":\"青春校园\"},{\"v\":\"11\",\"n\":\"时代传奇\"},{\"v\":\"12\",\"n\":\"体育电竞\"},{\"v\":\"13\",\"n\":\"真人动漫\"},{\"v\":\"15\",\"n\":\"短剧\"},{\"v\":\"44\",\"n\":\"独播\"}],\"key\":\"feature\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"814\",\"n\":\"内地\"},{\"v\":\"815\",\"n\":\"美国\"},{\"v\":\"816\",\"n\":\"英国\"},{\"v\":\"818\",\"n\":\"韩国\"},{\"v\":\"9\",\"n\":\"泰国\"},{\"v\":\"10\",\"n\":\"日本\"},{\"v\":\"14\",\"n\":\"中国香港\"},{\"v\":\"817\",\"n\":\"中国台湾\"},{\"v\":\"819\",\"n\":\"其他\"}],\"key\":\"iarea\"},{\"name\":\"年份\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"2020\",\"n\":\"2020\"},{\"v\":\"4061\",\"n\":\"2019\"},{\"v\":\"4060\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"859\",\"n\":\"2016\"},{\"v\":\"860\",\"n\":\"2015\"},{\"v\":\"861\",\"n\":\"2014\"},{\"v\":\"862\",\"n\":\"2013\"},{\"v\":\"863\",\"n\":\"2012\"},{\"v\":\"864\",\"n\":\"2011\"},{\"v\":\"865\",\"n\":\"2010\"},{\"v\":\"866\",\"n\":\"其他\"}],\"key\":\"year\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"867\",\"n\":\"免费\"},{\"v\":\"6\",\"n\":\"会员\"}],\"key\":\"pay\"}],\"education\":[{\"name\":\"排序\",\"value\":[{\"v\":\"19\",\"n\":\"按更新\"},{\"v\":\"40\",\"n\":\"最热\"}],\"key\":\"sort\"},{\"name\":\"学段\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2\",\"n\":\"小学\"},{\"v\":\"3\",\"n\":\"初中\"},{\"v\":\"4\",\"n\":\"高中\"},{\"v\":\"5\",\"n\":\"大学\"},{\"v\":\"6\",\"n\":\"研究生\"},{\"v\":\"7\",\"n\":\"成人\"}],\"key\":\"section\"},{\"name\":\"学级\",\"value\":[{\"v\":\"1\",\"n\":\"全部\"},{\"v\":\"5\",\"n\":\"一年级\"},{\"v\":\"6\",\"n\":\"二年级\"},{\"v\":\"7\",\"n\":\"三年级\"},{\"v\":\"8\",\"n\":\"四年级\"},{\"v\":\"9\",\"n\":\"五年级\"},{\"v\":\"10\",\"n\":\"六年级\"},{\"v\":\"11\",\"n\":\"初一\"},{\"v\":\"12\",\"n\":\"初二\"},{\"v\":\"13\",\"n\":\"初三\"},{\"v\":\"14\",\"n\":\"高一\"},{\"v\":\"15\",\"n\":\"高二\"},{\"v\":\"16\",\"n\":\"高三\"},{\"v\":\"20\",\"n\":\"大四\"}],\"key\":\"grade\"},{\"name\":\"学科\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"41\",\"n\":\"语文\"},{\"v\":\"42\",\"n\":\"数学\"},{\"v\":\"43\",\"n\":\"英语\"},{\"v\":\"44\",\"n\":\"物理\"},{\"v\":\"45\",\"n\":\"化学\"},{\"v\":\"46\",\"n\":\"生物\"},{\"v\":\"47\",\"n\":\"政治\"},{\"v\":\"50\",\"n\":\"其它\"}],\"key\":\"subject\"}],\"movie\":[{\"name\":\"排序\",\"value\":[{\"v\":\"18\",\"n\":\"最近热播\"},{\"v\":\"19\",\"n\":\"最新上架\"},{\"v\":\"21\",\"n\":\"高分好评\"},{\"v\":\"22\",\"n\":\"知乎高分\"}],\"key\":\"sort\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"100018\",\"n\":\"剧情\"},{\"v\":\"100004\",\"n\":\"喜剧\"},{\"v\":\"100061\",\"n\":\"动作\"},{\"v\":\"100005\",\"n\":\"爱情\"},{\"v\":\"100010\",\"n\":\"惊悚\"},{\"v\":\"4\",\"n\":\"犯罪\"},{\"v\":\"100009\",\"n\":\"悬疑\"},{\"v\":\"100006\",\"n\":\"战争\"},{\"v\":\"100012\",\"n\":\"科幻\"},{\"v\":\"100015\",\"n\":\"动画\"},{\"v\":\"100007\",\"n\":\"恐怖\"},{\"v\":\"100017\",\"n\":\"家庭\"},{\"v\":\"100022\",\"n\":\"传记\"},{\"v\":\"100003\",\"n\":\"冒险\"},{\"v\":\"100016\",\"n\":\"奇幻\"},{\"v\":\"100011\",\"n\":\"武侠\"},{\"v\":\"100021\",\"n\":\"历史\"},{\"v\":\"2\",\"n\":\"运动\"},{\"v\":\"100014\",\"n\":\"歌舞\"},{\"v\":\"100013\",\"n\":\"音乐\"},{\"v\":\"100020\",\"n\":\"纪录\"},{\"v\":\"100019\",\"n\":\"伦理\"},{\"v\":\"3\",\"n\":\"西部\"}],\"key\":\"itype\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"100024\",\"n\":\"内地\"},{\"v\":\"100025\",\"n\":\"中国香港\"},{\"v\":\"100029\",\"n\":\"美国\"},{\"v\":\"100032\",\"n\":\"欧洲\"},{\"v\":\"100026\",\"n\":\"中国台湾\"},{\"v\":\"100027\",\"n\":\"日本\"},{\"v\":\"100028\",\"n\":\"韩国\"},{\"v\":\"100030\",\"n\":\"印度\"},{\"v\":\"100031\",\"n\":\"泰国\"},{\"v\":\"15\",\"n\":\"英国\"},{\"v\":\"16\",\"n\":\"法国\"},{\"v\":\"17\",\"n\":\"德国\"},{\"v\":\"18\",\"n\":\"加拿大\"},{\"v\":\"19\",\"n\":\"西班牙\"},{\"v\":\"20\",\"n\":\"意大利\"},{\"v\":\"21\",\"n\":\"澳大利亚\"},{\"v\":\"22\",\"n\":\"北欧\"},{\"v\":\"23\",\"n\":\"拉丁美洲\"},{\"v\":\"100033\",\"n\":\"其它\"}],\"key\":\"iarea\"},{\"name\":\"特色\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"院线\"},{\"v\":\"2\",\"n\":\"自制电影\"},{\"v\":\"5\",\"n\":\"独播\"},{\"v\":\"8\",\"n\":\"原声\"},{\"v\":\"9\",\"n\":\"粤语\"},{\"v\":\"3\",\"n\":\"蓝光\"},{\"v\":\"6\",\"n\":\"奥斯卡\"}],\"key\":\"characteristic\"},{\"name\":\"年份\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"2020\",\"n\":\"2020\"},{\"v\":\"20\",\"n\":\"2019\"},{\"v\":\"2018\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"2016\",\"n\":\"2016\"},{\"v\":\"100063\",\"n\":\"2015\"},{\"v\":\"100034\",\"n\":\"2014\"},{\"v\":\"100035\",\"n\":\"2013-2011\"},{\"v\":\"100036\",\"n\":\"2010-2006\"},{\"v\":\"100037\",\"n\":\"2005-2000\"},{\"v\":\"100038\",\"n\":\"90年代\"},{\"v\":\"100039\",\"n\":\"80年代\"},{\"v\":\"100040\",\"n\":\"其它\"}],\"key\":\"year\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"免费\"},{\"v\":\"2\",\"n\":\"包月\"},{\"v\":\"3\",\"n\":\"用券\"},{\"v\":\"4\",\"n\":\"付费\"}],\"key\":\"charge\"}],\"variety\":[{\"name\":\"排序\",\"value\":[{\"v\":\"4\",\"n\":\"最热\"},{\"v\":\"5\",\"n\":\"最新\"}],\"key\":\"sort\"},{\"name\":\"独家\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"腾讯自制\"},{\"v\":\"2\",\"n\":\"独播\"}],\"key\":\"exclusive\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"国内\"},{\"v\":\"2\",\"n\":\"海外\"}],\"key\":\"iarea\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"10\",\"n\":\"游戏\"},{\"v\":\"11\",\"n\":\"音乐\"},{\"v\":\"24\",\"n\":\"养成\"},{\"v\":\"12\",\"n\":\"情感\"},{\"v\":\"14\",\"n\":\"喜剧\"},{\"v\":\"2\",\"n\":\"脱口秀\"},{\"v\":\"16\",\"n\":\"表演\"},{\"v\":\"25\",\"n\":\"体验\"},{\"v\":\"17\",\"n\":\"亲子\"},{\"v\":\"26\",\"n\":\"文化\"},{\"v\":\"19\",\"n\":\"美食\"},{\"v\":\"20\",\"n\":\"职场\"},{\"v\":\"21\",\"n\":\"体育\"},{\"v\":\"15\",\"n\":\"潮流文化\"},{\"v\":\"3\",\"n\":\"访谈\"},{\"v\":\"22\",\"n\":\"生活服务\"},{\"v\":\"23\",\"n\":\"萌宠\"},{\"v\":\"7\",\"n\":\"资讯\"},{\"v\":\"6\",\"n\":\"晚会\"}],\"key\":\"itype\"},{\"name\":\"年份\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"50\",\"n\":\"2020\"},{\"v\":\"7\",\"n\":\"2019\"},{\"v\":\"1\",\"n\":\"2018\"},{\"v\":\"2\",\"n\":\"2017\"},{\"v\":\"3\",\"n\":\"2016\"},{\"v\":\"4\",\"n\":\"2015\"},{\"v\":\"5\",\"n\":\"2014\"},{\"v\":\"6\",\"n\":\"2013\"},{\"v\":\"2012\",\"n\":\"2012\"},{\"v\":\"2011\",\"n\":\"2011\"},{\"v\":\"2010\",\"n\":\"2010\"},{\"v\":\"99\",\"n\":\"更早\"}],\"key\":\"iyear\"},{\"name\":\"付费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"会员\"}],\"key\":\"ipay\"}],\"cartoon\":[{\"name\":\"排序\",\"value\":[{\"v\":\"40\",\"n\":\"最热\"},{\"v\":\"23\",\"n\":\"最新\"},{\"v\":\"20\",\"n\":\"好评\"},{\"v\":\"22\",\"n\":\"知乎高分\"}],\"key\":\"sort\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2\",\"n\":\"冒险\"},{\"v\":\"5\",\"n\":\"战斗\"},{\"v\":\"1\",\"n\":\"搞笑\"},{\"v\":\"3\",\"n\":\"经典\"},{\"v\":\"4\",\"n\":\"科幻\"},{\"v\":\"9\",\"n\":\"玄幻\"},{\"v\":\"6\",\"n\":\"魔幻\"},{\"v\":\"13\",\"n\":\"武侠\"},{\"v\":\"7\",\"n\":\"恋爱\"},{\"v\":\"14\",\"n\":\"推理\"},{\"v\":\"11\",\"n\":\"腾讯出品\"},{\"v\":\"15\",\"n\":\"日常\"},{\"v\":\"16\",\"n\":\"校园\"},{\"v\":\"17\",\"n\":\"悬疑\"},{\"v\":\"18\",\"n\":\"真人\"},{\"v\":\"19\",\"n\":\"历史\"},{\"v\":\"20\",\"n\":\"竞技\"},{\"v\":\"12\",\"n\":\"其他\"}],\"key\":\"itype\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"内地\"},{\"v\":\"2\",\"n\":\"日本\"},{\"v\":\"3\",\"n\":\"欧美\"},{\"v\":\"4\",\"n\":\"其他\"}],\"key\":\"iarea\"},{\"name\":\"时间\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2021\",\"n\":\"2021\"},{\"v\":\"50\",\"n\":\"2020\"},{\"v\":\"11\",\"n\":\"2019\"},{\"v\":\"2018\",\"n\":\"2018\"},{\"v\":\"2017\",\"n\":\"2017\"},{\"v\":\"1\",\"n\":\"2016\"},{\"v\":\"2\",\"n\":\"2015\"},{\"v\":\"3\",\"n\":\"2014\"},{\"v\":\"4\",\"n\":\"2013\"},{\"v\":\"5\",\"n\":\"2012\"},{\"v\":\"6\",\"n\":\"2011\"},{\"v\":\"7\",\"n\":\"00年代\"},{\"v\":\"8\",\"n\":\"90年代\"},{\"v\":\"9\",\"n\":\"80年代\"},{\"v\":\"10\",\"n\":\"更早\"}],\"key\":\"iyear\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"免费\"},{\"v\":\"2\",\"n\":\"会员\"}],\"key\":\"ipay\"},{\"name\":\"状态\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"46\",\"n\":\"预告片\"},{\"v\":\"44\",\"n\":\"连载\"},{\"v\":\"45\",\"n\":\"完结\"}],\"key\":\"anime_status\"},{\"name\":\"分类\",\"value\":[{\"v\":\"1\",\"n\":\"全部\"},{\"v\":\"2\",\"n\":\"3D动画\"},{\"v\":\"3\",\"n\":\"2D动画\"},{\"v\":\"4\",\"n\":\"特摄\"},{\"v\":\"5\",\"n\":\"其他\"}],\"key\":\"item\"}],\"doco\":[{\"name\":\"排序\",\"value\":[{\"v\":\"19\",\"n\":\"最新\"},{\"v\":\"18\",\"n\":\"最热\"},{\"v\":\"20\",\"n\":\"好评\"},{\"v\":\"22\",\"n\":\"知乎高分\"}],\"key\":\"sort\"},{\"name\":\"出品机构\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"BBC\"},{\"v\":\"4\",\"n\":\"国家地理\"},{\"v\":\"3175\",\"n\":\"HBO\"},{\"v\":\"2\",\"n\":\"NHK\"},{\"v\":\"7\",\"n\":\"历史频道\"},{\"v\":\"3530\",\"n\":\"ITV\"},{\"v\":\"3174\",\"n\":\"探索频道\"},{\"v\":\"3176\",\"n\":\"ZDF\"},{\"v\":\"3172\",\"n\":\"ARTE\"},{\"v\":\"15\",\"n\":\"腾讯自制\"},{\"v\":\"6\",\"n\":\"合作机构\"},{\"v\":\"5\",\"n\":\"其他\"}],\"key\":\"itrailer\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"4\",\"n\":\"自然\"},{\"v\":\"9\",\"n\":\"美食\"},{\"v\":\"3\",\"n\":\"社会\"},{\"v\":\"5\",\"n\":\"人文\"},{\"v\":\"1\",\"n\":\"历史\"},{\"v\":\"2\",\"n\":\"军事\"},{\"v\":\"7\",\"n\":\"科技\"},{\"v\":\"13\",\"n\":\"财经\"},{\"v\":\"15\",\"n\":\"探险\"},{\"v\":\"6\",\"n\":\"罪案\"},{\"v\":\"11\",\"n\":\"竞技\"},{\"v\":\"10\",\"n\":\"旅游\"}],\"key\":\"itype\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"免费\"},{\"v\":\"2\",\"n\":\"会员\"}],\"key\":\"pay\"}],\"child\":[{\"name\":\"排序\",\"value\":[{\"v\":\"19\",\"n\":\"最新\"},{\"v\":\"18\",\"n\":\"最热\"},{\"v\":\"20\",\"n\":\"好评\"}],\"key\":\"sort\"},{\"name\":\"地区\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"欧美\"},{\"v\":\"2\",\"n\":\"日韩\"},{\"v\":\"3\",\"n\":\"国内\"}],\"key\":\"iarea\"},{\"name\":\"年龄\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"0-3岁\"},{\"v\":\"2\",\"n\":\"4-6岁\"},{\"v\":\"3\",\"n\":\"7-9岁\"},{\"v\":\"4\",\"n\":\"10岁以上\"}],\"key\":\"iyear\"},{\"name\":\"性别\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"男孩\"},{\"v\":\"2\",\"n\":\"女孩\"}],\"key\":\"gender\"},{\"name\":\"类型\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"儿歌\"},{\"v\":\"2\",\"n\":\"益智\"},{\"v\":\"3\",\"n\":\"手工·绘画\"},{\"v\":\"4\",\"n\":\"玩具\"},{\"v\":\"5\",\"n\":\"英语\"},{\"v\":\"7\",\"n\":\"早教\"},{\"v\":\"6\",\"n\":\"数学\"},{\"v\":\"8\",\"n\":\"国学\"},{\"v\":\"9\",\"n\":\"合家欢\"},{\"v\":\"10\",\"n\":\"冒险\"},{\"v\":\"11\",\"n\":\"交通工具\"},{\"v\":\"12\",\"n\":\"魔幻·科幻\"},{\"v\":\"13\",\"n\":\"动物\"},{\"v\":\"14\",\"n\":\"真人特摄\"},{\"v\":\"15\",\"n\":\"探索\"},{\"v\":\"16\",\"n\":\"其他\"}],\"key\":\"itype\"},{\"name\":\"资费\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"1\",\"n\":\"免费\"},{\"v\":\"2\",\"n\":\"会员\"}],\"key\":\"ipay\"}],\"knowledge\":[{\"name\":\"排序\",\"value\":[{\"v\":\"41\",\"n\":\"最热\"},{\"v\":\"10\",\"n\":\"最新\"}],\"key\":\"sort\"},{\"name\":\"分类\",\"value\":[{\"v\":\"-1\",\"n\":\"全部\"},{\"v\":\"2\",\"n\":\"文化历史\"},{\"v\":\"3\",\"n\":\"亲子育儿\"},{\"v\":\"4\",\"n\":\"职场\"},{\"v\":\"5\",\"n\":\"商业理财\"},{\"v\":\"7\",\"n\":\"生活\"},{\"v\":\"9\",\"n\":\"情感心理\"},{\"v\":\"8\",\"n\":\"运动健身\"},{\"v\":\"6\",\"n\":\"艺术兴趣\"},{\"v\":\"12\",\"n\":\"游戏\"},{\"v\":\"14\",\"n\":\"科学科普\"},{\"v\":\"15\",\"n\":\"健康\"},{\"v\":\"16\",\"n\":\"IT/互联网\"}],\"key\":\"pay_level_one\"}]}";
//        Map data = new Gson().fromJson(arr, new TypeToken<LinkedHashMap<String, List<Filter>>>(){}.getType());
//        System.out.println(data.get("tv"));
//    }
//}