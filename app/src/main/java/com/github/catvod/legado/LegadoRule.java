package com.github.catvod.legado;

import com.github.catvod.crawler.SpiderDebug;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.Iterator;
import java.util.LinkedHashMap;


public class LegadoRule {
    /**
     * user-agent
     */
    private String ua;
    /**
     * 获取分类和首页推荐的Url
     */
    private String homeUrl;
    /**
     * 分类节点 xpath
     */
    private String cateNode;
    /**
     * 分类节点名 xpath
     */
    private String cateName;
    /**
     * 分类节点id xpath
     */
    private String cateId;
    /**
     * 手动指定 分类 如果有则不从homeUrl中获取分类
     */
    private LinkedHashMap<String, String> cateManual = new LinkedHashMap<>();

    /**
     * 筛选
     */
    private JSONObject filter;

    /**
     * 更新推荐视频节点 xpath
     */
    private String homeVodNode;
    /**
     * 更新推荐视频名称 xpath
     */
    private String homeVodName;

    /**
     * 更新推荐视频id xpath
     */
    private String homeVodId;
    /**
     * 更新推荐视频图片 xpath
     */
    private String homeVodImg;

    /**
     * 更新推荐视频简介 xpath
     */
    private String homeVodMark;

    /**
     * 分类页地址
     */
    private String cateUrl;
    /**
     * 分类叶视频节点 xpath
     */
    private String cateVodNode;
    /**
     * 分类叶视频名称 xpath
     */
    private String cateVodName;

    /**
     * 分类叶视频视频id xpath
     */
    private String cateVodId;

    /**
     * 分类叶视频视频图片 xpath
     */
    private String cateVodImg;

    /**
     * 分类叶视频视频简介 xpath
     */
    private String cateVodMark;

    /**
     * 详情页面
     */
    private String dtUrl;
    /**
     * 详情节点 xpath
     */
    private String dtNode;
    /**
     * 详情 视频名 xpath
     */
    private String dtName;

    /**
     * 详情视频图片 xpath
     */
    private String dtImg;

    /**
     * 详情视频分类 xpath
     */
    private String dtCate;

    /**
     * 详情视频年份 xpath
     */
    private String dtYear;

    /**
     * 详情视频地区 xpath
     */
    private String dtArea;

    /**
     * 详情视频简介 xpath
     */
    private String dtMark;

    /**
     * 详情演员 xpath
     */
    private String dtActor;

    /**
     * 详情导演 xpath
     */
    private String dtDirector;

    /**
     * 详情 说明 长  xpath
     */
    private String dtDesc;


    /**
     * 详情播放来源节点
     */
    private String dtFromNode;
    /**
     * 详情播放来源名称 xpath
     */
    private String dtFromName;

    /**
     * 详情播放地址列表节点  xpath
     */
    private String dtUrlNode;
    /**
     * 详情播放地址节点  xpath
     */
    private String dtUrlSubNode;
    /**
     * 详情播放地址id  xpath
     */
    private String dtUrlId;

    /**
     * 详情播放地址名称  xpath
     */
    private String dtUrlName;

    /**
     * 播放页面url
     */
    private String playUrl;
    /**
     * 播放解析调用ua
     */
    private String playUa;

    /**
     * 搜索页地址
     */
    private String searchUrl;

    /**
     * 搜索页视频节点 xpath
     */
    private String scVodNode;
    /**
     * 搜索页视频名称 xpath
     */
    private String scVodName;

    /**
     * 搜索页视频id xpath
     */
    private String scVodId;

    /**
     * 搜索页视频图片 xpath
     */
    private String scVodImg;

    /**
     * 搜索页视频简介 xpath
     */
    private String scVodMark;

    private String leaf;

    private String node;

    private String leafValue;

    private String nodeValue;

    private String defaultFrom;

    private String nodeUrl;

    private String itemUrlNode;

    private String itemUrlName;

    private String itemUrlId;

