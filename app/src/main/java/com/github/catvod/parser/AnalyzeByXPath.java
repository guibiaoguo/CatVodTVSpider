package com.github.catvod.parser;

import android.text.TextUtils;

import com.github.catvod.utils.StringUtil;

import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.parser.Parser;
import org.jsoup.select.Elements;
import org.seimicrawler.xpath.JXDocument;
import org.seimicrawler.xpath.JXNode;

import cn.hutool.core.util.StrUtil;

public class AnalyzeByXPath {
    private final Object jxNode;

    private Object parse(Object doc) {
        Object jxNode;
        if (doc instanceof JXNode) {
            jxNode = ((JXNode) doc).isElement() ? doc : this.strToJXDocument(doc.toString());
        } else if (doc instanceof Document) {
            jxNode = JXDocument.create((Document) doc);

        } else if (doc instanceof Element) {
            jxNode = JXDocument.create(new Elements((Element) doc));

        } else if (doc instanceof Elements) {
            jxNode = JXDocument.create((Elements) doc);

        } else {
            jxNode = this.strToJXDocument(doc.toString());
        }

        return jxNode;
    }

    private JXDocument strToJXDocument(String html) {
        String html1 = html;
        if (StrUtil.endWith(html, "</td>")) {
            html1 = "<tr>" + html + "</tr>";
        }

        if (StrUtil.endWith(html1, "</tr>") || StrUtil.endWith(html1, "</tbody>")) {
            html1 = "<table>" + html1 + "</table>";
        }
        if (StrUtil.startWith(html1, "<?xml")) {
            return JXDocument.create(Jsoup.parse(html1, Parser.xmlParser()));
        }
        return JXDocument.create(html1);
    }

    private List<JXNode> getResult(String xPath) {
        Object node = this.jxNode;
        List<JXNode> results;
        if (node instanceof JXNode) {
            results = ((JXNode) node).sel(xPath);
        } else {
            if (node == null) {
                throw new NullPointerException("null cannot be cast to non-null type org.seimicrawler.xpath.JXDocument");
            }

            results = ((JXDocument) node).selN(xPath);
        }

        return results;
    }


    public final List<JXNode> getElements(String xPath) {
        if (xPath.isEmpty()) {
            return null;
        }
        List<JXNode> jxNodes = new ArrayList<>();
        RuleAnalyzer ruleAnalyzes = new RuleAnalyzer(xPath);
        List<String> rules = ruleAnalyzes.splitRule("&&", "||", "%%");
        if (rules.size() == 1) {
            return getResult(rules.get(0));
        } else {
            ArrayList<List<JXNode>> results = new ArrayList<>();
            for (Object r1 : rules) {
                List<JXNode> temp = getElements(r1.toString());
                if (temp != null && !temp.isEmpty()) {
                    results.add(temp);
                    if (!temp.isEmpty() && ruleAnalyzes.getElementsType().equals("||")) {
                        break;
                    }
                }
            }
            if (results.size() > 0) {
                if ("%%".equals(ruleAnalyzes.getElementsType())) {
                    for (int i = 0; i < results.get(0).size(); i++) {
                        for (List<JXNode> temp : results) {
                            if (i < temp.size()) {
                                jxNodes.add(temp.get(i));
                            }
                        }
                    }
                } else {
                    for (List<JXNode> temp : results) {
                        jxNodes.addAll(temp);
                    }
                }
            }
        }
        return jxNodes;
    }


//    @TargetApi(Build.VERSION_CODES.N)
    public final List<String> getStringList(String xPath) {
        if (xPath.isEmpty()) {
            return null;
        }
        List<String> result = new ArrayList<>();
        RuleAnalyzer ruleAnalyzes = new RuleAnalyzer(xPath);
        List<String> rules = ruleAnalyzes.splitRule("&&", "||", "%%");
        if (rules.size() == 1) {
            List<JXNode> its = getResult(xPath);
            for(Object it:its) {
                result.add(it.toString());
            }
            return result;
        } else {
            ArrayList<List<String>> results = new ArrayList<>();
            for (Object r1 : rules) {
                List<String> temp = getStringList(r1.toString());
                if (temp != null && !temp.isEmpty()) {
                    results.add(temp);
                    if (!temp.isEmpty() && ruleAnalyzes.getElementsType().equals("||")) {
                        break;
                    }
                }
            }
            if (results.size() > 0) {
                if ("%%".equals(ruleAnalyzes.getElementsType())) {
                    for (int i = 0; i < results.get(0).size(); i++) {
                        for (List<String> temp : results) {
                            if (i < temp.size()) {
                                result.add(temp.get(i));
                            }
                        }
                    }
                } else {
                    for (List<String> temp : results) {
                        result.addAll(temp);
                    }
                }
            }
        }
        return result;
    }

    public final String getString(String xPath) {
        if (xPath.isEmpty()) {
            return null;
        }
        List<String> result = new ArrayList<>();
        RuleAnalyzer ruleAnalyzes = new RuleAnalyzer(xPath);
        List<String> rules = ruleAnalyzes.splitRule("&&", "||");
        if (rules.size() == 1) {
            List<JXNode> result1 = getResult(xPath);
            if (result1 != null) {
                return TextUtils.join("\n", result1);
            }
            return "";
        } else {
            for (Object r1 : rules) {
                String temp = getString(r1.toString());
                if (temp != null && !temp.isEmpty()) {
                    result.add(temp);
                    if (ruleAnalyzes.getElementsType().equals("||")) {
                        break;
                    }
                }
            }
            return StringUtil.join("\n", result);
        }
    }

    public AnalyzeByXPath(Object doc) {
        this.jxNode = this.parse(doc);
    }
}

