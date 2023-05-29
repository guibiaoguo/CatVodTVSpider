package com.github.catvod.parser;

import cn.hutool.core.lang.Console;
import cn.hutool.core.util.StrUtil;
import okhttp3.Headers;
import okhttp3.Response;

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
            if (StrUtil.isEmpty(charset))
                body = StrUtil.str(raw.body().bytes(),"utf-8");
            else
                body = StrUtil.str(raw.body().bytes(), charset);
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

    public String toString() {
        return raw.toString();
    }

}
