package com.github.catvod.legado;

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
}
