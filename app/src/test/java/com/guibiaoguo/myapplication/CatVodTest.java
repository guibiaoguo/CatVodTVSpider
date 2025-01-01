package com.guibiaoguo.myapplication;

import static org.mockito.Mockito.when;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;

import androidx.annotation.Nullable;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.parser.DataTypeAdapter;

import com.github.catvod.spider.Init;
import com.github.catvod.spider.Proxy;
import com.github.catvod.utils.AES;
import com.github.catvod.utils.StringUtil;

import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;

import org.apache.commons.lang3.StringUtils;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.DigestOutputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;

import javax.crypto.spec.IvParameterSpec;

import cn.hutool.core.io.file.FileReader;
import cn.hutool.core.io.file.FileWriter;
import cn.hutool.core.lang.JarClassLoader;
import cn.hutool.core.util.ClassLoaderUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.KeyUtil;
import cn.hutool.crypto.Mode;
import cn.hutool.crypto.Padding;
import cn.hutool.crypto.SecureUtil;
import cn.hutool.crypto.symmetric.DES;
import cn.hutool.crypto.symmetric.DESede;
import cn.hutool.crypto.symmetric.SymmetricAlgorithm;
import cn.hutool.crypto.symmetric.SymmetricCrypto;
import okhttp3.Call;
import okhttp3.Response;

@RunWith(MockitoJUnitRunner.class)
public class CatVodTest {

    private static final String TAG = CatVodTest.class.getSimpleName();

    @Mock
    RoboApp mMockContext;
    Gson gson = new GsonBuilder()
            .registerTypeAdapter(new TypeToken<Map<String, Object>>() {
            }.getType(), new DataTypeAdapter())
            .registerTypeAdapter(new TypeToken<List>() {
            }.getType(), new DataTypeAdapter())
            .disableHtmlEscaping().setLenient().create();

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

