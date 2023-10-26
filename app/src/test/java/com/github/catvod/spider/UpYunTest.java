package com.github.catvod.spider;

import static org.mockito.Mockito.when;

import android.content.SharedPreferences;

import androidx.annotation.Nullable;

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
import org.mockito.MockedStatic;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.crypto.Cipher;

import cn.hutool.core.io.file.FileReader;
import cn.hutool.core.io.file.FileWriter;
import cn.hutool.crypto.SecureUtil;
import cn.hutool.crypto.symmetric.AES;

@RunWith(MockitoJUnitRunner.class)
public class UpYunTest {


    @Mock
    RoboApp mMockContext;

    private Spider upyun;

    @Test
    public void CBC() {
        AES aes = new AES("CBC", "PKCS7Padding",
                // 密钥，可以自定义
                "qq1920520460qqzz".getBytes(),
                // iv加盐，按照实际需求添加
                "qq1920520460qqzz".getBytes());

// 解密
        String decryptStr = aes.decryptStr("5ecafb798196ba3aecb1fa2f8f7f3904fa4699259863119e9014d4df8a43b46ff75e3d21fff50166bd4191c9e920a5a1f3da470f09c4c523d176e8faedac3d26d467d23900035248e5a2e17a7a3b2ed86c2f3c56e98c00fffcde5ffbdfbbcfd3");
        System.out.println(decryptStr);
    }
    @Before
    public void setUp() throws Exception {
        upyun = new UpYun();
        init();
//        MockedStatic<AES> mockedStatic = Mockito.mockStatic(AES.class);
//        mockedStatic.when(()->{
//            AES.createCipher("");
//        }).thenReturn(SecureUtil.createCipher("AES/CBC/PKCS7Padding"));
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
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
        Proxy.port = 9997;
        upyun.init(mMockContext, "0ac3580008b64f20bc72877bba446e6d");
    }

    @Test
    public void searchContent() throws Exception {
        String content = upyun.searchContent("宝可梦",false);
        System.out.println(content);
        Assert.assertTrue(content.contains("宝可梦"));
        Result result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
    }

    @Test
    public void detailContent() throws Exception {
//        System.out.println(upyun.detailContent(Arrays.asList("https://www.aliyundrive.com/s/dCTAQ2TUf1n/folder/645ba82aedd0ace5aa644c1e9a8a3943ede23597")));
        System.out.println(upyun.detailContent(Arrays.asList("https://www.aliyundrive.com/s/Ww2yRgrsQ2C/folder/64544fe8c5bb130c4e90418ebcc7e109f1eb143c")));
    }

    @Test
    public void playerContent() throws Exception {
        String content = upyun.detailContent(Arrays.asList("https://www.aliyundrive.com/s/dCTAQ2TUf1n/folder/645ba82aedd0ace5aa644c1e9a8a3943ede23597"));
        Result result = new Gson().fromJson(content, Result.class);
        String id = result.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
        System.out.println(upyun.playerContent("原畫", id, null));
    }
}