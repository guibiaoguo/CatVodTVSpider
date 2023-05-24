package com.github.catvod.spider;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Filter;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Sub;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.parser.AnalyzeRule;
import com.github.catvod.parser.AnalyzeUrl;
import com.github.catvod.parser.TVShow;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.Trans;
import com.github.catvod.utils.XMLUtil;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/**
 * bill
 * 仿照阅读规则,各种语法参考开源阅读
 */
public class Legado extends Spider {

    private String ext;
    private LegadoRule rule;
    private AnalyzeRule analyzeRule;

    private AnalyzeUrl analyzeUrl;

    /**
     * @param context
     * @param extend
     */
    @Override
    public void init(Context context, String extend) {
        this.ext = extend;
        fetchRule();
        System.out.println(rule.getClasses());
        System.out.println(rule.getFilters());
        System.out.println(rule.getHomeUrl());
        System.out.println(rule.getTypeName());
        System.out.println(rule.getTypeId());
        System.out.println(rule.getTypeNode());
        System.out.println(rule.getHomeVodNode());
        System.out.println(rule.getHomeVodName());
        System.out.println(rule.getHomeVodId());
        System.out.println(rule.getHomeVodPic());
        System.out.println(rule.getHomeVodRemarks());
        System.out.println(rule.getHomeVideoUrl());
        System.out.println(rule.getCateUrl());
        System.out.println(rule.getPageNode());
        System.out.println(rule.getPage());
        System.out.println(rule.getPageCount());
        System.out.println(rule.getCateVodNode());
        System.out.println(rule.getCateVodId());
        System.out.println(rule.getCateVodName());
        System.out.println(rule.getCateVodPic());
        System.out.println(rule.getCateVodRemarks());
        System.out.println(rule.getSearchUrl());
        System.out.println(rule.getSearchVodNode());
        System.out.println(rule.getSearchVodId());
        System.out.println(rule.getSearchVodName());
        System.out.println(rule.getSearchVodPic());
        System.out.println(rule.getSearchVodRemarks());
        System.out.println(rule.getDetailUrl());
        System.out.println(rule.getDetailTypeName());
        System.out.println(rule.getDetailVodId());
        System.out.println(rule.getDetailVodName());
        System.out.println(rule.getDetailVodPic());
        System.out.println(rule.getDetailVodRemarks());
        System.out.println(rule.getDetailVodYear());
        System.out.println(rule.getDetailVodArea());
        System.out.println(rule.getDetailVodActor());
        System.out.println(rule.getDetailVodDirector());
        System.out.println(rule.getDetailVodContent());
        System.out.println(rule.getDetailVodPlayFrom());
        System.out.println(rule.getDetailVodPlayUrl());
        System.out.println(rule.getDetailVodTag());
        System.out.println(rule.getDetailNode());
        System.out.println(rule.getVodPlayForm());
        System.out.println(rule.getVodPlayName());
        System.out.println(rule.getVodPlayUrl());
        System.out.println(rule.getPlayUrl());
        System.out.println(rule.getPlaySub());
        System.out.println(rule.getPlayHeader());
        System.out.println(rule.getPlayExtendHeader());
        System.out.println(rule.getDetailFileNode());
        System.out.println(rule.getDetailFileNodeFlag());
        System.out.println(rule.getDetailFileNodeUrl());
        System.out.println(rule.getDetailFileNodeRoot());
        System.out.println(rule.getDetailFileNodeLeaf());
        System.out.println(rule.getDetailFileNodeSub());
        System.out.println(rule.getDetailFileNodeParent());
        System.out.println(rule.getDetailFileNodeId());
        analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        analyzeRule.put("proxy",Proxy.getUrl());
        super.init(context, extend);
    }

    private void fetchRule() {
        if (StringUtils.isNotEmpty(ext) && StringUtils.startsWith(ext, "http")) {
            String ruleStr = OkHttpUtil.string(ext, null);
            rule = new GsonBuilder().disableHtmlEscaping().create().fromJson(ruleStr, LegadoRule.class);
        } else {
            rule = new GsonBuilder().disableHtmlEscaping().create().fromJson(ext, LegadoRule.class);
        }
    }


