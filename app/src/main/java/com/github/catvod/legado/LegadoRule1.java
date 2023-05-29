package com.github.catvod.legado;

import com.github.catvod.crawler.SpiderDebug;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.Iterator;
import java.util.LinkedHashMap;

import cn.hutool.core.util.StrUtil;


public class LegadoRule1 {
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
    private final LinkedHashMap<String, String> cateManual = new LinkedHashMap<>();

    /**
     * 筛选
     */
    private String filter;

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
    private String nextPage;

    private String pageCount;
    private String subtitle;

    private Boolean sort;

    private JSONObject headers;

    public String getPageCount() {
        return pageCount;
    }

    public String getNextPage() {
        return nextPage;
    }

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

    public String getDecodeValue() {
        return decodeValue;
    }

    private final LinkedHashMap<String, String> infoMap = new LinkedHashMap<>();

    private JSONArray preParamMaps;

    public String getNode() {
        return node;
    }
    private JSONArray homeParamMaps;

    private JSONArray categoryParamMaps;

    private JSONArray detailParamMaps;

    private JSONArray playerParamMaps;

    private JSONArray searchParamMaps;

    private JSONArray filterParamMaps;

    public JSONArray getFilterParamMaps() {
        return filterParamMaps;
    }

    public JSONArray getSearchParamMaps() {
        return searchParamMaps;
    }

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

    public Integer getParse() {
        return parse;
    }

    public Integer getJx() {
        return jx;
    }

    public String getScPage() {
        return scPage;
    }

    public String getDecodePlay() {
        return decodePlay;
    }

    public String getNodeUrl() {
        return nodeUrl;
    }

    public String getDefaultFrom() {
        return defaultFrom;
    }

    public String getNodeValue() {
        return nodeValue;
    }

    public String getLeaf() {
        return leaf;
    }

