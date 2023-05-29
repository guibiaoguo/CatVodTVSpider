package com.github.catvod.parser;


import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AnalyzeByRegex {

    public static List<String> getElement(String res, List<String> regs) {
        return getElement(res, regs, 0);
    }

    public static List<String> getElement(String res, List<String> regs, int index) {
        int vIndex = index;
        Matcher resM = Pattern.compile(regs.get(vIndex)).matcher(res);
        if (!resM.find()) {
            return null;
        }
        if (vIndex + 1 == regs.size()) {
            List<String> info = new ArrayList<>();
            for (int i = 0; i <= resM.groupCount(); i++) {
                info.add(resM.group(i));
            }
            return info;
        } else {
            StringBuilder result = new StringBuilder();
            do {
                result.append(resM.group());
            } while (resM.find());
            return getElement(result.toString(), regs, ++vIndex);
        }
    }

    public static List<List<String>> getElements(String res, List<String> regs) {
        return getElements(res, regs, 0);
    }

    public static List<List<String>> getElements(String res, List<String> regs, int index) {
        int vIndex = index;
        Matcher resM = Pattern.compile(regs.get(vIndex)).matcher(res);
        if (!resM.find()) {
            return new ArrayList<>();
        }
        if (vIndex + 1 == regs.size()) {
            List<List<String>> books = new ArrayList<>();
            do {
                List<String> info = new ArrayList<>();
                for (int i = 0; i <= resM.groupCount(); i++) {
                    info.add(resM.group(i));
                }
                books.add(info);
            } while (resM.find());
            return books;
        } else {
            StringBuilder result = new StringBuilder();
            do {
                result.append(resM.group());
            } while (resM.find());
            return getElements(result.toString(), regs, ++vIndex);
        }
    }

}

