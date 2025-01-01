package com.github.catvod.spider;

import static org.mockito.Mockito.when;

import android.text.TextUtils;


import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;
import com.google.gson.Gson;
import com.guibiaoguo.myapplication.RoboApp;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.Arrays;
import java.util.HashMap;
import cn.hutool.core.io.file.FileReader;

@RunWith(MockitoJUnitRunner.class)
public class YunPan1Test {

    @Mock
    RoboApp mMockContext;

    Spider yunpan1;

    @Before
    public void setUp() throws Exception {
        yunpan1 = new YunPan1();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        Proxy.port = 9978;
        FileReader fileReader = new FileReader("aliyundrive.json");
        String aliyundrive = fileReader.readString();
        //        when(mMockContext.getString(R.string.app_name)).thenReturn(FAKE_STRING);
        when(mMockContext.getPackageName()).thenReturn("com.github.androidunittest");
//        when(mMockContext.getApplicationContext()).thenReturn(new Application());
//        PowerMockito.mockStatic(Looper.class);
//        PowerMockito.when(Looper.getMainLooper()).thenReturn(null);
//        when(mMockContext.getSharedPreferences("com.github.androidunittest_preferences",0)).thenReturn(new SharedPreferences() {
//            @Override
//            public Map<String, ?> getAll() {
//                return null;
//            }
//
//            @Nullable
//            @Override
//            public String getString(String key, @Nullable String defValue) {
//                if (key.equals("aliyundrive")) {
//                    return aliyundrive;
//                }
//                return null;
//            }
//
//            @Nullable
//            @Override
//            public Set<String> getStringSet(String key, @Nullable Set<String> defValues) {
//                return null;
//            }
//
//            @Override
//            public int getInt(String key, int defValue) {
//                return 0;
//            }
//
//            @Override
//            public long getLong(String key, long defValue) {
//                return 0;
//            }
//
//            @Override
//            public float getFloat(String key, float defValue) {
//                return 0;
//            }
//
//            @Override
//            public boolean getBoolean(String key, boolean defValue) {
//                return false;
//            }
//
//            @Override
//            public boolean contains(String key) {
//                return false;
//            }
//
//            @Override
//            public Editor edit() {
//                return new Editor() {
//                    @Override
//                    public Editor putString(String key, @Nullable String value) {
//                        if (key.equals("aliyundrive")) {
//                            FileWriter writer = new FileWriter(new File("src/test/resources/aliyundrive.json"));
//                            writer.write(value);
//                        }
//                        return this;
//                    }
//
//                    @Override
//                    public Editor putStringSet(String key, @Nullable Set<String> values) {
//                        return this;
//                    }
//
//                    @Override
//                    public Editor putInt(String key, int value) {
//                        return this;
//                    }
//
//                    @Override
//                    public Editor putLong(String key, long value) {
//                        return this;
//                    }
//
//                    @Override
//                    public Editor putFloat(String key, float value) {
//                        return this;
//                    }
//
//                    @Override
//                    public Editor putBoolean(String key, boolean value) {
//                        return null;
//                    }
//
//                    @Override
//                    public Editor remove(String key) {
//                        return this;
//                    }
//
//                    @Override
//                    public Editor clear() {
//                        return this;
//                    }
//
//                    @Override
//                    public boolean commit() {
//                        return false;
//                    }
//
//                    @Override
//                    public void apply() {
//
//                    }
//                };
//            }
//
//            @Override
//            public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {
//
//            }
//
//            @Override
//            public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {
//
//            }
//        });
        Init.init(mMockContext);
        yunpan1.init(mMockContext, "{\"x-csrf-token\":\"\",\"cookie\":\"sl-session=wP4rBxi0dGd7AsXvt6Du7Q==; sl-challenge-server=cloud; sl-waiting-state=done; flarum_session=y22YRdjKOaTUh6w0CFDfhHNcnwHoS3JxEF7Rs5Bf; sl_jwt_session=sckFLJNMdGfogVSuOVyEGQ==; sl_jwt_sign=; sl-waiting-session=3abd64339d9b13f0c2d30b6146dc9c53\"}");
    }
    @Test
    public void homeContent() throws Exception {
        String content = yunpan1.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getClasses().size()>0);
        Assert.assertTrue(result.getList().isEmpty() || result.getList().size() > 0);
    }

    @Test
    public void homeVideoContent() throws Exception {
        String content = yunpan1.homeVideoContent();
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void categoryContent() throws Exception {
        String content = yunpan1.homeContent(false);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        content = yunpan1.categoryContent(result.getClasses().get(0).getTypeId(),"1",false,new HashMap<>());
        System.out.println(content);
        result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void searchContent() throws Exception {
        String content = yunpan1.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void detailContent() throws Exception {
        String content = yunpan1.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        if (result.getList().isEmpty()) {
            content = yunpan1.homeVideoContent();
            result = new Gson().fromJson(content, Result.class);
        }
        String id = result.getList().get(0).getVodId();
        content = yunpan1.detailContent(Arrays.asList(id));
        System.out.println(content);
        result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
        Assert.assertTrue(!TextUtils.isEmpty(result.getList().get(0).getVodPlayUrl()));
    }

    @Test
    public void playerContent() throws Exception {
        String content = yunpan1.searchContent("完美世界",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("完美世界"));
        Result result = new Gson().fromJson(content, Result.class);
        String id = result.getList().get(1).getVodId();
        System.out.println(id);
        content = yunpan1.detailContent(Arrays.asList(id));
        System.out.println(content);
        result = new Gson().fromJson(content, Result.class);
        id = result.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
        String flga = result.getList().get(0).getVodPlayFrom().split("$$$")[0];
        System.out.println(yunpan1.playerContent(flga, id, null));
    }
}