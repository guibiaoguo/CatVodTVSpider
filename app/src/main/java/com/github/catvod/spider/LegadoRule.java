package com.github.catvod.spider;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Filter;
import com.google.gson.annotations.SerializedName;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

public class LegadoRule {

    @SerializedName("class")
    private List<Class> classes;

    @SerializedName("filters")
    private LinkedHashMap<String, List<Filter>> filters;

    /**
     * 获取分类和首页推荐的Url
     */
    @SerializedName("home_url")
    private String homeUrl;

    @SerializedName("type_node")
    private String typeNode;
    /**
     * 分类节点名
     */
    @SerializedName("type_name")
    private String typeName;
    /**
     * 分类节点id
     */
    @SerializedName("type_id")
    private String typeId;
    /**
     * 分类类型 {folder,file}
     */
    @SerializedName("type_flag")
    private String typeFlag;
    @SerializedName("filter_rule")
    private String filterRule;
    @SerializedName("home_vod_node")
    private String homeVodNode;
    @SerializedName("home_vod_id")
    private String homeVodId;
    @SerializedName("home_vod_name")
    private String homeVodName;
    @SerializedName("home_vod_pic")
    private String homeVodPic;
    @SerializedName("home_vod_remarks")
    private String homeVodRemarks;

    @SerializedName("home_video_url")
    private String homeVideoUrl;

    @SerializedName("cate_url")
    private String cateUrl;

    @SerializedName("page_node")
    private String pageNode;

    @SerializedName("page")
    private String page;

    @SerializedName("page_count")
    private String pageCount;

    @SerializedName("cate_vod_node")
    private String cateVodNode;
    @SerializedName("cate_vod_id")
    private String cateVodId;
    @SerializedName("cate_vod_name")
    private String cateVodName;
    @SerializedName("cate_vod_pic")
    private String cateVodPic;
    @SerializedName("cate_vod_remarks")
    private String cateVodRemarks;
    @SerializedName("cate_vod_tag")
    private String cateVodTag;
    @SerializedName("search_url")
    private String searchUrl;
    @SerializedName("search_vod_node")
    private String searchVodNode;
    @SerializedName("search_vod_id")
    private String searchVodId;
    @SerializedName("search_vod_name")
    private String searchVodName;
    @SerializedName("search_vod_pic")
    private String searchVodPic;
    @SerializedName("search_vod_remarks")
    private String searchVodRemarks;

    @SerializedName("detail_url")
    private String detailUrl;

    @SerializedName("detail_type_name")
    private String detailTypeName;
    @SerializedName("detail_vod_id")
    private String detailVodId;
    @SerializedName("detail_vod_name")
    private String detailVodName;
    @SerializedName("detail_vod_pic")
    private String detailVodPic;
    @SerializedName("detail_vod_remarks")
    private String detailVodRemarks;
    @SerializedName("detail_vod_year")
    private String detailVodYear;
    @SerializedName("detail_vod_area")
    private String detailVodArea;
    @SerializedName("detail_vod_actor")
    private String detailVodActor;
    @SerializedName("detail_vod_director")
    private String detailVodDirector;
    @SerializedName("detail_vod_content")
    private String detailVodContent;
    @SerializedName("detail_vod_play_from")
    private String detailVodPlayFrom;
    @SerializedName("detail_vod_play_url")
    private String detailVodPlayUrl;
    @SerializedName("detail_vod_tag")
    private String detailVodTag;
    @SerializedName("detail_node")
    private String detailNode;

    @SerializedName("vod_play_list")
    private String vodPlayList;

    @SerializedName("vod_play_form")
    private String vodPlayForm;
    @SerializedName("vod_play_name")
    private String vodPlayName;
    @SerializedName("vod_play_url")
    private String vodPlayUrl;

    @SerializedName("play_url")
    private String playUrl;
    @SerializedName("play_sub")
    private String playSub;
    @SerializedName("play_header")
    private HashMap<String, String> playHeader;
    @SerializedName("play_extend_header")
    private String playExtendHeader;

