package com.github.catvod.spider;

import static org.mockito.Mockito.when;

import android.content.SharedPreferences;

import androidx.annotation.Nullable;

import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;
import com.google.gson.Gson;
import com.guibiaoguo.myapplication.RoboApp;

import org.junit.After;
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

@RunWith(MockitoJUnitRunner.class)
public class PaperTest {

    @Mock
    RoboApp mMockContext;

    private Spider paper;

    @Before
    public void setUp() throws Exception {
        paper = new Paper();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        Proxy.port = 9978;
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
        paper.init(mMockContext, "0ac3580008b64f20bc72877bba446e6d");
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(paper.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(paper.homeVideoContent());
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(paper.categoryContent("hyds","2",true,new HashMap<>()));
//        System.out.println(paper.categoryContent("https://www.aliyundrive.com/s/BfFQz6zbfYm","1",true,new HashMap<>()));
//        System.out.println(paper.categoryContent("https://www.aliyundrive.com/s/BfFQz6zbfYm/folder/646f5d3147fd14c065c14811ac2cc1773e3474bd","1",true,new HashMap<>()));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(paper.searchContent("火影", true));
    }

    @Test
    public void detailContent() throws Exception {
//        System.out.println(paper.detailContent(Arrays.asList("https://www.aliyundrive.com/s/GF9muMqpc16")));
        System.out.println(paper.detailContent(Arrays.asList("https://www.aliyundrive.com/s/GF9muMqpc16")));
    }

    @Test
    public void playerContent() throws Exception {
//        String content = paper.detailContent(List.of("https://www.aliyundrive.com/s/BfFQz6zbfYm/folder/646f5d3147fd14c065c14811ac2cc1773e3474bd"));
        String content = paper.detailContent(List.of("https://www.aliyundrive.com/s/KwUCz4H31JK/folder/619ae206f21fe67ebabb402d9429931729e7c039"));
        Result result = new Gson().fromJson(content, Result.class);
        String id = result.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
        System.out.println(paper.playerContent("原畫",id,new ArrayList<>()));
    }
}