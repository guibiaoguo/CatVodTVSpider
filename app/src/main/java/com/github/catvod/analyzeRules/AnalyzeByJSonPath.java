package com.github.catvod.analyzeRules;

import com.github.catvod.utils.StringUtil;
import com.jayway.jsonpath.JsonPath;
import com.jayway.jsonpath.ReadContext;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;

import java.util.ArrayList;
import java.util.List;

public class AnalyzeByJSonPath {

    private ReadContext ctx;

    public AnalyzeByJSonPath(Object json) {
        this.ctx = parse(json);
    }

    public static final ReadContext parse(Object json) {
        ReadContext ctx;
        if (json instanceof ReadContext) {
            ctx = (ReadContext) json;
        } else if (json instanceof String) {
            ctx = JsonPath.parse(json.toString());
        } else {
            ctx = JsonPath.parse(json);
        }
        return ctx;
    }

    /**
     * 改进解析方法
     * 解决阅读”&&“、”||“与jsonPath支持的”&&“、”||“之间的冲突
     * 解决{$.rule}形式规则可能匹配错误的问题，旧规则用正则解析内容含‘}’的json文本时，用规则中的字段去匹配这种内容会匹配错误.现改用平衡嵌套方法解决这个问题
     * */
    public final String getString(String rule) {
        if (rule.isEmpty()) {
            return null;
        } else {
            String result = null;
            RuleAnalyzer ruleAnalyzes = new RuleAnalyzer(rule, true);
            //设置平衡组为代码平衡
            ArrayList rules = ruleAnalyzes.splitRule("&&", "||");
            if (rules.size() == 1) {
                ruleAnalyzes.reSetPos(); //将pos重置为0，复用解析器
                result = ruleAnalyzes.innerRule("{$.",1,1,this);
                if (result.isEmpty()) {
                    //st为空，表明无成功替换的内嵌规则
                    try {
                        Object obj = this.ctx.read(rule);
                        if(obj instanceof JSONArray) {
                            JSONArray jsonArray = (JSONArray) obj;
                            List tmp = new ArrayList();
                            for (int i = 0; i < jsonArray.length(); i++) {
                                tmp.add(jsonArray.opt(i).toString());
                            }
                            result = StringUtil.join("\n",tmp);
                        } else {
                            result = obj.toString();
                        }
                    } catch (Exception e) {
                    }
                }
                return result;
            } else {
                List textList = new ArrayList();
                for (Object r1 : rules) {
                    String temp = getString(r1.toString());
                    if (StringUtils.isNotEmpty(temp)) {
                        textList.add(temp);
                        if (ruleAnalyzes.getElementsType().equals("||")) {
                            break;
                        }
                    }
                }
                return StringUtil.join("\n",textList);
            }
        }
    }


    public final List getStringList(String rule) {
        ArrayList result = new ArrayList();
        if (rule.isEmpty()) {
            return result;
        }
        RuleAnalyzer ruleAnalyzes = new RuleAnalyzer(rule, true); //设置平衡组为代码平衡
        ArrayList rules = ruleAnalyzes.splitRule("&&", "||", "%%");
        if (rules.size() == 1) {
            ruleAnalyzes.reSetPos(); //将pos重置为0，复用解析器
            String st = ruleAnalyzes.innerRule("{$.",1,1,this);
            if (st.isEmpty()) {
                //st为空，表明无成功替换的内嵌规则
                try {
                    Object obj = this.ctx.read(rule);
                    if (obj instanceof JSONArray) {
                        JSONArray jsonArray = (JSONArray) obj;
                        for (int i = 0; i < jsonArray.length(); i++) {
                            result.add(jsonArray.opt(i).toString());
                        }
                    } else {
                        result.add(obj.toString());
                    }
                } catch (Exception e) {
                }
            } else {
                result.add(st);
            }
            return result;
        } else {
            ArrayList<List<String>> results = new ArrayList<>();
            for (Object r1 : rules) {
                List temp = getStringList(r1.toString());
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
                        for (List temp : results) {
                            if (i < temp.size()) {
                                result.add(temp.get(i));
                            }
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


    public final Object getObject(String rule) {
        return ctx.read(rule);
    }


    public final ArrayList getList(String rule) {
        ArrayList result = new ArrayList();
        if (rule.isEmpty()) {
            return result;
        }
        RuleAnalyzer ruleAnalyzes = new RuleAnalyzer(rule, true); //设置平衡组为代码平衡
        ArrayList rules = ruleAnalyzes.splitRule("&&", "||", "%%");
        if (rules.size() == 1) {
            Object obj = this.ctx.read(rules.get(0).toString());
            if (obj instanceof JSONArray) {
                JSONArray jsonArray = (JSONArray) obj;
                for (int i = 0; i < jsonArray.length(); i++) {
                    result.add(jsonArray.opt(i).toString());
                }
            }
            return result;
        } else {
            ArrayList<ArrayList> results = new ArrayList<>();
            for (Object r1 : rules) {
                ArrayList temp = getList(r1.toString());
                if (!temp.isEmpty()) {
                    results.add(temp);
                    if (temp != null && !temp.isEmpty() && ruleAnalyzes.getElementsType().equals("||")) {
                        break;
                    }
                }
            }
            if (results.size() > 0) {
                if ("%%".equals(ruleAnalyzes.getElementsType())) {
                    for (int i = 0; i < results.get(0).size(); i++) {
                        for (ArrayList temp : results) {
                            if (i < temp.size()) {
                                result.add(temp);
                            }
                        }
                    }
                } else {
                    for (ArrayList temp : results) {
                        result.addAll(temp);
                    }
                }
            }
        }
        return result;
    }
}