    @SerializedName("detail_file_node")
    private String detailFileNode;
    @SerializedName("detail_file_node_flag")
    private String detailFileNodeFlag;
    @SerializedName("detail_file_node_url")
    private String detailFileNodeUrl;

    @SerializedName("detail_file_node_root")
    private String detailFileNodeRoot;
    @SerializedName("detail_file_node_leaf")
    private String detailFileNodeLeaf;
    @SerializedName("detail_file_node_sub")
    private String detailFileNodeSub;
    @SerializedName("detail_file_node_nfo")
    private String detailFileNodeNfo;
    @SerializedName("detail_file_node_parent")
    private String detailFileNodeParent;
    @SerializedName("detail_file_node_id")
    private String detailFileNodeId;

    @SerializedName("ali_token")
    private String aliToken;

    public List<Class> getClasses() {
        return classes;
    }

    public LinkedHashMap<String, List<Filter>> getFilters() {
        return filters;
    }

    public String getHomeUrl() {
        return homeUrl;
    }

    public String getTypeName() {
        return typeName;
    }

    public String getTypeId() {
        return typeId;
    }

    public String getTypeNode() {
        return typeNode;
    }

    public String getHomeVodNode() {
        return homeVodNode;
    }

    public String getHomeVodName() {
        return homeVodName;
    }

    public String getHomeVodId() {
        return homeVodId;
    }

    public String getHomeVodPic() {
        return homeVodPic;
    }

    public String getHomeVodRemarks() {
        return homeVodRemarks;
    }

    public String getHomeVideoUrl() {
        return homeVideoUrl;
    }

    public String getCateUrl() {
        return cateUrl;
    }

    public String getPageNode() {
        return pageNode;
    }

    public String getPage() {
        return page;
    }

    public String getPageCount() {
        return pageCount;
    }

    public String getCateVodNode() {
        return cateVodNode;
    }

    public String getCateVodId() {
        return cateVodId;
    }

    public String getCateVodName() {
        return cateVodName;
    }

    public String getCateVodPic() {
        return cateVodPic;
    }

    public String getCateVodRemarks() {
        return cateVodRemarks;
    }

    public String getSearchUrl() {
        return searchUrl;
    }

    public String getSearchVodNode() {
        return searchVodNode;
    }

    public String getSearchVodId() {
        return searchVodId;
    }

    public String getSearchVodName() {
        return searchVodName;
    }

    public String getSearchVodPic() {
        return searchVodPic;
    }

    public String getSearchVodRemarks() {
        return searchVodRemarks;
    }

    public String getDetailUrl() {
        return detailUrl;
    }

    public String getDetailTypeName() {
        return detailTypeName;
    }

    public String getDetailVodId() {
        return detailVodId;
    }

    public String getDetailVodName() {
        return detailVodName;
    }

    public String getDetailVodPic() {
        return detailVodPic;
    }

    public String getDetailVodRemarks() {
        return detailVodRemarks;
    }

    public String getDetailVodYear() {
        return detailVodYear;
    }

    public String getDetailVodArea() {
        return detailVodArea;
    }

    public String getDetailVodActor() {
        return detailVodActor;
    }

    public String getDetailVodDirector() {
        return detailVodDirector;
    }

    public String getDetailVodContent() {
        return detailVodContent;
    }

    public String getDetailVodPlayFrom() {
        return detailVodPlayFrom;
    }

    public String getDetailVodPlayUrl() {
        return detailVodPlayUrl;
    }

    public String getDetailVodTag() {
        return detailVodTag;
    }

    public String getDetailNode() {
        return detailNode;
    }

    public String getVodPlayForm() {
        return vodPlayForm;
    }

    public String getVodPlayName() {
        return vodPlayName;
    }

    public String getVodPlayUrl() {
        return vodPlayUrl;
    }

    public String getPlayUrl() {
        return playUrl;
    }

