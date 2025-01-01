package com.github.catvod.spider;

import android.content.Context;
import android.text.TextUtils;

import com.github.catvod.bean.Class;
import com.github.catvod.bean.Filter;
import com.github.catvod.bean.Result;
import com.github.catvod.bean.Vod;

import com.github.catvod.parser.NetworkUtils;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.CBC;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.crawler.Spider;
import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.utils.Trans;
import com.github.catvod.utils.gZip;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.StringReader;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import cn.hutool.core.util.StrUtil;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.ResponseBody;

import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class CZSPP extends Spider {

    private String siteUrl = "https://www.cz0101.com";
    private String siteHost = "www.cz0101.com";

    private static final Pattern g = Pattern.compile("\"([^\"]+)\";var [\\d\\w]+=function dncry.*md5.enc.Utf8.parse\\(\"([\\d\\w]+)\".*md5.enc.Utf8.parse\\(([\\d]+)\\)");
    private static final Pattern l = Pattern.compile("video: \\{url: \"([^\"]+)\"");
    private static final Pattern J = Pattern.compile("subtitle: \\{url:\"([^\"]+\\.vtt)\"");
    private static final Pattern dV = Pattern.compile("src: '([^']+\\.css)',");
    private static final Pattern regexVid = Pattern.compile("/movie/(\\d+).html");
    private static final Pattern cY = Pattern.compile("/page/(\\d+)");
    private static final Pattern regexPlay = Pattern.compile("/v_play/(.*)\\.html");
    private static final Pattern lN = Pattern.compile("([\\d:.]+) --> ([\\d:.]+)");
    private static final Pattern q3 = Pattern.compile("var vkey = ['\"]([^'\"]+)['\"]");
    private static final Pattern zJ = Pattern.compile("var fvkey = ['\"]([^'\"]+)['\"]");
    private static final Pattern f = Pattern.compile("var ua = ['\"]([^'\"]+)['\"]");
    private static final Pattern V = Pattern.compile("var cip = ['\"]([^'\"]+)['\"]");
    private static final Pattern NR = Pattern.compile("var time = ['\"]([^'\"]+)['\"]");
    private static final Pattern b = Pattern.compile("var url = ['\"]([^'\"]+)['\"]");
    private Pattern regexDetail = Pattern.compile("(.*)[:|：](.*)");
    private Pattern regexSearch = Pattern.compile("(\\d+) \\+ (\\d+)");

    public void setSiteUrl(String extend) {
        if (StrUtil.isEmpty(extend)) {
            extend = "https://www.cz01.vip";
        }
        String content = OkHttpUtil.string(extend);
        Document document = Jsoup.parse(content);
        for(Element element:document.select("h2 a")) {
            String site = element.select("a").attr("href");
            System.out.println("厂长资源：" + site);
            String subContent = OkHttpUtil.string(site);
            if (StrUtil.isNotEmpty(subContent) && !subContent.contains("Loading......") && !subContent.contains("Just a moment...") && !subContent.contains("导航页")) {
                siteUrl = site;
                siteHost = NetworkUtils.INSTANCE.getSubDomain(siteUrl);
                break;
            }
        }
    }

    @Override
    public void init(Context context) {
        super.init(context);
        setSiteUrl("https://www.cz01.vip");
    }

    @Override
    public void init(Context context, String extend) {
        //super.init(context, extend);
        setSiteUrl(extend);
    }

    private String md5(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & 255);
                while (hexString.length() < 2) {
                    hexString = "0" + hexString;
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    protected static HashMap<String, String> Headers() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36");
        return hashMap;
    }

    public static Object[] loadsub(String sub) {
        try {
            OKCallBack.OKCallBackDefault callBack = new OKCallBack.OKCallBackDefault() {
                @Override
                protected void onFailure(Call call, Exception e) {

                }

                @Override
                protected void onResponse(Response response) {

                }
            };
            OkHttpClient YM = OkHttpUtil.defaultClient();
            OkHttpUtil.get(YM, sub, null, Headers(), callBack);
            Response result = callBack.getResult();
            int code = result.code();
            if (code == 404) {
                return new Object[]{200, "application/octet-stream", new ByteArrayInputStream("WEBVTT".getBytes())};
            }
            ResponseBody body = result.body();
            byte[] bytes = body.bytes();
            byte[] tokenkey = Arrays.copyOfRange(bytes, 0, 16);
            byte[] data = Arrays.copyOfRange(bytes, 16, bytes.length);
            byte[] KS = CBC.CBC(data, tokenkey, tokenkey);
            String vtt = gZip.KS(KS);


            vtt = vtt.replaceAll("(\\d{2}:\\d{2}:\\d{2}.\\d{3}.+\\d{2}:\\d{2}:\\d{2}.\\d{3}).*", "$1");
            vtt = vtt.replaceAll("(\\d{2}:\\d{2}.\\d{3}).*?( --> )(\\d{2}:\\d{2}.\\d{3}).*", "00:$1$200:$3");
            vtt = vtt.replaceAll("<.*><.*>(.*)<.*><.*>", "$1");
            vtt = vtt.replaceAll("&(.*);", "");
            vtt = vtt.replaceAll(".*NOTE.*", "");
            BufferedReader br = new BufferedReader(new StringReader(vtt));
            ArrayList<String> lines = new ArrayList<>();
            int captionNumber = 1;
            String line = br.readLine();
            while (line != null) {
                if (line.matches("\\d{2}:\\d{2}:\\d{2}.\\d{3}.+\\d{2}:\\d{2}:\\d{2}.\\d{3}")) {
                    if (lines.get(lines.size() - 1).trim().isEmpty()) {
                        lines.add(captionNumber + "");
                        captionNumber++;
                    }
                }
                lines.add(line);
                line = br.readLine();
            }
            String join = TextUtils.join("\n", lines);

            return new Object[]{200, "application/octet-stream", new ByteArrayInputStream(join.getBytes())};
        } catch (Exception e) {
            e.printStackTrace();
            SpiderDebug.log(e);
            return null;
        }
    }

    /**
     * 首页最近更新数据 如果上面的homeContent中不包含首页最近更新视频的数据 可以使用这个接口返回
     *
     * @return
     */
    @Override
    public String homeVideoContent() throws Exception {
        List<Vod> list = new ArrayList<>();
        Document doc = Jsoup.parse(OkHttpUtil.string(siteUrl, getHeaders("")));
        for (Element element : doc.select("div.mi_ne_kd > ul > li")) {
            String name = element.selectFirst("h3 a").text();
            String img = element.selectFirst("a img").attr("data-original");
            String remark = element.select(".jidi").text();
            Matcher matcher = regexVid.matcher(element.selectFirst("a").attr("href"));
            if (!matcher.find())
                continue;
            String id = matcher.group(1);
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(list);
    }

    public String categoryContent(String str, String str2, boolean z, HashMap<String, String> hashMap) {
        try {
            JSONObject jSONObject = new JSONObject();
            Document g2 = Jsoup.parse(OkHttpUtil.string(siteUrl + str + "/page/" + str2, getHeaders("")));
            int parseInt = Integer.parseInt(str2);
            int parseInt2 = Integer.parseInt(str2);
            Matcher matcher = cY.matcher(g2.select("div.pagenavi_txt > a.extend").first().attr("href"));
            if (matcher.find()) {
                parseInt2 = Integer.parseInt(matcher.group(1));
            }
            Elements o = g2.select("div.mi_ne_kd > ul > li");
            JSONArray jSONArray = new JSONArray();
            for (Element next : o) {
                Matcher matcher2 = regexVid.matcher(next.selectFirst("a").attr("href"));
                if (matcher2.find()) {
                    String group = matcher2.group(1);
                    String trim = next.select("img").attr("alt");
                    String trim2 = next.select("img").attr("data-original");
                    String trim3 = next.select(".jidi").text();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("vod_id", group);
                    jSONObject2.put("vod_name", trim);
                    jSONObject2.put("vod_pic", trim2);
                    jSONObject2.put("vod_remarks", trim3);
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("list", jSONArray);
            jSONObject.put("page", parseInt);
            jSONObject.put("pagecount", parseInt2);
            jSONObject.put("limit", 25);
            jSONObject.put("total", parseInt2 <= 1 ? jSONArray.length() : parseInt2 * 25);
            return jSONObject.toString();
        } catch (Exception e) {
            SpiderDebug.log(e);
            return "";
        }
    }

    /**
     * 视频详情信息
     *
     * @param ids 视频id
     * @return
     */
    @Override
    public String detailContent(List<String> ids) {
        // 视频详情url
        String url = siteUrl + "/movie/" + ids.get(0) + ".html";
        Document doc = Jsoup.parse(OkHttpUtil.string(url, getHeaders("")));
        // 取基本数据
        String img = doc.select("div.dyimg > img").attr("src");
        String name = doc.select("div.moviedteail_tt > h1").text();
        String type = "", area = "", year = "", remarks = "", director = "", actor = "", content = "";
        Elements span_text_muted = doc.select("ul.moviedteail_list > li");
        for (int i = 0; i < span_text_muted.size(); i++) {
            Element text = span_text_muted.get(i);
            String info = text.text();
            Matcher m = regexDetail.matcher(info);
            String info1 = info;
            String info2 = info;
            if (m.find()) {
                info1 = m.group(1);
                info2 = m.group(2);
            }
            if (info1.contains("类型") || info.contains("分类")) {
                type = info2;
            } else if(info1.contains("年份")){
                year = info2;
            } else if(info1.contains("地区")) {
                area = info2;
            } else if(info1.contains("状态") || info1.contains("备注") || info1.contains("更新") || info1.contains("豆瓣")) {
                remarks = info2;
            } else if (info1.contains("导演")) {
                director = info2;
            } else if(info1.contains("主演")) {
                actor = info2;
            } else if(info.contains("简介")) {
                content = text.nextElementSibling().nextElementSibling().text();
            }
        }
        content = doc.select(".yp_context").text();
        Vod vod = new Vod();
        vod.setVodId(ids.get(0));
        vod.setVodPic(img);
        vod.setVodYear(year);
        vod.setVodName(name);
        vod.setVodArea(area);
        vod.setVodActor(actor);
        vod.setVodRemarks(remarks);
        vod.setVodContent(content);
        vod.setVodDirector(director);
        vod.setTypeName(type);

        Map<String, String> sites = new LinkedHashMap<>();
        // 取播放列表数据
        Elements sources = doc.select(".mi_paly_box span");
        Elements sourceList = doc.select(".paly_list_btn");
        for (int i = 0; i < sources.size(); i++) {
            Element source = sources.get(i);
            String sourceName = source.text();
            Elements playList = sourceList.get(i).select("a");
            List<String> vodItems = new ArrayList<>();
            for (int j = 0; j < playList.size(); j++) {
                Element e = playList.get(j);
                Matcher matcher = regexPlay.matcher(e.attr("href"));
                if (!matcher.find())
                    continue;
                String playURL = matcher.group(1);
                vodItems.add(Trans.get(e.text()) + "$" + playURL);
            }
            if (vodItems.size() > 0) {
                sites.put(sourceName, TextUtils.join("#", vodItems));
            }
        }
        if (sites.size() > 0) {
            vod.setVodPlayFrom(TextUtils.join("$$$", sites.keySet()));
            vod.setVodPlayUrl(TextUtils.join("$$$", sites.values()));
        }
        return Result.string(vod);
    }

    /**
     * 获取分类数据 + 首页最近更新视频列表数据
     *
     * @param filter 是否开启筛选 关联的是 软件设置中 首页数据源里的筛选开关
     * @return
     */
    @Override
    public String homeContent(boolean filter) {
        List<Vod> list = new ArrayList<>();
        List<Class> classes = new ArrayList<>();
        LinkedHashMap<String, List<Filter>> filters = null;
        Document doc = Jsoup.parse(OkHttpUtil.string(siteUrl, getHeaders("")));
        // 分类节点
        Elements elements = doc.select(".navlist > li > a:not(:contains(首页))");
        for (Element element: elements) {
            String name = element.text();
            String id = element.attr("href");
            classes.add(new Class(id, name));
        }
        for (Element element : doc.select("div.mi_ne_kd > ul > li")) {
            String name = element.selectFirst("h3 a").text();
            String img = element.selectFirst("a img").attr("data-original");
            String remark = element.select(".jidi").text();
            Matcher matcher = regexVid.matcher(element.selectFirst("a").attr("href"));
            if (!matcher.find())
                continue;
            String id = matcher.group(1);
            list.add(new Vod(id, name, img, remark));
        }
//        if (filter) {
//            filters = new Gson().fromJson(filterConfig, new TypeToken<LinkedHashMap<String, List<Filter>>>(){}.getType());
//        }
        return Result.string(classes, list, filters);
    }

    protected HashMap<String, String> getHeaders(String url) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("referer", url);
        hashMap.put("cookie", "esc_search_captcha=1; result=49");
        hashMap.put("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, lElemente Gecko) Chrome/100.0.4896.75 Safari/537.36");
        return hashMap;
    }

    public String playerContent(String str, String str2, List<String> list) {
        String str3;
        String str4;
        Element Xq;
        try {
            String V2 = OkHttpUtil.string(siteUrl + "/v_play/" + str2 + ".html", getHeaders(""));
            Document g2 = Jsoup.parse(V2);
            Matcher matcher = g.matcher(V2);
            if (matcher.find()) {
                String group = matcher.group(1);
                byte[] bytes = matcher.group(2).getBytes();
                byte[] bytes2 = matcher.group(3).getBytes();
                Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
                instance.init(2, new SecretKeySpec(bytes, "AES"), new IvParameterSpec(bytes2));
                String str5 = new String(instance.doFinal(Base64.decode(group, 0)));
                Matcher matcher2 = l.matcher(str5);
                if (matcher2.find()) {
                    str3 = matcher2.group(1);
                } else {
                    str3 = "";
                }
                Matcher matcher3 = J.matcher(str5);
                str4 = matcher3.find() ? matcher3.group(1) : "";
            } else {
                str4 = "";
                str3 = str4;
            }
            if (StringUtil.isEmpty(str3) && (Xq = g2.selectFirst("iframe.viframe")) != null) {
                String dV2 = Xq.attr("src");
                if (dV2.contains("jx.xmflv.com")) {
                    String V3 = OkHttpUtil.string(dV2, getHeaders(""));
                    Pattern pattern = NR;
                    Matcher matcher4 = pattern.matcher(V3);
                    if (!matcher4.find()) {
                        return "";
                    }
                    String group2 = matcher4.group(1);
                    Matcher matcher5 = b.matcher(V3);
                    if (!matcher5.find()) {
                        return "";
                    }
                    String group3 = matcher5.group(1);
                    String V4 = OkHttpUtil.string("https://jx.xmflv.com/player.php?time=" + group2 + "&url=" + group3, getHeaders(""));
                    Matcher matcher6 = q3.matcher(V4);
                    if (!matcher6.find()) {
                        return "";
                    }
                    String group4 = matcher6.group(1);
                    Matcher matcher7 = zJ.matcher(V4);
                    if (!matcher7.find()) {
                        return "";
                    }
                    String group5 = matcher7.group(1);
                    Matcher matcher8 = f.matcher(V4);
                    if (!matcher8.find()) {
                        return "";
                    }
                    String group6 = matcher8.group(1);
                    Matcher matcher9 = V.matcher(V4);
                    if (!matcher9.find()) {
                        return "";
                    }
                    String group7 = matcher9.group(1);
                    Matcher matcher10 = pattern.matcher(V4);
                    if (!matcher10.find()) {
                        return "";
                    }
                    String group8 = matcher10.group(1);
                    byte[] bytes3 = md5(group5).getBytes();
                    byte[] bytes4 = "UVE1NTY4MDY2NQ==".getBytes();
                    Cipher instance2 = Cipher.getInstance("AES/CBC/NoPadding");
                    instance2.init(1, new SecretKeySpec(bytes3, "AES"), new IvParameterSpec(bytes4));
                    String encodeToString = Base64.encodeToString(instance2.doFinal(group5.getBytes()), 0);
                    OKCallBack.OKCallBackDefault r6 = new OKCallBack.OKCallBackDefault() {
                        @Override
                        protected void onFailure(Call call, Exception e) {

                        }

                        @Override
                        protected void onResponse(Response response) {

                        }
                    };
                    HashMap hashMap = new HashMap();
                    hashMap.put("url", group3);
                    hashMap.put("time", group8);
                    hashMap.put("ua", group6);
                    hashMap.put("cip", group7);
                    hashMap.put("vkey", group4);
                    hashMap.put("fvkey", encodeToString);
                    OkHttpUtil.get(OkHttpUtil.defaultClient(), "https://jx.xmflv.com/xmflv-1.SVG", hashMap, getHeaders(""), r6);
                    str3 = new JSONObject(r6.getResult().body().string()).optString("url");
                } else {
                    Matcher matcher11 = dV.matcher(OkHttpUtil.string(dV2, getHeaders("")));
                    if (matcher11.find()) {
                        str3 = matcher11.group(1);
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("parse", "0");
            jSONObject.put("playUrl", "");
            jSONObject.put("url", str3);
            jSONObject.put("header", "");
            if (!StringUtil.isEmpty(str4)) {
                jSONObject.put("subf", "/vtt/utf-8");
                jSONObject.put("subtitle", Proxy.getUrl() + "?do=czspp&url=" + URLEncoder.encode(str4,"utf-8"));
            }
            return jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            SpiderDebug.log(e);
            return "";
        }
    }

    /**
     * 搜索
     *
     * @param key
     * @param quick 是否播放页的快捷搜索
     * @return
     */
    @Override
    public String searchContent(String key, boolean quick) {
        List<Vod> list = new ArrayList<>();
        String url = siteUrl + "/?s=" + StringUtil.encode(key);
        Document doc = Jsoup.parse(OkHttpUtil.string(url, getHeaders("")));
        Matcher m = regexSearch.matcher(doc.select("form").text());
        if (m.find()) {
            int result = Integer.parseInt(m.group(1)) + Integer.parseInt(m.group(2));
            Map<String, String> data = new HashMap<>();
            data.put("result", result + "");
            Map<String, String> headers = getHeaders(url);
            headers.put("cookie","esc_search_captcha=1; result="+result);
            doc = Jsoup.parse( OkHttpUtil.post(url, data, headers));
        }
        for (Element element : doc.select(".search_list li")) {
            String name = element.selectFirst("h3 a").text();
            String img = element.selectFirst("a img").attr("data-original");
            String remark = element.select(".jidi").text();
            Matcher matcher = regexVid.matcher(element.selectFirst("a").attr("href"));
            if (!matcher.find())
                continue;
            String id = matcher.group(1);
            list.add(new Vod(id, name, img, remark));
        }
        return Result.string(list);
    }
}