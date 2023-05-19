package com.github.catvod.utils;

import com.github.catvod.crawler.SpiderDebug;

import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class CipherUtil {

    public static String J(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        try {
            byte[] rl = rl(str);
            Cipher g = g(2, str2);
            if (g != null) {
                return new String(g.doFinal(rl), "UTF-8");
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static String dV(String str, String str2) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        try {
            Cipher g = g(1, str2);
            if (g == null) {
                return null;
            }
            return l(g.doFinal(str.getBytes("UTF-8")));
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    private static Cipher g(int i, String str) {
        try {
            SecretKey generateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(str.getBytes()));
            Cipher instance = Cipher.getInstance("DES/ECB/PKCS5Padding");
            instance.init(i, generateSecret);
            return instance;
        } catch (Exception e) {
            SpiderDebug.log(e);
            return null;
        }
    }

    public static String l(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                stringBuffer.append(0);
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString().toLowerCase();
    }

    public static byte[] rl(String str) {
        if (str.length() % 2 == 0) {
            char[] charArray = str.toCharArray();
            byte[] bArr = new byte[str.length() / 2];
            int length = str.length();
            int i = 0;
            int i2 = 0;
            while (i < length) {
                StringBuilder sb = new StringBuilder();
                sb.append("");
                int i3 = i + 1;
                sb.append(charArray[i]);
                sb.append(charArray[i3]);
                bArr[i2] = Integer.valueOf(Integer.parseInt(sb.toString(), 16) & 255).byteValue();
                i = i3 + 1;
                i2++;
            }
            return bArr;
        }
        throw new IllegalArgumentException("invalid hex string");
    }


    public static String aes5(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(2, secretKeySpec, ivParameterSpec);
            try {
                return new String(instance.doFinal(bArr));
            } catch (Exception e) {
                SpiderDebug.log(e);
                return null;
            }
        } catch (Exception e2) {
            SpiderDebug.log(e2);
            return null;
        }
    }

    public static String md5(String str, Charset charset) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes(charset));
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() < 2) {
                    sb.append(0);
                }
                sb.append(hexString);
            }
            return sb.toString().toLowerCase();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String aes1(String str, String str2) {
        try {
            int i = 0;
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(2, (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0))));
            byte[] decode = Base64.decode(str2, 0);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            if (decode.length <= 256) {
                byteArrayOutputStream.write(instance.doFinal(decode));
            } else {
                int length = decode.length;
                while (i < length) {
                    int i2 = i + 256;
                    byteArrayOutputStream.write(instance.doFinal(decode, i, i2 > length ? length - i : 256));
                    i = i2;
                }
            }
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
        } catch (Exception unused) {
            return "";
        }
    }
}
