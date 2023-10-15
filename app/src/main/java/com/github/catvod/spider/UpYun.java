package com.github.catvod.spider;

import android.content.Context;

import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.bean.upyun.Data;
import com.github.catvod.bean.upyun.Item;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.net.OkHttp;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.StringUtil;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import cn.hutool.crypto.symmetric.AES;

public class UpYun extends Ali {

    @Override
    public void init(Context context, String extend) {
        super.init(context, extend);
    }

    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        String content = OkHttp.string("https://zyb.upyunso.com/v15/search?keyword=" + URLEncoder.encode(key) + "&page=1&s_type=2");
//        String content = OkHttp.string("https://upapi.juapp9.com/search?keyword=" + URLEncoder.encode(key) + "&page=1&s_type=2");
        String res = decrypt(content);
//        String res = new String(Base64.decode(content,1));
        List<Vod> list = new ArrayList<>();
        for (Item item : Data.objectFrom(res).getResult().getItems()) {
            String url = decrypt(item.getPageUrl());
//            String url = item.getPageUrl();
            if (!url.contains("www.aliyundrive.com")) continue;
            if (item.getTitle().contains(key)) list.add(item.url(url).getVod());
        }
        return Result.string(list);
    }

    private String decode(String data) throws Exception {
        SecretKeySpec keySpec = new SecretKeySpec("qq1920520460qqzz".getBytes(), "AES");
        IvParameterSpec ivSpec = new IvParameterSpec("qq1920520460qqzz".getBytes());
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(Cipher.DECRYPT_MODE, keySpec, ivSpec);
        byte[] encryptDataBytes = Base64.decode(data.toUpperCase(),Base64.NO_WRAP);
        byte[] decryptData = cipher.doFinal(encryptDataBytes);
        return new String(decryptData, "UTF-8");
    }

    public String decrypt(String str) {
        try {
            AES aes = new AES("CBC", "PKCS7Padding",
                    // 密钥，可以自定义
                    "qq1920520460qqzz".getBytes(),
                    // iv加盐，按照实际需求添加
                    "qq1920520460qqzz".getBytes());

// 解密
            String decryptStr = aes.decryptStr(str);
//            SecretKeySpec key = new SecretKeySpec("4OToScUFOaeVTrHE".getBytes("UTF-8"), "AES");
//            IvParameterSpec iv = new IvParameterSpec("9CLGao1vHKqm17Oz".getBytes("UTF-8"));
//            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
//            cipher.init(Cipher.DECRYPT_MODE, key, iv);
//            return new String(cipher.doFinal(Base64.decode(str.getBytes(), 0)), "UTF-8");
            return decryptStr;
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }
}