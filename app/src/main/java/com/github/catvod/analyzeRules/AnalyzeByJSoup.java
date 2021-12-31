package com.github.catvod.analyzeRules;

import android.annotation.TargetApi;
import android.os.Build;

import com.github.catvod.utils.StringUtil;

import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Collector;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;
import org.seimicrawler.xpath.JXNode;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import rxhttp.wrapper.annotations.NonNull;

public class AnalyzeByJSoup {

    public AnalyzeByJSoup(Object doc) {
        parse(doc);
    }

    private Element element;

    public final AnalyzeByJSoup parse(Object doc) {
        if (doc instanceof Element) {
            element = (Element) doc;
        } else if (doc instanceof JXNode) {
            element = ((JXNode) doc).isElement() ? ((JXNode) doc).asElement() : Jsoup.parse(((JXNode) doc).value().toString());
        } else {
            element = Jsoup.parse(doc.toString());
        }
        return this;
    }

    public Elements getElements(String rule) {
        return getElements(element, rule);
    }


    @TargetApi(Build.VERSION_CODES.N)
    public final String getString(String rule) {
        if (rule.isEmpty()) {
            return null;
        }
        List textS = getStringList(rule);
        List result = new ArrayList();
        if (textS != null & !textS.isEmpty()) {
            textS.forEach(text -> {
                result.add(text);
            });
            return StringUtil.join("\n",result);
        } else {
            return null;
        }
    }

    public String getString0(String rule) {
        List urlList = getStringList(rule);
        if (urlList != null && !urlList.isEmpty()) {
            return urlList.get(0).toString();
        } else {
            return "";
        }
    }

    public final List getStringList(String rule) {
        ArrayList result = new ArrayList();
        if (rule.isEmpty()) {
            return result;
        }
        SourceRule sourceRule = new SourceRule(rule);
        if (sourceRule.elementsRule.isEmpty()) {
            result.add(element.data());
        } else {
            RuleAnalyzer ruleAnalyzes = new RuleAnalyzer(sourceRule.elementsRule);
            ArrayList<String> rules = ruleAnalyzes.splitRule("&&", "||", "%%");
            ArrayList<List<String>> results = new ArrayList<>();
            for (String ruleStrX : rules) {
                List temp = null;
                if (sourceRule.isCss) {
                    int lastIndex = ruleStrX.lastIndexOf('@');
                    temp = getResultLast(element.select(ruleStrX.substring(0, lastIndex)), ruleStrX.substring(lastIndex + 1));
                } else {
                    temp = getResultList(ruleStrX);
                }
                if (temp != null && !temp.isEmpty()) {
                    results.add(temp);
                    if (!results.isEmpty() && ruleAnalyzes.getElementsType().equals("||")) {
                        break;
                    }
                }
            }
            if (results.size() > 0) {
                if ("%".equals(ruleAnalyzes.getElementsType())) {
                    for (int i = 0; i < results.size(); i++) {
                        for (List temp : results) {
                            if (i < temp.size())
                                result.add(temp.get(i));
                        }
                    }
                } else {
                    for (List temp : results) {
                        result.addAll(temp);
                    }
                }
            }
        }
        return result;

    }

    public final Elements getElements(Element temp, String rule) {
        if (temp == null || rule.isEmpty()) {
            return new Elements();
        }
        Elements elements = new Elements();
        SourceRule sourceRule = new SourceRule(rule);
        RuleAnalyzer ruleAnalyzes = new RuleAnalyzer(sourceRule.elementsRule);
        ArrayList<String> rules = ruleAnalyzes.splitRule("&&", "||", "%%");
        List<Elements> elementsList = new ArrayList<>();
        if (sourceRule.isCss) {
            for (String ruleStr : rules) {
                Elements temps = temp.select(ruleStr);
                elementsList.add(temps);
                if (temps.size() > 0 && ruleAnalyzes.getElementsType().equals("||")) {
                    break;
                }
            }
        } else {
            for (String ruleStr : rules) {
                RuleAnalyzer rsRule = new RuleAnalyzer(ruleStr);
                rsRule.trim();
                ArrayList<String> rs = rsRule.splitRule("@");
                Elements e1 = null;
                if (rs.size() > 1) {
                    e1 = new Elements();
                    e1.add(temp);
                    for (String r1 : rs) {
                        Elements es = new Elements();
                        for (Element et : e1) {
                            es.addAll(getElements(et, r1));
                        }
                        e1.clear();
                        e1.addAll(es);
                    }
                } else {
                    e1 = new ElementsSingle().getElementsSingle(temp, ruleStr);
                }
                elementsList.add(e1);
                if (e1.size() > 0 && ruleAnalyzes.getElementsType().equals("||")) {
                    break;
                }
            }
        }
        if (elementsList.size() > 0) {
            if ("%%".equals(ruleAnalyzes.getElementsType())) {
                for (int i = 0; i < elementsList.get(0).size(); i++) {
                    for (List<Element> es : elementsList) {
                        if (i < es.size()) {
                            elements.add(es.get(i));
                        }
                    }
                }
            } else {
                for (List<Element> es : elementsList) {
                    elements.addAll(es);
                }
            }
        }
        return elements;
    }

