package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Filter;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;
import com.github.catvod.net.OkHttp;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.Utils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.TextNode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author ColaMint & FongMi
 */
public class Ahhhhfs extends NetworkDrive {

    public static Pattern Folder = Pattern.compile("www.aliyundrive.com/s/([^/]+)(/folder/([^/]+))?");

    public static String siteUrl = "https://www.xbwpys.com";

    private String classConfig = "[{\"type_name\":\"影视\",\"type_id\":\"movie\"}]";

    private final Pattern regexCategory = Pattern.compile("(/category/[^/]+)");
    private final Pattern regexVid = Pattern.compile("(/\\d+/)$");

    private static final Pattern AliPLink = Pattern.compile("(https://www.ali(pan|yundrive).com/s/[^\"]+)");

    private static final Pattern QuarkPLink = Pattern.compile("(https://pan.quark.cn/s/[^\"]+)");
    private static final Pattern UcPLink = Pattern.compile("(https://drive.uc.cn/s/[^\"]+)");

    @Override
    public void init(Context context, String extend) {
        super.init(context, extend);
    }

    @Override
    public String homeContent(boolean filter) throws Exception {
        List<Vod> list = new ArrayList<>();
        List<Class> classes = new ArrayList<>();
        LinkedHashMap<String, List<Filter>> filters = null;
        Document doc = Jsoup.parse(OkHttp.string(siteUrl, getHeaders()));
        for (Element element : doc.select(".section-cat-navbtn a:gt(0)")) {
            String name = element.text();
            Matcher mather = regexCategory.matcher(element.attr("href"));
            if (!mather.find())
                continue;
            // 把分类的id和名称取出来加到列表里
            String id = mather.group(1).trim();
            classes.add(new Class(id, name));
        }
        for (Element element : doc.select(".post-item")) {
            String name = element.select("a").attr("title");
            String img = element.select("a").attr("data-bg");
            String remark = element.select(".entry-desc").text();
            Matcher matcher = regexVid.matcher(element.select("a").attr("href"));
            if (!matcher.find())
                continue;
            String id = matcher.group(1);
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(classes, list, filters);
    }

    @Override
    public String homeVideoContent() throws Exception {
        return categoryContent("/category/movie-1/", "1", false, new HashMap<>());
    }

    private HashMap<String, String> getHeaders() {
        HashMap<String, String> headers = new HashMap<>();
        headers.put("User-Agent", Utils.CHROME);
        return headers;
    }

    @Override
    public String categoryContent(String tid, String pg, boolean filter, HashMap<String, String> extend) throws Exception {
        String type = extend.containsKey("type") ? extend.get("type") : tid;
        List<Vod> list = new ArrayList<>();

            String result = OkHttp.string(siteUrl  + type + "/page/" + pg + "/", getHeaders());
            Document doc = Jsoup.parse(result);
            for (Element element : doc.select(".post-item")) {
                String name = element.select("a").attr("title");
                String img = element.select("a").attr("data-bg");
                String remark = element.select(".entry-desc").text();
                Matcher matcher = regexVid.matcher(element.select("a").attr("href"));
                if (!matcher.find())
                    continue;
                String id = matcher.group(1);
                list.add(new Vod(id, name, img, remark));
            }

        return Result.string(list);
    }

    @Override
    public String detailContent(List<String> ids) throws Exception {
        String vodId = ids.get(0);
        String content = OkHttp.string(siteUrl+vodId, getHeaders());
        Document doc = Jsoup.parse(content);
        Vod item = new Vod();
        item.setVodId(vodId);
        item.setVodName(doc.select("p img").attr("title"));
        item.setVodPic(doc.select("p img").attr("src"));
        item.setVodContent(doc.select("p").get(2).text());
        List<String> shareLinks = doc.select("p:contains(网盘)>a").eachAttr("data-clipboard-text");
        for (int i = 0; i < shareLinks.size(); i++) shareLinks.set(i, shareLinks.get(i).trim());
        if (AliPLink.matcher(content).find() || QuarkPLink.matcher(content).find() || UcPLink.matcher(content).find()) {
            String detail = super.detailContent(Arrays.asList(content));
            Result result = Result.objectFrom(detail);
            item.setVodPlayFrom(result.getList().get(0).getVodPlayFrom());
            item.setVodPlayUrl(result.getList().get(0).getVodPlayUrl());
        }
//        item.setVodPlayFrom(super.detailContentVodPlayFrom(shareLinks));
//        item.setVodPlayUrl(super.detailContentVodPlayUrl(shareLinks));

        List<TextNode> elements = doc.select("p").get(1).textNodes();
        for (TextNode e : elements) {
            String title = e.text();
            if (title.contains("导演")) {
                item.setVodDirector(TextUtils.join(",", title.substring(4).split("/")));
            } else if (title.contains("主演")) {
                item.setVodActor(TextUtils.join(",", title.substring(4).split("/")));
            } else if (title.contains("年代") || title.contains("日期")) {
                item.setVodYear(e.text().split(":")[1]);
            } else if (title.contains("地区")) {
                item.setVodArea(title.split(":")[1]);
            } else if (title.contains("片长")) {
                item.setVodRemarks(title.split(":")[1]);
            } else if (title.contains("类型")) {
                item.setTypeName(title.split(":")[1]);
            }
        }
        return Result.string(item);
    }

    @Override
    public String searchContent(String key, boolean quick) throws Exception {
        List<Vod> list = new ArrayList<>();
        String result = OkHttp.string(siteUrl + "?cat=13&s=" + StringUtil.encode(key), getHeaders());
        Document doc = Jsoup.parse(result);
        for (Element element : doc.select(".post-item")) {
            String name = element.select("a").attr("title");
            String img = element.select("a").attr("data-bg");
            String remark = element.select(".entry-desc").text();
            Matcher matcher = regexVid.matcher(element.select("a").attr("href"));
            if (!matcher.find())
                continue;
            String id = matcher.group(1);
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(list);
    }

}