    public String getLeafValue() {
        return leafValue;
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

    public String getSubtitle() {
        return subtitle;
    }

    public static LegadoRule1 fromJson(String json) {
        try {
            JSONObject jsonObj = new JSONObject(json.replaceAll(",\\s+//.*",",").replaceAll("^//.*","").replaceAll("[ ]+//.*",""));
            LegadoRule1 rule = new LegadoRule1();
            rule.ua = jsonObj.optString("ua");
            rule.homeUrl = jsonObj.optString("homeUrl").trim();
            rule.cateNode = jsonObj.optString("cateNode").trim();
            rule.cateName = jsonObj.optString("cateName").trim();
            rule.cateNameR = jsonObj.optString("cateNameR").trim();
            if(StrUtil.isNotEmpty(rule.cateNameR)) {
                rule.cateName += "##"+rule.cateNameR+"##$1";
            }
            rule.cateId = jsonObj.optString("cateId").trim();
            rule.cateIdR = jsonObj.optString("cateIdR").trim();
            if(StrUtil.isNotEmpty(rule.cateIdR)) {
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
            rule.filter = jsonObj.optString("filter");
            rule.homeVodNode = jsonObj.optString("homeVodNode").trim();
            rule.homeVodName = jsonObj.optString("homeVodName").trim();
            rule.homeVodNameR = jsonObj.optString("homeVodNameR").trim();
            if(StrUtil.isNotEmpty(rule.homeVodNameR)) {
                rule.homeVodName += "##"+rule.homeVodNameR+"##$1";
            }
            rule.homeVodId = jsonObj.optString("homeVodId").trim();
            rule.homeVodIdR = jsonObj.optString("homeVodIdR").trim();
            if(StrUtil.isNotEmpty(rule.homeVodIdR)) {
                rule.homeVodId += "##"+rule.homeVodIdR+"##$1";
            }
            rule.homeVodImg = jsonObj.optString("homeVodImg").trim();
            rule.homeVodImgR = jsonObj.optString("homeVodImgR").trim();
            if(StrUtil.isNotEmpty(rule.homeVodImgR)) {
                rule.homeVodImg += "##"+rule.homeVodImgR+"##$1";
            }
            rule.homeVodMark = jsonObj.optString("homeVodMark").trim();
            rule.homeVodMarkR = jsonObj.optString("homeVodMarkR").trim();
            if(StrUtil.isNotEmpty(rule.homeVodMarkR)) {
                rule.homeVodMark += "##"+rule.homeVodMarkR+"##$1";
            }
            rule.cateUrl = jsonObj.optString("cateUrl").trim();
            rule.cateVodNode = jsonObj.optString("cateVodNode").trim();
            rule.cateVodName = jsonObj.optString("cateVodName").trim();
            rule.cateVodNameR = jsonObj.optString("cateVodNameR").trim();
            if(StrUtil.isNotEmpty(rule.cateVodNameR)) {
                rule.cateVodName += "##"+rule.cateVodNameR+"##$1";
            }
            rule.cateVodId = jsonObj.optString("cateVodId").trim();
            rule.cateVodIdR = jsonObj.optString("cateVodIdR").trim();
            if(StrUtil.isNotEmpty(rule.cateVodIdR)) {
                rule.cateVodId += "##"+rule.cateVodIdR+"##$1";
            }
            rule.cateVodImg = jsonObj.optString("cateVodImg").trim();
            rule.cateVodImgR = jsonObj.optString("cateVodImgR").trim();
            if(StrUtil.isNotEmpty(rule.cateVodImgR)) {
                rule.cateVodImg += "##"+rule.cateVodImgR+"##$1";
            }
            rule.cateVodMark = jsonObj.optString("cateVodMark").trim();
            rule.cateVodMarkR = jsonObj.optString("cateVodMarkR").trim();
            if(StrUtil.isNotEmpty(rule.cateVodMarkR)) {
                rule.cateVodMark += "##"+rule.cateVodMarkR+"##$1";
            }
            rule.dtUrl = jsonObj.optString("dtUrl");
            rule.dtName = jsonObj.optString("dtName");
            rule.dtNameR = jsonObj.optString("dtNameR").trim();
            if(StrUtil.isNotEmpty(rule.dtNameR)) {
                rule.dtName += "##"+rule.dtNameR+"##$1";
            }
            rule.dtImg = jsonObj.optString("dtImg");
            rule.dtImgR = jsonObj.optString("dtImgR").trim();
            if(StrUtil.isNotEmpty(rule.dtImgR)) {
                rule.dtImg += "##"+rule.dtImgR+"##$1";
            }
            rule.dtCate = jsonObj.optString("dtCate");
            rule.dtCateR = jsonObj.optString("dtCateR").trim();
            if(StrUtil.isNotEmpty(rule.dtCateR)) {
                rule.dtCate += "##"+rule.dtCateR+"##$1";
            }
            rule.dtYear = jsonObj.optString("dtYear");
            rule.dtYearR = jsonObj.optString("dtYearR").trim();
            if(StrUtil.isNotEmpty(rule.dtYearR)) {
                rule.dtYear += "##"+rule.dtYearR+"##$1";
            }
            rule.dtArea = jsonObj.optString("dtArea");
            rule.dtAreaR = jsonObj.optString("dtAreaR").trim();
            if(StrUtil.isNotEmpty(rule.dtAreaR)) {
                rule.dtArea += "##"+rule.dtAreaR+"##$1";
            }
            rule.dtMark = jsonObj.optString("dtMark");
            rule.dtMarkR = jsonObj.optString("dtMarkR").trim();
            if(StrUtil.isNotEmpty(rule.dtMarkR)) {
                rule.dtMark += "##"+rule.dtMarkR+"##$1";
            }
            rule.dtActor = jsonObj.optString("dtActor");
            rule.dtActorR = jsonObj.optString("dtActorR").trim();
            if(StrUtil.isNotEmpty(rule.dtActorR)) {
                rule.dtActor += "##"+rule.dtActorR+"##$1";
            }
            rule.dtDirector = jsonObj.optString("dtDirector");
            rule.dtDirectorR = jsonObj.optString("dtDirectorR").trim();
            if(StrUtil.isNotEmpty(rule.dtDirectorR)) {
                rule.dtDirector += "##"+rule.dtDirectorR+"##$1";
            }
            rule.dtDesc = jsonObj.optString("dtDesc");
            rule.dtDescR = jsonObj.optString("dtDescR").trim();
            if(StrUtil.isNotEmpty(rule.dtDescR)) {
                rule.dtDesc += "##"+rule.dtDescR+"##$1";
            }
            rule.dtFromNode = jsonObj.optString("dtFromNode");
            rule.dtFromName = jsonObj.optString("dtFromName");
            rule.dtFromNameR = jsonObj.optString("dtFromNameR").trim();
            if(StrUtil.isNotEmpty(rule.dtFromNameR)) {
                rule.dtFromName += "##"+rule.dtFromNameR+"##$1";
            }
            rule.dtUrlNode = jsonObj.optString("dtUrlNode");
            rule.dtUrlSubNode = jsonObj.optString("dtUrlSubNode");
            rule.dtUrlId = jsonObj.optString("dtUrlId");
            rule.dtUrlIdR = jsonObj.optString("dtUrlIdR").trim();
            if(StrUtil.isNotEmpty(rule.dtUrlIdR)) {
                rule.dtUrlId += "##"+rule.dtUrlIdR+"##$1";
            }
            rule.dtUrlName = jsonObj.optString("dtUrlName");
            rule.dtUrlNameR = jsonObj.optString("dtUrlNameR").trim();
            if(StrUtil.isNotEmpty(rule.dtUrlNameR)) {
                rule.dtUrlName += "##"+rule.dtUrlNameR+"##$1";
            }
            rule.itemUrlNode = jsonObj.optString("itemUrlNode");
            if(StrUtil.isEmpty(rule.itemUrlNode)){
                rule.itemUrlNode = rule.dtUrlNode;
            }
            rule.itemUrlName = jsonObj.optString("itemUrlName");
            if(StrUtil.isEmpty(rule.itemUrlName)){
                rule.itemUrlName = rule.dtUrlName;
            }
            rule.itemUrlId = jsonObj.optString("itemUrlId");
            if(StrUtil.isEmpty(rule.itemUrlId)){
                rule.itemUrlId = rule.dtUrlId;
            }
            rule.playUrl = jsonObj.optString("playUrl");
            rule.playUa = jsonObj.optString("playUa");
            rule.searchUrl = jsonObj.optString("searchUrl");
            rule.scVodNode = jsonObj.optString("scVodNode").trim();
            rule.scVodName = jsonObj.optString("scVodName").trim();
            rule.scVodNameR = jsonObj.optString("scVodNameR").trim();
            if(StrUtil.isNotEmpty(rule.scVodNameR)) {
                rule.scVodName += "##"+rule.scVodNameR+"##$1";
            }
            rule.scVodId = jsonObj.optString("scVodId").trim();
            rule.scVodIdR = jsonObj.optString("scVodIdR").trim();
            if(StrUtil.isNotEmpty(rule.scVodIdR)) {
                rule.scVodId += "##"+rule.scVodIdR+"##$1";
            }
            rule.scVodImg = jsonObj.optString("scVodImg").trim();
            rule.scVodImgR = jsonObj.optString("scVodImgR").trim();
            if(StrUtil.isNotEmpty(rule.scVodImgR)) {
                rule.scVodImg += "##"+rule.scVodImgR+"##$1";
            }
            rule.scVodMark = jsonObj.optString("scVodMark").trim();
            rule.scVodMarkR = jsonObj.optString("scVodMarkR").trim();
            if(StrUtil.isNotEmpty(rule.scVodMarkR)) {
                rule.scVodMark += "##"+rule.scVodMarkR+"##$1";
            }
            rule.leaf = jsonObj.optString("leaf");
            rule.node = jsonObj.optString("node");
            if(StrUtil.isEmpty(rule.node)){
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
            rule.searchParamMaps = jsonObj.optJSONArray("searchParamMaps");
            rule.filterParamMaps = jsonObj.optJSONArray("filterParamMaps");
            rule.titleNfo = jsonObj.optString("titleNfo");
            if(StrUtil.isEmpty(rule.titleNfo)) {
                rule.titleNfo = "tag.title@text";
            }
            rule.thumbNfo = jsonObj.optString("thumbNfo");
            if(StrUtil.isEmpty(rule.thumbNfo)) {
                rule.thumbNfo = "//thumb[@aspect=\"poster\"][1]/text()||//uniqueid[@type=\"JavScraper-Json\"]/text()##.*Cover\":\"(.*?)\".*##$1";
            }
            rule.genreNfo = jsonObj.optString("genreNfo");
            if(StrUtil.isEmpty(rule.genreNfo)) {
                rule.genreNfo = "tag.genre@text##\n##,";
            }
            rule.yearNfo = jsonObj.optString("yearNfo");
            if(StrUtil.isEmpty(rule.yearNfo)) {
                rule.yearNfo = "tag.premiered@text";
            }
            rule.countryNfo = jsonObj.optString("countryNfo");
            if(StrUtil.isEmpty(rule.countryNfo)) {
                rule.countryNfo = "tag.country@text||tag.language.0@text";
            }
            rule.remarkNfo = jsonObj.optString("remarkNfo");
            if(StrUtil.isEmpty(rule.remarkNfo)) {
                rule.remarkNfo = "tag.tag@text||tag.sorttitle@text";
            }
            rule.actorNfo = jsonObj.optString("actorNfo");
            if(StrUtil.isEmpty(rule.actorNfo)) {
                rule.actorNfo = "tag.actor@tag.name@text";
            }
            rule.directorNfo = jsonObj.optString("directorNfo");
            if(StrUtil.isEmpty(rule.directorNfo)) {
                rule.directorNfo = "tag.producer@tag.name@text||tag.studio@text";
            }
            rule.plotNfo = jsonObj.optString("contentNfo");
            if(StrUtil.isEmpty(rule.plotNfo)) {
                rule.plotNfo = "tag.plot@text";
            }
            rule.urlNfo = jsonObj.optString("urlNfo");
            rule.nfoFlag = jsonObj.optBoolean("nfoFlag");
            if(!rule.nfoFlag && StrUtil.isEmpty(rule.urlNfo)) {
                rule.urlNfo = rule.getDetailUrlId();
            }
            rule.nextPage = jsonObj.optString("nextPage");
            rule.pageCount = jsonObj.optString("pageCount");
            rule.subtitle = jsonObj.optString("subtitle");
            rule.sort = jsonObj.optBoolean("sort");
            rule.headers = jsonObj.optJSONObject("headers");
            return rule;
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return null;
    }

    public JSONObject getHeaders() {
        return headers;
    }

    public Boolean getSort() {
        return sort;
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

    public String getFilter() {
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
