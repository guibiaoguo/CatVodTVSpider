package com.github.catvod.parser;

import com.github.catvod.analyzeRules.AnalyzeRule;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OKCallBack;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import okhttp3.Response;

public class CategoryBuild {

    private static CategoryBuild categoryBuild = new CategoryBuild();

    private AnalyzeRule analyzeRule;

    private JSONObject data;

    private String html;

    private String url;

    private String cateUrlSelector;

    private CategoryBuild() {
    }

    private JSONArray categoriesList;

    public static CategoryBuild getInstance() {
        return categoryBuild;
    }

    public CategoryBuild setList(JSONArray jsonArray) {
        this.categoriesList = jsonArray;
        return this;
    }

    public CategoryBuild setData(JSONObject data) {
        this.data = data;
        return this;
    }

    public CategoryBuild setHtml(String html) {
        this.html = html;
        return this;
    }

    public CategoryBuild setUrl(String url) {
        this.url = url;
        return this;
    }

    public CategoryBuild setCateUrlSector(String cateUrlSector) {
        this.cateUrlSelector = cateUrlSector;
        return this;
    }

    public CategoryBuild setAnalyzeRule(AnalyzeRule analyzeRule) {
        this.analyzeRule = analyzeRule;
        return this;
    }

    public JSONObject build() throws Exception {
        JSONObject jsonObject = categoriesList.optJSONObject(0);
        String baseUrl = jsonObject.optString("筛选链接");
        if (StringUtil.isNotEmpty(baseUrl) && !baseUrl.equals(url)) {
            baseUrl = analyzeRule.getString(baseUrl);
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(baseUrl);
            if (callBack.getResult() != null && callBack.getResult().code() == 200) {
                String s = HttpParser.getContent(baseUrl, callBack.getResult().body().bytes());
                analyzeRule.setContent(s, callBack.getResult().request().url().toString());
                analyzeRule.setRedirectUrl(callBack.getResult().request().url().toString());
            }
        }
        String category = jsonObject.optString("一级分类");
        String subCategory = jsonObject.optString("子分类");
        String titleSelector = jsonObject.optString("分类标题");
        titleSelector = StringUtil.isNotEmpty(titleSelector) ? titleSelector : "tag.a@title || tag.a@text";
        String urlSelector = jsonObject.optString("分类链接");
        urlSelector = StringUtil.isNotEmpty(urlSelector) ? urlSelector : "tag.a@href";

        jsonObject = categoriesList.optJSONObject(1);
        String secondCategory = jsonObject.optString("一级分类");
        String subSecondCategory = jsonObject.optString("子分类");
        String secondTitleSelector = jsonObject.optString("分类标题");
        secondTitleSelector = StringUtil.isNotEmpty(secondTitleSelector) ? secondTitleSelector : "tag.a@title || tag.a@text";
        String secondUrlSelector = jsonObject.optString("分类链接");
        secondUrlSelector = StringUtil.isNotEmpty(secondUrlSelector) ? secondUrlSelector : "tag.a@href";
        String filterName = jsonObject.optString("筛选名称");
        String filterClass = jsonObject.optString("筛选标志");
        JSONArray classes = new JSONArray();
        JSONObject filterObject = new JSONObject();
        if (data.optJSONArray("class") == null) {
            List<Object> nodes = analyzeRule.getElements(category);
            for (Object node : nodes) {
                analyzeRule.setContent(node);
                List<Object> subNodes = analyzeRule.getElements(subCategory);
                if(subNodes.isEmpty()) {
                    subNodes.add(node);
                }
                for (Object subNode : subNodes) {
                    JSONArray categories = new JSONArray();
                    JSONObject cls = new JSONObject();
                    String typeId = analyzeRule.getString(urlSelector, subNode, false);
                    String title = analyzeRule.getString(titleSelector, subNode, false);
                    cls.put("type_id", typeId);
                    cls.put("type_name", title);
                    classes.put(cls);
                }
            }
            data.put("class", classes);
        } else {
            classes = data.optJSONArray("class");
        }

        for (int i = 0; i < classes.length(); i++) {
            JSONObject cls = classes.optJSONObject(i);
            String typeId = cls.optString("type_id");
//            analyzeRule.put("cateId", typeId);
//            analyzeRule.put("cateFilter", typeId);
//            analyzeRule.put("pg", "1");
            analyzeRule.getString("@put:{cateId:'@constant:" + typeId + "'}");
//            analyzeRule.getString("@put:{cateFilter:'@constant:" + typeId + "'}");
            analyzeRule.getString("@put:{catePg:'@constant:1'}");
            String cateUrl = analyzeRule.getString(cateUrlSelector, null, true);
            if (StringUtils.isEmpty(cateUrl) || !StringUtil.isWebUrl(cateUrl)) {
                cateUrl = categoryUrl(typeId, "1");
            }
            OKCallBack<Response> callBack = HttpParser.parseSearchUrlForHtml(cateUrl);

            String s = HttpParser.getContent(cateUrl, callBack.getResult().body().bytes());
            cateUrl = callBack.getResult().request().url().toString();
            analyzeRule.getString("@put:{cateId:'@constant:" + cateUrl + "'}");
            analyzeRule.setContent(s, cateUrl);
            analyzeRule.setRedirectUrl(cateUrl);
            JSONArray categories = new JSONArray();
            List<Object> secondNodes = analyzeRule.getElements(secondCategory);
            for (Object secondNode : secondNodes) {
                JSONArray valueList = new JSONArray();
                analyzeRule.setContent(secondNode);
                List<Object> secondSubNodes = analyzeRule.getElements(subSecondCategory);
                String filterValue = analyzeRule.getString(filterName);
                String key = "cateId";
                if (filterValue.contains("类型")) {
                    key = "class";
                } else if (filterValue.contains("地区")) {
                    key = "area";
                } else if (filterValue.contains("语言")) {
                    key = "lang";
                } else if (filterValue.contains("年份")) {
                    key = "year";
                } else if (filterValue.contains("字母")) {
                    key = "letter";
                } else if (filterValue.contains("剧情")) {
                    key = "plot";
                }
                if(Arrays.asList(filterClass.split(",")).contains(key)) {
                    key = "cateId";
                }
                for (Object secondSubNode : secondSubNodes) {
                    valueList.put(new JSONObject().put("v", analyzeRule.getString(secondUrlSelector, secondSubNode, false)).put("n", analyzeRule.getString(secondTitleSelector, secondSubNode, false)));
                }
                if (valueList.length() > 0) {
                    categories.put(new JSONObject().put("value", valueList).put("name", filterValue).put("key", key));
                }
            }
            filterObject.put(typeId, categories);
        }
        data.put("filters", filterObject);
        return data;
    }

    protected String categoryUrl(String tid, String pg) {
        String cateUrl = cateUrlSelector;
        if (StringUtil.isAbsUrl(tid)) {
            tid = StringUtils.trim(tid).split("\n")[0];
        }
        cateUrl = cateUrl.replace("{cateId}", tid).replace("{catePg}", pg);
        Matcher m = Pattern.compile("\\{(.*?)\\}").matcher(cateUrl);
        while (m.find()) {
            String n = m.group(0).replace("{", "").replace("}", "");
            cateUrl = cateUrl.replace(m.group(0), "").replace("/" + n + "/", "");
        }
        return cateUrl;
    }

}
