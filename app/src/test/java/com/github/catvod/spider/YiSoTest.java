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

import java.util.Arrays;
import java.util.Map;
import java.util.Set;
@RunWith(MockitoJUnitRunner.class)
public class YiSoTest {

    @Mock
    RoboApp mMockContext;

    private Spider yiso;

    @Before
    public void setUp() throws Exception {
        yiso = new YiSo();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
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
                return null;
            }

            @Override
            public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {

            }

            @Override
            public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {

            }
        });
        Init.init(mMockContext);
        Proxy.port = 9997;
        yiso.init(mMockContext, "0ac3580008b64f20bc72877bba446e6d");
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(yiso.searchContent("火影忍者", false));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(yiso.detailContent(Arrays.asList("https://www.aliyundrive.com/s/dCTAQ2TUf1n/folder/645ba82aedd0ace5aa644c1e9a8a3943ede23597")));
    }

    @Test
    public void playerContent() throws Exception {
        String content = yiso.detailContent(Arrays.asList("https://www.aliyundrive.com/s/dCTAQ2TUf1n/folder/645ba82aedd0ace5aa644c1e9a8a3943ede23597"));
        Result result = new Gson().fromJson(content, Result.class);
        String id = result.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
        System.out.println(yiso.playerContent("原畫", id, null));
    }
}