package com.github.catvod.parser;

import com.google.gson.annotations.SerializedName;

import java.util.Map;

public class UrlOption {
    @SerializedName("method")
    private String method;
    @SerializedName("headers")
    private Map<String, String> headers;
    @SerializedName("body")
    private Object body;
    @SerializedName("type")
    private String type;
    @SerializedName("charset")
    private String charset;
    @SerializedName("retry")
    private int retry;
    @SerializedName("js")
    private String js;

    public String getCharset() {
        return charset;
    }

    public String getMethod() {
        return method;
    }

    public Map<String, String> getHeaders() {
        return headers;
    }

    public Object getBody() {
        return body;
    }

    public String getType() {
        return type;
    }

    public int getRetry() {
        return retry;
    }

    public String getJs() {
        return js;
    }
}
