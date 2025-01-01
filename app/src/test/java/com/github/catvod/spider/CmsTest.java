package com.github.catvod.spider;

import com.github.catvod.crawler.Spider;
import com.github.catvod.net.OkHttp;
import com.github.catvod.utils.Json;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@RunWith(value = Parameterized.class)
public class CmsTest extends SpiderTest {

    Spider cms = null;
    private String ext;
    private String cindex;

    @Parameterized.Parameters
    public static Collection<String[]> getTestParameters() {
        String content = OkHttp.string("https://gitlab.com/mao4284120/js/-/raw/main/212757.json");
        JsonObject object = Json.safeObject(content);
        JsonArray sites = object.getAsJsonArray("sites");
        List<String[]> siteList = new ArrayList<>();
        for (JsonElement site : sites) {
            String type = site.getAsJsonObject().get("type").getAsString();
            String api;
            if (type.equals("1") || type.equals("0")) {
                api = site.getAsJsonObject().get("api").getAsString();
                siteList.add(new String[]{api+"$$$"+type,"5"});
            }
        }
        System.out.println(new Gson().toJson(siteList));
        return siteList;
//        return Arrays.asList(new String[][]{
//                {"http://cj.lziapi.com/api.php/provide/vod/$$1","5"},
//                {"https://taopianapi.com/cjapi/mc/vod/xml.html$$0","5"}
//        });
    }

    public CmsTest(String ext, String cindex) {
        this.ext = ext;
        this.cindex = cindex;
    }
    @Before
    public void init() {
        cms = new CMS();
        super.init(cms,ext);
        setCindex(Integer.parseInt(cindex));
    }

    @Test
    public void homeContent() throws Exception {
        super.homeContent(false);
    }

    @Test
    public void homeVideoContent() throws Exception {
        super.homeVideoContent();
    }

    @Test
    public void categoryContent() throws Exception {
        super.categoryContent();
    }

    @Test
    public void detailContent() throws Exception {
        super.detailContent();
    }

    @Test
    public void playerContent() throws Exception {
        super.playerContent();
    }

    @Test
    public void searchContent() throws Exception {
        super.searchContent("柯南");
    }

}
