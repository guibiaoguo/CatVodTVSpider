package com.github.catvod.spider;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.text.TextUtils;

import com.github.catvod.R;
import com.github.catvod.crawler.Spider;
import com.guibiaoguo.myapplication.RoboApp;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.powermock.api.mockito.PowerMockito;
import org.powermock.core.classloader.annotations.PrepareForTest;
import org.powermock.modules.junit4.PowerMockRunner;

import java.io.ByteArrayOutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import static org.mockito.Mockito.*;

import androidx.annotation.Nullable;

@RunWith(MockitoJUnitRunner.class)
public class AliTest {

    private static final String FAKE_STRING = "AndroidUnitTest";

    @Mock
    RoboApp mMockContext;

    private Spider ali;

    @Before
    public void setUp() throws Exception {
        ali = new Ali();
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
        ali.init(mMockContext, "9ed3f99efcbe40e89b13d307f915cb63");
    }

    @Test
    public void detailContent() throws Exception {
//        System.out.println(ali.detailContent(Arrays.asList("https://www.aliyundrive.com/s/UAhNowcSsBR")));
        System.out.println(ali.detailContent(Arrays.asList("https://www.aliyundrive.com/s/Lvt6XJobogm/folder/637a2afe82dedfde45d5400fb46f47f33ff5b438")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(ali.detailContent(Arrays.asList("https://www.aliyundrive.com/s/UAhNowcSsBR")));
        System.out.println(ali.playerContent("原畫", "646734b8a921719397cb4486b0a97ab50a15af57", null));
    }

}