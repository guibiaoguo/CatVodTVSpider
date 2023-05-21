package com.github.catvod.utils;

import java.nio.charset.Charset;

public class MD5Utils {

    public static String md5Encode(String src, Charset charset) {
        return null;
    }

    public static String md5Encode16(String src, Charset charset) {
        String code = md5Encode(src, charset);
        if (code != null) {
            return code.substring(8, 24);
        }
        return null;
    }
}
