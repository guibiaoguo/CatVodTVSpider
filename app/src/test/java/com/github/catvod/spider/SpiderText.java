package com.github.catvod.spider;

import static org.mockito.Mockito.when;

import android.content.SharedPreferences;

import androidx.annotation.Nullable;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.net.OkHttp;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.guibiaoguo.myapplication.RoboApp;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import cn.hutool.core.lang.Console;


@RunWith(MockitoJUnitRunner.class)
public class SpiderText {

    @Mock
    RoboApp mMockContext;

    private Spider spider;

    @Before
    public void init() {
//        when(mMockContext.getString(R.string.app_name)).thenReturn(FAKE_STRING);
        when(mMockContext.getPackageName()).thenReturn("com.github.androidunittest");
//        when(mMockContext.getApplicationContext()).thenReturn(new Application());
//        PowerMockito.mockStatic(Looper.class);
//        PowerMockito.when(Looper.getMainLooper()).thenReturn(null);
        when(mMockContext.getSharedPreferences("com.github.androidunittest_preferences", 0)).thenReturn(new SharedPreferences() {
            @Override
            public Map<String, ?> getAll() {
                return null;
            }

            @Nullable
            @Override
            public String getString(String key, @Nullable String defValue) {
                return null;
            }

            @Nullable
            @Override
            public Set<String> getStringSet(String key, @Nullable Set<String> defValues) {
                return null;
            }

            @Override
            public int getInt(String key, int defValue) {
                return 0;
            }

            @Override
            public long getLong(String key, long defValue) {
                return 0;
            }

            @Override
            public float getFloat(String key, float defValue) {
                return 0;
            }

            @Override
            public boolean getBoolean(String key, boolean defValue) {
                return false;
            }

            @Override
            public boolean contains(String key) {
                return false;
            }

            @Override
            public Editor edit() {
                return new Editor() {
                    @Override
                    public Editor putString(String key, @Nullable String value) {
                        return this;
                    }

                    @Override
                    public Editor putStringSet(String key, @Nullable Set<String> values) {
                        return this;
                    }

                    @Override
                    public Editor putInt(String key, int value) {
                        return this;
                    }

                    @Override
                    public Editor putLong(String key, long value) {
                        return this;
                    }

                    @Override
                    public Editor putFloat(String key, float value) {
                        return this;
                    }

                    @Override
                    public Editor putBoolean(String key, boolean value) {
                        return null;
                    }

                    @Override
                    public Editor remove(String key) {
                        return this;
                    }

                    @Override
                    public Editor clear() {
                        return this;
                    }

                    @Override
                    public boolean commit() {
                        return false;
                    }

                    @Override
                    public void apply() {

                    }
                };
            }

            @Override
            public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {

            }

            @Override
            public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {

            }
        });
        Init.init(mMockContext);
        Proxy.port = 9978;
    }

