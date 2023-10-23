package com.github.catvod.spider;

import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

import android.content.SharedPreferences;

import androidx.annotation.Nullable;

import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;
import com.github.catvod.utils.StringUtil;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.guibiaoguo.myapplication.RoboApp;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import cn.hutool.core.io.file.FileReader;
import cn.hutool.core.io.file.FileWriter;

@RunWith(MockitoJUnitRunner.class)
public class PanSouTest {

    @Mock
    RoboApp mMockContext;

    private Spider pansou;

    @Before
    public void setUp() throws Exception {
        pansou = new PanSou();
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
        pansou.init(mMockContext, "0ac3580008b64f20bc72877bba446e6d");
    }

    @Test
    public void detailContent() throws Exception {
        String content = pansou.detailContent(Arrays.asList("/s/KeksNqYkc48pdqJwZTQ1TzW05V7sj"));
        System.out.println("*************************");
        System.out.println(content);
        System.out.println("*************************");
    }

    @Test
    public void searchContent() throws Exception {
        String content = pansou.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void playerContent() throws Exception {
        String content = pansou.detailContent(Arrays.asList("/s/KeksNqYkc48pdqJwZTQ1TzW05V7sj"));
        Result result = new Gson().fromJson(content, Result.class);
        String id = result.getList().get(0).getVodPlayUrl().split("#")[182].split("\\$")[1];
//        System.out.println(pansou.playerContent("原畫", id, null));
        content = pansou.playerContent("超清", id, null);
        System.out.println(content);
        String url = new Gson().fromJson(content, JsonObject.class).get("url").getAsString();
        if (url.startsWith("http://127.0.0.1")) {
            Map<String, String> params = StringUtil.getParameter(url, "?");
            Object[] rs = Proxy.proxy(params);
            int code = (int) rs[0];
            String mime = (String) rs[1];
            InputStream stream = rs[2] != null ? (InputStream) rs[2] : null;
            BufferedReader bReader = new BufferedReader(new InputStreamReader(stream, "UTF-8"));
            StringBuilder sb = new StringBuilder();
            String s = "";
            while ((s = bReader.readLine()) != null) {
                sb.append(s + "\n");
            }
            bReader.close();
        }
    }

    @Test
    public void previewUrl() throws Exception {
        String url = "http://127.0.0.1:9978/proxy?do=ali&type=sub&file_id=647753fa170d4809f69746dba8d8ee081d411c45";
        if (url.startsWith("http://127.0.0.1")) {
            Map<String, String> params = StringUtil.getParameter(url, "?");
            Object[] rs = Proxy.proxy(params);
            int code = (int) rs[0];
            String mime = (String) rs[1];
            InputStream stream = rs[2] != null ? (InputStream) rs[2] : null;
            BufferedReader bReader = new BufferedReader(new InputStreamReader(stream, "UTF-8"));
            StringBuilder sb = new StringBuilder();
            String s = "";
            while ((s = bReader.readLine()) != null) {
                sb.append(s + "\n");
            }
            bReader.close();
        }
    }
}