package com.github.catvod.legado;

import com.github.catvod.crawler.SpiderDebug;

import org.json.JSONObject;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


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

    private String leafValue;

    private String nodeValue;

    private String defaultFrom;

    private String nodeUrl;

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

    /**
     * 正则对取到的数据进行二次处理
     */
    private Pattern scVodMarkR;

    private static Pattern getPattern(JSONObject json, String key) {
        String v = json.optString(key).trim();
        if (v.isEmpty())
            return null;
        else {
            try {
                return Pattern.compile(v);
            } catch (Exception e) {
                SpiderDebug.log(e);
            }
        }
        return null;
    }

    private static String doReplaceRegex(Pattern pattern, String src) {
        if (pattern == null)
            return src;
        try {
            Matcher matcher = pattern.matcher(src);
            if (matcher.find()) {
                return matcher.group(1).trim();
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return src;
    }

    public static LegadoRule fromJson(String json) {
        try {
            JSONObject jsonObj = new JSONObject(json);
            LegadoRule rule = new LegadoRule();
            rule.ua = jsonObj.optString("ua");
            rule.homeUrl = jsonObj.optString("homeUrl").trim();
            rule.cateNode = jsonObj.optString("cateNode").trim();
            rule.cateName = jsonObj.optString("cateName").trim();
            rule.cateId = jsonObj.optString("cateId").trim();
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
            rule.homeVodId = jsonObj.optString("homeVodId").trim();
            rule.homeVodImg = jsonObj.optString("homeVodImg").trim();
            rule.homeVodMark = jsonObj.optString("homeVodMark").trim();
            rule.cateUrl = jsonObj.optString("cateUrl").trim();
            rule.cateVodNode = jsonObj.optString("cateVodNode").trim();
            rule.cateVodName = jsonObj.optString("cateVodName").trim();
            rule.cateVodId = jsonObj.optString("cateVodId").trim();
            rule.cateVodImg = jsonObj.optString("cateVodImg").trim();
            rule.cateVodMark = jsonObj.optString("cateVodMark").trim();
            rule.dtUrl = jsonObj.optString("dtUrl");
            rule.dtNode = jsonObj.optString("dtNode");
            rule.dtName = jsonObj.optString("dtName");
            rule.dtImg = jsonObj.optString("dtImg");
            rule.dtCate = jsonObj.optString("dtCate");
            rule.dtYear = jsonObj.optString("dtYear");
            rule.dtArea = jsonObj.optString("dtArea");
            rule.dtMark = jsonObj.optString("dtMark");
            rule.dtActor = jsonObj.optString("dtActor");
            rule.dtDirector = jsonObj.optString("dtDirector");
            rule.dtDesc = jsonObj.optString("dtDesc");
            rule.dtFromNode = jsonObj.optString("dtFromNode");
            rule.dtFromName = jsonObj.optString("dtFromName");
            rule.dtUrlNode = jsonObj.optString("dtUrlNode");
            rule.dtUrlSubNode = jsonObj.optString("dtUrlSubNode");
            rule.dtUrlId = jsonObj.optString("dtUrlId");
            rule.dtUrlName = jsonObj.optString("dtUrlName");
            rule.playUrl = jsonObj.optString("playUrl");
            rule.playUa = jsonObj.optString("playUa");
            rule.searchUrl = jsonObj.optString("searchUrl");
            rule.scVodNode = jsonObj.optString("scVodNode").trim();
            rule.scVodName = jsonObj.optString("scVodName").trim();
            rule.scVodId = jsonObj.optString("scVodId").trim();
            rule.scVodImg = jsonObj.optString("scVodImg").trim();
            rule.scVodMark = jsonObj.optString("scVodMark").trim();
            rule.scVodMarkR = getPattern(jsonObj, "scVodMarkR");
            rule.leaf = jsonObj.optString("leaf");
            rule.leafValue = jsonObj.optString("leafValue");
            rule.nodeValue = jsonObj.optString("nodeValue");
            rule.defaultFrom = jsonObj.optString("defaultFrom");
            rule.nodeUrl = jsonObj.optString("nodeUrl");
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

    public String getSearchVodMarkR(String src) {
        return doReplaceRegex(scVodMarkR, src);
    }
}
