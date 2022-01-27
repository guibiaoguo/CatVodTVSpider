package com.github.catvod.analyzeRules;

import com.github.catvod.utils.Base64;
import com.github.catvod.utils.StringUtil;

import org.apache.commons.lang3.StringUtils;

import java.lang.reflect.Method;
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
        if(content instanceof List) {
            textList = (ArrayList)content;
        } else {
            textList.add(content);
        }
        try {
            String[] rules = ruleStr.split("&&");
            for (Object result:textList) {
                for(String rule:rules) {
                    if(StringUtils.startsWithIgnoreCase(rule,"base64Encode")) {
                        result = base64Encode(result.toString(),rule);
                    } else if(StringUtils.startsWithIgnoreCase(rule,"base64Decode")) {
                        result = base64Decode(result.toString(),rule);
                    }  else if(StringUtils.startsWithIgnoreCase(rule,"urlEncode")) {
                        result = urlEncode(result.toString(),rule);
                    }  else if(StringUtils.startsWithIgnoreCase(rule,"urlDecode")) {
                        result = urlDecode(result.toString(),rule);
                    } else if(StringUtils.startsWithIgnoreCase(rule,"math")) {
                        result = math(result.toString(),rule);
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
            return StringUtil.decode(content,rules[1]);
        }
        return "";
    }

    public Object math(String content,String rule) throws Exception {
        String[] rules = rule.split("#");
        if(rules.length > 1) {
            Class[] classes = new Class[rules.length-1];
            List objects = new ArrayList();
            try {
                Integer.parseInt(content);
                classes[0]=int.class;
                objects.add(Integer.parseInt(content));
            } catch (Exception e) {
                classes[0]=String.class;
                objects.add(content);
            }
            for (int i=2;i<rules.length;i++) {
                try{
                    Integer.parseInt(rules[i]);
                    classes[i-1]=int.class;
                    objects.add(Integer.parseInt(rules[i]));
                } catch (NumberFormatException e) {
                    classes[i]=String.class;
                    objects.add(rules[i]);
                }
            }
            Method method = Math.class.getMethod(rules[1], classes);
            return method.invoke(Math.class,objects.toArray());
        }
        return "";
    }
}
