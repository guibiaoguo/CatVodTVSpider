package com.guibiaoguo.myapplication;

import android.text.TextUtils;

import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.security.MessageDigest;

public class JadiText {

    @Test
    public void vod() {
        System.out.println(TextUtils.isEmpty(""));
        System.out.println(d("49"));
        System.out.println(a(new byte[]{3, 9, -35, -31, -95, -17, -120}, new byte[]{64, 115, -82, Byte.MIN_VALUE, -47, -97, -41, 123}));
        System.out.println(a(new byte[]{3, 9, -35, -31, -95, -17, -120}, new byte[]{64, 115, -82, Byte.MIN_VALUE, -47, -97, -41, 123}));
        System.out.println(a(new byte[]{16, -45, -86, 118, -113, -61}, new byte[]{67, -125, -103, 64, -65, -100, -85, 8}));
        System.out.println(a(new byte[]{-64, 84, 66, 2}, new byte[]{-116, 61, 32, 93, -121, -60, 44, 115}));
        System.out.println(a(new byte[]{-58, 2, 111, 59, 23, 17}, new byte[]{-121, 119, 10, 79, 114, 78, -90, 66}));
        System.out.println(a(new byte[]{63, -106, -43, 20, -78, -54, 114, 86}, new byte[]{116, -29, -69, 109, -57, -3, 69, 9}));
        System.out.println(a(new byte[]{92, -16, 113, 39, -37}, new byte[]{24, -108, 8, 84, -124, -62, 109, -103}));
        System.out.println(a(new byte[]{104, -107, 76, -112, 32, -90}, new byte[]{41, -27, 60, -60, 116, -7, 110, -11}));
        System.out.println(a(new byte[]{108, -53, 97, 38, -3, -56, 4}, new byte[]{47, -92, 10, 67, -112, -66, 91, -39}));
        System.out.println(a(new byte[]{-56, -31, 42, 103, 93, 103}, new byte[]{-116, -104, 31, 82, 104, 56, 37, -83}));
        System.out.println(a(new byte[]{-76, 125, -95, 24, 73}, new byte[]{-8, 26, -40, 97, 22, 20, -45, -29}));
        System.out.println(a(new byte[]{97, -122, -48, 86, -67, 51, -84, -120, 72, -80}, new byte[]{45, -17, -92, 51, -4, 67, -36, -28}));
        System.out.println(a(new byte[]{-46, 117, -23, -36, 67, -112, 115, 46}, new byte[]{-103, 0, -120, -75, 40, -15, 29, 113}));
        System.out.println(a(new byte[]{-47, 88, 77, 113, -75}, new byte[]{-104, 19, 44, 31, -22, 116, -126, 84}));
        System.out.println(a(new byte[]{-122, -94, 6, -62, -102, 21}, new byte[]{-33, -53, 119, -85, -15, 74, 112, 88}));
        System.out.println(a(new byte[]{26, 104, 109, -123, 111, 15}, new byte[]{66, 1, 12, -22, 7, 80, -26, -27}));
        System.out.println(d("49"));
        System.out.println(md5(a(new byte[]{3, 9, -35, -31, -95, -17, -120}, new byte[]{64, 115, -82, Byte.MIN_VALUE, -47, -97, -41, 123})));
        System.out.println(md5(a(new byte[]{3, 9, -35, -31, -95, -17, -120}, new byte[]{64, 115, -82, Byte.MIN_VALUE, -47, -97, -41, 123})));
        System.out.println(md5(a(new byte[]{16, -45, -86, 118, -113, -61}, new byte[]{67, -125, -103, 64, -65, -100, -85, 8})));
        System.out.println(md5(a(new byte[]{-64, 84, 66, 2}, new byte[]{-116, 61, 32, 93, -121, -60, 44, 115})));
        System.out.println(md5(a(new byte[]{-58, 2, 111, 59, 23, 17}, new byte[]{-121, 119, 10, 79, 114, 78, -90, 66})));
        System.out.println(md5(a(new byte[]{63, -106, -43, 20, -78, -54, 114, 86}, new byte[]{116, -29, -69, 109, -57, -3, 69, 9})));
        System.out.println(md5(a(new byte[]{92, -16, 113, 39, -37}, new byte[]{24, -108, 8, 84, -124, -62, 109, -103})));
        System.out.println(md5(a(new byte[]{104, -107, 76, -112, 32, -90}, new byte[]{41, -27, 60, -60, 116, -7, 110, -11})));
        System.out.println(md5(a(new byte[]{108, -53, 97, 38, -3, -56, 4}, new byte[]{47, -92, 10, 67, -112, -66, 91, -39})));
        System.out.println(md5(a(new byte[]{-56, -31, 42, 103, 93, 103}, new byte[]{-116, -104, 31, 82, 104, 56, 37, -83})));
        System.out.println(md5(a(new byte[]{-76, 125, -95, 24, 73}, new byte[]{-8, 26, -40, 97, 22, 20, -45, -29})));
        System.out.println(md5(a(new byte[]{97, -122, -48, 86, -67, 51, -84, -120, 72, -80}, new byte[]{45, -17, -92, 51, -4, 67, -36, -28})));
        System.out.println(md5(a(new byte[]{-46, 117, -23, -36, 67, -112, 115, 46}, new byte[]{-103, 0, -120, -75, 40, -15, 29, 113})));
        System.out.println(md5(a(new byte[]{-47, 88, 77, 113, -75}, new byte[]{-104, 19, 44, 31, -22, 116, -126, 84})));
        System.out.println(md5(a(new byte[]{-122, -94, 6, -62, -102, 21}, new byte[]{-33, -53, 119, -85, -15, 74, 112, 88})));
        System.out.println(md5(a(new byte[]{26, 104, 109, -123, 111, 15}, new byte[]{66, 1, 12, -22, 7, 80, -26, -27})));
        System.out.println(d("273E4F"));

        }

    private static final String KEY = "jzzuLX";
    private static final String hexString = "0123456789ABCDEF";

    public static String d(String str) {
        ByteArrayOutputStream baos = new ByteArrayOutputStream(str.length() / 2);
        for (int i = 0; i < str.length(); i += 2) {
            baos.write((hexString.indexOf(str.charAt(i)) << 4) | hexString.indexOf(str.charAt(i + 1)));
        }
        byte[] b = baos.toByteArray();
        int len = b.length;
        int keyLen = KEY.length();
        for (int i2 = 0; i2 < len; i2++) {
            b[i2] = (byte) (b[i2] ^ KEY.charAt(i2 % keyLen));
        }
        return new String(b);
    }

    public static String a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int length2 = bArr2.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            if (i2 >= length2) {
                i2 = 0;
            }
            bArr[i] = (byte) (bArr[i] ^ bArr2[i2]);
            i++;
            i2++;
        }
        return new String(bArr);
    }

    public static String md5(String str) {
        try {
            StringBuilder sb = new StringBuilder(new BigInteger(1, MessageDigest.getInstance(d("273E4F")).digest(str.getBytes(d("3F2E3C5874")))).toString(16));
            while (sb.length() < 32) {
                sb.insert(0, d("5A"));
            }
            return sb.toString().toLowerCase();
        } catch (Exception unused) {
            return "";
        }
    }

}
