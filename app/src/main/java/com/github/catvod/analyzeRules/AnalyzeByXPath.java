package com.github.catvod.analyzeRules;


import android.annotation.TargetApi;
import android.os.Build;
import android.text.TextUtils;

import com.github.catvod.utils.StringUtil;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.seimicrawler.xpath.JXDocument;
import org.seimicrawler.xpath.JXNode;

public class AnalyzeByXPath {
    private Object jxNode;

    private final Object parse(Object doc) {
        Object jxNode;
        if (doc instanceof JXNode) {
            jxNode = ((JXNode) doc).isElement() ? doc : this.strToJXDocument(doc.toString());
        } else if (doc instanceof Document) {
            jxNode = JXDocument.create((Document) doc);

        } else if (doc instanceof Element) {
            jxNode = JXDocument.create(new Elements(new Element[]{(Element) doc}));

        } else if (doc instanceof Elements) {
            jxNode = JXDocument.create((Elements) doc);

        } else {
            jxNode = this.strToJXDocument(doc.toString());
        }

        return jxNode;
    }

    private final JXDocument strToJXDocument(String html) {
        String html1 = html;
        if (StringUtils.endsWith(html, "</td>")) {
            html1 = "<tr>" + html + "</tr>";
        }

        if (StringUtils.endsWith(html1, "</tr>") || StringUtils.endsWith(html1, "</tbody>")) {
            html1 = "<table>" + html1 + "</table>";
        }

        JXDocument jxDocument = JXDocument.create(html1);
        return jxDocument;
    }

    private final List getResult(String xPath) {
        Object node = this.jxNode;
        List results;
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
        ArrayList rules = ruleAnalyzes.splitRule("&&", "||", "%%");
        if (rules.size() == 1) {
            return getResult(rules.get(0).toString());
        } else {
            ArrayList<List<JXNode>> results = new ArrayList<>();
            for (Object r1 : results) {
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


    @TargetApi(Build.VERSION_CODES.N)
    public final List<String> getStringList(String xPath) {
        if (xPath.isEmpty()) {
            return null;
        }
        List<String> result = new ArrayList<>();
        RuleAnalyzer ruleAnalyzes = new RuleAnalyzer(xPath);
        ArrayList rules = ruleAnalyzes.splitRule("&&", "||", "%%");
        if (rules.size() == 1) {
            getResult(xPath).forEach(it -> {
                result.add(it.toString());
            });
            return result;
        } else {
            ArrayList<List<String>> results = new ArrayList<>();
            for (Object r1 : results) {
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

    @TargetApi(Build.VERSION_CODES.N)
    public final String getString(String xPath) {
        if (xPath.isEmpty()) {
            return null;
        }
        List result = new ArrayList();
        RuleAnalyzer ruleAnalyzes = new RuleAnalyzer(xPath);
        ArrayList rules = ruleAnalyzes.splitRule("&&", "||");
        if (rules.size() == 1) {
            getResult(xPath).forEach(it -> {
                result.add(it.toString());
            });
            return StringUtil.join("\n",result);
        } else {
            for (Object r1 : rules) {
                String temp = getString(r1.toString());
                if (temp != null && !temp.isEmpty()) {
                    result.add(temp);
                    if (!temp.isEmpty() && ruleAnalyzes.getElementsType().equals("||")) {
                        break;
                    }
                }
            }
            return StringUtil.join("\n",result);
        }
    }

    public AnalyzeByXPath(Object doc) {
        this.jxNode = this.parse(doc);
    }
}