    private List getResultList(String ruleStr) {
        if (ruleStr.isEmpty()) {
            return null;
        }
        Elements elements = new Elements();
        elements.add(element);
        RuleAnalyzer rule = new RuleAnalyzer(ruleStr);
        rule.trim();
        ArrayList<String> rules = rule.splitRule("@");
        int last = rules.size() - 1;
        for (int i = 0; i < last; i++) {
            Elements es = new Elements();
            for (Element elt : elements) {
                es.addAll(new ElementsSingle().getElementsSingle(elt, rules.get(i)));
            }
            elements.clear();
            elements = es;
        }
        if (elements.isEmpty()) {
            return null;
        } else {
            return getResultLast(elements, rules.get(last));
        }
    }

    @TargetApi(Build.VERSION_CODES.N)
    private List getResultLast(Elements elements, String lastRule) {
        List<String> textS = new ArrayList<>();

        if (StringUtils.equals(lastRule, "text")) {
            for (Element element : elements) {
                String text = element.text();
                if (StringUtils.isNotEmpty(text)) {
                    textS.add(text);
                }
            }
        } else if (StringUtils.equals(lastRule, "textNodes")) {
            for (Element element : elements) {
                List tn = new ArrayList();
                List<TextNode> contentEs = element.textNodes();
                for (TextNode item : contentEs) {
                    String text = StringUtils.trim(item.text());
                    if (StringUtils.isNotEmpty(text)) {
                        tn.add(text);
                    }
                }
                if (!tn.isEmpty()) {
                    textS.add(StringUtil.join("\n", tn));
                }
            }
        } else if (StringUtils.equals(lastRule, "ownText")) {
            for (Element element : elements) {
                String text = element.ownText();
                if (StringUtils.isNotEmpty(text)) {
                    textS.add(text);
                }
            }
        } else if (StringUtils.equals(lastRule, "html")) {
            elements.select("script").remove();
            elements.select("style").remove();
            String html = elements.outerHtml();
            if (StringUtils.isNotEmpty(html)) {
                textS.add(html);
            }
        } else if (StringUtils.equals(lastRule, "all")) {
            textS.add(elements.outerHtml());
        } else {
            for (Element element : elements) {
                String url = element.attr(lastRule);
                if (StringUtils.isBlank(url) || textS.contains(url)) {
                    continue;
                }
                textS.add(url);
            }
        }
        return textS;
    }

    private class SourceRule {
        public String elementsRule;
        public Boolean isCss = false;

        public SourceRule(String rule) {
            if (StringUtils.startsWith(rule, "@css")) {
                isCss = true;
                elementsRule = StringUtils.trim(rule.substring(5));
            } else {
                elementsRule = rule;
            }
        }
    }

    private class ElementsSingle {
        private String beforeRule = "";
        private char split = '.';
        List<Integer> indexDefault = new ArrayList();
        List<Object> indexes = new ArrayList();

