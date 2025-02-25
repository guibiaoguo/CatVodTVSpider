package com.guibiaoguo.myapplication;

import com.github.catvod.crawler.SpiderReq;
import com.github.catvod.crawler.SpiderUrl;
import com.github.catvod.spider.XPath;
import com.github.catvod.spider.XPath;

import org.json.JSONArray;
import org.json.JSONObject;
import org.junit.Assert;
import org.junit.Ignore;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;


/**
 * Example local unit test, which will execute on the development machine (host).
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
public class ExampleUnitTest {

    public void echo(String json) throws Exception {
        XPath aidi = new XPath();
        aidi.init(null, json);
        String homeContent = aidi.homeContent(true);
        System.out.println(homeContent);
        aidi.homeVideoContent();
        JSONObject jsonObject = new JSONObject(homeContent);
        JSONArray classes = jsonObject.optJSONArray("class");
        String tid = classes.getJSONObject(1).optString("type_id");
        System.out.println(tid);
        //org.seimicrawler.xpath.core.function;
        String category = aidi.categoryContent(tid, "2", false, null);
        System.out.println(category);
        List<String> ids = new ArrayList<>();

        jsonObject = new JSONObject(category);
        classes = jsonObject.optJSONArray("list");
        ids.add(classes.getJSONObject(1).optString("vod_id"));
        System.out.println(ids);

        String detail = aidi.detailContent(ids);
        System.out.println(detail);

        jsonObject = new JSONObject(detail);
        classes = jsonObject.optJSONArray("list");
        String playurl = classes.getJSONObject(0).optString("vod_play_url").split("#")[0].split("\\$")[1];
        System.out.println(playurl);

        System.out.println(aidi.playerContent("", playurl, new ArrayList<>()));
        System.out.println(aidi.searchContent("美", false));
    }

    @Test
    public void test_hsck() throws Exception {
        String ext = "https://cat.guibiaoguo.tk/hsck.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    public void test_bagedvd() throws Exception {
        String ext = "http://cat.guibiaoguo.tk/bagedvd.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    public void test_yunleys() throws Exception {
        String ext = "http://cat.guibiaoguo.tk/yunleys.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

////    @Test
//    public void test_xindiediao() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/xindiediao.json";
//        SpiderUrl su = new SpiderUrl(ext, null);
//        String json = SpiderReq.get(su).content;
//        System.out.println(json);
//        echo(json);
//    }

    @Test
//    @Ignore
    public void test_juztv() throws Exception {
        String ext = "https://cat.guibiaoguo.tk/juztv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_shunmintv() throws Exception {
        String ext = "https://cat.guibiaoguo.tk/shunmintv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
//    public void test_c8ms() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/c8ms.json";
//        SpiderUrl su = new SpiderUrl(ext, null);
//        String json = SpiderReq.get(su).content;
//        System.out.println(json);
//        echo(json);
//    }

    @Test
//    @Ignore
    public void test_ttspt() throws Exception {
        String ext = "https://cat.guibiaoguo.tk/ttspt.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_xxintv() throws Exception {
        String ext = "https://cat.guibiaoguo.tk/xxintv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
////    @Ignore
    public void test_zqystv() throws Exception {
        String ext = "https://cat.guibiaoguo.tk/zqystv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_98net() throws Exception {
        String ext = "https://cat.guibiaoguo.tk/98net.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_fys58() throws Exception {
        String ext = "https://cat.guibiaoguo.tk/fys58.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_limintv() throws Exception {
        String ext = "https://cat.guibiaoguo.tk/limintv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_cunzhangba() throws Exception {
        String ext = "https://cat.guibiaoguo.tk/cunzhangba.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
//    public void test_stuivodlist_139ys() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/139ys.json";
//        SpiderUrl su = new SpiderUrl(ext, null);
//        String json = SpiderReq.get(su).content;
//        System.out.println(json);
//        echo(json);
//    }
//
//    @Test
//    public void test_stuivodlist_25ys() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/25ys.json";
//        SpiderUrl su = new SpiderUrl(ext, null);
//        String json = SpiderReq.get(su).content;
//        System.out.println(json);
//        echo(json);
//    }
//
//    @Test
//    public void test_stuivodlist_28et() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/28et.json";
//        SpiderUrl su = new SpiderUrl(ext, null);
//        String json = SpiderReq.get(su).content;
//        System.out.println(json);
//        echo(json);
//    }
//
//    @Test
//    public void test_stuivodlist_294kan() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/294kan.json";
//        SpiderUrl su = new SpiderUrl(ext, null);
//        String json = SpiderReq.get(su).content;
//        System.out.println(json);
//        echo(json);
//    }
//
//    @Test
//    public void test_stuivodlist_00hdy() throws Exception {
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/00hdy.json";
//        SpiderUrl su = new SpiderUrl(ext, null);
//        String json = SpiderReq.get(su).content;
//        System.out.println(json);
//        echo(json);
//    }


    @Test
//    @Ignore
    public void test_stuivodlist_00hdy() throws Exception{
        String ext = "https://gitee.com/shentong_012/mao/raw/master/stui-vodlist/00hdy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_114gq() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/114gq.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_139ys() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/139ys.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_25ys() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/25ys.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_28et() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/28et.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_294kan() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/294kan.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_2hys() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/2hys.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_3355() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/3355.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_3ggt() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/3ggt.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_40yb() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/40yb.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_4480da() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/4480daco.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_4480yw() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/4480ysw.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_4567kp() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/4567kp.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_45tg23() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/45tg23.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_52dgm() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/52dgm.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_52dy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/52dy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_53u7xd() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/53u7xd.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_5678yp() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/5678yp.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_5ji() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/5ji.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_5kpw() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/5kpw.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_60dyw() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/60dyw.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_66dongman() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/66dongman.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_6d2hatv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/6d2hatv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_6ygo() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/6ygo.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_74ms() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/74ms.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_789ys() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/789ys.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_7xiady() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/7xiady.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_80xd() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/80xd.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_81rongjun() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/81rongjun.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_88kandy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/88kandy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }


    @Test
//    @Ignore
    public void test_stuivodlist_8byy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/8byy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_8hyyw() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/8hyyw.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_913543() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/913543.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_91mayi() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/91mayi.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_98bbw() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/98bbw.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_98net() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/98net.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_9do9() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/9do9.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_9fm() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/9fm.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_9kp() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/9kp.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_9mdyy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/9mdyy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_aifengys() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/aifengys.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_aikanla() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/aikanla.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }


//    @Test
    @Deprecated
    public void test_stuivodlist_akyy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/akyy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_anluyg() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/anluyg.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_apiappearoo() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/apiappearoo.top.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_apiqd234() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/apiqd234.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_apitymov() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/apitymov.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_appmovie() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/appmovie.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_aspmao() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/aspmao.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_auedu() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/auedu.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_bagedvd() throws Exception{
        String ext = "http://cat.guibiaoguo.tk/stui-vodlist/bagedvd.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_bgdy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/bgdy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_bjkgs() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/bjkgs.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_bjoku() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/bjoku.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_bk360() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/bk360.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_bpkkk() throws Exception {
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/bpkkk.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_c8ms() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/c8ms.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_caomin666() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/caomin666.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_cerrd() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/cerrd.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_chinaqualitytest() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/chinaqualitytest.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_chinayunc() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/chinayunc.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_chok8() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/chok8.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_cjsgz() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/cjsgz.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_ck7788() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ck7788.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_crwmart() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/crwmart.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_cunzhangba() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/cunzhangba.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_d7ys() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/d7ys.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_daluju123() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/daluju123.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_dgdcyz() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/dgdcyz.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_dgklq() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/dgklq.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_dgyytv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/dgyytv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_diskgirl() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/diskgirl.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_dongmanw() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/dongmanw.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_doubiyy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/doubiyy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_duoduozy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/duoduozy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_duonao1() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/duonao1.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_dy6g() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/dy6g.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_dytvw() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/dytvw.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_edant() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/edant.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_ekids() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ekids.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_fys58() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/fys58.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_ganfantv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ganfantv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
    public void test_stuivodlist_ganpian() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ganpian.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_gygysp() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/gygysp.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_hanjucom() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/hanjucom.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_hnojl() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/hnojl.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_hugedy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/hugedy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_huolikan() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/huolikan.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_iliubei() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/iliubei.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_imahuatv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/imahuatv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_iooyun() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/iooyun.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_itaojuba() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/itaojuba.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_jijizy1() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/jijizy1.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_jingguanhang() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/jingguanhang.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_jisuyy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/jisuyy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_juztv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/juztv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_kandaxue() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/kandaxue.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_kanjd() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/kanjd.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_kedou777() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/kedou777.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_kkkkp() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/kkkkp.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_kpian() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/kpian.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_kukedy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/kukedy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_languotv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/languotv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_libangde() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/libangde.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_libvio() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/libvio.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_limintv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/limintv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_liuliuyy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/liuliuyy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_lunlik() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/lunlik.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_lzystv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/lzystv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_m1934() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/m1934.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_m2dog() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/m2dog.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_m9080kp() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/m9080kp.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_mahuaba() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mahuaba.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_mayiyingshi() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mayiyingshi.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_meijuxq() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/meijuxq.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_mfeiniukan() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mfeiniukan.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_mfgtop() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mfgtop.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_mfvod() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mfvod.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_mgtv5() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mgtv5.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_mhmytv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mhmytv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_minfovod() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/minfovod.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_mizi123() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mizi123.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_mlxg58() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mlxg58.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_mmys() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mmys.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_moody5() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/moody5.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_movie37mk() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/movie37mk.top.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_mrehuo() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mrehuo.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_msouady() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/msouady.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_msztoyota() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/msztoyota.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_mtaohaokan() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mtaohaokan.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_mtiantk() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mtiantk.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_mu9yy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mu9yy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_mxiamov() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mxiamov.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_mxindiediao() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/mxindiediao.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_myejudy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/myejudy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_myyzone() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/myyzone.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_neenl() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/neenl.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_new4480() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/new4480.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_nndyw() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/nndyw.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
////    @Ignore
//    public void test_stuivodlist_offing() throws Exception{
//        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/offing.json";
//        SpiderUrl su = new SpiderUrl(ext, null);
//        String json = SpiderReq.get(su).content;
//        System.out.println(json);
//        echo(json);
//    }

    @Test
//    @Ignore
    public void test_stuivodlist_okdyw() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/okdyw.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_okdyy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/okdyy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_okzytop() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/okzytop.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_omofun() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/omofun.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_paisuo() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/paisuo.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_pianba() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/pianba.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_popogg() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/popogg.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_poxiaotv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/poxiaotv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_pxys888() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/pxys888.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_qcvod() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/qcvod.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_qhddjcom() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/qhddjcom.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_qianshihouse() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/qianshihouse.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_qiyou8() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/qiyou8.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_rejuttyy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/rejuttyy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_renrenkan() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/renrenkan.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_rwgaoxin() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/rwgaoxin.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_shliangjie() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/shliangjie.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_shsumai() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/shsumai.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_shudx() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/shudx.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_shunmintv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/shunmintv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_sjzvip() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/sjzvip.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_szztp() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/szztp.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_taijuu() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/taijuu.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_ttk17() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ttk17.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_ttspt() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ttspt.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_ttvideopro() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ttvideopro.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_tv360i() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/tv360i.top.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_tyzxk() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/tyzxk.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_unss() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/unss.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_uuyuuy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/uuyuuy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_videorongxingvr() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/videorongxingvr.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_vipdy5() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/vipdy5.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_vipliuliuyy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/vipliuliuyy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_vipweiaidy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/vipweiaidy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_vipys5() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/vipys5.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_vxigua() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/vxigua.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_wanggouchao() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/wanggouchao.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_wgyy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/wgyy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_wlyy5() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/wlyy5.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_wnysw() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/wnysw.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_xhkan() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xhkan.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_xiafandy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xiafandy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_xigua00() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xigua00.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_xinxing668() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xinxing668.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_xn_256_zm3fr26s() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xn-256-zm3fr26s.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
    public void test_stuivodlist_xn_cysr98fj6g2mp() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xn-cysr98fj6g2mp.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_xn_ehq01tnu8a5dv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xn-ehq01tnu8a5dv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_xn_tv_ks3d939o() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xn-tv-ks3d939o.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_xskdm() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xskdm.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_xxintv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xxintv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_xxysimg() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xxysimg.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_xxysvip() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/xxysvip.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_yeyemi() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yeyemi.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_yhsp10() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yhsp10.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_yingdouco() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yingdouco.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_yjdy5() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yjdy5.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_ymhslf() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ymhslf.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_ys6080co() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/ys6080co.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_yueak() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yueak.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_yunleys() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yunleys.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_yy604() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yy604.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_yy60900() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/60900yy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_yzyyy() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/yzyyy.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_zgjz() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zgjz.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_zhengzhinonghua() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zhengzhinonghua.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_zhongzu365() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zhongzu365.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_zhuijuju() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zhuijuju.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_zpcxb() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zpcxb.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_zpdyw() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zpdyw.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_zqystv() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zqystv.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_zxzjme() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zxzjme.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

//    @Test
    @Deprecated
    public void test_stuivodlist_zy88jiexi() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zy88jiexi.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_zzlianjie() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zzlianjie.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
//    @Ignore
    public void test_stuivodlist_zzrx() throws Exception{
        String ext = "https://cat.guibiaoguo.tk/stui-vodlist/zzrx.json";
        SpiderUrl su = new SpiderUrl(ext, null);
        String json = SpiderReq.get(su).content;
        System.out.println(json);
        echo(json);
    }

    @Test
    public void addition_isCorrect() {
        XPath aidi = new XPath();
        aidi.init(null, "{\n" +
                "  \"ua\": \"\",\n" +
                "  \"homeUrl\": \"http://695ck.cc\",\n" +
                "  \"cateNode\": \"//ul[contains(@class,'stui-header__menu clearfix')]/li[position()>1]/a\",\n" +
                "  \"cateName\": \"/text()\",\n" +
                "  \"cateId\": \"/@href\",\n" +
                "  \"cateIdR\": \"/vodtype/(\\\\w+).html\",\n" +
                "  \"cateManual\": {},\n" +
                "  \"homeVodNode\": \"//ul[contains(@class,'stui-vodlist')]/li\",\n" +
                "  \"homeVodName\": \"//h4/a/text()\",\n" +
                "  \"homeVodId\": \"//h4/a/@href\",\n" +
                "  \"homeVodIdR\": \"\",\n" +
                "  \"homeVodImg\": \"//a/@data-original\",\n" +
                "  \"homeVodImgR\": \"\\\\S+(http\\\\S+)\",\n" +
                "  \"homeVodMark\": \"//a[contains(@class,'stui-vodlist__thumb')]/text()\",\n" +
                "  \"cateUrl\": \"http://695ck.cc/vodtype/{cateId}-{catePg}.html\",\n" +
                "  \"cateVodNode\": \"//ul[contains(@class,'stui-vodlist')]/li\",\n" +
                "  \"cateVodName\": \"//h4/a/text()\",\n" +
                "  \"cateVodId\": \"//h4/a/@href\",\n" +
                "  \"cateVodIdR\": \"\",\n" +
                "  \"cateVodImg\": \"//a/@data-original\",\n" +
                "  \"cateVodImgR\": \"\\\\S+(http\\\\S+)\",\n" +
                "  \"cateVodMark\": \"//a/span[contains(@class,'pic-text')]/text()\",\n" +
                "  \"dtUrl\": \"http://695ck.cc/{vid}\",\n" +
                "  \"dtNode\": \"//div[contains(@class,'stui-player__video')]/script\",\n" +
                "  \"dtName\": \"/text()\",\n" +
                "  \"dtNameR\": \"\",\n" +
                "  \"dtImg\": \"/text()\",\n" +
                "  \"dtImgR\": \"\",\n" +
                "  \"dtDesc\": \"/text()\",\n" +
                "  \"dtDescR\": \"\",\n" +
                "  \"dtFromNode\": \"///div[contains(@class,'stui-player__video')]\",\n" +
                "  \"dtFromName\": \"/script[1]/text()\",\n" +
                "  \"dtFromNameR\": \"\\\"from\\\":\\\"(.*?)\\\"\",\n" +
                "  \"dtUrlNode\": \"//div[contains(@class,'stui-player__video')]\",\n" +
                "  \"dtUrlSubNode\": \"/script[1]/text()\",\n" +
                "  \"dtUrlId\": \"/text()\",\n" +
                "  \"dtUrlIdR\": \"\\\"link\\\":\\\"\\\\/vodplay\\\\/(.*)\\\"\",\n" +
                "  \"dtUrlName\": \"/text()\",\n" +
                "  \"dtUrlNameR\": \"\\\"from\\\":\\\"(.*?)\\\"\",\n" +
                "  \"playUrl\": \"http://695ck.cc/vodplay/{playUrl}.html\",\n" +
                "  \"playUa\": \"\",\n" +
                "  \"searchUrl\": \"http://695ck.cc/vodsearch/-------------.html?wd={wd}&submit=\",\n" +
                "  \"scVodNode\": \"//ul[contains(@class,'stui-vodlist__media')]/li\",\n" +
                "  \"scVodName\": \"//a/@title\",\n" +
                "  \"scVodId\": \"//a/@href\",\n" +
                "  \"scVodIdR\": \"\",\n" +
                "  \"scVodImg\": \"//a/@data-original\",\n" +
                "  \"scVodMark\": \"//a/span[contains(@class,'pic-text')]/text()\"\n" +
                "}");
        System.out.println(aidi.homeContent(true));
        System.out.println(aidi.homeVideoContent());
        System.out.println(aidi.categoryContent("2", "1", false, null));
        List<String> ids = new ArrayList<>();
        ids.add("vodplay/649-1-1.html");
        System.out.println(aidi.detailContent(ids));
        System.out.println(aidi.playerContent("", "11111", new ArrayList<>()));
        System.out.println(aidi.searchContent("陪你一起", false));
    }
}