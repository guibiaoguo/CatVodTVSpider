package com.github.catvod.parser;

import org.apache.commons.lang3.StringUtils;

import java.io.IOException;

import okhttp3.Headers;
import okhttp3.Response;

public class StrResponse {

    private Response raw;
    private String body;
    private int code;
    private String charset;

    public StrResponse(Response raw, String charset) {
        this.raw = raw;
        this.charset = charset;
    }

    public String body() {
        try {
            if (StringUtils.isEmpty(charset))
                return new String(raw.body().bytes(),"utf-8");
            else
                return new String(raw.body().bytes(),charset);
        } catch (IOException e) {
            return "";
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
