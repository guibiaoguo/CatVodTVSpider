package com.github.catvod.analyzeRules;

import com.github.catvod.utils.Base64;
import com.github.catvod.utils.StringUtil;

import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;
import java.util.List;

public class AnalyzeByFunction {

    private Object content;

    public AnalyzeByFunction(Object content) {
        this.content = content;
    }

    public String getString(String ruleStr) {
        return StringUtil.join("\n",getStringList(ruleStr));
    }

    public List getStringList(String ruleStr) {
        List results = new ArrayList();
        List textList = new ArrayList();
        if(content instanceof String) {
            textList.add(content);
        } else if(content instanceof List) {
            textList = (ArrayList)content;
        }
        try {
            String[] rules = ruleStr.split("&&");
            for (Object result:textList) {
                for(String rule:rules) {
                    if(StringUtils.startsWith(rule,"base64Encode")) {
                        result = base64Encode(result.toString(),rule);
                    } else if(StringUtils.startsWith(rule,"base64Decode")) {
                        result = base64Decode(result.toString(),rule);
                    }  else if(StringUtils.startsWith(rule,"urlEncode")) {
                        result = urlEncode(result.toString(),rule);
                    }  else if(StringUtils.startsWith(rule,"urlDecode")) {
                        result = urlDecode(result.toString(),rule);
                    }
                }
                results.add(result);
            }
        }catch (Exception e) {
            results.add(e.getMessage());
        }
        return results;
    }

    public String base64Encode(String content,String rule) throws Exception {
        String[] rules = rule.split("#");
        if(rules.length == 1) {
            return Base64.encodeToString(content.getBytes("utf-8"),Base64.NO_WRAP);
        } else if(rules.length == 2) {
            return Base64.encodeToString(content.getBytes(rules[1]),Base64.NO_WRAP);
        }
        return "";
    }

    public String base64Decode(String content,String rule) throws Exception {
        String[] rules = rule.split("#");
        if(rules.length == 1) {
            return new String(Base64.decode(content,Base64.NO_WRAP));
        } else if(rules.length == 2) {
            return new String(Base64.decode(content,Base64.NO_WRAP),rules[1]);
        }
        return "";
    }

    public String urlEncode(String content,String rule) throws Exception {
        String[] rules = rule.split("#");
        if(rules.length == 1) {
            return StringUtil.encode(content);
        } else if(rules.length == 2) {
            return StringUtil.encode(content,rules[1]);
        }
        return "";
    }

    public String urlDecode(String content,String rule) throws Exception {
        String[] rules = rule.split("#");
        if(rules.length == 1) {
            return StringUtil.decode(content);
        } else if(rules.length == 2) {
            return StringUtil.decode(content,rule);
        }
        return "";
    }
}
