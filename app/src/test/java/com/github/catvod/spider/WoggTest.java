//package com.github.catvod.spider;
//
//import static org.junit.Assert.*;
//import static org.mockito.Mockito.when;
//
//import android.content.SharedPreferences;
//
//import androidx.annotation.Nullable;
//
//import com.github.catvod.crawler.Spider;
//import com.guibiaoguo.myapplication.RoboApp;
//
//import org.junit.After;
//import org.junit.Before;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.mockito.Mock;
//import org.mockito.junit.MockitoJUnitRunner;
//
//import java.util.Map;
//import java.util.Set;
//@RunWith(MockitoJUnitRunner.class)
//public class WoggTest {
//
//    @Mock
//    RoboApp mMockContext;
//
//    Spider wogg;
//    @Before
//    public void setUp() throws Exception {
//        //        when(mMockContext.getString(R.string.app_name)).thenReturn(FAKE_STRING);
//        when(mMockContext.getPackageName()).thenReturn("com.github.androidunittest");
////        when(mMockContext.getApplicationContext()).thenReturn(new Application());
////        PowerMockito.mockStatic(Looper.class);
////        PowerMockito.when(Looper.getMainLooper()).thenReturn(null);
//        when(mMockContext.getSharedPreferences("com.github.androidunittest_preferences",0)).thenReturn(new SharedPreferences() {
//            @Override
//            public Map<String, ?> getAll() {
//                return null;
//            }
//
//            @Nullable
//            @Override
//            public String getString(String key, @Nullable String defValue) {
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
//                return null;
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
//        Init.init(mMockContext);
//        Proxy.port = 9997;
//        wogg = new Wogg();
//        wogg.init(null,"{'filter':'{}','token':'0ac3580008b64f20bc72877bba446e6d'}");
//    }
//
//    @After
//    public void tearDown() throws Exception {
//    }
//
//    @Test
//    public void homeContent() throws Exception {
//        System.out.println(wogg.homeContent(true));
//    }
//
//    @Test
//    public void categoryContent() {
//    }
//
//    @Test
//    public void detailContent() {
//    }
//
//    @Test
//    public void searchContent() throws Exception {
//        System.out.println(wogg.searchContent("火影",false));
//    }
//
//    @Test
//    public void testSearchContent() {
//    }
//}