package com.github.catvod.analyzeRules;


import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AnalyzeByRegex {

    public static List<String> getElement(String res, String[] regs) {
        return getElement(res, regs, 0);
    }

    public static List<String> getElement(String res, String[] regs, int index) {
        ;
        int vIndex = index;
        Matcher resM = Pattern.compile(regs[vIndex]).matcher(res);
        if (!resM.find()) {
            return null;
        }
        List<String> info = new ArrayList<>();
        if (vIndex + 1 == regs.length) {
            for (int i = 1; i <= resM.groupCount(); i++) {
                info.add(resM.group(i));
            }
        } else {
            StringBuilder result = new StringBuilder();
            do {
                result.append(resM.group());
            } while (resM.find());
            getElement(result.toString(), regs, ++vIndex);
        }
        return info;
    }

    public static List<List<String>> getElements(String res, String[] regs) {
        return getElements(res, regs, 0);
    }

    public static List<List<String>> getElements(String res, String[] regs, int index) {
        int vIndex = index;
        Matcher resM = Pattern.compile(regs[vIndex]).matcher(res);
        if (!resM.find()) {
            return null;
        }
        List<List<String>> books = new ArrayList<>();
        if (vIndex + 1 == regs.length) {
            do {
                List<String> info = new ArrayList<>();
                for (int i = 1; i <= resM.groupCount(); i++) {
                    info.add(resM.group(i));
                }
                books.add(info);
            } while (resM.find());
        } else {
            StringBuilder result = new StringBuilder();
            do {
                result.append(resM.group());
            } while (resM.find());
            return getElements(result.toString(), regs, ++vIndex);
        }
        return books;
    }

}