    public String getPlaySub() {
        return playSub;
    }

    public HashMap<String, String> getPlayHeader() {
        return playHeader;
    }

    public String getPlayExtendHeader() {
        return playExtendHeader;
    }

    public String getDetailFileNode() {
        return detailFileNode;
    }

    public String getDetailFileNodeFlag() {
        return detailFileNodeFlag;
    }

    public String getDetailFileNodeUrl() {
        return detailFileNodeUrl;
    }

    public String getDetailFileNodeRoot() {
        return detailFileNodeRoot;
    }

    public String getDetailFileNodeLeaf() {
        return detailFileNodeLeaf;
    }

    public String getDetailFileNodeSub() {
        return detailFileNodeSub;
    }

    public String getDetailFileNodeParent() {
        return detailFileNodeParent;
    }

    public String getDetailFileNodeId() {
        return detailFileNodeId;
    }

    public void setClasses(List<Class> classes) {
        this.classes = classes;
    }

    public void setFilters(LinkedHashMap<String, List<Filter>> filters) {
        this.filters = filters;
    }

    public void setHomeUrl(String homeUrl) {
        this.homeUrl = homeUrl;
    }

    public void setTypeNode(String typeNode) {
        this.typeNode = typeNode;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public void setHomeVodNode(String homeVodNode) {
        this.homeVodNode = homeVodNode;
    }

    public void setHomeVodId(String homeVodId) {
        this.homeVodId = homeVodId;
    }

    public void setHomeVodName(String homeVodName) {
        this.homeVodName = homeVodName;
    }

    public void setHomeVodPic(String homeVodPic) {
        this.homeVodPic = homeVodPic;
    }

    public void setHomeVodRemarks(String homeVodRemarks) {
        this.homeVodRemarks = homeVodRemarks;
    }

    public void setHomeVideoUrl(String homeVideoUrl) {
        this.homeVideoUrl = homeVideoUrl;
    }

    public void setCateUrl(String cateUrl) {
        this.cateUrl = cateUrl;
    }

    public void setPageNode(String pageNode) {
        this.pageNode = pageNode;
    }

    public void setPage(String page) {
        this.page = page;
    }

    public void setPageCount(String pageCount) {
        this.pageCount = pageCount;
    }

    public void setCateVodNode(String cateVodNode) {
        this.cateVodNode = cateVodNode;
    }

    public void setCateVodId(String cateVodId) {
        this.cateVodId = cateVodId;
    }

    public void setCateVodName(String cateVodName) {
        this.cateVodName = cateVodName;
    }

    public void setCateVodPic(String cateVodPic) {
        this.cateVodPic = cateVodPic;
    }

    public void setCateVodRemarks(String cateVodRemarks) {
        this.cateVodRemarks = cateVodRemarks;
    }

    public void setSearchUrl(String searchUrl) {
        this.searchUrl = searchUrl;
    }

    public void setSearchVodNode(String searchVodNode) {
        this.searchVodNode = searchVodNode;
    }

    public void setSearchVodId(String searchVodId) {
        this.searchVodId = searchVodId;
    }

    public void setSearchVodName(String searchVodName) {
        this.searchVodName = searchVodName;
    }

    public void setSearchVodPic(String searchVodPic) {
        this.searchVodPic = searchVodPic;
    }

    public void setSearchVodRemarks(String searchVodRemarks) {
        this.searchVodRemarks = searchVodRemarks;
    }

    public void setDetailUrl(String detailUrl) {
        this.detailUrl = detailUrl;
    }

    public void setDetailTypeName(String detailTypeName) {
        this.detailTypeName = detailTypeName;
    }

    public void setDetailVodId(String detailVodId) {
        this.detailVodId = detailVodId;
    }

    public void setDetailVodName(String detailVodName) {
        this.detailVodName = detailVodName;
    }

    public void setDetailVodPic(String detailVodPic) {
        this.detailVodPic = detailVodPic;
    }

    public void setDetailVodRemarks(String detailVodRemarks) {
        this.detailVodRemarks = detailVodRemarks;
    }

    public void setDetailVodYear(String detailVodYear) {
        this.detailVodYear = detailVodYear;
    }

    public void setDetailVodArea(String detailVodArea) {
        this.detailVodArea = detailVodArea;
    }

    public void setDetailVodActor(String detailVodActor) {
        this.detailVodActor = detailVodActor;
    }

    public void setDetailVodDirector(String detailVodDirector) {
        this.detailVodDirector = detailVodDirector;
    }

    public void setDetailVodContent(String detailVodContent) {
        this.detailVodContent = detailVodContent;
    }

    public void setDetailVodPlayFrom(String detailVodPlayFrom) {
        this.detailVodPlayFrom = detailVodPlayFrom;
    }

    public void setDetailVodPlayUrl(String detailVodPlayUrl) {
        this.detailVodPlayUrl = detailVodPlayUrl;
    }

    public void setDetailVodTag(String detailVodTag) {
        this.detailVodTag = detailVodTag;
    }

    public void setDetailNode(String detailNode) {
        this.detailNode = detailNode;
    }

    public void setVodPlayForm(String vodPlayForm) {
        this.vodPlayForm = vodPlayForm;
    }

    public void setVodPlayName(String vodPlayName) {
        this.vodPlayName = vodPlayName;
    }

    public void setVodPlayUrl(String vodPlayUrl) {
        this.vodPlayUrl = vodPlayUrl;
    }

    public void setPlayUrl(String playUrl) {
        this.playUrl = playUrl;
    }

    public void setPlaySub(String playSub) {
        this.playSub = playSub;
    }

    public void setPlayHeader(HashMap<String, String> playHeader) {
        this.playHeader = playHeader;
    }

    public void setPlayExtendHeader(String playExtendHeader) {
        this.playExtendHeader = playExtendHeader;
    }

    public void setDetailFileNode(String detailFileNode) {
        this.detailFileNode = detailFileNode;
    }

    public void setDetailFileNodeFlag(String detailFileNodeFlag) {
        this.detailFileNodeFlag = detailFileNodeFlag;
    }

    public void setDetailFileNodeUrl(String detailFileNodeUrl) {
        this.detailFileNodeUrl = detailFileNodeUrl;
    }

    public void setDetailFileNodeRoot(String detailFileNodeRoot) {
        this.detailFileNodeRoot = detailFileNodeRoot;
    }

    public void setDetailFileNodeLeaf(String detailFileNodeLeaf) {
        this.detailFileNodeLeaf = detailFileNodeLeaf;
    }

    public void setDetailFileNodeSub(String detailFileNodeSub) {
        this.detailFileNodeSub = detailFileNodeSub;
    }

    public void setDetailFileNodeParent(String detailFileNodeParent) {
        this.detailFileNodeParent = detailFileNodeParent;
    }

    public void setDetailFileNodeId(String detailFileNodeId) {
        this.detailFileNodeId = detailFileNodeId;
    }

    public String getDetailFileNodeNfo() {
        return detailFileNodeNfo;
    }

    public void setDetailFileNodeNfo(String detailFileNodeNfo) {
        this.detailFileNodeNfo = detailFileNodeNfo;
    }

    public String getCateVodTag() {
        return cateVodTag;
    }

    public void setCateVodTag(String cateVodTag) {
        this.cateVodTag = cateVodTag;
    }

    public String getTypeFlag() {
        return typeFlag;
    }

    public void setTypeFlag(String typeFlag) {
        this.typeFlag = typeFlag;
    }

    public String getVodPlayList() {
        return vodPlayList;
    }

    public void setVodPlayList(String vodPlayList) {
        this.vodPlayList = vodPlayList;
    }

    public String getAliToken() {
        return aliToken;
    }

    public void setAliToken(String aliToken) {
        this.aliToken = aliToken;
    }
}