    public static String findResult(String json, String configKey) {
        String content = json;
        try {
            if (AES.isJson(content)) return content;
            Pattern pattern = Pattern.compile("[A-Za-z0]{8}\\*\\*");
            Matcher matcher = pattern.matcher(content);
            if (matcher.find()) {
                content = content.substring(content.indexOf(matcher.group()) + 10);
                content = new String(Base64.decode(content, Base64.DEFAULT));
            }
            if (content.startsWith("2423")) {
                String data = content.substring(content.indexOf("2324") + 4, content.length() - 26);
                content = new String(AES.toBytes(content)).toLowerCase();
                String key = AES.rightPadding(content.substring(content.indexOf("$#") + 2, content.indexOf("#$")), "0", 16);
                String iv = AES.rightPadding(content.substring(content.length() - 13), "0", 16);
                json = AES.CBC(data, key, iv);
            } else if (configKey != null && !AES.isJson(content)) {
                json = AES.ECB(content, configKey);
            } else {
                json = content;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return json;
    }

    @Test
    public void catvod() throws Exception {
        String[] urls = {
                "https://agit.ai/ddx/TVBox/raw/branch/master/t4.json",
                "https://agit.ai/ddx/TVBox/raw/branch/master/m.json",
                "http://我不是.肥猫.love:63/接口禁止贩卖",
                "http://xhww.fun:63/%E5%B0%8F%E7%B1%B3/DEMO.json",
                "https://raw.fgit.cf/gaotianliuyun/gao/master/js.json",
                "https://raw.fgit.cf/XiaoYiChaHang/tvbox/main/ysj.json",
                "https://yydsys.top/duo",
                "https://agit.ai/cyl518/yl/raw/branch/master/ml.json",
                "https://raw.fgit.cf/gaotianliuyun/gao/master/js.json",
                "https://weixine.net/ysc.json",
                "https://tvbox.cainisi.cf",
                "https://itvbox.cc/tvbox/云星日记/1.m3u8",
                "https://369936.xyz/web119",
                "http://home.jundie.top:81/top98.json",
                "http://52bsj.vip:98/wuai",
                "http://pandown.pro/tvbox/tvbox.json",
                "https://神器每日推送.tk/pz.json",
                "https://codeberg.org/jgfx/box88/raw/branch/master/jg.txt",
                "https://raw.fgit.cf/kebedd69/TVbox-interface/main/%E7%94%9C%E8%9C%9C.json",
                "https://raw.fgit.cf/tuji-2015/miao/main/TVBox/tvbox.json",
                "https://agit.ai/Yoursmile7/TVBox/raw/branch/master/XC.json",
                "https://freed.yuanhsing.cf/TVBox/meowcf.json",
                "https://raw.fgit.cf/jgfx/2hacc/raw/branch/main/tvbox.json",
                "https://la.kstore.space/download/2863/01.txt",
                "https://raw.fgit.cf/jgfx/TVBox2/raw/branch/master/Json/jgpro.json",
                "https://agit.ai/376242575/zzh/raw/branch/master/txt/影视.txt",

                };
        for (String url : urls) {
            Log.d(TAG, "catvod: " + url);
            String cc = OkHttpUtil.string(url);
            cc = findResult(cc,"");
            JsonArray good = new JsonArray();
            Gson gson = new GsonBuilder().disableHtmlEscaping().setLenient().setPrettyPrinting().create();
            JsonArray sites =  gson.fromJson(cc, JsonObject.class).getAsJsonArray("sites");
//        FileReader fileReader = new FileReader("result.json");
//        cc = fileReader.readString();
//        sites = JsonParser.parseString(fileReader.readString()).getAsJsonArray();
            for (JsonElement jsonElement : sites) {
                JsonObject object = jsonElement.getAsJsonObject();
//            if (!object.has("exception")) {
//                good.add(object);
//                continue;
////                            break;
//            } else {
//                object.remove("exception");
//            }
                String type = object.get("type").getAsString();
                String api = object.get("api").getAsString();
                String name = object.get("name").getAsString();
                String extend = "";
                String ex = api;
                if (type.equals("0") || type.equals("1")) {
                    ex = "csp_CMS";
                    extend = api + "$$" + type;
//                            good.add(jsonElement.getAsJsonObject());
//                            continue;
                }
                if (ex.startsWith("csp_")) {
                    List<String> exceptions = new ArrayList<>();
                    Log.d(TAG,name + " start");
                    try {
                        Class cls = null;
                        cls = Class.forName("com.github.catvod.spider." + ex.split("csp_")[1]);
                        Spider spider = (Spider) cls.newInstance();
                        String tid = null;
                        if (api.equals("csp_WebDAV")) {
                            continue;
                        }
                        if (api.equals("csp_Push")) {
                            continue;
                        }
                        if (api.equals("csp_spider")) {
                            continue;
                        }
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
                            String[] keys = new String[]{"火影","宝可梦","蜘蛛","巨乳"};
                            JsonObject jsonSearch = null;
                            for (String key:keys) {
                                exceptions.clear();
                                String searchContent = spider.searchContent(key,false);
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
                                    JsonArray vids = jsonSearch.getAsJsonArray("list");
                                    String vid = "";
                                    if (vids.size() > 3) {
                                        vid = vids.get(3).getAsJsonObject().get("vod_id").getAsString();
                                    } else {
                                        vid = vids.get(vids.size() -1).getAsJsonObject().get("vod_id").getAsString();
                                    }
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
                                    String playId = playUrl.getAsString().split("#")[0];
                                    if (playId.split("\\$").length < 1) {
                                        exceptions.add("vod_play_url is null");
                                        continue;
                                    }
                                    String playContent = spider.playerContent("",playId.split("\\$")[1],new ArrayList<>());
                                    Log.d(TAG,gson.toJson(playContent));
                                    if (StringUtils.isEmpty(playContent)){
                                        exceptions.add("play is null");
                                        continue;
                                    } else {
                                        break;
                                    }

                                }
                            }
                            continue;
                        }
                        JsonArray classes = homeJson.getAsJsonArray("class");
                        if (classes.size() > 3) {
                            tid = classes.get(3).getAsJsonObject().get("type_id").getAsString();
                        } else {
                            tid = classes.get(classes.size() -1).getAsJsonObject().get("type_id").getAsString();
                        }
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
                        JsonArray vids = jsonCategory.getAsJsonArray("list");
                        String vid = "";
                        if (vids.size() > 3) {
                            vid = vids.get(2).getAsJsonObject().get("vod_id").getAsString();
                        } else {
                            vid = vids.get(vids.size() -1).getAsJsonObject().get("vod_id").getAsString();
                        }
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
                        if (object.has("searchable") && object.get("searchable").getAsString().equals("0")) {
                            continue;
                        }
                        String[] keys = new String[]{"火影","宝可梦","蜘蛛","巨乳"};
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
            Log.d(TAG,gson.toJson(good));
            FileWriter writer = new FileWriter(new File("src/test/resources/meowcf.json"));
            writer.write(gson.toJson(good));
        }

    }

    @Test
    public void testKu() {
        Gson gson = new GsonBuilder()
                .registerTypeAdapter(new TypeToken<Map<String,Object>>(){}.getType(),new DataTypeAdapter())
                .disableHtmlEscaping().setLenient().create();
        String content = OkHttpUtil.string("https://raw.liucn.cc/box/dm.txt");
        System.out.println(content);
        JsonObject store = JsonParser.parseString(content).getAsJsonObject();
        List sites = new ArrayList();
        sites.add("https://100km.top/0");
        sites.add("http://xhww.fun:63/小米/DEMO.json");
        sites.add("https://raw.fgit.cf/gaotianliuyun/gao/master/0828.json");
        sites.add("https://raw.fgit.cf/gaotianliuyun/gao/master/0827.json");
        sites.add("https://100km.top/0");
        sites.add("http://pandown.pro/tvbox/tvbox.json");
        sites.add("https://raw.fgit.cf/lm317379829/PyramidStore/pyramid/py.json");
        sites.add("https://tvbox.cainisi.cf");
        sites.add("https://raw.fgit.cf/gaotianliuyun/gao/master/0825.json");
        sites.add("https://raw.fgit.cf/gaotianliuyun/gao/master/js.json");
        sites.add("https://raw.fgit.cf/gaotianliuyun/gao/master/XYQ.json");
        sites.add("http://我不是.肥猫.love:63/接口禁止贩卖");
        sites.add("https://agit.ai/Yoursmile7/TVBox/raw/branch/master/XC.json");
        sites.add("https://weixine.net/ysc.json");
        sites.add("https://yydsys.top/duo");
        sites.add("https://download.kstore.space/download/4907/jcsq/fx.json");
        sites.add("https://raw.fgit.cf/YuanHsing/freed/master/TVBox/meow.json");
        sites.add("https://raw.liucn.cc/box/m.json");
        sites.add("http://8.210.232.168/xc.json");
        sites.add("https://jihulab.com/dimaston1/4k/-/raw/main/tongyong.json");
        sites.add("https://jihulab.com/clear1/yingmi/-/raw/main/xh.txt");
        sites.add("https://jihulab.com/duomv/apps/-/raw/main/c.txt");
        sites.add("https://la.kstore.space/download/2863/01.txt");
        sites.add("https://dxawi.github.io/0/0.json");
        sites.add("https://agit.ai/zqk219/baip/raw/branch/main/tv.json");
        if (store.has("storeHouse")) {
            JsonArray storeHouse = store.getAsJsonArray("storeHouse");
            for (JsonElement source : storeHouse) {
                String url = source.getAsJsonObject().get("sourceUrl").getAsString();
                if (url.startsWith("https://pan.css.lc/")||url.startsWith("https://maoyingshi.cc")||url.startsWith("https://gitlab.com/ygbh1/666/")||url.startsWith("https://gitcode.net/go/go/-/raw/o/")||url.endsWith(".jpg") || url.startsWith("http://5.nxog.top") || url.startsWith("https://www.agit.ai/zqk219/baip/raw/branch")) {
                    continue;
                }
                url = url.replace("https://raw.iqiq.io","https://raw.fgit.cf");
                System.out.println(url);
                content = OkHttpUtil.string(url);
                if (!AES.isJson(content)) {
                    continue;
                }
                JsonObject box = JsonParser.parseString(content).getAsJsonObject();
                if (box.has("urls")) {
                    JsonArray urls = box.getAsJsonArray("urls");
                    for (JsonElement boxElement : urls) {
                        String url1 = boxElement.getAsJsonObject().get("url").getAsString();
                        sites.add(StringUtil.encode(url1));
                        System.out.println(url1);
                    }
                }
            }
        }
        System.out.println("********************************************");
        System.out.println(gson.toJson(sites));
        System.out.println("********************************************");
        List allSites = new ArrayList();
        for (Object site :sites) {
            content = OkHttpUtil.string(site.toString());
            if (!AES.isJson(content)) {
                continue;
            }
            store = JsonParser.parseString(content).getAsJsonObject();
            JsonArray storeHouse = store.getAsJsonArray("sites");
            List storeSites = gson.fromJson(storeHouse,new TypeToken<List<Map>>() {}.getType());
            allSites.addAll(storeSites);
        }
        FileWriter writer = new FileWriter(new File("src/test/resources/allSites.json"));
        writer.write(gson.toJson(allSites));
    }

    @Test
    public void spider() {
        try {
            Class cls = null;
            cls = Class.forName("com.github.catvod.spider.CMS" );
            Spider spider = (Spider) cls.newInstance();
            spider.init(mMockContext,"https://api.yparse.com/api/json$$1");
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
    public void loadSites() {
        FileReader fileReader = new FileReader("result.json");
        List sites = gson.fromJson(fileReader.readString(),List.class);
        List failSites = new ArrayList();
        LinkedHashMap<String, List<Object>> subMap = new LinkedHashMap<>();
        for (Object site :sites) {
            String content = OkHttpUtil.string(site.toString());
            if (!AES.isJson(content) || StringUtils.isEmpty(content)) {
                failSites.add(site);
                continue;
            }
            JsonObject store = JsonParser.parseString(content).getAsJsonObject();
            JsonArray storeHouse = store.getAsJsonArray("sites");
            if (storeHouse == null) {
                failSites.add(site);
;                continue;
            }
            for (JsonElement element : storeHouse) {
                String key = element.getAsJsonObject().get("key").getAsString();
                if (!subMap.containsKey(key)) subMap.put(key, new ArrayList<>());
                List datas = subMap.get(element.getAsJsonObject().get("key").getAsString());
                datas.add(element);
            }
        }
        FileWriter writer = new FileWriter(new File("src/test/resources/allSites.json"));
        writer.write(gson.toJson(subMap));
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

    @Test
    public void testDes() {
        DESede deSede = new DESede(Mode.CBC, Padding.PKCS5Padding, "OW84U8Eerdb99rtsTXWSILDO".getBytes(), "SK8bncVu".getBytes());
        String dcode = deSede.encryptBase64("夜北王");
        System.out.println(dcode);
        String content = "夜北王";

        byte[] key = "OW84U8Eerdb99rtsTXWSILDO".getBytes();

        SymmetricCrypto des = new SymmetricCrypto("DESede/CBC/PKCS5Padding", KeyUtil.generateKey(SymmetricAlgorithm.DESede.getValue(), key),new IvParameterSpec("SK8bncVu".getBytes()));
        //System.out.println(des.decryptStr("7L/KxGoyE4hGUlRlGrFu/g=="));
//加密
        byte[] encrypt = des.encrypt(content);
//解密
        byte[] decrypt = des.decrypt(encrypt);

//加密为16进制字符串（Hex表示）
        String encryptHex = des.encryptHex(content);
//解密为字符串
        String decryptStr = des.decryptStr(encryptHex);
        System.out.println(encryptHex);
        System.out.println(decryptStr);
    }

}
