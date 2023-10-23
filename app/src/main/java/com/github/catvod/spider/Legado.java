package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;

import com.github.catvod.ali.API;
import com.github.catvod.bean.Class;
import com.github.catvod.bean.Filter;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Sub;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.parser.AnalyzeRule;
import com.github.catvod.parser.AnalyzeUrl;
import com.github.catvod.parser.StrResponse;
import com.github.catvod.parser.TVShow;
import com.github.catvod.utils.Misc;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.Trans;
import com.github.catvod.utils.XMLUtil;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cn.hutool.core.codec.Base64;
import cn.hutool.core.lang.Console;
import cn.hutool.core.util.StrUtil;
import okhttp3.Headers;

/**
 * bill
 * 仿照阅读规则,各种语法参考开源阅读
 */
public class Legado extends Spider {


    public static final Pattern pattern = Pattern.compile("www.aliyundrive.com/s/([^/]+)(/folder/([^/]+))?");

    private String ext;
    private LegadoRule rule;
    private AnalyzeRule analyzeRule;

    private AnalyzeUrl analyzeUrl;

    /**
     * @param context 上下文对象
     * @param extend  额外参数
     */
    @Override
    public void init(Context context, String extend) {
        this.ext = extend;
        fetchRule();
        analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        analyzeRule.put("proxy", Proxy.getUrl());
        super.init(context, extend);
    }