    @Test
    public void test_spider() {
        String content = OkHttp.string("https://aria2.guibiaoguo.ml/212757_bad.json");
        JsonObject jsonObject = new Gson().fromJson(content, JsonObject.class);
        JsonArray jsonArray = jsonObject.getAsJsonArray("sites");
        JsonArray bad = new JsonArray();
        JsonArray good = new JsonArray();
        for (JsonElement jsonElement : jsonArray) {
            try {
                String api = jsonElement.getAsJsonObject().get("api").getAsString();
                int type = jsonElement.getAsJsonObject().get("type").getAsInt();
                String ext = jsonElement.getAsJsonObject().get("ext") != null ? jsonElement.getAsJsonObject().get("ext").getAsString() : "";
                if (type == 0) {
                    LegadoRule legadoRule = new LegadoRule();
                    legadoRule.setHomeUrl("@js:'" + api + "'");
                    legadoRule.setTypeNode("tag.class@tag.ty");
                    legadoRule.setTypeName("tag.ty@text");
                    legadoRule.setTypeId("tag.ty@id");
                    legadoRule.setHomeVideoUrl("@js:'" + api + "?ac=videolist'");
                    legadoRule.setHomeVodNode("tag.list@tag.video");
                    legadoRule.setHomeVodName("tag.name@text");
                    legadoRule.setHomeVodRemarks("tag.type@text");
                    legadoRule.setHomeVodId("tag.id@text");
                    legadoRule.setHomeVodPic("tag.pic@text");
                    legadoRule.setCateUrl(api + "?ac=videolist&page=@get:{pg}&t=@get:{cateId}");
                    legadoRule.setPageNode("tag.list");
                    legadoRule.setPage("tag.list@page");
                    legadoRule.setPageCount("tag.list@pagecount");
                    legadoRule.setCateVodNode("tag.list@tag.video");
                    legadoRule.setCateVodName("tag.name@text");
                    legadoRule.setCateVodRemarks("tag.type@text");
                    legadoRule.setCateVodId("tag.id@text");
                    legadoRule.setCateVodPic("tag.pic@text");
                    legadoRule.setDetailUrl(api + "?ac=videolist&ids=@get:{detailId}");
                    legadoRule.setDetailVodName("tag.name@text");
                    legadoRule.setDetailVodPic("tag.pic@text");
                    legadoRule.setDetailNode("tag.list@tag.video");
                    legadoRule.setDetailTypeName("tag.type@text");
                    legadoRule.setDetailVodArea("tag.area@text");
                    legadoRule.setDetailVodYear("tag.year@text");
                    legadoRule.setDetailVodRemarks("tag.remarks@text");
                    legadoRule.setDetailVodDirector("tag.director@text");
                    legadoRule.setDetailVodActor("tag.actor@text");
                    legadoRule.setDetailVodContent("tag.des@text");
                    legadoRule.setDetailVodPlayFrom("tag.dl@tag.dd");
                    legadoRule.setDetailVodPlayUrl("tag.dl@tag.dd");
                    legadoRule.setVodPlayForm("tag.dd@flag");
                    legadoRule.setVodPlayList("tag.dd@text@js:java.split(result,'#')");
                    legadoRule.setVodPlayName("@js:String(result).split('$')[0]");
                    legadoRule.setVodPlayUrl("@js:String(result).split('$')[1]");
                    legadoRule.setPlayUrl("@get:{playId}");
                    api = "csp_Legado";
                    ext = new GsonBuilder().disableHtmlEscaping().create().toJson(legadoRule);
                } else if (type == 1) {
                    LegadoRule legadoRule = new LegadoRule();
                    legadoRule.setHomeUrl("@js:'" + api + "'");
                    legadoRule.setTypeNode("$.class");
                    legadoRule.setTypeName("$.type_name");
                    legadoRule.setTypeId("$.type_id@js:''+result");
                    legadoRule.setHomeVideoUrl("@js:'" + api + "?ac=detail'");
                    legadoRule.setHomeVodNode("$.list");
                    legadoRule.setHomeVodName("$.vod_name");
                    legadoRule.setHomeVodRemarks("$.vod_remarks");
                    legadoRule.setHomeVodId("$.vod_id");
                    legadoRule.setHomeVodPic("$.vod_pic");
                    legadoRule.setCateUrl(api + "?ac=detail&page=@get:{pg}&t=@get:{cateId}");
                    legadoRule.setPageNode("$");
                    legadoRule.setPage("$.page");
                    legadoRule.setPageCount("$.pagecount");
                    legadoRule.setCateVodNode("$.list");
                    legadoRule.setCateVodName("$.vod_name");
                    legadoRule.setCateVodRemarks("$.vod_remarks");
                    legadoRule.setCateVodId("$.vod_id");
                    legadoRule.setCateVodPic("$.vod_pic");
                    legadoRule.setDetailUrl(api + "?ac=detail&ids=@get:{detailId}");
                    legadoRule.setDetailVodName("$..vod_name");
                    legadoRule.setDetailVodPic("$..vod_pic");
                    legadoRule.setDetailNode("$.list[*]");
                    legadoRule.setDetailTypeName("$..type_name");
                    legadoRule.setDetailVodArea("$..vod_area");
                    legadoRule.setDetailVodYear("$..vod_year");
                    legadoRule.setDetailVodRemarks("$..vod_remarks");
                    legadoRule.setDetailVodDirector("$..vod_director");
                    legadoRule.setDetailVodActor("$..vod_actor");
                    legadoRule.setDetailVodPlayFrom("$.list[*].vod_play_from@js:list=java.split(result,'$$$');list");
                    legadoRule.setDetailVodPlayUrl("$.list[*].vod_play_url@js:list=java.split(result,'$$$');list");
                    legadoRule.setVodPlayForm("@js:String(result)");
                    legadoRule.setVodPlayList("@js:java.split(result,'#')");
                    legadoRule.setVodPlayName("@js:String(result).split('$')[0]");
                    legadoRule.setVodPlayUrl("@js:String(result).split('$')[1]");
                    legadoRule.setPlayUrl("@get:{playId}");
                    api = "csp_Legado";
                    ext = new GsonBuilder().disableHtmlEscaping().create().toJson(legadoRule);
                }
                java.lang.Class cls = null;
                cls = java.lang.Class.forName("com.github.catvod.spider." + api.substring(4));
                spider = (Spider) cls.newInstance();
                spider.init(null, ext);
                String home = spider.homeContent(true);
                System.out.println(home);
                List<Class> classes = new Gson().fromJson(home, Result.class).getClasses();
                if (classes == null || classes.size() == 0) {
                    throw new Exception("分类是空的");
                }
                System.out.println(spider.homeVideoContent());
                String cate = spider.categoryContent(classes.get(0).getTypeId(), "1", true, new HashMap<>());
                List<Vod> vods = new Gson().fromJson(cate, Result.class).getList();
                if (vods == null || vods.size() == 0) {
                    throw new Exception("列表是空的");
                }
                String detail = spider.detailContent(Arrays.asList(vods.get(0).getVodId()));
                List<Vod> vodDetails = new Gson().fromJson(detail, Result.class).getList();
                if (vodDetails == null || vodDetails.size() == 0) {
                    throw new Exception("内容时空的");
                }
                System.out.println(spider.playerContent("", vodDetails.get(0).getVodPlayUrl().split("#")[0].split("\\$")[1], null));
                System.out.println(spider.searchContent("火影", false));
                good.add(jsonElement);
            } catch (Exception e) {
                e.printStackTrace();
                bad.add(jsonElement);
            }
        }

        System.out.println(new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create().toJson(bad));
        System.out.println("**************************************************");
        System.out.println(new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create().toJson(good));
    }

