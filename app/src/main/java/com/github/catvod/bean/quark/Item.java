package com.github.catvod.bean.quark;

import android.text.TextUtils;

import com.github.catvod.utils.Utils;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;

import java.util.Arrays;
import java.util.Collections;

import java.util.List;

public class Item {

    @SerializedName("list")
    private List<Item> items;
    @SerializedName("share")
    private Share share;
    @SerializedName("is_owner")
    private int isOwner;
    @SerializedName("fid")
    private String fileId;
    @SerializedName("share_id")
    private String shareId;
    @SerializedName("file_name")
    private String name;
    @SerializedName("format_type")
    private String type;
    @SerializedName("obj_category")
    private String category;
    @SerializedName("size")
    private double size;
    @SerializedName("parent")
    private String parent;
    @SerializedName("pdir_fid")
    private String parentFileId;
    @SerializedName("dir")
    private boolean dir;
    @SerializedName("thumbnail")
    private String thumbnail;
    @SerializedName("share_fid_token")
    private String shareFidToken;

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public void setShare(Share share) {
        this.share = share;
    }

    public int getIsOwner() {
        return isOwner;
    }

    public void setIsOwner(int isOwner) {
        this.isOwner = isOwner;
    }

    public void setFileId(String fileId) {
        this.fileId = fileId;
    }

    public void setShareId(String shareId) {
        this.shareId = shareId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setSize(double size) {
        this.size = size;
    }

    public void setParent(String parent) {
        this.parent = parent;
    }

    public void setParentFileId(String parentFileId) {
        this.parentFileId = parentFileId;
    }

    public void setDir(boolean dir) {
        this.dir = dir;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public void setShareFidToken(String shareFidToken) {
        this.shareFidToken = shareFidToken;
    }

    public static Item objectFrom(String str) throws Exception {
        return new Gson().fromJson(str, Item.class);
    }

    public Item(String fileId) {
        this.fileId = fileId;
    }

    public List<Item> getItems() {
        return items == null ? Collections.emptyList() : items;
    }

    public String getFileId() {
        return TextUtils.isEmpty(fileId) ? "" : fileId;
    }

    public String getName() {
        return TextUtils.isEmpty(name) ? "" : name;
    }

    public String getType() {
        return TextUtils.isEmpty(type) ? "" : type;
    }

    public String getExt() {
        return getName().indexOf(".") > 0 ? getName().substring(getName().lastIndexOf(".")+1):"";
    }

    public String getCategory() {
        return TextUtils.isEmpty(category) ? "" : category;
    }

    public String getSize() {
        return size == 0 ? "" : "[" + Utils.getSize(size) + "]";
    }

    public String getParent() {
        return TextUtils.isEmpty(parent) ? "" : "[" + parent + "]";
    }

    public Item parent(String parent) {
        this.parent = parent;
        return this;
    }

    public String getDisplayName() {
        return TextUtils.join(" ", Arrays.asList(getParent(), getName(), getSize())).trim();
    }

    public String removeExt() {
        return getName().indexOf(".") > 0 ? getName().substring(0, getName().lastIndexOf(".")) : getName();
    }

    public String getParentFileId() {
        return parentFileId;
    }

    public boolean getDir() {
        return dir;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public static final class Share {
        @SerializedName("title")
        private String title;
        @SerializedName("share_id")
        private String shareId;
        @SerializedName("pwd_id")
        private String pwdId;

        public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getShareId() {
            return shareId;
        }

        public void setShareId(String shareId) {
            this.shareId = shareId;
        }

        public String getPwdId() {
            return pwdId;
        }

        public void setPwdId(String pwdId) {
            this.pwdId = pwdId;
        }
    }

    public Share getShare() {
        return share;
    }

    public String getShareId() {
        return getShare().shareId;
    }

    public boolean isDir() {
        return dir;
    }

    public String getShareFidToken() {
        return shareFidToken;
    }

}