    /**
     * 首页数据内容
     *
     * @param filter 是否开启筛选
     * @return
     */
    @Override
    public String homeContent(boolean filter) throws Exception {
        List<Vod> list = new ArrayList<>();
        List<Class> classes = rule.getClasses();
        analyzeUrl = new AnalyzeUrl(analyzeRule.getString(rule.getHomeUrl()));
        String content = analyzeUrl.getResponse();
        analyzeRule.setContent(content, analyzeUrl.getBaseUrl());
        if (classes == null) {
            classes = new ArrayList<>();
            List<?> elements = analyzeRule.getElements(rule.getTypeNode());
            for (Object element : elements) {
                String name = analyzeRule.getString(rule.getTypeName(), element, false);
                String id = analyzeRule.getString(rule.getTypeId(), element, false);
                classes.add(new Class(id, name));
            }
        }
        LinkedHashMap<String, List<Filter>> filters = rule.getFilters();
        if (filters == null) {
            filters = new LinkedHashMap<>();
        }
        if (StringUtils.isNotEmpty(rule.getHomeVodNode())) {
            List<?> elements = analyzeRule.getElements(rule.getHomeVodNode());
            for (Object element : elements) {
                String name = analyzeRule.getString(rule.getHomeVodName(), element, false);
                String img = analyzeRule.getString(rule.getHomeVodPic(), element, true);
                String remark = analyzeRule.getString(rule.getHomeVodRemarks(), element, false);
                String id = analyzeRule.getString(rule.getHomeVodId(), element, false);
                list.add(new Vod(id, name, img, remark));
            }
        }
        return Result.string(classes, list, filters);
    }

    /**
     * 首页最近更新数据 如果上面的homeContent中不包含首页最近更新视频的数据 可以使用这个接口返回
     *
     * @return
     */
    @Override
    public String homeVideoContent() throws Exception {
        analyzeUrl = new AnalyzeUrl(analyzeRule.getString(rule.getHomeVideoUrl()));
        String content = analyzeUrl.getResponse();
        analyzeRule.setContent(content, analyzeUrl.getBaseUrl());
        List<Vod> list = new ArrayList<>();
        List<?> elements = analyzeRule.getElements(rule.getHomeVodNode());
        for (Object element : elements) {
            String name = analyzeRule.getString(rule.getHomeVodName(), element, false);
            String img = analyzeRule.getString(rule.getHomeVodPic(), element, true);
            String remark = analyzeRule.getString(rule.getHomeVodRemarks(), element, false);
            String id = analyzeRule.getString(rule.getHomeVodId(), element, false);
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(list);
    }

    /**
     * 分类数据
     *
     * @param tid
     * @param pg
     * @param filter
     * @param extend
     * @return
     */
    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        List<Vod> list = new ArrayList<>();
        analyzeRule.put("pg", pg);
        analyzeRule.put("cateId", tid);
        if (filter && extend != null) {
            for (Map.Entry<String, String> entry : extend.entrySet()) {
                analyzeRule.put(entry.getKey(), entry.getValue());
            }
        }
        String cateUrl = analyzeRule.getString(rule.getCateUrl());
        System.out.println(cateUrl);
        analyzeUrl = new AnalyzeUrl(cateUrl);
        String content = analyzeUrl.getResponse();
        System.out.println(content);
        analyzeRule.setContent(content, analyzeUrl.getBaseUrl());
        int page = Integer.parseInt(pg);
        int pageCount = 0;
        int limit = 90;
        List<?> pageElements = analyzeRule.getElements(rule.getPageNode());
        String currentPage = analyzeRule.getString(rule.getPage(), pageElements, false);
        String lastPage = analyzeRule.getString(rule.getPageCount(), pageElements, false);
        if (StringUtils.isNotEmpty(currentPage) && Pattern.matches("\\d+", currentPage)) {
            page = Integer.parseInt(currentPage);
        }
        if (StringUtils.isNotEmpty(lastPage) && Pattern.matches("\\d+", lastPage)) {
            pageCount = Integer.parseInt(lastPage);
        }
        List<?> elements = analyzeRule.getElements(rule.getCateVodNode());
        for (Object element : elements) {
            String name = analyzeRule.getString(rule.getCateVodName(), element, false);
            String img = analyzeRule.getString(rule.getCateVodPic(), element, true);
            String remark = analyzeRule.getString(rule.getCateVodRemarks(), element, false);
            String id = analyzeRule.getString(rule.getCateVodId(), element, false);
            list.add(new Vod(id, name, img, remark));
        }
        limit = list.size();
        return Result.get().vod(list).page(page, pageCount, limit,  pageCount <= 1 ? limit : pageCount * limit).string();
    }

