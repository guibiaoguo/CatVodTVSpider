package com.github.catvod.legado;

import com.github.catvod.crawler.SpiderDebug;

public class LegadoData {
    public String name = "";
    public String fileUrl = "";
    public String subtitle = "";
    public String subtitleName = "";
    public String from = "默认";

    public LegadoData() {

    }

    public LegadoData(String name, String fileUrl) {
        this.name = name;
        this.fileUrl = fileUrl;
    }

    public void test(String name) {
        SpiderDebug.log("test method " + name);
    }
}
