package com.github.catvod.bean.quark;

import com.github.catvod.utils.Path;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.SerializedName;

import java.util.Date;

public class Auth {

    @SerializedName("cookie")
    private String cookie;
    @SerializedName("pdir_fid")
    private String pdirFid;
    @SerializedName("cookie_time")
    private String cookieTime;
    @SerializedName("last_update_time")
    private String lastUpdateTime;

    public void setCookie(String cookie) {
        this.cookie = cookie;
    }

    public void setPdirFid(String pdirFid) {
        this.pdirFid = pdirFid;
    }

    public void setCookieTime(String cookieTime) {
        this.cookieTime = cookieTime;
    }

    public void setLastUpdateTime(String lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }

    public static Auth objectFrom(String str) {
        if (str.endsWith("_user")) {
            str = Path.read(Path.tv(str));
        }
        Auth item = new Gson().fromJson(str, Auth.class);
        return item == null ? new Auth() : item;
    }

    public void save(String name) {
        setLastUpdateTime(String.valueOf(new Date().getTime()));
        Path.write(Path.tv(name),new GsonBuilder().disableHtmlEscaping().create().toJson(this));
    }

    public String getCookie() {
        return cookie;
    }

    public String getPdirFid() {
        return pdirFid;
    }

    public String getCookieTime() {
        return cookieTime;
    }

    public String getLastUpdateTime() {
        return lastUpdateTime;
    }
}