    @Test
    public void TestMac() throws Exception {
        spider = new MacCMS();
        spider.init(mMockContext, "https://api.yparse.com/api/json$$" + 0);
        spider.homeContent(true);
    }

    @Test
    public void testMac1() throws Exception {
        spider = new Legado();
        LegadoRule legadoRule = new LegadoRule();
        legadoRule.setHomeUrl("@js:'https://www.feisuzy.com/api.php/provide/vod/'");
        legadoRule.setTypeNode("$.class");
        legadoRule.setTypeName("$.type_name");
        legadoRule.setTypeId("$.type_id@js:''+result");
        legadoRule.setHomeVideoUrl("https://www.feisuzy.com/api.php/provide/vod/?ac=detail");
        legadoRule.setHomeVodNode("$.list");
        legadoRule.setHomeVodName("$.vod_name");
        legadoRule.setHomeVodRemarks("$.vod_remarks");
        legadoRule.setHomeVodId("$.vod_id");
        legadoRule.setHomeVodPic("$.vod_pic");
        legadoRule.setCateUrl("https://www.feisuzy.com/api.php/provide/vod/?ac=detail&page=@get:{pg}&t=@get:{cateId}");
        legadoRule.setPageNode("$");
        legadoRule.setPage("$.page");
        legadoRule.setPageCount("$.pagecount");
        legadoRule.setCateVodNode("$.list");
        legadoRule.setCateVodName("$.vod_name");
        legadoRule.setCateVodRemarks("$.vod_remarks");
        legadoRule.setCateVodId("$.vod_id");
        legadoRule.setCateVodPic("$.vod_pic");
        legadoRule.setDetailUrl("https://www.feisuzy.com/api.php/provide/vod/?ac=detail&ids=@get:{detailId}");
        legadoRule.setDetailVodName("$..vod_name");
        legadoRule.setDetailVodPic("$..vod_pic");
        legadoRule.setDetailNode("$.list[*]");
        legadoRule.setDetailTypeName("$..type_name");
        legadoRule.setDetailVodArea("$..vod_area");
        legadoRule.setDetailVodYear("$..vod_year");
        legadoRule.setDetailVodRemarks("$..vod_remarks");
        legadoRule.setDetailVodDirector("$..vod_director");
        legadoRule.setDetailVodActor("$..vod_actor");
        legadoRule.setDetailVodPlayFrom("$.list[*].vod_play_from@js:java.split(result,'$$$')");
        legadoRule.setDetailVodPlayUrl("$.list[*].vod_play_url@js:java.split(result,'$$$')");
        legadoRule.setVodPlayForm("@js:String(result)");
        legadoRule.setVodPlayList("@js:java.split(result,'#')");
        legadoRule.setVodPlayName("@js:String(result).split('$')[0]");
        legadoRule.setVodPlayUrl("@js:String(result).split('$')[1]");
        legadoRule.setPlayUrl("@get:{playId}");
        spider.init(null, new GsonBuilder().disableHtmlEscaping().create().toJson(legadoRule));
        String content = spider.homeContent(true);
        System.out.println(content);
        System.out.println(spider.homeVideoContent());
        content = spider.categoryContent("2", "1", true, new HashMap<>());
        Console.log(content);
        Result result = new Gson().fromJson(content, Result.class);
        String id = result.getList().get(0).getVodId();
        content = spider.detailContent(Arrays.asList(id));
        System.out.println(content);
        result = new Gson().fromJson(content, Result.class);
        id = result.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
        content = spider.playerContent("原画", id, new ArrayList<>());
        System.out.println(content);
    }