    /**
     * 正则对取到的数据进行二次处理
     */
    private String cateNameR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String cateIdR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String homeVodNameR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String homeVodIdR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String homeVodImgR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String homeVodMarkR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String cateVodNameR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String cateVodIdR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String cateVodImgR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String cateVodMarkR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String dtNameR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String dtImgR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String dtCateR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String dtYearR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String dtAreaR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String dtMarkR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String dtActorR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String dtDirectorR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String dtDescR;
    /**
     * 详情
     */
    private String dtFromNameR;
    /**
     * 详情
     */
    private String dtUrlIdR;
    /**
     * 详情
     */
    private String dtUrlNameR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String scVodNameR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String scVodIdR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String scVodImgR;
    /**
     * 正则对取到的数据进行二次处理
     */
    private String scVodMarkR;

    private boolean decodeFlag;

    private String decodePlay;

    private String scPage;

    private Integer parse;

    private Integer jx;

    private Boolean decodeVipFlag;

    private Boolean decodeSCFlag;

    private String decodeValue;

    private String actorNfo;
    private String titleNfo;
    private String thumbNfo;
    private String genreNfo;
    private String countryNfo;
    private String directorNfo;
    private String yearNfo;
    private String remarkNfo;
    private String plotNfo;
    private String urlNfo;
    private Boolean nfoFlag;

    public String getUrlNfo() {
        return urlNfo;
    }

    public Boolean getNfoFlag() {
        return nfoFlag;
    }

    public String getActorNfo() {
        return actorNfo;
    }

    public String getTitleNfo() {
        return titleNfo;
    }

    public String getThumbNfo() {
        return thumbNfo;
    }

    public String getGenreNfo() {
        return genreNfo;
    }

    public String getCountryNfo() {
        return countryNfo;
    }

    public String getDirectorNfo() {
        return directorNfo;
    }

    public String getYearNfo() {
        return yearNfo;
    }

    public String getRemarkNfo() {
        return remarkNfo;
    }

    public String getPlotNfo() {
        return plotNfo;
    }

    public Boolean getDecodeSCFlag() {
        return decodeSCFlag;
    }

    public String getDecodeValue() {
        return decodeValue;
    }

    private LinkedHashMap<String, String> infoMap = new LinkedHashMap<>();

    private JSONArray preParamMaps;

    public String getNode() {
        return node;
    }
    private JSONArray homeParamMaps;

    private JSONArray categoryParamMaps;

    private JSONArray detailParamMaps;

    private JSONArray playerParamMaps;

    public JSONArray getHomeParamMaps() {
        return homeParamMaps;
    }

    public JSONArray getPreParamMaps() {
        return preParamMaps;
    }

    public JSONArray getCategoryParamMaps() {
        return categoryParamMaps;
    }

    public JSONArray getDetailParamMaps() {
        return detailParamMaps;
    }

    public JSONArray getPlayerParamMaps() {
        return playerParamMaps;
    }

    public LinkedHashMap<String, String> getInfoMap() {
        return infoMap;
    }

    public Boolean getDecodeVipFlag() {
        return decodeVipFlag;
    }

    public void setDecodeVipFlag(Boolean decodeVipFlag) {
        this.decodeVipFlag = decodeVipFlag;
    }

    public Integer getParse() {
        return parse;
    }

    public Integer getJx() {
        return jx;
    }

    public String getScPage() {
        return scPage;
    }

    public void setScPage(String scPage) {
        this.scPage = scPage;
    }

    public boolean isDecodeFlag() {
        return decodeFlag;
    }

    public void setDecodeFlag(boolean decodeFlag) {
        this.decodeFlag = decodeFlag;
    }

    public String getDecodePlay() {
        return decodePlay;
    }

    public void setDecodePlay(String decodePlay) {
        this.decodePlay = decodePlay;
    }

    public String getNodeUrl() {
        return nodeUrl;
    }

    public void setNodeUrl(String nodeUrl) {
        this.nodeUrl = nodeUrl;
    }

    public String getDefaultFrom() {
        return defaultFrom;
    }

    public void setDefaultFrom(String defaultFrom) {
        this.defaultFrom = defaultFrom;
    }

    public String getNodeValue() {
        return nodeValue;
    }

    public void setNodeValue(String nodeValue) {
        this.nodeValue = nodeValue;
    }

    public String getLeaf() {
        return leaf;
    }

    public void setLeaf(String leaf) {
        this.leaf = leaf;
    }

    public String getLeafValue() {
        return leafValue;
    }

    public void setLeafValue(String leafValue) {
        this.leafValue = leafValue;
    }

