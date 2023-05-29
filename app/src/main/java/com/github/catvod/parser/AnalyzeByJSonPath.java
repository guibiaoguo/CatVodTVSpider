package com.github.catvod.parser;

import android.text.TextUtils;

import com.github.catvod.script.IFunction;
import com.github.catvod.utils.StringUtil;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.reflect.TypeToken;
import com.jayway.jsonpath.Configuration;
import com.jayway.jsonpath.JsonPath;
import com.jayway.jsonpath.PathNotFoundException;
import com.jayway.jsonpath.ReadContext;
import com.jayway.jsonpath.spi.json.GsonJsonProvider;

import org.jsoup.nodes.Element;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import cn.hutool.core.util.StrUtil;

public class AnalyzeByJSonPath implements IFunction {

    public static Gson gson = new GsonBuilder().setLenient()
            .registerTypeAdapter(new TypeToken<Map<String,Object>>(){}.getType(),new DataTypeAdapter())
            .registerTypeAdapter(new TypeToken<List>(){}.getType(),new DataTypeAdapter())
            .create();
    private final ReadContext ctx;

    public AnalyzeByJSonPath(Object json) {
        this.ctx = parse(json);
    }

    public static ReadContext parse(Object json) {
        ReadContext ctx;
        if (json instanceof ReadContext) {
            ctx = (ReadContext) json;
        } else if (json instanceof String) {
            try {
                ctx = JsonPath.using(Configuration.builder().jsonProvider(new GsonJsonProvider(gson)).build()).parse(json.toString());
            } catch (Exception e) {
                String jsonStr = new GsonBuilder().setLenient().disableHtmlEscaping().create().toJson(json);
                ctx = JsonPath.using(Configuration.builder().jsonProvider(new GsonJsonProvider(gson)).build()).parse(jsonStr);
            }
        } else if (json instanceof List) {
            ctx = JsonPath.using(Configuration.builder().jsonProvider(new GsonJsonProvider(gson)).build()).parse(gson.toJson(json));
        } else if(json instanceof Element) {
            ctx = JsonPath.using(Configuration.builder().jsonProvider(new GsonJsonProvider(gson)).build()).parse("{}");
        } else {
            ctx = JsonPath.using(Configuration.builder().jsonProvider(new GsonJsonProvider(gson)).build()).parse(gson.toJson(json));
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
            String result;
            RuleAnalyzer ruleAnalyzes = new RuleAnalyzer(rule, true);
            //设置平衡组为代码平衡
            List<String> rules = ruleAnalyzes.splitRule("&&", "||");
            if (rules.size() == 1) {
                ruleAnalyzes.reSetPos(); //将pos重置为0，复用解析器
                result = ruleAnalyzes.innerRule("{$.",1,1,this);
                if (result.isEmpty()) {
                    //st为空，表明无成功替换的内嵌规则
                    try {
                        Object obj = this.ctx.read(rule);
                        if(obj instanceof JsonArray) {
                            result = TextUtils.join("\n", gson.fromJson(obj.toString(),List.class));
                        } else if (obj instanceof JsonPrimitive){
                            result = ((JsonPrimitive) obj).getAsString();
                        } else {
                            result = obj.toString();
                        }
                    } catch (PathNotFoundException e) {
                        return "";
                    } catch (Exception e) {
                        return e.getMessage();
                    }
                }
                return result;
            } else {
                List<String> textList = new ArrayList<>();
                for (Object r1 : rules) {
                    String temp = getString(r1.toString());
                    if (StrUtil.isNotEmpty(temp)) {
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


    public List<String> getStringList(String rule) {
        List<String> result = new ArrayList<>();
        if (rule.isEmpty()) {
            return result;
        }
        RuleAnalyzer ruleAnalyzes = new RuleAnalyzer(rule, true); //设置平衡组为代码平衡
        List<String> rules = ruleAnalyzes.splitRule("&&", "||", "%%");
        if (rules.size() == 1) {
            ruleAnalyzes.reSetPos(); //将pos重置为0，复用解析器
            String st = ruleAnalyzes.innerRule("{$.",1,1,this);
            if (st.isEmpty()) {
                //st为空，表明无成功替换的内嵌规则
                try {
                    Object obj = this.ctx.read(rule);
                    if (obj instanceof JsonArray) {
                        for (JsonElement element : ((JsonArray) obj)) {
                            result.add(element.toString());
                        }
                    } else if (obj instanceof JsonPrimitive){
                        result.add(((JsonPrimitive) obj).getAsString());
                    } else {
                        result.add(obj.toString());
                    }
                }catch (PathNotFoundException e){
                    result.add("");
                }catch (Exception e) {
                    result.add(e.getMessage());
                }
            } else {
                result.add(st);
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


    public Object getObject(String rule) {
        return ctx.read(rule);
    }


    public ArrayList<Object> getList(String rule) {
        ArrayList<Object> result = new ArrayList<>();
        if (rule.isEmpty()) {
            return result;
        }
        RuleAnalyzer ruleAnalyzes = new RuleAnalyzer(rule, true); //设置平衡组为代码平衡
        List<String> rules = ruleAnalyzes.splitRule("&&", "||", "%%");
        if (rules.size() == 1) {
            try {
                Object obj = this.ctx.read(rules.get(0));
                if (obj instanceof JsonArray) {
                    result.addAll(gson.fromJson(obj.toString(), List.class));
                } else if (obj instanceof JsonPrimitive){
                    result.add(((JsonPrimitive) obj).getAsString());
                } else {
                    result.add(obj.toString());
                }
            } catch (PathNotFoundException e) {
                System.out.println(e.getLocalizedMessage());
            }catch (Exception e) {
                result.add(e.getMessage());
            }
            return result;
        } else {
            ArrayList<ArrayList<Object>> results = new ArrayList<>();
            for (Object r1 : rules) {
                ArrayList<Object> temp = getList(r1.toString());
                if (!temp.isEmpty()) {
                    results.add(temp);
                    if (!temp.isEmpty() && ruleAnalyzes.getElementsType().equals("||")) {
                        break;
                    }
                }
            }
            if (results.size() > 0) {
                if ("%%".equals(ruleAnalyzes.getElementsType())) {
                    for (int i = 0; i < results.get(0).size(); i++) {
                        for (ArrayList<Object> temp : results) {
                            if (i < temp.size()) {
                                result.add(temp);
                            }
                        }
                    }
                } else {
                    for (ArrayList<Object> temp : results) {
                        result.addAll(temp);
                    }
                }
            }
        }
        return result;
    }

    @Override
    public String getInnerRule(String rule) {
        return getString(rule);
    }
}

