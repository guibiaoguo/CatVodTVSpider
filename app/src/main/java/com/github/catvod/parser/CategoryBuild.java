//package com.github.catvod.parser;
//
//import com.github.catvod.crawler.SpiderDebug;
//import com.github.catvod.utils.StringUtil;
//import com.github.catvod.utils.okhttp.OKCallBack;
//
//import org.json.JSONArray;
//import org.json.JSONObject;
//
//import java.util.Arrays;
//import java.util.List;
//import java.util.regex.Matcher;
//import java.util.regex.Pattern;
//
//import cn.hutool.core.util.StrUtil;
//import okhttp3.Response;
//
//public class CategoryBuild {
//
//    private static CategoryBuild categoryBuild = new CategoryBuild();
//
//    private AnalyzeRule analyzeRule;
//
//    private JSONObject data;
//
//    private String html;
//
//    private String url;
//
//    private String cateUrlSelector;
//
//    private CategoryBuild() {
//    }
//
//    private JSONArray categoriesList;
//
//    private JSONArray categoryParamMaps;
//
//    private RuleDataInterface ruleData;
//
//    public static CategoryBuild getInstance() {
//        return categoryBuild;
//    }
//
//    public CategoryBuild setList(JSONArray jsonArray) {
//        this.categoriesList = jsonArray;
//        return this;
//    }
//
//    public CategoryBuild setData(JSONObject data) {
//        this.data = data;
//        return this;
//    }
//
//    public CategoryBuild setHtml(String html) {
//        this.html = html;
//        return this;
//    }
//
//    public CategoryBuild setUrl(String url) {
//        this.url = url;
//        return this;
//    }
//
//    public CategoryBuild setCateUrlSector(String cateUrlSector) {
//        this.cateUrlSelector = cateUrlSector;
//        return this;
//    }
//
//    public CategoryBuild setAnalyzeRule(AnalyzeRule analyzeRule) {
//        this.analyzeRule = analyzeRule;
//        return this;
//    }
//
//    public CategoryBuild setCategoryParamMaps(JSONArray categoryParamMaps) {
//        this.categoryParamMaps = categoryParamMaps;
//        return this;
//    }
//
//    public CategoryBuild setRuleData(RuleDataInterface ruleData) {
//        this.ruleData = ruleData;
//        return this;
//    }
//
//    public JSONObject build() {
//        JSONObject jsonObject = categoriesList.optJSONObject(0);
//        String baseUrl = jsonObject.optString("筛选链接");
//        if (StringUtil.isNotEmpty(baseUrl) && !baseUrl.equals(url)) {
//            baseUrl = analyzeRule.getString(baseUrl);
//            baseUrl = StringUtil.encode(StringUtil.decode(baseUrl));
//            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(baseUrl);
//            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
//                String s = HttpParser.getContent(baseUrl, callBack.getResult().body());
//                String baseUrl1 = callBack.getResult().request().url().toString();
//                analyzeRule.setContent(s, baseUrl1);
//                analyzeRule.setRedirectUrl(baseUrl1);
//                analyzeRule.getString("@put:{baseUrl:'@constant:" + baseUrl1 + "'}");
//            }
//        }
//        String category = jsonObject.optString("一级分类");
//        String subCategory = jsonObject.optString("子分类");
//        String titleSelector = jsonObject.optString("分类标题");
//        titleSelector = StringUtil.isNotEmpty(titleSelector) ? titleSelector : "tag.a@title || tag.a@text";
//        String urlSelector = jsonObject.optString("分类链接");
//        urlSelector = StringUtil.isNotEmpty(urlSelector) ? urlSelector : "tag.a@href";
//
//        jsonObject = categoriesList.optJSONObject(1);
//        String secondCategory = jsonObject.optString("一级分类");
//        String subSecondCategory = jsonObject.optString("子分类");
//        String secondTitleSelector = jsonObject.optString("分类标题");
//        secondTitleSelector = StringUtil.isNotEmpty(secondTitleSelector) ? secondTitleSelector : "tag.a@title || tag.a@text";
//        String secondUrlSelector = jsonObject.optString("分类链接");
//        secondUrlSelector = StringUtil.isNotEmpty(secondUrlSelector) ? secondUrlSelector : "tag.a@href";
//        String filterName = jsonObject.optString("筛选名称");
//        String filterClass = jsonObject.optString("筛选标志");
//        JSONArray classes;
//        JSONObject filterObject = new JSONObject();
//        try {
//            if (data.optJSONArray("class") == null) {
//                classes = new JSONArray();
//                data.put("class", classes);
//            } else {
//                classes = data.optJSONArray("class");
//            }
//            if (StringUtil.isNotEmpty(category)) {
//                List<Object> nodes = analyzeRule.getElements(category);
//                for (Object node : nodes) {
//                    if (StringUtil.isNotEmpty(node.toString())) {
//                        analyzeRule.setContent(node);
//                        List<Object> subNodes = analyzeRule.getElements(subCategory);
//                        if (subNodes.isEmpty()) {
//                            subNodes.add(node);
//                        }
//                        for (Object subNode : subNodes) {
//                            JSONArray categories = new JSONArray();
//                            JSONObject cls = new JSONObject();
//                            String typeId = analyzeRule.getString(urlSelector, subNode, false);
//                            String title = analyzeRule.getString(titleSelector, subNode, false);
//                            cls.put("type_id", typeId);
//                            cls.put("type_name", title);
//                            classes.put(cls);
//                        }
//                    }
//                }
//            }
//
//            for (int i = 0; i < classes.length(); i++) {
//                JSONObject cls = classes.optJSONObject(i);
//                String typeId = cls.optString("type_id");
////            analyzeRule.put("cateId", typeId);
////            analyzeRule.put("cateFilter", typeId);
////            analyzeRule.put("pg", "1");
//                ruleData.putVariable("cateId", typeId);
////            analyzeRule.getString("@put:{cateFilter:'@constant:" + typeId + "'}");
//                ruleData.putVariable("catePg","1");
//                putParamMap(categoryParamMaps);
//                String cateUrl = analyzeRule.getString(cateUrlSelector, null, true);
//                if (StrUtil.isEmpty(cateUrl) || !StringUtil.isWebUrl(cateUrl)) {
//                    cateUrl = categoryUrl(typeId, "1");
//                }
//                cateUrl = StringUtil.encode(StringUtil.decode(cateUrl));
//                OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(cateUrl);
//                if (callBack.getResult() != null && callBack.getResult().code() == 200) {
//                    String s = HttpParser.getContent(cateUrl, callBack.getResult().body());
//                    cateUrl = callBack.getResult().request().url().toString();
////                    analyzeRule.getString("@put:{baseUrl:'@constant:" + cateUrl + "'}");
//                    ruleData.putVariable("baseUrl", cateUrl);
//                    analyzeRule.setContent(s, cateUrl);
//                    analyzeRule.setRedirectUrl(cateUrl);
//                    JSONArray categories = new JSONArray();
//                    List<Object> secondNodes = analyzeRule.getElements(secondCategory);
//                    for (Object secondNode : secondNodes) {
//                        JSONArray valueList = new JSONArray();
//                        analyzeRule.setContent(secondNode);
//                        List<Object> secondSubNodes = analyzeRule.getElements(subSecondCategory);
//                        String filterValue = analyzeRule.getString(filterName);
//                        String key = "cateId";
//                        if (StringUtil.isEmpty(filterValue)) {
//                            filterValue = "按分类：";
//                        }
//                        if (filterValue.contains("类型")) {
//                            key = "class";
//                        } else if (filterValue.contains("地区")) {
//                            key = "area";
//                        } else if (filterValue.contains("语言")) {
//                            key = "lang";
//                        } else if (filterValue.contains("年份")) {
//                            key = "year";
//                        } else if (filterValue.contains("字母")) {
//                            key = "letter";
//                        } else if (filterValue.contains("剧情")) {
//                            key = "plot";
//                        }
//                        if (Arrays.asList(filterClass.split(",")).contains(key)) {
//                            key = "cateId";
//                        }
//                        for (Object secondSubNode : secondSubNodes) {
//                            valueList.put(new JSONObject().put("v", analyzeRule.getString(secondUrlSelector, secondSubNode, false)).put("n", analyzeRule.getString(secondTitleSelector, secondSubNode, false)));
//                        }
//                        if (valueList.length() > 0) {
//                            categories.put(new JSONObject().put("value", valueList).put("name", filterValue).put("key", key));
//                        }
//                    }
//                    filterObject.put(typeId, categories);
//                } else {
//                    callBack.getResult().close();
//                }
//
//            }
//            data.put("filters", filterObject);
//        } catch (Exception e) {
//            SpiderDebug.log(e);
//        }
//        return data;
//    }
//
//    protected String categoryUrl(String tid, String pg) {
//        String cateUrl = cateUrlSelector;
//        if (StringUtil.isAbsUrl(tid)) {
//            tid = StringUtil.trimBlanks(tid).split("\n")[0];
//        }
//        cateUrl = cateUrl.replace("{cateId}", tid).replace("{catePg}", pg);
//        Matcher m = Pattern.compile("\\{(.*?)\\}").matcher(cateUrl);
//        while (m.find()) {
//            String n = m.group(0).replace("{", "").replace("}", "");
//            cateUrl = cateUrl.replace(m.group(0), "").replace("/" + n + "/", "");
//        }
//        return cateUrl;
//    }
//
//    public void putParamMap(JSONArray paramMap) {
//        if (paramMap != null && paramMap.length() > 0) {
//            for (int i = 0; i < paramMap.length(); i++) {
//                JSONObject param = paramMap.optJSONObject(i);
//                String url = param.optString("paramUrl");
//                String key = param.optString("paramKey");
//                String value = param.optString("paramValue");
//                String flag = param.optString("paramFlag");
//                String webUrl = analyzeRule.getString(url);
//                if (StrUtil.isNotEmpty(webUrl) && StringUtil.isWebUrl(webUrl)) {
//                    webUrl = StringUtil.encode(StringUtil.decode(webUrl));
//                    OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(webUrl);
//                    try {
//                        if (callBack.getResult() != null && (callBack.getResult().code() == 200 || callBack.getResult().code() == 302)) {
//                            Response response = callBack.getResult();
//                            String s = HttpParser.getContent(webUrl, response.body());
//                            analyzeRule.setContent(s);
//                        }
//                    } catch (Exception e) {
//                        SpiderDebug.log(e);
//                    }
//                }
//                String value1 = analyzeRule.getString(value);
//                if (StrUtil.equalsIgnoreCase(flag, "list")) {
//                    ruleData.putVariable(key, ruleData.getVariable(key) + "\n" + value1);
//                } else if (StrUtil.isNotEmpty(value1)) {
//                    ruleData.putVariable(key, value1);
//                }
//            }
//        }
//    }
//}