    private void fetchRule() {
        if (StrUtil.isNotEmpty(ext) && StrUtil.startWith(ext, "http")) {
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
     * @return 返回首页数据
     */
    @Override
    public String homeContent(boolean filter) {
        List<Vod> list = new ArrayList<>();
        List<Class> classes = rule.getClasses();
        LinkedHashMap<String, List<Filter>> filters = rule.getFilters();
        try {

            analyzeUrl = new AnalyzeUrl(analyzeRule.getString(rule.getHomeUrl()));
            String content = analyzeUrl.getResponse();
            Console.log(content);
            analyzeRule.setContent(content, analyzeUrl.getBaseUrl());
            if (classes == null) {
                classes = new ArrayList<>();
                List<?> elements = analyzeRule.getElements(rule.getTypeNode());
                for (Object element : elements) {
                    String name = analyzeRule.getString(rule.getTypeName(), element, false);
                    String id = analyzeRule.getString(rule.getTypeId(), element, false);
                    String flag = analyzeRule.getString(rule.getTypeFlag(), element, false);
                    classes.add(new Class(id, name, flag));
                }
            }

            if (filters == null) {
                filters = new LinkedHashMap<>();
            }

//            if (StrUtil.isEmpty(rule.getHomeVideoUrl())) {
                List<?> elements = analyzeRule.getElements(rule.getHomeVodNode());
                for (Object element : elements) {
                    String name = analyzeRule.getString(rule.getHomeVodName(), element, false);
                    String img = analyzeRule.getString(rule.getHomeVodPic(), element, true);
                    String remark = analyzeRule.getString(rule.getHomeVodRemarks(), element, false);
                    String id = analyzeRule.getString(rule.getHomeVodId(), element, false);
                    list.add(new Vod(id, name, img, remark));
                }
//            }
            return Result.string(classes, list, filters);
        } catch (Exception e) {
            Console.log("homeUrl {} {}", rule.getHomeUrl(), e.getLocalizedMessage());
        }
        return Result.string(classes, list, filters);
    }

    /**
     * 首页最近更新数据 如果上面的homeContent中不包含首页最近更新视频的数据 可以使用这个接口返回
     *
     * @return 返回首页推荐
     */
    @Override
    public String homeVideoContent() {
        try {
            String homeVideUrl = analyzeRule.getString(rule.getHomeVideoUrl());
            analyzeUrl = new AnalyzeUrl(homeVideUrl);
            String content = analyzeUrl.getResponse();
            Console.log(content);
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
        } catch (Exception e) {
            Console.log("homeVideoUrl {} {}", rule.getHomeVideoUrl(), e.getLocalizedMessage());
        }
        return Result.get().string();
    }

    /**
     * 分类数据
     *
     * @param tid    分类id
     * @param pg     分类页码
     * @param filter 是否过滤
     * @param extend 过滤参数
     * @return 返回分类数据
     */
    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) {
        try {
            List<Vod> list = new ArrayList<>();
            analyzeRule.put("pg", pg);
            analyzeRule.put("cateId", tid);
            if (filter && extend != null) {
                for (Map.Entry<String, String> entry : extend.entrySet()) {
                    analyzeRule.put(entry.getKey(), entry.getValue());
                }
            }
            String cateUrl = analyzeRule.getString(rule.getCateUrl());
            Console.log(cateUrl);
            analyzeUrl = new AnalyzeUrl(cateUrl);
            String content = analyzeUrl.getResponse();
            Console.log(content);
            analyzeRule.setContent(content, analyzeUrl.getBaseUrl());
            int page = Integer.parseInt(pg);
            int pageCount = 1;
            int limit;
            List<?> pageElements = analyzeRule.getElements(rule.getPageNode());
            String currentPage = analyzeRule.getString(rule.getPage(), pageElements, false);
            String lastPage = analyzeRule.getString(rule.getPageCount(), pageElements, false);
            if (StrUtil.isNotEmpty(currentPage) && Pattern.matches("\\d+", currentPage)) {
                page = Integer.parseInt(currentPage);
            }
            if (StrUtil.isNotEmpty(lastPage) && Pattern.matches("\\d+", lastPage)) {
                pageCount = Integer.parseInt(lastPage);
            }
            List<?> elements = analyzeRule.getElements(rule.getCateVodNode());
            for (Object element : elements) {
                String name = analyzeRule.getString(rule.getCateVodName(), element, false);
                String img = analyzeRule.getString(rule.getCateVodPic(), element, true);
                String remark = analyzeRule.getString(rule.getCateVodRemarks(), element, false);
                String id = analyzeRule.getString(rule.getCateVodId(), element, false);
                String tag = analyzeRule.getString(rule.getCateVodTag(), element, false);
                list.add(new Vod(id, name, img, remark, tag));
            }
            limit = list.size();
            return Result.get().vod(list).page(page, pageCount, limit, pageCount <= 1 ? limit : pageCount * limit).string();
        } catch (Exception e) {
            Console.log("cateUrl {} {}", rule.getCateUrl(), e.getLocalizedMessage());
        }
        return Result.get().string();
    }

    /**
     * 详情数据
     *
     * @param ids 详情数据ID
     * @return 返回详情数据
     */
    @Override
    public String detailContent(List<String> ids) {
        try {
            String url = ids.get(0).trim();
//            Matcher matcher = pattern.matcher(url);
//            if (matcher.find()) {
//                analyzeRule.put("spider", API.get());
//                API.get().setRefreshToken(rule.getAliToken());
//                String shareId = matcher.group(1);
//                String fileId = matcher.groupCount() == 3 ? matcher.group(3) : "";
//                API.get().setShareId(shareId);
//                return Result.string(API.get().getVod(url, fileId));
//            }
            Vod vod = new Vod();
            analyzeRule.put("detailId", ids.get(0));
            String detailUrl = analyzeRule.getString(rule.getDetailUrl());
            Console.log(detailUrl);
            analyzeUrl = new AnalyzeUrl(detailUrl);
            String content = analyzeUrl.getResponse();
            Console.log(content);
            analyzeRule.setContent(content, analyzeUrl.getBaseUrl());
            String img = analyzeRule.getString(rule.getDetailVodPic());
            String name = analyzeRule.getString(rule.getDetailVodName());
            List<?> elements = analyzeRule.getElements(rule.getDetailNode());
            String type = analyzeRule.getString(rule.getDetailTypeName(), elements, false);
            String area = analyzeRule.getString(rule.getDetailVodArea(), elements, false);
            String year = analyzeRule.getString(rule.getDetailVodYear(), elements, false);
            String remarks = analyzeRule.getString(rule.getDetailVodRemarks(), elements, false);
            String director = analyzeRule.getString(rule.getDetailVodDirector(), elements, false);
            String actor = analyzeRule.getString(rule.getDetailVodActor(), elements, false);
            String desc = analyzeRule.getString(rule.getDetailVodContent(), elements, false);

            if (StrUtil.isEmpty(type)) {
                type = analyzeRule.getString(rule.getDetailTypeName());
            }
            if (StrUtil.isEmpty(area)) {
                area = analyzeRule.getString(rule.getDetailVodArea());
            }
            if (StrUtil.isEmpty(year)) {
                year = analyzeRule.getString(rule.getDetailVodYear());
            }
            if (StrUtil.isEmpty(remarks)) {
                remarks = analyzeRule.getString(rule.getDetailVodRemarks());
            }
            if (StrUtil.isEmpty(director)) {
                director = analyzeRule.getString(rule.getDetailVodDirector());
            }
            if (StrUtil.isEmpty(actor)) {
                actor = analyzeRule.getString(rule.getDetailVodActor());
            }
            if (StrUtil.isEmpty(desc)) {
                desc = analyzeRule.getString(rule.getDetailVodContent());
            }

            List<?> sourceNames = analyzeRule.getElements(rule.getDetailVodPlayFrom());
            List<Object> files = new ArrayList<>();
            LinkedHashMap<String, List<String>> subMap = new LinkedHashMap<>();
            LinkedHashMap<String, String> nfoMap = new LinkedHashMap<>();
            List<Object> sources = analyzeRule.getElements(rule.getDetailVodPlayUrl());
            String item = analyzeRule.getString(rule.getDetailFileNodeParent());
            if (StrUtil.isNotEmpty(item)) {
                listFiles(item, files, subMap, nfoMap);
            }
//        String code = analyzeRule.getString("@js:playId='619ae207b6f14e786a234bb9bf1c0c8998b75834';shareId=java.get('shareId');shareToken=java.get('shareToken');access_token=java.get('accessToken');content=java.post('https://api.aliyundrive.com/v2/file/get_share_link_download_url/',{'share_id':shareId,'file_id':playId},{'referer':'https://www.aliyundrive.com','x-canary':'client=web,app=share,version=v2.3.1','authorization':access_token,'x-share-token':shareToken}).body();java.log(content);url=JSON.parse(content).url;java.log(url);url1=java.getString('$.url',content,false);java.log(url1);java.get(url1,{'referer':'https://www.aliyundrive.com/'}).body();");
//        System.out.println(code);
            if (nfoMap.size() > 0 && nfoMap.get("tvshow") != null) {
                analyzeRule.put("nfo", StrUtil.split(nfoMap.get("tvshow"), "@@@").toArray(new Object[]{})[2]);
                analyzeRule.put("poster", StrUtil.split(nfoMap.get("poster"), "@@@").toArray(new Object[]{})[2]);
                String nfo = analyzeRule.getString(rule.getDetailFileNodeNfo());
                nfo = nfo.replace("\uFEFF", "");
//            String json = XML.toJSONObject(nfo).toString();
                Map<String, Object> data = XMLUtil.xmlToMap(nfo);
                TVShow tvShow = new Gson().fromJson(new Gson().toJson(data), TVShow.class);
                if (StrUtil.isEmpty(type) && !tvShow.getGenre().isEmpty()) {
                    type = TextUtils.join(",", tvShow.getGenre());
                }
                if (StrUtil.isEmpty(area)) {
                    area = tvShow.getStudio();
                }
                if (StrUtil.isEmpty(year)) {
                    year = tvShow.getYear();
                }
                if (StrUtil.isEmpty(remarks)) {
                    remarks = tvShow.getStudio() + tvShow.getRating();
                }
                if (StrUtil.isEmpty(director) && !tvShow.getDirector().isEmpty()) {
                    director = TextUtils.join("", tvShow.getDirector());
                }
                if (StrUtil.isEmpty(actor)) {
                    actor = analyzeRule.getString(rule.getDetailVodActor());
                }
                if (StrUtil.isEmpty(desc)) {
                    desc = tvShow.getPlot();
                }
                if (StrUtil.isEmpty(name)) {
                    name = tvShow.getTitle();
                }
                if (StrUtil.isEmpty(img)) {
                    img = analyzeRule.getString(rule.getDetailVodPic());
                }
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
                for (Object source : sourceNames) {
                    sources.add(files);
                }
            }
            Map<String, String> sites = new LinkedHashMap<>();
            for (int i = 0; i < sourceNames.size(); i++) {
                Object sourceName = sourceNames.get(i);
                String formName = analyzeRule.getString(rule.getVodPlayForm(), sourceName, false);
                List<?> playList = analyzeRule.getStringList(rule.getVodPlayList(), sources.get(i), false);
                List<String> vodItems = new ArrayList<>();
                for (Object source : playList) {
                    String vodPlayName = analyzeRule.getString(rule.getVodPlayName(), source, false);
                    String vodPlayUrl = analyzeRule.getString(rule.getVodPlayUrl(), source, false);
                    vodItems.add(Trans.get(vodPlayName) + "$" + vodPlayUrl + findSubs(analyzeRule.getString(rule.getDetailFileNodeSub(), source, false), subMap));
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
        } catch (Exception e) {
            Console.log("detailUrl {} {}", rule.getDetailUrl(), e.getLocalizedMessage());
        }
        return Result.get().string();
    }

    private String findSubs(String name, LinkedHashMap<String, List<String>> subMap) {
        name = StrUtil.sub(name, 0, name.lastIndexOf("."));
        List<String> subs = subMap.get(name);
        if (subs != null && subs.size() > 0) return combineSubs(subs);
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, List<String>> entry : subMap.entrySet())
            sb.append(combineSubs(entry.getValue()));
        return sb.toString();
    }

    private String combineSubs(List<String> subs) {
        StringBuilder sb = new StringBuilder();
        for (String sub : subs) sb.append("+").append(sub);
        return sb.toString();
    }

    private void listFiles(String folder, List<Object> files, LinkedHashMap<String, List<String>> subMap, LinkedHashMap<String, String> nfoMap) {
        listFiles(folder, files, subMap, nfoMap, "");
    }

    private void listFiles(String parent, List<Object> files, LinkedHashMap<String, List<String>> subMap, LinkedHashMap<String, String> nfoMap, String marker) {
        analyzeRule.put("marker", marker);
        analyzeRule.put("parent", parent);
        Object data = analyzeRule.get("parents");
        if (data == null || StrUtil.isEmpty(data.toString())) {
            data = new ArrayList<String>();
            analyzeRule.put("parents", data);
        }
        if (data instanceof List) {
            ((List<String>) data).add(parent);
        }
        List<String> folders = new ArrayList<>();
        String fileNodeUrl = analyzeRule.getString(rule.getDetailFileNodeUrl());
        analyzeUrl = new AnalyzeUrl(fileNodeUrl);
        String content = analyzeUrl.getResponse();
        analyzeRule.setContent(content, analyzeUrl.getBaseUrl());
        List<?> items = analyzeRule.getElements(rule.getDetailFileNode());
        for (Object item : items) {
            if (StrUtil.isNotEmpty(analyzeRule.getString(rule.getDetailFileNodeRoot(), item, false))) {
                folders.add(new Gson().toJson(item));
            }
            if (isVideoFormat(analyzeRule.getString(rule.getDetailFileNodeLeaf(), item, false))) {
                files.add(item);
            }
            if (StrUtil.endWithAny(analyzeRule.getString(rule.getDetailFileNodeSub(), item, false), ".srt,.ass,.ssa,.vtt".split(","))) {
                String subName = analyzeRule.getString(rule.getDetailFileNodeSub(), item, false);
                String key = subName.indexOf(".") > 0 ? subName.substring(0, subName.lastIndexOf(".")) : subName;
                String fileExtension = subName.indexOf(".") > 0 ? subName.substring(subName.lastIndexOf(".")) : "";
                if (!subMap.containsKey(key)) subMap.put(key, new ArrayList<>());
                String id = analyzeRule.getString(rule.getDetailFileNodeId(), item, false);
                subMap.get(key).add(key + "@@@" + fileExtension + "@@@" + id);
            }
            if (StrUtil.endWithAny(analyzeRule.getString(rule.getDetailFileNodeSub(), item, false), ".nfo,.jpg".split(","))) {
                String subName = analyzeRule.getString(rule.getDetailFileNodeSub(), item, false);
                String key = subName.indexOf(".") > 0 ? subName.substring(0, subName.lastIndexOf(".")) : subName;
                String fileExtension = subName.indexOf(".") > 0 ? subName.substring(subName.lastIndexOf(".")) : "";
//                if (!nfoMap.containsKey(key)) nfoMap.put(key, new ArrayList<>());
                String id = analyzeRule.getString(rule.getDetailFileNodeId(), item, false);
                nfoMap.put(key, key + "@@@" + fileExtension + "@@@" + id);
            }
        }
        String nextMarker = analyzeRule.getString(rule.getDetailFileNodeFlag());
        if (StrUtil.isNotEmpty(nextMarker)) {
            listFiles(parent, files, subMap, nfoMap, nextMarker);
        }
        for (String folder : folders) {
            listFiles(folder, files, subMap, nfoMap);
        }
    }

    /**
     * 搜索数据内容
     *
     * @param key   搜索参数
     * @param quick 是否快捷搜索
     * @return 返回搜索数据
     */
    @Override
    public String searchContent(String key, boolean quick) {
        try {
            List<Vod> list = new ArrayList<>();
            analyzeRule.put("searchKey", key);
            analyzeUrl = new AnalyzeUrl(analyzeRule.getString(rule.getSearchUrl()));
            String content = analyzeUrl.getResponse();
            Console.log(content);
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
        } catch (Exception e) {
            Console.log("searchUrl {} {}", rule.getSearchUrl(), e.getLocalizedMessage());
        }
        return Result.get().string();
    }

    /**
     * 播放信息
     *
     * @param flag     播放标签
     * @param id       播放id
     * @param vipFlags VIP标签标识
     * @return 返回播放数据
     */
    @Override
    public String playerContent(String flag, String id, List<String> vipFlags) {
        String url = id;
        HashMap<String, String> header = rule.getPlayHeader();
        try {
//            if (analyzeRule.get("spider") instanceof API) {
//                API.get().checkAccessToken();
//                String[] ids = id.split("\\+");
//                String url = flag.equals("原畫") ? API.get().getDownloadUrl(ids[0]) : API.get().getPreviewUrl(ids[0], flag);
//                return Result.get().url(url).subs(API.get().getSub(ids)).header(API.get().getHeader()).parse(0).string();
//            }
            analyzeRule.put("playFlag", flag);
            analyzeRule.put("playId", StrUtil.split(id, "+").toArray(new Object[]{})[0]);
            analyzeRule.put("playFlags", new Gson().toJson(vipFlags));
            analyzeRule.put("subs", StrUtil.split(id, "+"));
            Console.log("flag: {}, id: {}, vipFlags: {}", flag, id, vipFlags);
            url = analyzeRule.getString(rule.getPlayUrl());
            String subStr = analyzeRule.getString(rule.getPlaySub());
            List<Sub> subs = new Gson().fromJson(subStr, new TypeToken<List<Sub>>() {
            }.getType());
            String extendHeaderStr = analyzeRule.getString(rule.getPlayExtendHeader());
            if (header != null && StrUtil.isNotEmpty(extendHeaderStr)) {
                header.putAll(new Gson().fromJson(extendHeaderStr, new TypeToken<HashMap<String, String>>() {
                }.getType()));
            } else if (header == null) {
                header = new HashMap<>();
            }
            if (!header.containsKey("User-Agent")) {
                header.put("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42");
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
        } catch (Exception e) {
            Console.log("playUrl {} {}", rule.getPlayUrl(), e.getLocalizedMessage());
        }
        return Result.get().url(url).header(header).string();
    }

    /**
     * webview解析时使用 可自定义判断当前加载的 url 是否是视频
     *
     * @param url 检测的URL
     * @return 返回是否是视频
     */
    @Override
    public boolean isVideoFormat(String url) {
        if (StringUtil.isJson(url)) {
            url = new Gson().fromJson(url, JsonObject.class).getAsJsonArray("urls").get(0).getAsString();
        }
        String[] videoFormatList = {".M3U8", ".3G2", ".3GP", ".3GP2", ".3GPP", ".AMV", ".ASF", ".AVI", ".DIVX", ".DPG", ".DVR-MS", ".EVO", ".F4V", ".FLV", ".IFO", ".K3G", ".M1V", ".M2T", ".M2TS", ".M2V", ".M4B", ".M4P", ".M4V", ".MKV", ".MOV", ".MP2V", ".MP4", ".MPE", ".MPEG", ".MPG", ".MPV2", ".MTS", ".MXF", ".NSR", ".NSV", ".OGM", ".OGV", ".QT", ".RAM", ".RM", ".RMVB", ".RPM", ".SKM", ".TP", ".TPR", ".TRP", ".TS", ".VOB", ".WEBM", ".WM", ".WMP", ".WMV", ".WTV"};
        url = url.toLowerCase();
        if (url.contains("=http") || url.contains("=https") || url.contains("=https%3a%2f") || url.contains("=http%3a%2f")) {
            return false;
        }
        if (url.contains("alicloudccp.com") || url.contains("data.aliyundrive.net")) {
            return true;
        }
        return StrUtil.endWithAny(url.toUpperCase(), videoFormatList);
    }

    /**
     * 是否手动检测webview中加载的url
     *
     * @return 是否手动检测webview中加载的url
     */
    @Override
    public boolean manualVideoCheck() {
        return super.manualVideoCheck();
    }

    public static Object[] vod(Map<String, String> params) {
        String js = params.get("js");
        AnalyzeRule analyzeRule1 = new AnalyzeRule();
        analyzeRule1.setContent("");
        String url = analyzeRule1.getString(Base64.decodeStr(js));
        AnalyzeUrl analyzeUrl1 = new AnalyzeUrl(url);
        StrResponse strResponse = analyzeUrl1.getStrResponse();
        if (strResponse.code() == 200) {
            Headers headers = strResponse.header();
            String type = headers.get("Content-Type");
            if (type == null) {
                type = "application/octet-stream";
            }
            Object[] result = new Object[3];
            result[0] = 200;
            result[1] = type;
            result[2] = strResponse.raw().body().byteStream();
            return result;
        }
        return null;
    }
}
