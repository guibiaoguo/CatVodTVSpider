package com.github.catvod.utils;

import com.google.gson.internal.LinkedTreeMap;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.parser.Parser;

import java.util.ArrayList;
import java.util.List;

public class XMLUtil {


    private static class Loader {
        static volatile XMLUtil INSTANCE = new XMLUtil();
    }

    public static XMLUtil get() {
        return XMLUtil.Loader.INSTANCE;
    }

    public static LinkedTreeMap xmlToMap(String xml) {
        Element element = Jsoup.parse(xml, Parser.xmlParser());
        LinkedTreeMap data = new LinkedTreeMap();
        get().xmlToMap(element, data);
        return data;
    }

    public void xmlToMap(Element element, LinkedTreeMap data) {
        if (element.children().isEmpty()) {
            if (data.get(element.tagName()) != null) {
                if (data.get(element.tagName()) instanceof String) {
                    List datas = new ArrayList();
                    datas.add(data.get(element.tagName()));
                    datas.add(element.text());
                    data.put(element.tagName(), datas);
                } else if (data.get(element.tagName()) instanceof List) {
                    List datas = (List) data.get(element.tagName());
                    datas.add(element.text());
                }
            }
            else
                data.put(element.tagName(), element.text());
        }
        for (Element child : element.children()) {
            xmlToMap(child, data);
        }
    }
}
