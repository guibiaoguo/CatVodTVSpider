package com.github.catvod.bean.quark;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;

public class QuarkData {

    @SerializedName("metadata")
    private Metadata metadata;
    @SerializedName("code")
    private int code;
    @SerializedName("data")
    private Item data;
    @SerializedName("message")
    private String message;
    @SerializedName("status")
    private int status;
    @SerializedName("timestamp")
    private int timestamp;

    public void setMetadata(Metadata metadata) {
        this.metadata = metadata;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setData(Item data) {
        this.data = data;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setTimestamp(int timestamp) {
        this.timestamp = timestamp;
    }

    public static QuarkData objectFrom(String str) {
        return new Gson().fromJson(str, QuarkData.class);
    }

    public Metadata getMetadata() {
        return metadata;
    }

    public int getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }

    public int getStatus() {
        return status;
    }

    public int getTimestamp() {
        return timestamp;
    }

    public Item getData() {
        return data;
    }

    public static final class Metadata {
        @SerializedName("_page")
        private int page;
        @SerializedName("_size")
        private int size;
        @SerializedName("_count")
        private int count;
        @SerializedName("_total")
        private int total;

        public int getPage() {
            return page;
        }

        public void setPage(int page) {
            this.page = page;
        }

        public int getSize() {
            return size;
        }

        public void setSize(int size) {
            this.size = size;
        }

        public int getCount() {
            return count;
        }

        public void setCount(int count) {
            this.count = count;
        }

        public int getTotal() {
            return total;
        }

        public void setTotal(int total) {
            this.total = total;
        }
    }
}