    /**
     * 详情数据
     *
     * @param ids
     * @return
     */
    @Override
    public String detailContent(List<String> ids) throws Exception {
        Vod vod = new Vod();
        analyzeRule.put("detailId", ids.get(0));
        analyzeUrl = new AnalyzeUrl(analyzeRule.getString(rule.getDetailUrl()));
        String content = analyzeUrl.getResponse();
        analyzeRule.setContent(content, analyzeUrl.getBaseUrl());
        String img = analyzeRule.getString(rule.getDetailVodPic());
        String name = analyzeRule.getString(rule.getDetailVodName());
        List<?> elements = analyzeRule.getElements(rule.getDetailNode());
        String type = analyzeRule.getString(rule.getDetailTypeName(), elements, false);
        String area = analyzeRule.getString(rule.getDetailVodArea(), elements,false);
        String year = analyzeRule.getString(rule.getDetailVodYear(), elements, false);
        String remarks = analyzeRule.getString(rule.getDetailVodRemarks(), elements, false);
        String director = analyzeRule.getString(rule.getDetailVodDirector(), elements, false);
        String actor = analyzeRule.getString(rule.getDetailVodActor(), elements, false);
        String desc = analyzeRule.getString(rule.getDetailVodContent(), elements, false);

        if (StringUtils.isEmpty(type)) {type = analyzeRule.getString(rule.getDetailTypeName());}
        if (StringUtils.isEmpty(area)) {area = analyzeRule.getString(rule.getDetailVodArea());}
        if (StringUtils.isEmpty(year)) {year = analyzeRule.getString(rule.getDetailVodYear());}
        if (StringUtils.isEmpty(remarks)) {remarks = analyzeRule.getString(rule.getDetailVodRemarks());}
        if (StringUtils.isEmpty(director)) {director = analyzeRule.getString(rule.getDetailVodDirector());}
        if (StringUtils.isEmpty(actor)) {actor = analyzeRule.getString(rule.getDetailVodActor());}
        if (StringUtils.isEmpty(desc)) {desc = analyzeRule.getString(rule.getDetailVodContent());}

        List<?> sourceNames = analyzeRule.getElements(rule.getDetailVodPlayFrom());
        List<Object> files = new ArrayList<>();
        LinkedHashMap<String, List<String>> subMap = new LinkedHashMap<>();
        LinkedHashMap<String, List<String>> nfoMap = new LinkedHashMap<>();
        List<Object> sources = analyzeRule.getElements(rule.getDetailVodPlayUrl());
        String item = analyzeRule.getString(rule.getDetailFileNodeParent());
        if (StringUtils.isNotEmpty(item)) {
            listFiles(item, files, subMap, nfoMap);
        }
        if (nfoMap.size() > 0) {
            analyzeRule.put("nfo", nfoMap.get("tvshow").get(0).split("@@@")[2]);
            analyzeRule.put("poster", nfoMap.get("poster").get(0).split("@@@")[2]);
            String nfo = analyzeRule.getString(rule.getDetailFileNodeNfo());
            nfo = nfo.replace("\uFEFF","");
//            String json = XML.toJSONObject(nfo).toString();
            Map<String, Object> data = XMLUtil.xmlToMap(nfo);
            TVShow tvShow = new Gson().fromJson(new Gson().toJson(data),TVShow.class);
            if (StringUtils.isEmpty(type)) {type = TextUtils.join(",",tvShow.getGenre());}
            if (StringUtils.isEmpty(area)) {area = tvShow.getStudio();}
            if (StringUtils.isEmpty(year)) {year = tvShow.getYear();}
            if (StringUtils.isEmpty(remarks)) {remarks = tvShow.getStudio() + tvShow.getRating();}
            if (StringUtils.isEmpty(director)) {director = TextUtils.join("",tvShow.getDirector());}
            if (StringUtils.isEmpty(actor)) {actor = analyzeRule.getString(rule.getDetailVodActor());}
            if (StringUtils.isEmpty(desc)) {desc = tvShow.getPlot();}
            if (StringUtils.isEmpty(name)) {name = tvShow.getTitle();}
            if (StringUtils.isEmpty(img)) {img = analyzeRule.getString(rule.getDetailVodPic());}
        }
        vod.setVodId(ids.get(0));
        vod.setVodPic(img);
        vod.setVodYear(year);
        vod.setVodName(name);
        vod.setVodArea(area);
        vod.setVodActor(actor);
        vod.setVodRemarks(remarks);
        vod.setVodContent(desc);
        vod.setVodDirector(director);
        vod.setTypeName(type);
        if (files.size() > 0) {
            sources.addAll(files);
        }
        Map<String, String> sites = new LinkedHashMap<>();
        for (Object sourceName : sourceNames) {
            String formName = analyzeRule.getString(rule.getVodPlayForm(), sourceName, false);
            List<String> vodItems = new ArrayList<>();
            for (Object source : sources) {
                String vodPlayName = analyzeRule.getString(rule.getVodPlayName(), source, false);
                String vodPlayUrl = analyzeRule.getString(rule.getVodPlayUrl(), source, false);
                vodItems.add(Trans.get(vodPlayName) + "$" + vodPlayUrl + findSubs(vodPlayName, subMap));
            }
            if (vodItems.size() > 0) {
                sites.put(formName, TextUtils.join("#", vodItems));
            }
        }
        if (sites.size() > 0) {
            vod.setVodPlayFrom(TextUtils.join("$$$", sites.keySet()));
            vod.setVodPlayUrl(TextUtils.join("$$$", sites.values()));
        }
        return Result.string(vod);
    }

