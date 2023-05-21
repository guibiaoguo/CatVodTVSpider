package com.github.catvod.spider;

import static org.mockito.Mockito.when;

import android.content.SharedPreferences;

import androidx.annotation.Nullable;

import com.github.catvod.crawler.Spider;
import com.guibiaoguo.myapplication.RoboApp;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

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
        paper.init(mMockContext, "43073a876e9f4d6c906f1d7df92af59a");
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
        System.out.println(paper.categoryContent("hyds","1",true,new HashMap<>()));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(paper.searchContent("火影", true));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(paper.detailContent(Arrays.asList("https://www.aliyundrive.com/s/GF9muMqpc16")));
    }
}