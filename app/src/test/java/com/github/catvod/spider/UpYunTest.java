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
import java.util.List;
import java.util.Map;
import java.util.Set;

@RunWith(MockitoJUnitRunner.class)
public class UpYunTest {


    @Mock
    RoboApp mMockContext;

    private Spider upyun;

    @Before
    public void setUp() throws Exception {
        upyun = new UpYun();
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
        upyun.init(mMockContext, "43073a876e9f4d6c906f1d7df92af59a");
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(upyun.searchContent("火影忍者", false));
    }

    @Test
    public void detailContent() throws Exception {
        System.out.println(upyun.detailContent(Arrays.asList("https://www.aliyundrive.com/s/KQQNDwPNF8M/folder/6418449a6cb74c72223d4f549040cb87a45129a8")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(upyun.detailContent(Arrays.asList("https://www.aliyundrive.com/s/KQQNDwPNF8M/folder/6418449a6cb74c72223d4f549040cb87a45129a8")));
        System.out.println(upyun.playerContent("原畫","641844e696f191d7402b493f80e949047d060669+203@@@srt@@@641844e7d2156b551b59469fa665a4ef6ac45f8e",null));
    }
}