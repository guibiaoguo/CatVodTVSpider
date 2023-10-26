package com.github.catvod.demo;

//import static org.junit.Assert.assertArrayEquals;
//import static org.junit.Assert.assertEquals;
//import static org.junit.Assert.assertNotNull;
//import static org.junit.Assert.assertTrue;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;

import androidx.core.app.ActivityCompat;

import com.github.catvod.crawler.Spider;
//import com.github.catvod.js.JSEngine;
//import com.github.catvod.js.SpiderJS;
import com.github.catvod.spider.Dm84;
import com.github.catvod.spider.Init;
import com.github.catvod.spider.Local;
import com.github.catvod.spider.Proxy;
import com.github.catvod.spider.WebDAV;
import com.github.catvod.utils.StringUtil;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import org.apache.commons.lang3.StringUtils;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
//import com.github.tvbox.quickjs.QuickJSContext;


public class MainActivity extends Activity {

    private static final String TAG = MainActivity.class.getSimpleName();

    private static final int REQUEST_EXTERNAL_STORAGE = 1;
    private static String[] PERMISSIONS_STORAGE = {
            "android.permission.READ_EXTERNAL_STORAGE",
            "android.permission.WRITE_EXTERNAL_STORAGE" };


    public static void verifyStoragePermissions(Activity activity) {

        try {
            //检测是否有写的权限
            int permission = ActivityCompat.checkSelfPermission(activity,
                    "android.permission.WRITE_EXTERNAL_STORAGE");
            if (permission != PackageManager.PERMISSION_GRANTED) {
                // 没有写的权限，去申请写的权限，会弹出对话框
                ActivityCompat.requestPermissions(activity, PERMISSIONS_STORAGE,REQUEST_EXTERNAL_STORAGE);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        verifyStoragePermissions(this);
        super.onCreate(savedInstanceState);
        Init.init(this.getApplicationContext());
        Proxy.port = 9988;
        new Thread(new Runnable() {
            @Override
            public void run() {
                Spider spider = new WebDAV();
                spider.init(MainActivity.this.getApplicationContext(),"https://gitlab.com/mao4284120/js/-/raw/main/sub/webdav.json");
                try {
                    Spider local = new Local();
                    local.init(MainActivity.this.getApplicationContext(),"");
                    String home = local.homeContent(true);
                    Log.d(TAG, home);
                    JsonArray classes = JsonParser.parseString(home).getAsJsonObject().getAsJsonArray("class");
                    String category = local.categoryContent(classes.get(classes.size()-1).getAsJsonObject().get("type_id").getAsString(),"1",false,null);
                    Log.d(TAG, category);
                    JsonObject jsonObject = null;
                    String content = null;
                    String tid = null;
                    content = spider.homeContent(true);
                    Log.d(TAG,content);
                    jsonObject = new Gson().fromJson(content, JsonObject.class);
                    Log.d(TAG,jsonObject.getAsJsonArray("class").toString());
                    tid = jsonObject.getAsJsonArray("class").get(0).getAsJsonObject().get("type_id").getAsString();
                    content = spider.homeVideoContent();
                    Log.d(TAG,content);
                    if (StringUtils.isNotEmpty(content)) {
                        jsonObject = new Gson().fromJson(content, JsonObject.class);
                        Log.d(TAG, jsonObject.getAsJsonArray("list").toString());
                    }
                    content = spider.categoryContent("本地/2.足球小将 两季全 [中配]/足球小将(2001) [中配]/","1",true,new HashMap<>());
                    Log.d(TAG,content);
                    jsonObject = new Gson().fromJson(content, JsonObject.class);
                    Log.d(TAG,jsonObject.getAsJsonArray("list").toString());
                    content = spider.detailContent(Arrays.asList(jsonObject.getAsJsonArray("list").get(0).getAsJsonObject().get("vod_id").getAsString()));
                    Log.d(TAG,content);
                    jsonObject = new Gson().fromJson(content, JsonObject.class);
                    Log.d(TAG,jsonObject.getAsJsonArray("list").toString());
                    content = spider.playerContent("",jsonObject.getAsJsonArray("list").get(0).getAsJsonObject().get("vod_play_url").getAsString().split("#")[0].split("\\$")[1],new ArrayList<>());
                    Log.d(TAG,content);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        }).start();
//        new Thread(new Runnable() {
//            @Override
//            public void run() {
//                Console.log("****************************初始化开始*************************************************");
//                Init.init(MainActivity.this.getApplicationContext());
//                Proxy.port = 9978;
////                System.loadLibrary("quickjs");
////                JSEngine.getInstance().create();
//                Console.log("****************************初始化结束************************************************");
//                Console.log("****************************测试爬虫开始************************************************");
//                String content = OkHttpUtil.string("https://gitlab.com/mao4284120/js/-/raw/main/212757_debug.json");
//                JsonObject jsonObject = new Gson().fromJson(content, JsonObject.class);
//                JsonArray jsonArray = jsonObject.getAsJsonArray("sites");
//                JsonArray bad = new JsonArray();
//                JsonArray good = new JsonArray();
//                for (JsonElement jsonElement : jsonArray) {
//                    try {
//                        String api = jsonElement.getAsJsonObject().get("api").getAsString();
//                        String key = jsonElement.getAsJsonObject().get("key").getAsString();
//                        int type = jsonElement.getAsJsonObject().get("type").getAsInt();
//                        String ext = jsonElement.getAsJsonObject().get("ext") != null ? jsonElement.getAsJsonObject().get("ext").getAsString() : "";
//                        if (type == 0) {
//                            LegadoRule legadoRule = new LegadoRule();
//                            legadoRule.setHomeUrl("@js:'" + api + "'");
//                            legadoRule.setTypeNode("tag.class@tag.ty");
//                            legadoRule.setTypeName("tag.ty@text");
//                            legadoRule.setTypeId("tag.ty@id");
//                            legadoRule.setHomeVideoUrl("@js:'" + api + "?ac=videolist'");
//                            legadoRule.setHomeVodNode("tag.list@tag.video");
//                            legadoRule.setHomeVodName("tag.name@text");
//                            legadoRule.setHomeVodRemarks("tag.type@text");
//                            legadoRule.setHomeVodId("tag.id@text");
//                            legadoRule.setHomeVodPic("tag.pic@text");
//                            legadoRule.setCateUrl(api + "?ac=videolist&page=@get:{pg}&t=@get:{cateId}");
//                            legadoRule.setPageNode("tag.list");
//                            legadoRule.setPage("tag.list@page");
//                            legadoRule.setPageCount("tag.list@pagecount");
//                            legadoRule.setCateVodNode("tag.list@tag.video");
//                            legadoRule.setCateVodName("tag.name@text");
//                            legadoRule.setCateVodRemarks("tag.type@text");
//                            legadoRule.setCateVodId("tag.id@text");
//                            legadoRule.setCateVodPic("tag.pic@text");
//                            legadoRule.setDetailUrl(api + "?ac=videolist&ids=@get:{detailId}");
//                            legadoRule.setDetailVodName("tag.name@text");
//                            legadoRule.setDetailVodPic("tag.pic@text");
//                            legadoRule.setDetailNode("tag.list@tag.video");
//                            legadoRule.setDetailTypeName("tag.type@text");
//                            legadoRule.setDetailVodArea("tag.area@text");
//                            legadoRule.setDetailVodYear("tag.year@text");
//                            legadoRule.setDetailVodRemarks("tag.remarks@text");
//                            legadoRule.setDetailVodDirector("tag.director@text");
//                            legadoRule.setDetailVodActor("tag.actor@text");
//                            legadoRule.setDetailVodContent("tag.des@text");
//                            legadoRule.setDetailVodPlayFrom("tag.dl@tag.dd");
//                            legadoRule.setDetailVodPlayUrl("tag.dl@tag.dd");
//                            legadoRule.setVodPlayForm("tag.dd@flag");
//                            legadoRule.setVodPlayList("tag.dd@text@js:java.split(result,'#')");
//                            legadoRule.setVodPlayName("@js:String(result).split('$')[0]");
//                            legadoRule.setVodPlayUrl("@js:String(result).split('$')[1]");
//                            legadoRule.setPlayUrl("@get:{playId}");
//                            api = "csp_Legado";
//                            ext = new GsonBuilder().disableHtmlEscaping().create().toJson(legadoRule);
//                        } else if (type == 1) {
//                            LegadoRule legadoRule = new LegadoRule();
//                            legadoRule.setHomeUrl("@js:'" + api + "'");
//                            legadoRule.setTypeNode("$.class");
//                            legadoRule.setTypeName("$.type_name");
//                            legadoRule.setTypeId("$.type_id@js:''+result");
//                            legadoRule.setHomeVideoUrl("@js:'" + api + "?ac=detail'");
//                            legadoRule.setHomeVodNode("$.list");
//                            legadoRule.setHomeVodName("$.vod_name");
//                            legadoRule.setHomeVodRemarks("$.vod_remarks");
//                            legadoRule.setHomeVodId("$.vod_id");
//                            legadoRule.setHomeVodPic("$.vod_pic");
//                            legadoRule.setCateUrl(api + "?ac=detail&page=@get:{pg}&t=@get:{cateId}");
//                            legadoRule.setPageNode("$");
//                            legadoRule.setPage("$.page");
//                            legadoRule.setPageCount("$.pagecount");
//                            legadoRule.setCateVodNode("$.list");
//                            legadoRule.setCateVodName("$.vod_name");
//                            legadoRule.setCateVodRemarks("$.vod_remarks");
//                            legadoRule.setCateVodId("$.vod_id");
//                            legadoRule.setCateVodPic("$.vod_pic");
//                            legadoRule.setDetailUrl(api + "?ac=detail&ids=@get:{detailId}");
//                            legadoRule.setDetailVodName("$..vod_name");
//                            legadoRule.setDetailVodPic("$..vod_pic");
//                            legadoRule.setDetailNode("$.list[*]");
//                            legadoRule.setDetailTypeName("$..type_name");
//                            legadoRule.setDetailVodArea("$..vod_area");
//                            legadoRule.setDetailVodYear("$..vod_year");
//                            legadoRule.setDetailVodRemarks("$..vod_remarks");
//                            legadoRule.setDetailVodDirector("$..vod_director");
//                            legadoRule.setDetailVodActor("$..vod_actor");
//                            legadoRule.setDetailVodPlayFrom("$.list[*].vod_play_from@js:java.split(result,'$$$')");
//                            legadoRule.setDetailVodPlayUrl("$.list[*].vod_play_url@js:java.split(result,'$$$')");
//                            legadoRule.setVodPlayForm("@js:String(result)");
//                            legadoRule.setVodPlayList("@js:java.split(result,'#')");
//                            legadoRule.setVodPlayName("@js:String(result).split('$')[0]");
//                            legadoRule.setVodPlayUrl("@js:String(result).split('$')[1]");
//                            legadoRule.setPlayUrl("@get:{playId}");
//                            api = "csp_Legado";
//                            ext = new GsonBuilder().disableHtmlEscaping().create().toJson(legadoRule);
//                        }
//                        Spider spiderT = null;
//                        if (api.endsWith(".js") || api.contains(".js?")) {
//                            spiderT = new SpiderJS(key,api,ext);
//                        } else {
//                            java.lang.Class cls = null;
//                            cls = java.lang.Class.forName("com.github.catvod.spider." + api.substring(4));
//                            spiderT = (Spider) cls.newInstance();
//                        }
//                        spiderT.init(Init.context().getApplicationContext(), ext);
//                        String home = spiderT.homeContent(true);
//                        System.out.println(home);
//                        List<Class> classes = new Gson().fromJson(home, Result.class).getClasses();
//                        if (classes == null || classes.size() == 0) {
//                            throw new Exception("分类是空的");
//                        }
//                        System.out.println(spiderT.homeVideoContent());
//                        String cate = spiderT.categoryContent(classes.get(0).getTypeId(), "1", true, new HashMap<>());
//                        List<Vod> vods = new Gson().fromJson(cate, Result.class).getList();
//                        if (vods == null || vods.size() == 0) {
//                            throw new Exception("列表是空的");
//                        }
//                        String detail = spiderT.detailContent(Arrays.asList(vods.get(0).getVodId()));
//                        List<Vod> vodDetails = new Gson().fromJson(detail, Result.class).getList();
//                        if (vodDetails == null || vodDetails.size() == 0) {
//                            throw new Exception("内容时空的");
//                        }
//                        System.out.println(spiderT.playerContent("", vodDetails.get(0).getVodPlayUrl().split("#")[0].split("\\$")[1], null));
//                        System.out.println(spiderT.searchContent("火影", false));
//                        good.add(jsonElement);
//                    } catch (Exception e) {
//                        e.printStackTrace();
//                        bad.add(jsonElement);
//                    }
//                }
//
//                System.out.println(new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create().toJson(bad));
//                FileUtil.writeString(Init.context().getExternalFilesDir("bad.json").getAbsolutePath(),new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create().toJson(bad),"utf-8");
//                FileUtil.writeString(Init.context().getExternalFilesDir("good.json").getAbsolutePath(),new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create().toJson(good),"utf-8");
//                System.out.println("**************************************************");
//                System.out.println(new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create().toJson(good));
//                Console.log("****************************测试爬虫结束************************************************");
//                Console.log("****************************js模块测试开始************************************************");
//                Spider spiderjs = new SpiderJS("鸭奈飞","https://weixine.net/js/lib/drpy2.min.js","https://weixine.net/js/yanaifei.js");
//                try {
//                    spiderjs.init(null, "");
//                    String jscontent = spiderjs.homeContent(true);
//                    System.out.println(jscontent);
//                    System.out.println(spiderjs.homeVideoContent());
//                    Result jsresult = new Gson().fromJson(jscontent, Result.class);
//                    jscontent = spiderjs.categoryContent(jsresult.getClasses().get(0).getTypeId(), "1", true, new HashMap<>());
//                    Console.log(jscontent);
//                    jsresult = new Gson().fromJson(jscontent, Result.class);
//                    String jsid = jsresult.getList().get(3).getVodId();
//                    jscontent = spiderjs.detailContent(Arrays.asList(jsid));
//                    System.out.println(jscontent);
//                    jsresult = new Gson().fromJson(jscontent, Result.class);
//                    jsid = jsresult.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
//                    jscontent = spiderjs.playerContent("原畫", jsid, new ArrayList<>());
//                    System.out.println(jscontent);
//                } catch (Exception e) {
//
//                }
//                Console.log("****************************js模块测试结束************************************************");
//                //js相关的方法测试
//                Console.log("****************************js方法开始*****************************************");
//                AnalyzeRule jsTest = new AnalyzeRule();
//                jsTest.setContent("");
//                String jsResult = jsTest.getString("@js:java."+"md5Encode(\"123456789\");");
//                assertEquals("25f9e794323b453885f5181f1b624d0b",jsResult);
////                jsResult = jsTest.getString("@js:java."+"md5Encode(new ByteArrayInputStream(\"123456789\".getBytes()))");
//                assertEquals("25f9e794323b453885f5181f1b624d0b",jsResult);
//                jsResult = jsTest.getString("@js:java."+"md5Encode16(\"123456789\")");
//                assertEquals("323b453885f5181f",jsResult);
//                jsResult = jsTest.getString("@js:java."+"createSymmetricCrypto(\"AES\", java.base64DecodeToByteArray(\"tCcPM8stSTtx88DeW0oFfA==\")).decryptStr(\"e7e6100153ca3853b73be2a171e48d6c\");");
//                assertEquals("test中文",jsResult);
//                jsResult = jsTest.getString("@js:java."+"createSymmetricCrypto(\"AES\", \"ZGqw971Ddd3F6E4q\").encryptHex(\"test中文天海翼\");");
//                assertEquals("2ee0bfe187dd6525e5960249091a363c1c22b7a7034859a4cd26f4f56f53dc9e",jsResult);
//                jsResult = jsTest.getString("@js:java."+"createSymmetricCrypto(\"AES\", \"ZGqw971Ddd3F6E4q\").decryptStr(\"2ee0bfe187dd6525e5960249091a363c1c22b7a7034859a4cd26f4f56f53dc9e\");");
//                assertEquals("test中文天海翼",jsResult);
//                String privateKey = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAPlhVO6qfz6fB9iDsNgM7ilXj1CB\n" +
//                        "YevNT97M380KmwoYcG+XTmOmFyI8h1nkR0rV9ioNIhjgRezG818012Brz2FphgotI+1ADuCqPrhx\n" +
//                        "3y1I29pro2BFeNxid/uoVJm/aE/55sxSqCcas7vXfdfh+cSBDJ1VWLkgDlnAaxFga2ARAgMBAAEC\n" +
//                        "gYAhAjkeaNhJjv3tiBYzAsMjcGuP2br/CJYMhPcP9NoWDqtomeZ5BNWwZRf6q19PEIhyLdAtlWys\n" +
//                        "Ap7ZeJe+3jD8uPnvokfWD+kf/zXiIkEwyoRD4tVt+xip44WAGtvAv4OtHzDAPqdFZP6BH9mtILXj\n" +
//                        "15r9p/ECsKkH43GiT6KF4QJBAP3Ldph77kKGvJE145RLupb+f37L6jCBTDFBCQGcib+ku6trDmAF\n" +
//                        "5WYuMf1auly3UA2Z5Fqnjzh9xUODJPG6+NcCQQD7jAx92ZCWJgJTudvxs/BDikx4ubCd3EQMPsoI\n" +
//                        "gPJ4Wp5fs7ZAyzeBkY5OwvVkv16Ri294BDCLYURmbrfngMlXAkEArqzEmTpix+LYEdFXKw/cAmRy\n" +
//                        "95/9NRkoiZXLTxKgNAh7KgXqxOgJ9QPCYC97qKh6LoJGiqZcinL1u/udB8q5zQJAI8a6bBfKeaB0\n" +
//                        "SkYv4wONk32S/MSkOv996iPwBh+Y3Mc+qSvdKv/8KAB0tf0Ce86/+4FSXEZ0RQ6TdOIgY9usRwJB\n" +
//                        "AODRcy9I3oyGqOQmDS+Hk+7iMVxAD4l/IxjNcu6cqQh7ZxLQu3hGPDc8XfykYZPoauiEnujFMU+z\n" +
//                        "i6nF8lAOcGQ=";
//                jsTest.put("private",privateKey);
//                String publicKey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD5YVTuqn8+nwfYg7DYDO4pV49QgWHrzU/ezN/N\n" +
//                        "CpsKGHBvl05jphciPIdZ5EdK1fYqDSIY4EXsxvNfNNdga89haYYKLSPtQA7gqj64cd8tSNvaa6Ng\n" +
//                        "RXjcYnf7qFSZv2hP+ebMUqgnGrO7133X4fnEgQydVVi5IA5ZwGsRYGtgEQIDAQAB";
//                jsTest.put("public",publicKey);
//                jsResult = jsTest.getString("@js:public=java.get('public');private=java.get('private');asymmetricCrypto=java.createAsymmetricCrypto('RSA',private,public);asymmetricCrypto.decryptStr('uDKkGb0Lqzz7sl90c6S6Wk+tDd0EM68h2WVqmMgMq9B7vJaQ7h2gcEWmXRr96FfCv2N1nnVDYIRro/WSrEqYOqzMrPAyJ4f0kzOaH1lHp/sKfvXDRxE3eaP1KQPifzmRS60qUsaQPGWwtAwHwBbeUCn+aXnycd/dyxGC6RKVipg=',PrivateKey)");
//                assertEquals("test中文天海翼",jsResult);
//                jsResult = jsTest.getString("@js:java"+".digestHex(\"123456789\",\"sha256\")");
//                assertEquals("15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225",jsResult);
//                jsResult = jsTest.getString("@js:java"+".digestBase64Str(\"test中文天海翼\",\"SHA256\")");
//                assertEquals("7KButkCEigoCnmk8q0Y1qOUeN8bd5tYt8ZkkNfGMByM=",jsResult);
//                jsResult = jsTest.getString("@js:java"+".HMacHex(\"test中文天海翼\",\"HmacSHA256\",\"123456789\")");
//                assertEquals("6fd73523f716ef6b75d5f32e15d73d5fbf1798ddf550a155dcffd1aa029dafcc",jsResult);
//                jsResult = jsTest.getString("@js:java"+".HmacBase64(\"123456789\",\"HmacSHA256\",\"12345789\")");
//                assertEquals("gB2uYNHXcCB+Ye9Nlz0LhGp8f+9ef9HZNuZ/O7TVfFE=",jsResult);
//                jsResult = jsTest.getString("@js:java"+".ajax(\"https://gitcafe.net/tool/alipaper/,{\\\"method\\\":\\\"POST\\\",\\\"body\\\":\\\"action=viewcat&num=1&cat=hyds\\\"}\")");
//                System.out.println(jsResult);
//                assertTrue(StrUtil.containsIgnoreCase(jsResult,"success"));
//                jsResult = jsTest.getString("@js:urlList=['https://www.huangdizhijia.com/novel/408.html','https://www.huangdizhijia.com/novel/406.html','https://www.huangdizhijia.com/novel/407.html'];strResponses=java.ajaxAll(urlList);list=[];for(var i=0;i<strResponses.size();i++){content=strResponses.get(i).body();java.log(content);list.push(content);};list");
//                assertTrue(StrUtil.containsIgnoreCase(jsResult,"皇帝之家"));
//                jsResult = jsTest.getString("@js:java"+".get(\"https://m.huangdizhijia.com\",{'referer':'https://m.huangdizhijia.com'}).body();");
//                System.out.println(jsResult);
//                assertTrue(StrUtil.containsIgnoreCase(jsResult,"皇帝之家"));
//                jsResult = jsTest.getString("@js:java"+".head(\"https://m.huangdizhijia.com\",{'referer':'https://m.huangdizhijia.com'});");
//                System.out.println(jsResult);
//                assertTrue(StrUtil.containsIgnoreCase(jsResult,"Content-Type"));
//                jsResult = jsTest.getString("@js:java"+".post(\"https://m.huangdizhijia.com/index.php?action=search\", \"keyword=我的\", {}).body()");
//                System.out.println(jsResult);
//                assertTrue(StrUtil.containsIgnoreCase(jsResult,"我的"));
//                jsResult = jsTest.getString("@js:bytes=java"+".strToBytes(\"123456789\");java.put('bytes',bytes);");
//                byte[] bytes = (byte[]) jsTest.get("bytes");
//                assertArrayEquals(new byte[]{49, 50, 51, 52, 53, 54, 55, 56, 57},bytes);
//                jsResult = jsTest.getString("@js:bytes=java"+".strToBytes(\"123456789\",\"utf-8\");java.put('bytes',bytes);");
//                bytes = (byte[]) jsTest.get("bytes");
//                assertArrayEquals(new byte[]{49, 50, 51, 52, 53, 54, 55, 56, 57},bytes);
//                byte[] exBytes = new byte[]{49, 50, 51, 52, 53, 54, 55, 56, 57};
//                jsTest.put("exBytes",exBytes);
//                jsResult = jsTest.getString("@js:exBytes=java.get('exBytes');java"+".bytesToStr(exBytes)");
//                assertEquals("123456789",jsResult);
//                jsResult = jsTest.getString("@js:exBytes=java.get('exBytes');java"+".bytesToStr(exBytes,'utf-8')");
//                assertEquals("123456789",jsResult);
//                jsResult = jsTest.getString("@js:java"+".base64Decode(\"aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy\")");
//                assertEquals("https://pastebin.com/raw/FAXcts0r",jsResult);
//                exBytes = new byte[]{104, 116, 116, 112, 115, 58, 47, 47, 112, 97, 115, 116, 101, 98, 105, 110, 46, 99, 111, 109, 47, 114, 97, 119, 47, 70, 65, 88, 99, 116, 115, 48, 114};
//                jsTest.put("exBytes",exBytes);
//                jsResult = jsTest.getString("@js:exBytes=java.get('exBytes');bytes=java"+".base64DecodeToByteArray(\"aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy\");java.put('bytes',bytes);");
//                bytes = (byte[]) jsTest.get("bytes");
//                assertArrayEquals(exBytes,bytes);
//                jsResult = jsTest.getString("@js:java"+".base64EncodeStr(\"123456789\")");
//                assertEquals("MTIzNDU2Nzg5",jsResult);
//                exBytes = new byte[]{49, 50, 51, 52, 53, 54, 55, 56, 57};
//                jsTest.put("exBytes",exBytes);
//                jsResult = jsTest.getString("@js:exBytes=java.get('exBytes');java"+".base64Encode(exBytes)");
//                assertEquals("MTIzNDU2Nzg5",jsResult);
//                exBytes = new byte[]{18, 52, 86, 120, -111};
//                jsTest.put("exBytes",exBytes);
//                jsResult = jsTest.getString("@js:exBytes=java.get('exBytes');bytes=java"+".hexDecodeToByteArray(\"1234567891\");java.put('bytes',bytes);");
//                bytes = (byte[]) jsTest.get("bytes");
//                assertArrayEquals(exBytes,bytes);
//                jsResult = jsTest.getString("@js:java"+".hexDecodeToString(\"313233343536373839\")");
//                assertEquals("123456789",jsResult);
//                char[] exChar = new char[]{'3', '1', '3', '2', '3', '3', '3', '4', '3', '5', '3', '6', '3', '7', '3', '8', '3', '9'};
//                jsTest.put("exChar",exChar);
//                jsResult = jsTest.getString("@js:exBytes=java.get('exChar');bytes=java"+".hexEncodeToByteArray(\"123456789\");java.put('bytes',bytes);");
//                char[] chars = (char[]) jsTest.get("bytes");
//                assertArrayEquals(exBytes,bytes);
//                jsResult = jsTest.getString("@js:java"+".hexEncodeToString(\"123456789\")");
//                assertEquals("313233343536373839",jsResult);
//                jsResult = jsTest.getString("@js:java"+".timeFormatUTC(1685640744701,\"yyyy\",8)");
//                assertEquals("2023",jsResult);
//                jsResult = jsTest.getString("@js:java"+".timeFormat(1685640744701)");
//                System.out.println(jsResult);
//                jsResult = jsTest.getString("@js:java"+".encodeURI(\"中文\")");
//                assertEquals("%E4%B8%AD%E6%96%87",jsResult);
//                jsResult = jsTest.getString("@js:java"+".encodeURI(\"test中文天海翼\",\"GBK\")");
//                assertEquals("test%D6%D0%CE%C4%CC%EC%BA%A3%D2%ED",jsResult);
//                jsResult = jsTest.getString("@js:java"+".encodeURI(\"test中文天海翼\",\"GBK\")");
//                assertEquals("test%D6%D0%CE%C4%CC%EC%BA%A3%D2%ED",jsResult);
//                jsResult = jsTest.getString("@js:java"+".getSize(\"10240000\")");
//                assertEquals("9.77MB",jsResult);
//                jsResult = jsTest.getString("@js:java"+".format(\"https://m.huangdizhijia.com/{}/{}.html\",'book','400')");
//                assertEquals("https://m.huangdizhijia.com/book/400.html",jsResult);
//                jsResult = jsTest.getString("@js:java"+".removeSuffix(\"ssni-545.mp4\",'.mp4')");
//                assertEquals("ssni-545",jsResult);
//                jsResult = jsTest.getString("@js:java"+".removePrefix(\"2023-ssni-545.mp4\",'2023-')");
//                assertEquals("ssni-545.mp4",jsResult);
//                jsResult = jsTest.getString("@js:java"+".sub(\"ssni-545.mp4\",5,-4)");
//                assertEquals("545",jsResult);
//                jsResult = jsTest.getString("@js:java"+".split(\"ssni-545.mp4\",'.').length");
//                assertEquals("2",jsResult);
//                jsResult = jsTest.getString("@js:java"+".writeFile(\"ssni.mp4\",'AV')");
//                System.out.println(jsResult);
////                assertEquals("545",jsResult);
//                jsResult = jsTest.getString("@js:java"+".readFile(\"/ssni.mp4\")");
//                assertEquals("AV",jsResult);
//                jsTest.getString("@js:java.ls(‘/’);");
//                jsTest.getString("@js:java.toast('js测试结束');");
//                Console.log("****************************js方法结束*****************************************");
//
////                QuickJSContext context = QuickJSContext.create();
////                Object result_reder = context.evaluate("var a = 1 + 2;a");
////                System.out.println(result_reder);
//                AnalyzeRule js = new AnalyzeRule();
//                js.setContent("");
//                System.out.println(js.getString("@js:java.format('https://m.huangdizhi.com/{}/{}.html','book',400);"));
//                String result_reader = js.getString("@js:content=java.ajax('https://m.huangdizhijia.com');java.log(content);content");
//                System.out.println(result_reader);
//                SpiderDebug.log(js.getString("@js:java.strToBytes('123456789')"));
////                Context cx = Context.enter();
////                cx.setOptimizationLevel(-1);
////                try {
////                    Scriptable scope = cx.initStandardObjects();
////                    String str = "3/(1+2)";
////                    Object result = cx.evaluateString(scope, str, this.getClass().getName(), 1, null);
//////                    try {
//////                        Object result_reader = cx.evaluateReader(scope,new StringReader(str),"javax.script.filename",1, null);
//////                    } catch (IOException e) {
//////                        throw new RuntimeException(e);
//////                    }
////                    System.out.println(str + "=" + Context.toNumber(result));
////                } finally {
////                    Context.exit();
////                }
////                Bindings bindings = new SimpleBindings();
////                ScriptEngine scriptEngine = new RhinoScriptEngine(bindings);
////                String jsstr = "baseUrl + '111' + source + legado.name";
////                LegadoData legadoData = new LegadoData();
////                legadoData.name = "test";
////                bindings.put("legado", legadoData);
////                bindings.put("baseUrl","https://www.baidu.com");
////                bindings.put("source","www.google.com");
////                Object result = scriptEngine.eval(jsstr, bindings);
////                System.out.println(result);
////                Init.init(MainActivity.this.getApplicationContext());
////                System.out.println(Init.context().getCacheDir().getAbsolutePath());
////                System.out.println(Init.context().getFilesDir().getAbsolutePath());
////                Spider qq = new QQ();
////                qq.init(null);
//////                qq.init(MainActivity.this.getApplicationContext(), "43073a876e9f4d6c906f1d7df92af59a");
////                try {
////                    System.out.println(qq.detailContent(Arrays.asList("mzc002009ktefn0")));
//////                    SpiderDebug.log(qq.homeContent(true));
//////                    SpiderDebug.log(qq.homeVideoContent());
//////                    SpiderDebug.log(qq.categoryContent("tv", "1", false, null));
//////                    SpiderDebug.log(qq.detailContent(Arrays.asList("https://www.aliyundrive.com/s/xH5vjKHEkW2/folder/6117671f56de2b46691a4302a6b47ac6372c6acb")));
//////                    SpiderDebug.log(qq.searchContent("熊出没", false));
//////                    SpiderDebug.log(qq.playerContent("qq", "https://v.qq.com/x/cover/mzc00200k1qzwd5/m00468zaiqd.html", Arrays.asList("qq")));
////                } catch (Exception e) {
////                    throw new RuntimeException(e);
////                }
//
//                content = "";
//                Result result = null;
//                String id = null;
////                Spider qq = new QQ();
////                qq.init(null);
////                AnalyzeRule analyzeRule = new AnalyzeRule();
////                String content1 = OkHttpUtil.string("https://m.huangdizhijia.com",null);
////                analyzeRule.setContent(content1);
////                analyzeRule.getStringList("tag.a@href##m.huangdizhijia.com##www.huangdizhijia.com");
////                Spider paper = new Paper();
////                paper.init(MainActivity.this, "https://www.qiaoji8.com/jar1/token.txt");
////                Spider legado = new Legado();
////                legado.init(null, "https://aria2.guibiaoguo.ml/paper.json");
//                try {
////                    SpiderDebug.log(qq.homeContent(true));
////                    SpiderDebug.log(qq.homeVideoContent());
////                    SpiderDebug.log(qq.categoryContent("tv", "1", false, null));
////                    SpiderDebug.log(qq.detailContent(Arrays.asList("mzc002009ktefn0")));
////                    SpiderDebug.log(qq.searchContent("熊出没", false));
////                    SpiderDebug.log(qq.playerContent("qq", "https://v.qq.com/x/cover/mzc00200k1qzwd5/m00468zaiqd.html", Arrays.asList("qq")));
////                    System.out.println(legado.homeContent(true));
////                    System.out.println(legado.homeVideoContent());
////                    System.out.println(legado.categoryContent("https://www.aliyundrive.com/s/bVL7e72NjD4","1",true, new HashMap<>()));
////                    System.out.println(paper.homeContent(true));
////                    System.out.println(paper.homeVideoContent());
////                    String content = paper.categoryContent("hyds","1",true,new HashMap<>());
////                    System.out.println(content);
////                    Result result = new Gson().fromJson(content, Result.class);
////                    String id = result.getList().get(0).getVodId();
////                    content = paper.detailContent(List.of(id));
////                    System.out.println(content);
////                    result = new Gson().fromJson(content, Result.class);
////                    id = result.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
////                    content = paper.playerContent("原画",id,new ArrayList<>());
////                    System.out.println(content);
//                    System.out.println("*********************************************");
//                    Spider spider = new Legado();
//                    spider.init(null, "https://aria2.guibiaoguo.ml/paper.json");
//                    content = spider.homeContent(true);
//                    System.out.println(content);
//                    System.out.println(spider.homeVideoContent());
//                    result = new Gson().fromJson(content, Result.class);
//                    content = spider.categoryContent(result.getClasses().get(0).getTypeId(), "1", true, new HashMap<>());
//                    Console.log(content);
//                    result = new Gson().fromJson(content, Result.class);
//                    id = result.getList().get(1).getVodId();
//                    content = spider.detailContent(Arrays.asList(id));
////                    content = spider.detailContent(Arrays.asList("https://www.aliyundrive.com/s/Lvt6XJobogm/folder/637a2afe82dedfde45d5400fb46f47f33ff5b438"));
////                    content = spider.detailContent(Arrays.asList("https://www.aliyundrive.com/s/KwUCz4H31JK/folder/619ae206f21fe67ebabb402d9429931729e7c039"));
//                    System.out.println(content);
//                    result = new Gson().fromJson(content, Result.class);
//                    id = result.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
//                    content = spider.playerContent("原畫", id, new ArrayList<>());
//                    System.out.println(content);
//                    spider = new Legado();
//                    spider.init(null, "https://aria2.guibiaoguo.ml/ahhfs.json");
//                    content = spider.homeContent(true);
//                    System.out.println(content);
//                    System.out.println(spider.homeVideoContent());
//                    result = new Gson().fromJson(content, Result.class);
//                    content = spider.categoryContent(result.getClasses().get(0).getTypeId(), "1", true, new HashMap<>());
//                    Console.log(content);
//                    result = new Gson().fromJson(content, Result.class);
//                    id = result.getList().get(3).getVodId();
//                    content = spider.detailContent(Arrays.asList(id));
//                    System.out.println(content);
//                    result = new Gson().fromJson(content, Result.class);
//                    id = result.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
//                    content = spider.playerContent("原畫", id, new ArrayList<>());
//                    System.out.println(content);
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//            }
//        }).start();
    }

}