package com.github.catvod.parser;

import com.github.catvod.utils.StringUtil;

import java.util.regex.Pattern;

public class UrlProcessor {

    private static UrlProcessor urlProcessor = new UrlProcessor();

    private String baseUrl;
    private String page;
    private String myUrl;

    public UrlProcessor setBaseUrl(String baseUrl) {
        this.baseUrl = baseUrl;
        return this;
    }

    public UrlProcessor setMyUrl(String myUrl) {
        this.myUrl = myUrl;
        return this;
    }

    public UrlProcessor setPage(String page) {
        this.page = page;
        return this;
    }

    public String build() {
        String url = StringUtil.encode(baseUrl);
        if (!page.equals("1") && Pattern.compile("(vodtype|videot)/\\w+").matcher(url).find()) {
            url = url.replaceFirst("-\\d+\\.html", "-" + page + ".html")
                    .replaceFirst("((vodtype|videot))\\.html", "$1-" + page + ".html");
        } else if (!page.equals("1") && Pattern.compile("type/\\w+").matcher(url).find()) {
            url = url.replaceFirst("-\\d+/", "-" + page + "/")
                    .replaceFirst("type/\\w+/", "$1-" + page + "/");
        } else if (!page.equals("1") && Pattern.compile("/?[\\w\\d]+-.*?-.*?-.*?-.*?-.*?-.*?-.*?-\\d*---\\d*(\\.html|/)").matcher(url).find()) {
            url = url.replaceFirst("\\d*(---(\\.html|/))", page + "$1")
                    .replaceFirst("\\d*(---\\d+(\\.html|/))", page + "$1");
        } else if (!page.equals("1") && Pattern.compile("((/vod/show)(/area/[\\w\\d%]+)?(/by/[\\w\\d%]+)?(/id/\\d+)?(/letter/[\\w\\d%]+)?)(/page/\\d+)?(/year/\\d+)?\\.html").matcher(url).find()) {
            url = url.replaceFirst("((/vod/show)?(/area/[\\w\\d%]+)?(/by/[\\w\\d%]+)?(/id/\\d+)?(/letter/[\\w\\d%]+)?)(/page/\\d+)?(/year/\\d+)?\\.html", "$1" + ("/page/" + page) + "$8" + ".html");
        } else if (!page.equals("1") && Pattern.compile("(list|/m|/l|/t|catalog|tv|films|sort)[/|_]\\w+").matcher(url).find()) {
            if (!page.equals("1") && Pattern.compile("(list|films)/\\d+_\\d+").matcher(myUrl).find()) {
                return url
                        .replaceFirst("((list|films)/\\d+)(\\.html)?(/)?$", "$1_" + page + ".html")
                        .replaceFirst("((list|films)/\\d+)_\\d+(\\.html)?(/)?$", "$1_" + page + ".html");
            } else if (!page.equals("1") && Pattern.compile("(list|m|l|t|catalog|sort)[/|_]\\w+-\\d+/").matcher(myUrl).find()) {
                return url
                        .replaceFirst("((list|m|l|t|catalog|sort)[/|_]\\w+)[_]?(\\.html)?(/)?$", "$1-" + page + ".html");
            } else if (!page.equals("1") && Pattern.compile("page/\\d+\\.html$").matcher(myUrl).find()) {
                return url
                        .replaceFirst("((list|m|tv)[/|_]\\w+)(\\.html)?(/)?$", "$1/page/" + page + ".html");
            } else if (!page.equals("1")) {
                return url.replaceFirst("index\\.html", "index" + page + ".html");
            }
        } else if (!page.equals("1") && Pattern.compile("(vodtypehtml)/\\w+").matcher(url).find()) {
            url = url.replaceFirst("((list|vodtypehtml)/\\d+)(\\.html)?(/)?$", "$1/index_" + page + ".html")
                    .replaceFirst("((list|vodtypehtml)/\\d+)_\\d+(\\.html)?(/)?$", "$1/index_" + page + ".html");
        } else if (!page.equals("1") && Pattern.compile("(vtype|vshow|zqtop|zqys|ysdq|ystop|xxtv|ys)/\\w+").matcher(url).find()) {
            url = url.replaceFirst("((vtype|vshow|zqtop|zqys|ysdq|ystop|xxtv|ys)/\\w+)(\\.html)?(/)?$", "$1/page/" + page + ".html");
        } else if (!page.equals("1") && Pattern.compile("\\w+[/-]page-\\d+(/|\\.html)$").matcher(url).find()) {
            url = url.replaceFirst("page-1", "page-" + page);
        } else if (!page.equals("1") && Pattern.compile("\\w+[/-]page_index=\\d+").matcher(url).find()) {
            url = url.replaceFirst("page_index=\\d+", "page_index=" + page);
        } else if (!page.equals("1") && Pattern.compile("\\w+/p_?\\d+\\.html$").matcher(url).find()) {
            url = url.replaceFirst("p(_?)\\d+", "p$1" + page);
        } else if (!page.equals("1") && Pattern.compile("\\w+-pg-\\d+").matcher(url).find()) {
            url = url.replaceFirst("pg-\\d+", "pg-" + page);
        } else if (!page.equals("1") && Pattern.compile("\\w+/index\\.html").matcher(url).find()) {
            if (page.equals("1") && Pattern.compile("index\\d+\\.html").matcher(myUrl).find()) {
                url = url.replaceFirst("index\\.html", "index." + page + ".html")
                        .replaceFirst("index\\d+\\.html", "index." + page + ".html");
            }
        } else if (!page.equals("1") && Pattern.compile("HD/\\w+\\.html").matcher(url).find()) {
            url = url.replaceFirst("((HD)/\\w+)(\\.html)?(/)?$", "$1_" + page + ".html");
        } else if (!page.equals("1") && Pattern.compile("(vodshow)/(\\w+/)*id/").matcher(url).find()) {
            url = url.replaceFirst("(.*)\\.html", "$1/page/" + page + ".html");
        } else if (!page.equals("1") && Pattern.compile("(sx|show|yzys)/(\\w+/)*").matcher(url).find()) {
            url = url.replaceFirst("(.*)(\\.html|/)$", "$1/page/" + page + "$2");
        } else if (!page.equals("1") && Pattern.compile("search.php").matcher(url).find()) {
            url = url + "&page=" + page;
        } else {
            return baseUrl;
        }
        return url;
    }

    public static UrlProcessor getInstance() {
        return urlProcessor;
    }


}