        public Elements getElementsSingle(Element temp, String rule) {
            findIndexSet(rule);
            Elements elements = null;
            if (StringUtils.isEmpty(beforeRule)) {
                elements = temp.children();
            } else {
                String[] rules = StringUtils.split(beforeRule, ".");
                if (StringUtils.equals(rules[0], "children")) {
                    elements = temp.children();
                } else if (StringUtils.equals(rules[0], "class")) {
                    elements = temp.getElementsByClass(rules[1]);
                } else if (StringUtils.equals(rules[0], "tag")) {
                    elements = temp.getElementsByTag(rules[1]);
                } else if (StringUtils.equals(rules[0], "id")) {
                    elements = Collector.collect(new Evaluator.Id(rules[1]), temp);
                } else if (StringUtils.equals(rules[0], "text")) {
                    elements = temp.getElementsContainingOwnText(rules[1]);
                } else {
                    elements = temp.select(beforeRule);
                }
            }
            int len = elements.size();
            int lastIndexs;
            if (indexDefault.size() - 1 != -1) {
                lastIndexs = indexDefault.size() - 1;
            } else {
                lastIndexs = indexes.size() - 1;
            }
            List<Integer> indexSet = new ArrayList<>();
            if (indexes.isEmpty()) {
                for (int ix = lastIndexs; ix >= 0; ix--) {
                    int it = indexDefault.get(ix);
                    if (it >= 0 && it < len) {
                        indexSet.add(it);
                    } else if (it < 0 && len >= -it) {
                        indexSet.add(it + len);
                    }
                }
            } else {
                for (int ix = lastIndexs; ix >= 0; ix--) {
                    if (indexes.get(ix) instanceof Triple) {
                        Triple triple = (Triple) indexes.get(ix);
                        int start = 0;
                        if (triple.first == null) {
                            start = 0;
                        } else if (triple.first >= 0) {
                            if (triple.first < len) {
                                start = triple.first;
                            } else {
                                start = len - 1;
                            }
                        } else if (-triple.first <= len) {
                            start = len + triple.first;
                        }
                        int end = 0;
                        if (triple.second == null) {
                            end = len - 1;
                        } else if (triple.second >= 0) {
                            if (triple.second < len) {
                                end = triple.second;
                            } else {
                                end = len - 1;
                            }
                        } else if (-triple.second <= len) {
                            end = len + triple.second;
                        }
                        if (start == end || triple.third >= len) {
                            indexSet.add(start);
                            continue;
                        }
                        int step = 1;
                        if (triple.third > 0) {
                            step = triple.third;
                        } else if (-triple.third < len) {
                            step = triple.third + len;
                        } else {
                            step = 1;
                        }
                        if (end > start) {
                            for (int i = start; i < end; i = i + step) {
                                indexSet.add(i);
                            }
                        } else {
                            for (int i = start; i >= end; i =i - step) {
                                indexSet.add(i);
                            }
                        }
                    } else {
                        int it = (int) indexes.get(ix);
                        if (it >= 0 && it < len) {
                            indexSet.add(it);
                        } else if (it < 0 && len >= -it) {
                            indexSet.add(it + len);
                        }
                    }
                }
            }
            if (split == '!') {
                for (int pcInt : indexSet) {
                    elements.set(pcInt, null);
                }
                elements.removeAll(new ArrayList<>(null));
            } else if (split == '.') {
                Elements es = new Elements();
                for (int pcint : indexSet) {
                    es.add(elements.get(pcint));
                }
                elements = es;
            }
            return elements;
        }

        private void findIndexSet(String rule) {
            String rus = StringUtils.trim(rule);
            int len = rus.length();
            Integer curInt;
            boolean curMinus = false;
            List<Integer> curList = new ArrayList<>();
            String l = "";
            boolean head = rus.charAt(len - 1) == ']';
            if (head) {
                len--;
                while (len-- >= 0) {
                    char rl = rus.charAt(len);
                    if (rl == ' ') continue;

                    if (Arrays.asList("0,1,2,3,4,5,6,7,8,9".split(",")).contains(rl+"")) {
                        l = rl + l;
                    }
                    else if (rl == '-') curMinus = true;
                    else {
                        curInt = l.isEmpty()?null:curMinus?-Integer.parseInt(l):Integer.parseInt(l);

                        if (rl == ':') curList.add(curInt);
                        else {
                            if (curList.isEmpty()) {
                                if (curInt == null) break;
                                indexes.add(curInt);
                            } else {
                                int step = curList.size() == 2 ? curList.get(0) : 1;
                                indexes.add(new Triple(curInt, curList.get(curList.size() - 1), step));
                                curList.clear();
                            }
                            if (rl == '!') {
                                split = '!';
                                while (len > 0 && rl == ' ') {
                                    rl = rus.charAt(--len);
                                }
                            }

                            if (rl == '[') {
                                beforeRule = rus.substring(0, len);
                                return;
                            }
                            if (rl != ',') break;
                        }
                        l = "";
                        curMinus = false;
                    }
                }

            } else {
                while (len-- >= 0) {
                    char rl = rus.charAt(len);
                    if (rl == ' ') continue;
                    if (Arrays.asList("0,1,2,3,4,5,6,7,8,9".split(",")).contains(rl+"")) {
                        l = rl + l;
                    }
                    else if (rl == '-') curMinus = true;
                    else {
                        if (rl == '!' || rl == '.' || rl == ':') {
                            indexDefault.add(curMinus ? -Integer.parseInt(l) : Integer.parseInt(l));
                            if (rl != ':') {
                                split = rl;
                                beforeRule = rus.substring(0, len);
                                return;
                            }
                        } else break;
                        l = "";
                        curMinus = false;
                    }
                }
            }
            split = ' ';
            beforeRule = rus;
        }
    }

    class Triple {
        public Integer first;
        public Integer second;
        public Integer third;

        Triple(Integer first, Integer second, Integer third) {
            this.first = first;
            this.second = second;
            this.third = third;
        }
    }
}

