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

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@RunWith(MockitoJUnitRunner.class)
public class XYQHikerALTest {

    private Spider spider;

    @Mock
    RoboApp mMockContext;

    @Before
    public void setUp() throws Exception {
        spider = new XYQHikerAL();
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
//        spider.init(null, "https://weixine.net/sub/wanou.json");
        spider.init(null, "https://weixine.net/sub/4KHDR.json");
    }

    @Test
    public void testInit() {
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(spider.homeContent(true));
    }

    @Test
    public void getHeaders() {
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(spider.homeVideoContent());
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(spider.categoryContent("20","1",true,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
//        System.out.println(spider.detailContent(Arrays.asList("妻子的新世界$$$https://pic.wujinpp.com/upload/vod/20230524-1/060b7134f9e360d2dcaff969bfe5a8e0.jpg$$$https://tvfan.xxooo.cf/index.php/voddetail/78474.html")));
        System.out.println(spider.detailContent(Arrays.asList("好戏登场 Showing Up (2022) / Showing.Up.2023.2160p.WEB-DL.DDP5.1.Atmos.DV.HDR.H.265-FLUX[TGx]$$$https://img2.doubanio.com/view/photo/raw/public/p2872216204.jpg$$$https://www.4khdr.cn/thread-4593-1-1.html")));
    }

    @Test
    public void playerContent() throws Exception {
        System.out.println(spider.detailContent(Arrays.asList("妻子的新世界$$$https://pic.wujinpp.com/upload/vod/20230524-1/060b7134f9e360d2dcaff969bfe5a8e0.jpg$$$https://tvfan.xxooo.cf/index.php/voddetail/78474.html")));
        System.out.println(spider.playerContent("原畫","6479ca00fc7825cd45dc4eb39ef33d01f31a9ee4",new ArrayList<>()));
    }

    @Test
    public void manualVideoCheck() {
    }

    @Test
    public void isVideoFormat() {
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(spider.searchContent("火影",false));
    }

    @Test
    public void fetchRule() {
    }

    @Test
    public void escapeExprSpecialWord() {
    }

    @Test
    public void fixCover() {
    }

    @Test
    public void loadPic() {
    }

    @Test
    public void fetch() {
    }

    @Test
    public void jumpbtwaf() {
    }
}