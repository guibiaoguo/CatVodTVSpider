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
public class AppYsV2Test extends SpiderTest {

    Spider appv2 = null;
    private String ext;
    private String expected;

    @Parameterized.Parameters
    public static Collection<String[]> getTestParameters() {
        String content = OkHttp.string("https://gitlab.com/mao4284120/js/-/raw/main/212757.json");
        JsonObject object = Json.safeObject(content);
        JsonArray sites = object.getAsJsonArray("sites");
        List<String[]> siteList = new ArrayList<>();
        for (JsonElement site : sites) {
            String api = site.getAsJsonObject().get("api").getAsString();
            String ext;
            if (api.equals("csp_AppYsV2")) {
                ext = site.getAsJsonObject().get("ext").getAsString();
                siteList.add(new String[]{ext,"1"});
            }
        }
        System.out.println(new Gson().toJson(siteList));
        return siteList;
    }

    public AppYsV2Test(String ext, String expected) {
        this.ext = ext;
        this.expected = expected;
    }
    @Before
    public void init() {
        appv2 = new AppYsV2();
        super.init(appv2,ext);
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