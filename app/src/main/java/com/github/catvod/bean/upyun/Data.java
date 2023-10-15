package com.github.catvod.bean.upyun;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.Collections;
import java.util.List;

public class Data {

    @SerializedName("result")
    private Data result;
    @SerializedName("items")
    private List<Item> items;

    public static Data objectFrom(String str) {
        Type listType = new TypeToken<Data>() {}.getType();
        return new Gson().fromJson(str, listType);
    }

    public Data getResult() {
        return result == null ? new Data() : result;
    }

    public List<Item> getItems() {
        return items == null ? Collections.emptyList() : items;
    }
}