    @Test
    public void testMac2() throws Exception {
        spider = new Legado();
        LegadoRule legadoRule = new LegadoRule();
        legadoRule.setHomeUrl("@js:'https://taopianapi.com/cjapi/mc/vod/xml.html'");
        legadoRule.setTypeNode("tag.class@tag.ty");
        legadoRule.setTypeName("tag.ty@text");
        legadoRule.setTypeId("tag.ty@id");
        legadoRule.setHomeVideoUrl("@js:'https://taopianapi.com/cjapi/mc/vod/xml.html?ac=videolist'");
        legadoRule.setHomeVodNode("tag.list@tag.video");
        legadoRule.setHomeVodName("tag.name@text");
        legadoRule.setHomeVodRemarks("tag.type@text");
        legadoRule.setHomeVodId("tag.id@text");
        legadoRule.setHomeVodPic("tag.pic@text");
        legadoRule.setCateUrl("https://taopianapi.com/cjapi/mc/vod/xml.html?ac=videolist&page=@get:{pg}&t=@get:{cateId}");
        legadoRule.setPageNode("tag.list");
        legadoRule.setPage("tag.list@page");
        legadoRule.setPageCount("tag.list@pagecount");
        legadoRule.setCateVodNode("tag.list@tag.video");
        legadoRule.setCateVodName("tag.name@text");
        legadoRule.setCateVodRemarks("tag.type@text");
        legadoRule.setCateVodId("tag.id@text");
        legadoRule.setCateVodPic("tag.pic@text");
        legadoRule.setDetailUrl("https://taopianapi.com/cjapi/mc/vod/xml.html?ac=videolist&ids=@get:{detailId}");
        legadoRule.setDetailVodName("tag.name@text");
        legadoRule.setDetailVodPic("tag.pic@text");
        legadoRule.setDetailNode("tag.list@tag.video");
        legadoRule.setDetailTypeName("tag.type@text");
        legadoRule.setDetailVodArea("tag.area@text");
        legadoRule.setDetailVodYear("tag.year@text");
        legadoRule.setDetailVodRemarks("tag.remarks@text");
        legadoRule.setDetailVodDirector("tag.director@text");
        legadoRule.setDetailVodActor("tag.actor@text");
        legadoRule.setDetailVodContent("tag.des@text");
        legadoRule.setDetailVodPlayFrom("tag.dl@tag.dd");
        legadoRule.setDetailVodPlayUrl("tag.dl@tag.dd");
        legadoRule.setVodPlayForm("tag.dd@flag");
        legadoRule.setVodPlayList("tag.dd@text@js:java.split(result,'#')");
        legadoRule.setVodPlayName("@js:String(result).split('$')[0]");
        legadoRule.setVodPlayUrl("@js:String(result).split('$')[1]");
        legadoRule.setPlayUrl("@get:{playId}");
        spider.init(null, new GsonBuilder().disableHtmlEscaping().create().toJson(legadoRule));
        String content = spider.homeContent(true);
        System.out.println(content);
        System.out.println(spider.homeVideoContent());
        content = spider.categoryContent("2", "1", true, new HashMap<>());
        Console.log(content);
        Result result = new Gson().fromJson(content, Result.class);
        String id = result.getList().get(0).getVodId();
        content = spider.detailContent(Arrays.asList(id));
        System.out.println(content);
        result = new Gson().fromJson(content, Result.class);
        id = result.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
        content = spider.playerContent("原画", id, new ArrayList<>());
        System.out.println(content);
    }


}