    public String getItemUrlNode() {
        return itemUrlNode;
    }

    public String getItemUrlName() {
        return itemUrlName;
    }

    public String getItemUrlId() {
        return itemUrlId;
    }

    public static LegadoRule fromJson(String json) {
        try {
            JSONObject jsonObj = new JSONObject(json);
            LegadoRule rule = new LegadoRule();
            rule.ua = jsonObj.optString("ua");
            rule.homeUrl = jsonObj.optString("homeUrl").trim();
            rule.cateNode = jsonObj.optString("cateNode").trim();
            rule.cateName = jsonObj.optString("cateName").trim();
            rule.cateNameR = jsonObj.optString("cateNameR").trim();
            if(StringUtils.isNotEmpty(rule.cateNameR)) {
                rule.cateName += "##"+rule.cateNameR+"##$1";
            }
            rule.cateId = jsonObj.optString("cateId").trim();
            rule.cateIdR = jsonObj.optString("cateIdR").trim();
            if(StringUtils.isNotEmpty(rule.cateIdR)) {
                rule.cateId += "##"+rule.cateIdR+"##$1";
            }
            JSONObject navs = jsonObj.optJSONObject("cateManual");
            if (navs != null) {
                Iterator<String> keys = navs.keys();
                while (keys.hasNext()) {
                    String name = keys.next();
                    rule.cateManual.put(name.trim(), navs.getString(name).trim());
                }
            }
            rule.filter = jsonObj.optJSONObject("filter");
            rule.homeVodNode = jsonObj.optString("homeVodNode").trim();
            rule.homeVodName = jsonObj.optString("homeVodName").trim();
            rule.homeVodNameR = jsonObj.optString("homeVodNameR").trim();
            if(StringUtils.isNotEmpty(rule.homeVodName)) {
                rule.homeVodName += "##"+rule.homeVodNameR+"##$1";
            }
            rule.homeVodId = jsonObj.optString("homeVodId").trim();
            rule.homeVodIdR = jsonObj.optString("homeVodIdR").trim();
            if(StringUtils.isNotEmpty(rule.homeVodIdR)) {
                rule.homeVodId += "##"+rule.homeVodIdR+"##$1";
            }
            rule.homeVodImg = jsonObj.optString("homeVodImg").trim();
            rule.homeVodImgR = jsonObj.optString("homeVodImgR").trim();
            if(StringUtils.isNotEmpty(rule.homeVodImgR)) {
                rule.homeVodImg += "##"+rule.homeVodImgR+"##$1";
            }
            rule.homeVodMark = jsonObj.optString("homeVodMark").trim();
            rule.homeVodMarkR = jsonObj.optString("homeVodMarkR").trim();
            if(StringUtils.isNotEmpty(rule.homeVodMarkR)) {
                rule.homeVodMark += "##"+rule.homeVodMarkR+"##$1";
            }
            rule.cateUrl = jsonObj.optString("cateUrl").trim();
            rule.cateVodNode = jsonObj.optString("cateVodNode").trim();
            rule.cateVodName = jsonObj.optString("cateVodName").trim();
            rule.cateVodNameR = jsonObj.optString("cateVodNameR").trim();
            if(StringUtils.isNotEmpty(rule.cateVodNameR)) {
                rule.cateVodName += "##"+rule.cateVodNameR+"##$1";
            }
            rule.cateVodId = jsonObj.optString("cateVodId").trim();
            rule.cateVodIdR = jsonObj.optString("cateVodIdR").trim();
            if(StringUtils.isNotEmpty(rule.cateVodIdR)) {
                rule.cateVodId += "##"+rule.cateVodIdR+"##$1";
            }
            rule.cateVodImg = jsonObj.optString("cateVodImg").trim();
            rule.cateVodImgR = jsonObj.optString("cateVodImgR").trim();
            if(StringUtils.isNotEmpty(rule.cateVodImgR)) {
                rule.cateVodImg += "##"+rule.cateVodImgR+"##$1";
            }
            rule.cateVodMark = jsonObj.optString("cateVodMark").trim();
            rule.cateVodMarkR = jsonObj.optString("cateVodMarkR").trim();
            if(StringUtils.isNotEmpty(rule.cateVodMarkR)) {
                rule.cateVodMark += "##"+rule.cateVodMarkR+"##$1";
            }
            rule.dtUrl = jsonObj.optString("dtUrl");
            rule.dtNode = jsonObj.optString("dtNode");
            rule.dtName = jsonObj.optString("dtName");
            rule.dtNameR = jsonObj.optString("dtNameR").trim();
            if(StringUtils.isNotEmpty(rule.dtNameR)) {
                rule.dtName += "##"+rule.dtNameR+"##$1";
            }
            rule.dtImg = jsonObj.optString("dtImg");
            rule.dtImgR = jsonObj.optString("dtImgR").trim();
            if(StringUtils.isNotEmpty(rule.dtImgR)) {
                rule.dtImg += "##"+rule.dtImgR+"##$1";
            }
            rule.dtCate = jsonObj.optString("dtCate");
            rule.dtCateR = jsonObj.optString("dtCateR").trim();
            if(StringUtils.isNotEmpty(rule.dtCateR)) {
                rule.dtCate += "##"+rule.dtCateR+"##$1";
            }
            rule.dtYear = jsonObj.optString("dtYear");
            rule.dtYearR = jsonObj.optString("dtYearR").trim();
            if(StringUtils.isNotEmpty(rule.dtYearR)) {
                rule.dtYear += "##"+rule.dtYearR+"##$1";
            }
            rule.dtArea = jsonObj.optString("dtArea");
            rule.dtAreaR = jsonObj.optString("dtAreaR").trim();
            if(StringUtils.isNotEmpty(rule.dtAreaR)) {
                rule.dtArea += "##"+rule.dtAreaR+"##$1";
            }
            rule.dtMark = jsonObj.optString("dtMark");
            rule.dtMarkR = jsonObj.optString("dtMarkR").trim();
            if(StringUtils.isNotEmpty(rule.dtMarkR)) {
                rule.dtMark += "##"+rule.dtMarkR+"##$1";
            }
            rule.dtActor = jsonObj.optString("dtActor");
            rule.dtActorR = jsonObj.optString("dtActorR").trim();
            if(StringUtils.isNotEmpty(rule.dtActorR)) {
                rule.dtActor += "##"+rule.dtActorR+"##$1";
            }
            rule.dtDirector = jsonObj.optString("dtDirector");
            rule.dtDirectorR = jsonObj.optString("dtDirectorR").trim();
            if(StringUtils.isNotEmpty(rule.dtDirectorR)) {
                rule.dtDirector += "##"+rule.dtDirectorR+"##$1";
            }
            rule.dtDesc = jsonObj.optString("dtDesc");
            rule.dtDescR = jsonObj.optString("dtDescR").trim();
            if(StringUtils.isNotEmpty(rule.dtDescR)) {
                rule.dtDesc += "##"+rule.dtDescR+"##$1";
            }
            rule.dtFromNode = jsonObj.optString("dtFromNode");
            rule.dtFromName = jsonObj.optString("dtFromName");
            rule.dtFromNameR = jsonObj.optString("dtFromNameR").trim();
            if(StringUtils.isNotEmpty(rule.dtFromNameR)) {
                rule.dtFromName += "##"+rule.dtFromNameR+"##$1";
            }
            rule.dtUrlNode = jsonObj.optString("dtUrlNode");
            rule.dtUrlSubNode = jsonObj.optString("dtUrlSubNode");
            rule.dtUrlId = jsonObj.optString("dtUrlId");
            rule.dtUrlIdR = jsonObj.optString("dtUrlIdR").trim();
            if(StringUtils.isNotEmpty(rule.dtUrlIdR)) {
                rule.dtUrlId += "##"+rule.dtUrlIdR+"##$1";
            }
            rule.dtUrlName = jsonObj.optString("dtUrlName");
            rule.dtUrlNameR = jsonObj.optString("dtUrlNameR").trim();
            if(StringUtils.isNotEmpty(rule.dtUrlNameR)) {
                rule.dtUrlName += "##"+rule.dtUrlNameR+"##$1";
            }
            rule.itemUrlNode = jsonObj.optString("itemUrlNode");
            if(StringUtils.isEmpty(rule.itemUrlNode)){
                rule.itemUrlNode = rule.dtUrlNode;
            }
            rule.itemUrlName = jsonObj.optString("itemUrlName");
            if(StringUtils.isEmpty(rule.itemUrlName)){
                rule.itemUrlName = rule.dtUrlName;
            }
            rule.itemUrlId = jsonObj.optString("itemUrlId");
            if(StringUtils.isEmpty(rule.itemUrlId)){
                rule.itemUrlId = rule.dtUrlId;
            }
            rule.playUrl = jsonObj.optString("playUrl");
            rule.playUa = jsonObj.optString("playUa");
            rule.searchUrl = jsonObj.optString("searchUrl");
            rule.scVodNode = jsonObj.optString("scVodNode").trim();
            rule.scVodName = jsonObj.optString("scVodName").trim();
            rule.scVodNameR = jsonObj.optString("scVodNameR").trim();
            if(StringUtils.isNotEmpty(rule.scVodNameR)) {
                rule.scVodName += "##"+rule.scVodNameR+"##$1";
            }
            rule.scVodId = jsonObj.optString("scVodId").trim();
            rule.scVodIdR = jsonObj.optString("scVodIdR").trim();
            if(StringUtils.isNotEmpty(rule.scVodIdR)) {
                rule.scVodId += "##"+rule.scVodIdR+"##$1";
            }
            rule.scVodImg = jsonObj.optString("scVodImg").trim();
            rule.scVodImgR = jsonObj.optString("scVodImgR").trim();
            if(StringUtils.isNotEmpty(rule.scVodImgR)) {
                rule.scVodImg += "##"+rule.scVodImgR+"##$1";
            }
            rule.scVodMark = jsonObj.optString("scVodMark").trim();
            rule.scVodMarkR = jsonObj.optString("scVodMarkR").trim();
            if(StringUtils.isNotEmpty(rule.scVodMarkR)) {
                rule.scVodMark += "##"+rule.scVodMarkR+"##$1";
            }
            rule.leaf = jsonObj.optString("leaf");
            rule.node = jsonObj.optString("node");
            if(StringUtils.isEmpty(rule.node)){
                rule.node = rule.leaf;
            }
            rule.leafValue = jsonObj.optString("leafValue");
            rule.nodeValue = jsonObj.optString("nodeValue");
            rule.defaultFrom = jsonObj.optString("defaultFrom");
            rule.nodeUrl = jsonObj.optString("nodeUrl");
            rule.decodeFlag = jsonObj.optBoolean("decodeFlag");
            rule.decodePlay = jsonObj.optString("decodePlay");
            rule.scPage = jsonObj.optString("scPage");
            rule.parse = jsonObj.optInt("parse");
            rule.jx = jsonObj.optInt("jx");
            rule.decodeVipFlag = jsonObj.optBoolean("decodeVipFlag");
            rule.decodeSCFlag = jsonObj.optBoolean("decodeSCFlag");
            rule.decodeValue = jsonObj.optString("decodeValue");
            navs = jsonObj.optJSONObject("info");
            if (navs != null) {
                Iterator<String> keys = navs.keys();
                while (keys.hasNext()) {
                    String name = keys.next();
                    rule.infoMap.put(name.trim(), navs.getString(name).trim());
                }
            }
            rule.preParamMaps = jsonObj.optJSONArray("preParamMaps");
            rule.homeParamMaps = jsonObj.optJSONArray("homeParamMaps");
            rule.categoryParamMaps = jsonObj.optJSONArray("categoryParamMaps");
            rule.detailParamMaps = jsonObj.optJSONArray("detailParamMaps");
            rule.playerParamMaps = jsonObj.optJSONArray("playerParamMaps");
            rule.titleNfo = jsonObj.optString("titleNfo");
            if(StringUtils.isEmpty(rule.titleNfo)) {
                rule.titleNfo = "tag.title@text";
            }
            rule.thumbNfo = jsonObj.optString("thumbNfo");
            if(StringUtils.isEmpty(rule.thumbNfo)) {
                rule.thumbNfo = "//thumb[@aspect=\"poster\"][1]/text()||//uniqueid[@type=\"JavScraper-Json\"]/text()##.*Cover\":\"(.*?)\".*##$1";
            }
            rule.genreNfo = jsonObj.optString("genreNfo");
            if(StringUtils.isEmpty(rule.genreNfo)) {
                rule.genreNfo = "tag.genre@text##\n##,";
            }
            rule.yearNfo = jsonObj.optString("yearNfo");
            if(StringUtils.isEmpty(rule.yearNfo)) {
                rule.yearNfo = "tag.premiered@text";
            }
            rule.countryNfo = jsonObj.optString("countryNfo");
            if(StringUtils.isEmpty(rule.countryNfo)) {
                rule.countryNfo = "tag.country@text||tag.language.0@text";
            }
            rule.remarkNfo = jsonObj.optString("remarkNfo");
            if(StringUtils.isEmpty(rule.remarkNfo)) {
                rule.remarkNfo = "tag.tag@text||tag.sorttitle@text";
            }
            rule.actorNfo = jsonObj.optString("actorNfo");
            if(StringUtils.isEmpty(rule.actorNfo)) {
                rule.actorNfo = "tag.actor@tag.name@text";
            }
            rule.directorNfo = jsonObj.optString("directorNfo");
            if(StringUtils.isEmpty(rule.directorNfo)) {
                rule.directorNfo = "tag.producer@tag.name@text||tag.studio@text";
            }
            rule.plotNfo = jsonObj.optString("contentNfo");
            if(StringUtils.isEmpty(rule.plotNfo)) {
                rule.plotNfo = "tag.plot@text";
            }
            rule.urlNfo = jsonObj.optString("urlNfo");
            rule.nfoFlag = jsonObj.optBoolean("nfoFlag");
            if(!rule.nfoFlag && StringUtils.isEmpty(rule.urlNfo)) {
                rule.urlNfo = rule.getDetailUrlId();
            }
            return rule;
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return null;
    }

    public String getUa() {
        return ua;
    }

    public String getHomeUrl() {
        return homeUrl;
    }

    public String getCateNode() {
        return cateNode;
    }

    public String getCateName() {
        return cateName;
    }

    public String getCateId() {
        return cateId;
    }

    public LinkedHashMap<String, String> getCateManual() {
        return cateManual;
    }

    public JSONObject getFilter() {
        return filter;
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

    public String getHomeVodImg() {
        return homeVodImg;
    }

    public String getHomeVodMark() {
        return homeVodMark;
    }

    public String getCateUrl() {
        return cateUrl;
    }

    public String getCateVodNode() {
        return cateVodNode;
    }

    public String getCateVodName() {
        return cateVodName;
    }

    public String getCateVodId() {
        return cateVodId;
    }

    public String getCateVodImg() {
        return cateVodImg;
    }

    public String getCateVodMark() {
        return cateVodMark;
    }

    public String getDetailUrl() {
        return dtUrl;
    }

    public String getDetailNode() {
        return dtNode;
    }

    public String getDetailName() {
        return dtName;
    }

    public String getDetailImg() {
        return dtImg;
    }

    public String getDetailCate() {
        return dtCate;
    }

    public String getDetailYear() {
        return dtYear;
    }

    public String getDetailArea() {
        return dtArea;
    }

    public String getDetailMark() {
        return dtMark;
    }

    public String getDetailActor() {
        return dtActor;
    }

    public String getDetailDirector() {
        return dtDirector;
    }

    public String getDetailDesc() {
        return dtDesc;
    }

    public String getDetailFromNode() {
        return dtFromNode;
    }

    public String getDetailFromName() {
        return dtFromName;
    }

    public String getDetailUrlNode() {
        return dtUrlNode;
    }

    public String getDetailUrlSubNode() {
        return dtUrlSubNode;
    }

    public String getDetailUrlId() {
        return dtUrlId;
    }

    public String getDetailUrlName() {
        return dtUrlName;
    }

    public String getPlayUrl() {
        return playUrl;
    }

    public String getPlayUa() {
        return playUa;
    }

    public String getSearchUrl() {
        return searchUrl;
    }

    public String getSearchVodNode() {
        return scVodNode;
    }

    public String getSearchVodName() {
        return scVodName;
    }

    public String getSearchVodId() {
        return scVodId;
    }

    public String getSearchVodImg() {
        return scVodImg;
    }

    public String getSearchVodMark() {
        return scVodMark;
    }
}