    private String findSubs(String name, LinkedHashMap<String, List<String>> subMap) {
        name = name.substring(0, name.lastIndexOf("."));
        List<String> subs = subMap.get(name);
        if (subs != null && subs.size() > 0) return combineSubs(subs);
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, List<String>> entry : subMap.entrySet()) sb.append(combineSubs(entry.getValue()));
        return sb.toString();
    }

    private String combineSubs(List<String> subs) {
        StringBuilder sb = new StringBuilder();
        for (String sub : subs) sb.append("+").append(sub);
        return sb.toString();
    }

    private void listFiles(String folder, List<Object> files, LinkedHashMap<String, List<String>> subMap, LinkedHashMap<String, List<String>> nfoMap) {
        listFiles(folder, files, subMap, nfoMap, "");
    }

    private void listFiles(String parent, List<Object> files, LinkedHashMap<String, List<String>> subMap, LinkedHashMap<String, List<String>>  nfoMap, String marker) {
        analyzeRule.put("marker", marker);
        analyzeRule.put("parent", parent);
        Object data = analyzeRule.get("parents");
        if (data == null || StringUtils.isEmpty(data.toString())) {
            data = new ArrayList<>();
            analyzeRule.put("parents", data);
        }
        ((List)data).add(parent);
        List<String> folders = new ArrayList<>();
        String fileNodeUrl = analyzeRule.getString(rule.getDetailFileNodeUrl());
        analyzeUrl = new AnalyzeUrl(fileNodeUrl);
        String content = analyzeUrl.getResponse();
        analyzeRule.setContent(content, analyzeUrl.getBaseUrl());
        List<?> items = analyzeRule.getElements(rule.getDetailFileNode());
        for (Object item : items) {
            if (StringUtils.isNotEmpty(analyzeRule.getString(rule.getDetailFileNodeRoot(), item,false))) {
                folders.add(new Gson().toJson(item));
            }
            if (isVideoFormat(analyzeRule.getString(rule.getDetailFileNodeLeaf(), item,false))) {
                files.add(item);
            }
            if (StringUtils.endsWithAny(analyzeRule.getString(rule.getDetailFileNodeSub(), item, false), ".srt,.ass,.ssa,.vtt".split(","))) {
                String subName = analyzeRule.getString(rule.getDetailFileNodeSub(), item, false);
                String key = subName.indexOf(".") > 0? subName.substring(0, subName.lastIndexOf(".")): subName;
                String fileExtension = subName.indexOf(".") > 0 ? subName.substring(subName.lastIndexOf(".")) :"";
                if (!subMap.containsKey(key)) subMap.put(key, new ArrayList<>());
                String id = analyzeRule.getString(rule.getDetailFileNodeId(), item, false);
                subMap.get(key).add(key + "@@@" + fileExtension + "@@@" + id);
            }
            if (StringUtils.endsWithAny(analyzeRule.getString(rule.getDetailFileNodeSub(), item, false), ".nfo,.jpg".split(","))) {
                String subName = analyzeRule.getString(rule.getDetailFileNodeSub(), item, false);
                String key = subName.indexOf(".") > 0? subName.substring(0, subName.lastIndexOf(".")): subName;
                String fileExtension = subName.indexOf(".") > 0 ? subName.substring(subName.lastIndexOf(".")) :"";
                if (!nfoMap.containsKey(key)) nfoMap.put(key, new ArrayList<>());
                String id = analyzeRule.getString(rule.getDetailFileNodeId(), item, false);
                nfoMap.get(key).add(key + "@@@" + fileExtension + "@@@" + id);
            }
        }
        String nextMarker = analyzeRule.getString(rule.getDetailFileNodeFlag());
        if (StringUtils.isNotEmpty(nextMarker)) {
            listFiles(parent, files, subMap, nfoMap, nextMarker);
        }
        for (String folder : folders) {
            listFiles(folder, files, subMap, nfoMap);
        }
    }

    /**
     * 搜索数据内容
     *
     * @param key
     * @param quick
     * @return
     */
    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        List<Vod> list = new ArrayList<>();
        analyzeRule.put("searchKey",key);
        analyzeUrl = new AnalyzeUrl(analyzeRule.getString(rule.getSearchUrl()));
        String content = analyzeUrl.getResponse();
        analyzeRule.setContent(content, analyzeUrl.getBaseUrl());
        List<?> elements = analyzeRule.getElements(rule.getSearchVodNode());
        for (Object element : elements) {
            String name = analyzeRule.getString(rule.getSearchVodName(), element, false);
            String img = analyzeRule.getString(rule.getSearchVodPic(), element, true);
            String remark = analyzeRule.getString(rule.getSearchVodRemarks(), element, false);
            String id = analyzeRule.getString(rule.getSearchVodId(), element, false);
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(list);
    }

    /**
     * 播放信息
     *
     * @param flag
     * @param id
     * @param vipFlags
     * @return
     */
    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) throws Exception {
        analyzeRule.put("playFlag", flag);
        analyzeRule.put("playId", id);
        analyzeRule.put("playFlags", new Gson().toJson(vipFlags));
        String url = analyzeRule.getString(rule.getPlayUrl());
        String subStr = analyzeRule.getString(rule.getPlaySub());
        List<Sub> subs = new Gson().fromJson(subStr,new TypeToken<List<Sub>>(){}.getType());
        HashMap<String, String> header = rule.getPlayHeader();
        String extendHeaderStr = analyzeRule.getString(rule.getPlayExtendHeader());
        if (header != null && StringUtils.isNotEmpty(extendHeaderStr)) {
            header.putAll(new Gson().fromJson(extendHeaderStr, HashMap.class));
        } else if (header == null) {
            header = new HashMap<>();
        }
        if (!header.containsKey("User-Agent")) {
            header.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42");
        }
        if (isVideoFormat(url)) {
            return Result.get().url(url).subs(subs).header(header).parse(0).string();
        }
        if ((Misc.isVip(url))) {
            return Result.get().url(url).subs(subs).header(header).parse(1).jx().string();
        }
        if (vipFlags.contains(flag)) {
            return Result.get().url(url).subs(subs).header(header).parse(1).jx().string();
        }
        return Result.get().url(url).subs(subs).header(header).parse().string();
    }

    /**
     * webview解析时使用 可自定义判断当前加载的 url 是否是视频
     *
     * @param url
     * @return
     */
    @Override
    public boolean isVideoFormat(String url) {
        if (StringUtil.isJson(url)) {
            try {
                url = new JSONObject(url).optJSONArray("urls").optString(0);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        String[] videoFormatList = {".M3U8", ".3G2", ".3GP", ".3GP2", ".3GPP", ".AMV", ".ASF", ".AVI", ".DIVX", ".DPG", ".DVR-MS", ".EVO", ".F4V", ".FLV", ".IFO", ".K3G", ".M1V", ".M2T", ".M2TS", ".M2V", ".M4B", ".M4P", ".M4V", ".MKV", ".MOV", ".MP2V", ".MP4", ".MPE", ".MPEG", ".MPG", ".MPV2", ".MTS", ".MXF", ".NSR", ".NSV", ".OGM", ".OGV", ".QT", ".RAM", ".RM", ".RMVB", ".RPM", ".SKM", ".TP", ".TPR", ".TRP", ".TS", ".VOB", ".WEBM", ".WM", ".WMP", ".WMV", ".WTV"};
        url = url.toLowerCase();
        if (url.contains("=http") || url.contains("=https") || url.contains("=https%3a%2f") || url.contains("=http%3a%2f")) {
            return false;
        }
        if (url.contains("alicloudccp.com") || url.contains("data.aliyundrive.net")) {
            return true;
        }
        return StringUtils.endsWithAny(url.toUpperCase(), videoFormatList);
    }

    /**
     * 是否手动检测webview中加载的url
     *
     * @return
     */
    @Override
    public boolean manualVideoCheck() {
        return super.manualVideoCheck();
    }

    private String fixUrl(String base, String src) {
        try {
            if (src.startsWith("//")) {
                Uri parse = Uri.parse(base);
                src = parse.getScheme() + ":" + src;
            } else if (!src.contains("://")) {
                Uri parse = Uri.parse(base);
                src = parse.getScheme() + "://" + parse.getHost() + src;
            }
        } catch (Exception e) {
            SpiderDebug.log(e);
        }
        return src;
    }
}
