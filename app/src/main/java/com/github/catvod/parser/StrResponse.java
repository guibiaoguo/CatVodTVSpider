package com.github.catvod.parser;

import java.io.InputStream;

import cn.hutool.core.lang.Console;
import cn.hutool.core.util.StrUtil;
import okhttp3.Headers;
import okhttp3.Response;
import okhttp3.ResponseBody;

public class StrResponse {

    private final Response raw;
    private final String charset;

    private String body;


    public StrResponse(Response raw, String charset) {
        this.raw = raw;
        this.charset = charset;
    }

    public String body() {
        if (raw == null) {
            return "";
        }
        try {
            ResponseBody responseBody = raw.body();
            byte[] bytes = raw.body().bytes();
            if (StrUtil.isEmpty(charset))
                body = StrUtil.str(bytes,"utf-8");
            else
                body = StrUtil.str(bytes, charset);
            if (StrUtil.contains(body,'�')) {
                body = StrUtil.str(bytes,"gbk");
            }
            return body;
        } catch (Exception e) {
            Console.log(e.getLocalizedMessage());
            return body;
        } finally {
            if (raw != null) {
                raw.close();
                raw.body().close();
            }
        }
    }

    public int code() {
        return raw.code();
    }

    public String message() {
        return raw.message();
    }

    public Headers header() {
        return raw.headers();
    }

    public Response raw() {
        return raw;
    }

    public InputStream stream() {
        return raw.body().byteStream();
    }

    public String toString() {
        return raw.toString();
    }

    public String url() {
        if (raw.networkResponse() != null) {
            return raw.networkResponse().request().url().toString();
        } else {
            return raw.request().url().toString();
        }
    }
}
