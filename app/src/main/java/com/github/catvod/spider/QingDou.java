package com.github.catvod.spider;

import android.text.TextUtils;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Filter;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.crawler.Spider;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;

import org.jsoup.Jsoup;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class QingDou extends Spider {

    private String classConfig = "[{\"type_name\":\"热门电影\",\"type_id\":\"hot_gaia\"},{\"type_name\":\"热播剧集\",\"type_id\":\"tv_hot\"},{\"type_name\":\"热播综艺\",\"type_id\":\"show_hot\"},{\"type_name\":\"电影筛选\",\"type_id\":\"movie\"},{\"type_name\":\"电视筛选\",\"type_id\":\"tv\"},{\"type_name\":\"电影榜单\",\"type_id\":\"rank_list_movie\"},{\"type_name\":\"电视榜单\",\"type_id\":\"rank_list_tv\"}]";
    private String filterConfig = "{'interests': [{'key': 'status', 'name': '状态', 'value': [{'n': '想看', 'v': 'mark'}, {'n': '在看', 'v': 'doing'}, {'n': '看过', 'v': 'done'}]}, {'key': 'subtype_tag', 'name': '形式', 'value': [{'n': '全部', 'v': ''}, {'n': '电影', 'v': 'movie'}, {'n': '电视', 'v': 'tv'}]}, {'key': 'year_tag', 'name': '年代', 'value': [{'n': '全部', 'v': '全部'}, {'n': '2023', 'v': '2023'}, {'n': '2022', 'v': '2022'}, {'n': '2021', 'v': '2021'}, {'n': '2020', 'v': '2020'}, {'n': '2019', 'v': '2019'}, {'n': '2010年代', 'v': '2010年代'}, {'n': '2000年代', 'v': '2000年代'}, {'n': '90年代', 'v': '90年代'}, {'n': '80年代', 'v': '80年代'}, {'n': '70年代', 'v': '70年代'}, {'n': '60年代', 'v': '60年代'}, {'n': '更早', 'v': '更早'}]}], 'hot_gaia': [{'key': 'sort', 'name': '排序', 'value': [{'n': '热度', 'v': 'recommend'}, {'n': '最新', 'v': 'time'}, {'n': '评分', 'v': 'rank'}]}, {'key': 'area', 'name': '地区', 'value': [{'n': '全部', 'v': '全部'}, {'n': '华语', 'v': '华语'}, {'n': '欧美', 'v': '欧美'}, {'n': '韩国', 'v': '韩国'}, {'n': '日本', 'v': '日本'}]}], 'tv_hot': [{'key': 'type', 'name': '分类', 'value': [{'n': '综合', 'v': 'tv_hot'}, {'n': '国产剧', 'v': 'tv_domestic'}, {'n': '欧美剧', 'v': 'tv_american'}, {'n': '日剧', 'v': 'tv_japanese'}, {'n': '韩剧', 'v': 'tv_korean'}, {'n': '动画', 'v': 'tv_animation'}]}], 'show_hot': [{'key': 'type', 'name': '分类', 'value': [{'n': '综合', 'v': 'show_hot'}, {'n': '国内', 'v': 'show_domestic'}, {'n': '国外', 'v': 'show_foreign'}]}], 'movie': [{'key': '类型', 'name': '类型', 'value': [{'n': '全部类型', 'v': ''}, {'n': '喜剧', 'v': '喜剧'}, {'n': '爱情', 'v': '爱情'}, {'n': '动作', 'v': '动作'}, {'n': '科幻', 'v': '科幻'}, {'n': '动画', 'v': '动画'}, {'n': '悬疑', 'v': '悬疑'}, {'n': '犯罪', 'v': '犯罪'}, {'n': '惊悚', 'v': '惊悚'}, {'n': '冒险', 'v': '冒险'}, {'n': '音乐', 'v': '音乐'}, {'n': '历史', 'v': '历史'}, {'n': '奇幻', 'v': '奇幻'}, {'n': '恐怖', 'v': '恐怖'}, {'n': '战争', 'v': '战争'}, {'n': '传记', 'v': '传记'}, {'n': '歌舞', 'v': '歌舞'}, {'n': '武侠', 'v': '武侠'}, {'n': '情色', 'v': '情色'}, {'n': '灾难', 'v': '灾难'}, {'n': '西部', 'v': '西部'}, {'n': '纪录片', 'v': '纪录片'}, {'n': '短片', 'v': '短片'}]}, {'key': '地区', 'name': '地区', 'value': [{'n': '全部地区', 'v': ''}, {'n': '华语', 'v': '华语'}, {'n': '欧美', 'v': '欧美'}, {'n': '韩国', 'v': '韩国'}, {'n': '日本', 'v': '日本'}, {'n': '中国大陆', 'v': '中国大陆'}, {'n': '美国', 'v': '美国'}, {'n': '中国香港', 'v': '中国香港'}, {'n': '中国台湾', 'v': '中国台湾'}, {'n': '英国', 'v': '英国'}, {'n': '法国', 'v': '法国'}, {'n': '德国', 'v': '德国'}, {'n': '意大利', 'v': '意大利'}, {'n': '西班牙', 'v': '西班牙'}, {'n': '印度', 'v': '印度'}, {'n': '泰国', 'v': '泰国'}, {'n': '俄罗斯', 'v': '俄罗斯'}, {'n': '加拿大', 'v': '加拿大'}, {'n': '澳大利亚', 'v': '澳大利亚'}, {'n': '爱尔兰', 'v': '爱尔兰'}, {'n': '瑞典', 'v': '瑞典'}, {'n': '巴西', 'v': '巴西'}, {'n': '丹麦', 'v': '丹麦'}]}, {'key': 'sort', 'name': '排序', 'value': [{'n': '近期热度', 'v': 'T'}, {'n': '首映时间', 'v': 'R'}, {'n': '高分优先', 'v': 'S'}]}, {'key': '年代', 'name': '年代', 'value': [{'n': '全部年代', 'v': ''}, {'n': '2023', 'v': '2023'}, {'n': '2022', 'v': '2022'}, {'n': '2021', 'v': '2021'}, {'n': '2020', 'v': '2020'}, {'n': '2019', 'v': '2019'}, {'n': '2010年代', 'v': '2010年代'}, {'n': '2000年代', 'v': '2000年代'}, {'n': '90年代', 'v': '90年代'}, {'n': '80年代', 'v': '80年代'}, {'n': '70年代', 'v': '70年代'}, {'n': '60年代', 'v': '60年代'}, {'n': '更早', 'v': '更早'}]}], 'tv': [{'key': '类型', 'name': '类型', 'value': [{'n': '不限', 'v': ''}, {'n': '电视剧', 'v': '电视剧'}, {'n': '综艺', 'v': '综艺'}]}, {'key': '电视剧形式', 'name': '电视剧形式', 'value': [{'n': '不限', 'v': ''}, {'n': '喜剧', 'v': '喜剧'}, {'n': '爱情', 'v': '爱情'}, {'n': '悬疑', 'v': '悬疑'}, {'n': '动画', 'v': '动画'}, {'n': '武侠', 'v': '武侠'}, {'n': '古装', 'v': '古装'}, {'n': '家庭', 'v': '家庭'}, {'n': '犯罪', 'v': '犯罪'}, {'n': '科幻', 'v': '科幻'}, {'n': '恐怖', 'v': '恐怖'}, {'n': '历史', 'v': '历史'}, {'n': '战争', 'v': '战争'}, {'n': '动作', 'v': '动作'}, {'n': '冒险', 'v': '冒险'}, {'n': '传记', 'v': '传记'}, {'n': '剧情', 'v': '剧情'}, {'n': '奇幻', 'v': '奇幻'}, {'n': '惊悚', 'v': '惊悚'}, {'n': '灾难', 'v': '灾难'}, {'n': '歌舞', 'v': '歌舞'}, {'n': '音乐', 'v': '音乐'}]}, {'key': '综艺形式', 'name': '综艺形式', 'value': [{'n': '不限', 'v': ''}, {'n': '真人秀', 'v': '真人秀'}, {'n': '脱口秀', 'v': '脱口秀'}, {'n': '音乐', 'v': '音乐'}, {'n': '歌舞', 'v': '歌舞'}]}, {'key': '地区', 'name': '地区', 'value': [{'n': '全部地区', 'v': ''}, {'n': '华语', 'v': '华语'}, {'n': '欧美', 'v': '欧美'}, {'n': '国外', 'v': '国外'}, {'n': '韩国', 'v': '韩国'}, {'n': '日本', 'v': '日本'}, {'n': '中国大陆', 'v': '中国大陆'}, {'n': '中国香港', 'v': '中国香港'}, {'n': '美国', 'v': '美国'}, {'n': '英国', 'v': '英国'}, {'n': '泰国', 'v': '泰国'}, {'n': '中国台湾', 'v': '中国台湾'}, {'n': '意大利', 'v': '意大利'}, {'n': '法国', 'v': '法国'}, {'n': '德国', 'v': '德国'}, {'n': '西班牙', 'v': '西班牙'}, {'n': '俄罗斯', 'v': '俄罗斯'}, {'n': '瑞典', 'v': '瑞典'}, {'n': '巴西', 'v': '巴西'}, {'n': '丹麦', 'v': '丹麦'}, {'n': '印度', 'v': '印度'}, {'n': '加拿大', 'v': '加拿大'}, {'n': '爱尔兰', 'v': '爱尔兰'}, {'n': '澳大利亚', 'v': '澳大利亚'}]}, {'key': 'sort', 'name': '排序', 'value': [{'n': '近期热度', 'v': 'T'}, {'n': '首播时间', 'v': 'R'}, {'n': '高分优先', 'v': 'S'}]}, {'key': '年代', 'name': '年代', 'value': [{'n': '全部', 'v': ''}, {'n': '2023', 'v': '2023'}, {'n': '2022', 'v': '2022'}, {'n': '2021', 'v': '2021'}, {'n': '2020', 'v': '2020'}, {'n': '2019', 'v': '2019'}, {'n': '2010年代', 'v': '2010年代'}, {'n': '2000年代', 'v': '2000年代'}, {'n': '90年代', 'v': '90年代'}, {'n': '80年代', 'v': '80年代'}, {'n': '70年代', 'v': '70年代'}, {'n': '60年代', 'v': '60年代'}, {'n': '更早', 'v': '更早'}]}, {'key': '平台', 'name': '平台', 'value': [{'n': '全部', 'v': ''}, {'n': '腾讯视频', 'v': '腾讯视频'}, {'n': '爱奇艺', 'v': '爱奇艺'}, {'n': '优酷', 'v': '优酷'}, {'n': '湖南卫视', 'v': '湖南卫视'}, {'n': 'Netflix', 'v': 'Netflix'}, {'n': 'HBO', 'v': 'HBO'}, {'n': 'BBC', 'v': 'BBC'}, {'n': 'NHK', 'v': 'NHK'}, {'n': 'CBS', 'v': 'CBS'}, {'n': 'NBC', 'v': 'NBC'}, {'n': 'tvN', 'v': 'tvN'}]}], 'rank_list_movie': [{'key': '榜单', 'name': '榜单', 'value': [{'n': '实时热门电影', 'v': 'movie_real_time_hotest'}, {'n': '一周口碑电影榜', 'v': 'movie_weekly_best'}, {'n': '豆瓣电影Top250', 'v': 'movie_top250'}]}], 'rank_list_tv': [{'key': '榜单', 'name': '榜单', 'value': [{'n': '实时热门电视', 'v': 'tv_real_time_hotest'}, {'n': '华语口碑剧集榜', 'v': 'tv_chinese_best_weekly'}, {'n': '全球口碑剧集榜', 'v': 'tv_global_best_weekly'}, {'n': '国内口碑综艺榜', 'v': 'show_chinese_best_weekly'}, {'n': '国外口碑综艺榜', 'v': 'show_global_best_weekly'}]}]}";

    private final String apiKey = "0ac44ae016490db2204ce0a042db2916";
    /**
     * 首页数据内容
     *
     * @param filter 是否开启筛选
     * @return
     */
    @Override
    public String homeContent(boolean filter) throws Exception {
        List<Vod> list = new ArrayList<>();
        List<Class> classes = Class.arrayFrom(classConfig);
        LinkedHashMap<String, List<Filter>> filters = null;
        if (filter) {
            filters = new Gson().fromJson(filterConfig, new TypeToken<LinkedHashMap<String, List<Filter>>>() {
            }.getType());
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
        return categoryContent("rank_list_movie", "1", true, new HashMap<>());
    }

    protected HashMap<String, String> getHeaders() {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("referer", "https://servicewechat.com/wx2f9b06c1de1ccfca/84/page-frame.html");
        headers.put("User-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36 MicroMessenger/7.0.9.501 NetType/WIFI MiniProgramEnv/Windows WindowsWechat");
        return headers;
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
        String type = tid;
        String sort = "recommend";
        String area = "全部";
        Map<String,Object> params = new HashMap<>();
        int count = 30;
        if (tid.equals("hot_gaia")) {
            if (extend.get("sort") != null) {
                sort = extend.get("sort");
            }
            if (extend.get("area") != null) {
                area = extend.get("area");
            }
            type = "movie/" + tid;
            params.put("area",area);
            params.put("sort",sort);
            params.put("start",(Integer.parseInt(pg)-1)*count);
            params.put("count",count);
        } else if (tid.equals("tv_hot") || tid.equals("show_hot")) {
            String stype = tid;
            if (extend.get("type") != null) {
                stype = extend.get("type");
            }
            type = "subject_collection/"+stype+"/items";
            params.put("start",(Integer.parseInt(pg)-1)*count);
            params.put("count",count);
        } else if (tid.startsWith("rank_list")) {
            String id = tid.equals("rank_list_movie")?"movie_real_time_hotest":"tv_real_time_hotest";
            if (extend.get("榜单") != null) {
                id = extend.get("榜单");
            }
            type = "subject_collection/"+id+"/items";
            params.put("start",(Integer.parseInt(pg)-1)*count);
            params.put("count",count);
        } else {
            type = tid + "/recommend";
            JsonObject selected_categories = new JsonObject();
            String tags;
            if (extend.isEmpty()) {
                sort = "T";
                tags = "";
                if (tid.equals("movie")) {
                    selected_categories.addProperty("类型","");
                    selected_categories.addProperty("地区","");
                } else {
                    selected_categories.addProperty("类型","");
                    selected_categories.addProperty("形式","");
                    selected_categories.addProperty("地区","");
                }
            } else {
                sort = "T";
                if (extend.get("sort") != null) {
                    sort = extend.get("sort");
                }
                tags = TextUtils.join(",",extend.values());
                if (tid.equals("movie")) {
                    selected_categories.addProperty("类型",extend.get("类型")!=null?extend.get("类型"):"");
                    selected_categories.addProperty("地区",extend.get("地区")!=null?extend.get("地区"):"");
                } else {
                    selected_categories.addProperty("类型",extend.get("类型")!=null?extend.get("类型"):"");
                    selected_categories.addProperty("形式",extend.get("类型")!=null?extend.get("类型") + "地区":"");
                    selected_categories.addProperty("地区",extend.get("地区")!=null?extend.get("地区"):"");
                }
            }
            params.put("tags",tags);
            params.put("sort",sort);
            params.put("refresh",0);
            params.put("selected_categories",selected_categories.toString());
            params.put("start",(Integer.parseInt(pg)-1)*count);
            params.put("count",count);
        }
        String url = "https://frodo.douban.com/api/v2/" + type + "?"+TextUtils.join("&",params.entrySet())+"&apikey="+apiKey;
        System.out.println(url);
        String content = OkHttpUtil.string(url, getHeaders());
//        System.out.println(content);
        JsonObject jsonObject = new Gson().fromJson(content, JsonObject.class);
        List<Vod> list = new ArrayList<>();
        JsonArray videos = jsonObject.getAsJsonArray("subject_collection_items");
        if (videos == null) {
            videos = jsonObject.getAsJsonArray("items");
        }
        for (JsonElement jsonElement : videos) {
            String name = jsonElement.getAsJsonObject().get("title").getAsString();
            String img = jsonElement.getAsJsonObject().get("pic").getAsJsonObject().get("normal").getAsString();
            String remark = jsonElement.getAsJsonObject().get("card_subtitle").getAsString();
            String id = jsonElement.getAsJsonObject().get("id").getAsString();
            list.add(new Vod(id, name, img, remark));
        }
        return Result.get().vod(list).page(Integer.parseInt(pg), Math.round(jsonObject.get("count").getAsFloat() / count), count, jsonObject.get("count").getAsInt()).string();
    }

    public int getNum(String uid) {
        Map<String, Integer> uids = new HashMap<>();
        uids.put("qq", 1);
        uids.put("youku", 3);
        uids.put("letv", 6);
        uids.put("mgtv", 7);
        uids.put("bilibili", 8);
        uids.put("iqiyi", 9);
        uids.put("cntv", 12);
        uids.put("cctv6", 13);
        uids.put("miguvideo", 15);
        uids.put("xigua", 17);
        uids.put("acfun", 18);
        uids.put("maiduidui", 19);
        return uids.get(uid);
    }

    private Comparator<JsonElement> sortComparator = new Comparator<JsonElement>() {

        @Override
        public int compare(JsonElement o1, JsonElement o2) {
            if (o1.isJsonNull() || o2.isJsonNull()) {
                return 0;
            }
            return Long.compare(o1.getAsJsonObject().get("ep").getAsLong(),o2.getAsJsonObject().get("ep").getAsLong());
        }
    };
    /**
     * 详情数据
     *
     * @param ids
     * @return
     */
    @Override
    public String detailContent(List<String> ids) throws Exception {
        String url = "https://frodo.douban.com/api/v2/movie/" + ids.get(0) + "?start=0&count=30&apikey="+apiKey;
        String content = OkHttpUtil.string(url, getHeaders());
        JsonObject jsonObject = new Gson().fromJson(content, JsonObject.class);
        Vod vod = new Vod();
        String img = jsonObject.get("cover_url").getAsString();
        String name = jsonObject.get("title").getAsString();
        String desc = jsonObject.get("intro").getAsString();
        String type = TextUtils.join(",", jsonObject.getAsJsonArray("genres")).replace("\"", "");
        String area = jsonObject.get("countries").getAsString();
        String year = jsonObject.get("year").getAsString();
        String remarks = jsonObject.get("durations").getAsString();
        List<String> directors = new ArrayList<>();
        for (JsonElement jsonElement : jsonObject.getAsJsonArray("directors")) {
            directors.add(jsonElement.getAsJsonObject().get("name").getAsString());
        }
        String director = TextUtils.join(",", directors);
        List<String> actors = new ArrayList<>();
        for (JsonElement jsonElement : jsonObject.getAsJsonArray("actors")) {
            actors.add(jsonElement.getAsJsonObject().get("name").getAsString());
        }
        String actor = TextUtils.join(",", actors);
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
        JsonArray vendors = jsonObject.getAsJsonArray("vendors");
        Map<String, String> sites = new LinkedHashMap<>();
        int i = 0;
        String subUrl = "https://movie.douban.com/subject/" + ids.get(0) + "/";
        content = OkHttpUtil.string(subUrl);
        Pattern pattern = Pattern.compile("sources\\[\\d+\\] = ([\\s\\S]*?\\])", Pattern.MULTILINE);
        Matcher matcher = pattern.matcher(content);
        while (matcher.find()) {
            String sourceName = vendors.get(i).getAsJsonObject().get("id").getAsString();
            String uid = vendors.get(i).getAsJsonObject().get("id").getAsString();
            int num = getNum(uid);
            List<String> vodItems = new ArrayList<>();
            List<JsonElement> playList = new Gson().fromJson(matcher.group(1), new TypeToken<List<JsonElement>>() {}.getType());
            Collections.sort(playList,sortComparator);
            for (JsonElement element : playList) {
                if (element.isJsonNull()) {
                    continue;
                }
                String ep = element.getAsJsonObject().get("ep").getAsString();
                String playLink = StringUtil.decode(element.getAsJsonObject().get("play_link").getAsString().split("url=")[1]);
                vodItems.add(ep + "$" + playLink);
            }
            if (vodItems.size() > 0) {
                sites.put(sourceName, TextUtils.join("#", vodItems));
            }
            i++;
        }

        if (sites.size() > 0) {
            vod.setVodPlayFrom(TextUtils.join("$$$", sites.keySet()));
            vod.setVodPlayUrl(TextUtils.join("$$$", sites.values()));
        }
        return Result.string(vod);
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
        String url = "https://frodo.douban.com/api/v2/search/subjects?type=movie&q=" + StringUtil.encode(key) + "/&start=0&count=30&apikey=0ac44ae016490db2204ce0a042db2916";
        System.out.println(url);
        String content = OkHttpUtil.string(url, getHeaders());
        System.out.println(content);
        JsonObject jsonObject = new Gson().fromJson(content, JsonObject.class);
        List<Vod> list = new ArrayList<>();
        for (JsonElement element : jsonObject.getAsJsonArray("items")) {
            JsonElement jsonElement = element.getAsJsonObject().get("target");
            String name = jsonElement.getAsJsonObject().get("title").getAsString();
            String img = jsonElement.getAsJsonObject().get("cover_url").getAsString();
            String remark = jsonElement.getAsJsonObject().get("card_subtitle").getAsString();
            String id = jsonElement.getAsJsonObject().get("id").getAsString();
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
        return Result.get().url(id).parse().string();
    }
}
