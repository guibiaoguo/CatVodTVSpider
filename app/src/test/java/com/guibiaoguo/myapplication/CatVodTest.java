package com.guibiaoguo.myapplication;

import static org.mockito.Mockito.when;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;

import androidx.annotation.Nullable;

import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.spider.Init;
import com.github.catvod.spider.Proxy;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

import org.apache.commons.lang3.StringUtils;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import cn.hutool.core.io.file.FileReader;
import cn.hutool.core.io.file.FileWriter;
import cn.hutool.core.lang.JarClassLoader;
import cn.hutool.core.util.ClassLoaderUtil;
import cn.hutool.core.util.StrUtil;

@RunWith(MockitoJUnitRunner.class)
public class CatVodTest {

    private static final String TAG = CatVodTest.class.getSimpleName();

    @Mock
    RoboApp mMockContext;

    @Before
    public void setUp() throws Exception {
        Proxy.port = 9978;
        FileReader fileReader = new FileReader("aliyundrive.json");
        String aliyundrive = fileReader.readString();
        //        when(mMockContext.getString(R.string.app_name)).thenReturn(FAKE_STRING);
        when(mMockContext.getPackageName()).thenReturn("com.github.androidunittest");
//        when(mMockContext.getApplicationContext()).thenReturn(new Application());
//        PowerMockito.mockStatic(Looper.class);
//        PowerMockito.when(Looper.getMainLooper()).thenReturn(null);
        when(mMockContext.getSharedPreferences("com.github.androidunittest_preferences",0)).thenReturn(new SharedPreferences() {
            @Override
            public Map<String, ?> getAll() {
                return null;
            }

            @Nullable
            @Override
            public String getString(String key, @Nullable String defValue) {
                if (key.equals("aliyundrive")) {
                    return aliyundrive;
                }
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
                        if (key.equals("aliyundrive")) {
                            FileWriter writer = new FileWriter(new File("src/test/resources/aliyundrive.json"));
                            writer.write(value);
                        }
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
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void catvod() throws Exception {
        String cc = OkHttpUtil.string("https://gitlab.com/mao4284120/js/-/raw/main/212757.json");
        JsonArray good = new JsonArray();
        Gson gson = new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create();
        JsonArray sites =  gson.fromJson(cc, JsonObject.class).getAsJsonArray("sites");
        FileReader fileReader = new FileReader("result.json");
        cc = fileReader.readString();
        sites = JsonParser.parseString(fileReader.readString()).getAsJsonArray();
        for (JsonElement jsonElement : sites) {
            JsonObject object = jsonElement.getAsJsonObject();
            if (!object.has("exception")) {
                good.add(object);
                continue;
            } else {
                object.remove("exception");
            }
            String type = object.get("type").getAsString();
            String api = object.get("api").getAsString();
            String name = object.get("name").getAsString();
            String extend = "";
            String ex = api;
            if (type.equals("0") || type.equals("1")) {
                ex = "csp_CMS";
                extend = api + "$$" + type;
            }
            if (ex.startsWith("csp_")) {
                List<String> exceptions = new ArrayList<>();
                Log.d(TAG,name + " start");
                try {
                    String tid = null;
                    if (api.equals("csp_WebDAV")) {
                        continue;
                    }
                    Class cls = null;
                    cls = Class.forName("com.github.catvod.spider." + ex.split("csp_")[1]);
                    Spider spider = (Spider) cls.newInstance();
                    if (object.has("ext")) {
                        extend = object.get("ext").isJsonObject()?object.get("ext").toString():object.get("ext").getAsString();
                    }
                    if (StrUtil.isEmpty(extend)) {
                        spider.init(mMockContext);
                    } else {
                        spider.init(mMockContext,extend);
                    }
                    String homeContent = spider.homeContent(true);
                    JsonObject homeJson = null;
                    if (StringUtils.isEmpty(homeContent)) {
                        homeJson = new JsonObject();
                    } else {
                        homeJson = JsonParser.parseString(homeContent).getAsJsonObject();
                    }
                    Log.d(TAG,homeJson.toString());
                    if (homeJson.getAsJsonArray("class")==null || homeJson.getAsJsonArray("class").size() == 0) {
                        String searchContent = spider.searchContent("宝可梦",false);
                        JsonObject jsonSearch = null;
                        if (StringUtils.isEmpty(searchContent)) {
                            jsonSearch = new JsonObject();
                        } else {
                            jsonSearch = JsonParser.parseString(searchContent).getAsJsonObject();
                        }
                        Log.d(TAG,jsonSearch.toString());
                        if (jsonSearch.getAsJsonArray("list")==null || jsonSearch.getAsJsonArray("list").size() == 0) {
                            exceptions.add("Search is null");
                            exceptions.add("homeContent is null");
                            continue;
                        } else {
                            String vid = jsonSearch.getAsJsonArray("list").get(0).getAsJsonObject().get("vod_id").getAsString();
                            String detailContent = spider.detailContent(Arrays.asList(vid));
                            if (StringUtils.isEmpty(detailContent)) {
                                exceptions.add("detail is null");
                                continue;
                            }
                            JsonObject jsonDetail = gson.fromJson(detailContent, JsonObject.class);
                            Log.d(TAG,jsonDetail.toString());
                            if (jsonDetail.getAsJsonArray("list")==null || jsonDetail.getAsJsonArray("list").size() == 0) {
                                exceptions.add("detail is null");
                                continue;
                            }
                            if (api.equals("csp_Eighteen")) {
                                continue;
                            }
                            JsonElement playUrl = jsonDetail.getAsJsonArray("list").get(0).getAsJsonObject().get("vod_play_url");
                            if (playUrl == null || StringUtils.isEmpty(playUrl.getAsString())) {
                                exceptions.add("vod_play_url is null");
                                continue;
                            }
                            String playContent = spider.playerContent("",playUrl.getAsString().split("#")[0].split("\\$")[1],new ArrayList<>());
                            if (StringUtils.isEmpty(playContent)){
                                exceptions.add("play is null");
                                continue;
                            }
                            Log.d(TAG,gson.toJson(gson.fromJson(playContent, JsonObject.class)));
                        }
                    }
                    tid = homeJson.getAsJsonArray("class").get(homeJson.getAsJsonArray("class").size()-1).getAsJsonObject().get("type_id").getAsString();
                    String homeVideoContent = spider.homeVideoContent();
                    JsonObject homeVideoJson = null;
                    if (StringUtils.isNotEmpty(homeVideoContent)) {
                        homeVideoJson = gson.fromJson(homeVideoContent, JsonObject.class);
                        Log.d(TAG, homeVideoJson.toString());
                    } else {
                        homeVideoJson = new JsonObject();
                    }
                    if (!((homeVideoJson.has("list") && homeVideoJson.getAsJsonArray("list").size() > 0) || (homeJson.has("list") && homeJson.getAsJsonArray("list").size() > 0))) {
                        exceptions.add("homeVideo is null");
                    }
                    String categoryContent = spider.categoryContent(tid,"1",false,new HashMap<>());
                    JsonObject jsonCategory = null;
                    if (StringUtils.isEmpty(categoryContent)) {
                        jsonCategory = new JsonObject();
                    } else {
                        jsonCategory = JsonParser.parseString(categoryContent).getAsJsonObject();
                    }
                    Log.d(TAG,jsonCategory.toString());
                    if (jsonCategory.getAsJsonArray("list")==null || jsonCategory.getAsJsonArray("list").size() == 0) {
                        exceptions.add("category is null");
                        continue;
                    }
                    String vid = jsonCategory.getAsJsonArray("list").get(0).getAsJsonObject().get("vod_id").getAsString();
                    String detailContent = spider.detailContent(Arrays.asList(vid));
                    if (StringUtils.isEmpty(detailContent)) {
                        exceptions.add("detail is null");
                        continue;
                    }
                    JsonObject jsonDetail = gson.fromJson(detailContent, JsonObject.class);
                    Log.d(TAG,jsonDetail.toString());
                    if (jsonDetail.getAsJsonArray("list")==null || jsonDetail.getAsJsonArray("list").size() == 0) {
                        exceptions.add("detail is null");
                        continue;
                    }
                    if (api.equals("csp_Eighteen")) {
                        continue;
                    }
                    JsonElement playUrl = jsonDetail.getAsJsonArray("list").get(0).getAsJsonObject().get("vod_play_url");
                    if (playUrl == null || StringUtils.isEmpty(playUrl.getAsString())) {
                        exceptions.add("vod_play_url is null");
                        continue;
                    }
                    String playContent = spider.playerContent("",playUrl.getAsString().split("#")[0].split("\\$")[1],new ArrayList<>());
                    if (StringUtils.isEmpty(playContent)){
                        exceptions.add("play is null");
                        continue;
                    }
                    Log.d(TAG,gson.toJson(gson.fromJson(playContent, JsonObject.class)));
                    String searchContent = spider.searchContent("蜘蛛",false);
                    JsonObject jsonSearch = null;
                    if (StringUtils.isEmpty(searchContent)) {
                        jsonSearch = new JsonObject();
                    } else {
                        jsonSearch = JsonParser.parseString(searchContent).getAsJsonObject();
                    }
                    Log.d(TAG,jsonSearch.toString());
                    if (jsonSearch.getAsJsonArray("list")==null || jsonSearch.getAsJsonArray("list").size() == 0) {
                        exceptions.add("Search is null");
                    }
                } catch (Exception e) {
                    Log.d(TAG,"*****" + api + "*********\n"+e.getMessage()+"\n***********");
                    exceptions.add(e.getMessage());
                } finally {
                    Log.d(TAG,name + " end");
                    if (!exceptions.isEmpty()) {
                        object.addProperty("exception", TextUtils.join("\n",exceptions));
                    }
                    good.add(object);
                }
            } else if (api.endsWith(".js")) {
                good.add(object);
            }
        }
        Log.d(TAG,new GsonBuilder().setPrettyPrinting().create().toJson(good));
        FileWriter writer = new FileWriter(new File("src/test/resources/result.json"));
        writer.write(gson.toJson(good));
    }

    @Test
    public void spider() {
        try {
            Class cls = null;
            cls = Class.forName("com.github.catvod.spider.CMS" );
            Spider spider = (Spider) cls.newInstance();
            spider.init(mMockContext,"https://caiji.semaozy.net/inc/apijson_vod.php$$1");
            String home = spider.homeContent(true);
            System.out.println(home);
            String homeVideo = spider.homeVideoContent();
            System.out.println(homeVideo);
            JsonObject homeJson = JsonParser.parseString(home).getAsJsonObject();
            String tid = "";
            JsonArray classes = homeJson.getAsJsonArray("class");
            if (classes == null) {
                tid = "31";
            }
            else if (classes.size() > 3) {
                tid = classes.get(3).getAsJsonObject().get("type_id").getAsString();
            } else {
                tid = classes.get(classes.size() -1).getAsJsonObject().get("type_id").getAsString();
            }
            String categoryContent = spider.categoryContent(tid,"1",false,null);
            System.out.println(categoryContent);
            JsonObject jsonCategory = JsonParser.parseString(categoryContent).getAsJsonObject();
            String vid = jsonCategory.getAsJsonArray("list").get(0).getAsJsonObject().get("vod_id").getAsString();
            String detailContent = spider.detailContent(Arrays.asList(vid));
            System.out.println(detailContent);
            JsonObject jsonDetail = JsonParser.parseString(detailContent).getAsJsonObject();
            JsonElement playUrl = jsonDetail.getAsJsonArray("list").get(0).getAsJsonObject().get("vod_play_url");
            String playContent = spider.playerContent("",playUrl.getAsString().split("#")[0].split("\\$")[1],new ArrayList<>());
            System.out.println(playContent);
            String[] keys = new String[]{"宝可梦","蜘蛛","巨乳"};
            JsonObject jsonSearch = null;
            for (String key:keys) {
                String searchContent = spider.searchContent(key,false);
                if (StringUtils.isEmpty(searchContent)) {
                    jsonSearch = new JsonObject();
                } else {
                    jsonSearch = JsonParser.parseString(searchContent).getAsJsonObject();
                }
                Log.d(TAG,jsonSearch.toString());
                if (jsonSearch.has("list") && jsonSearch.getAsJsonArray("list").size() >0) {
                    break;
                }
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
    }

    @Test
    public void loadResult() {
        Gson gson = new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create();
        FileReader fileReader = new FileReader("result.json");
        String aliyundrive = fileReader.readString();
        JsonArray jsonArray = JsonParser.parseString(fileReader.readString()).getAsJsonArray();
        FileWriter writer = new FileWriter(new File("src/test/resources/result.json"));
        writer.write(gson.toJson(jsonArray));
    }

    @Test
    public void loadMsg() {
        System.out.println(System.getProperty("os.name"));
    }
}
