package com.github.catvod.parser;

import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.script.JsExtensions;
import com.github.catvod.utils.StringUtil;
import com.google.gson.Gson;
import com.github.catvod.script.Bindings;
import com.github.catvod.script.ScriptEngine;
import com.github.catvod.script.SimpleBindings;
import com.github.catvod.script.rhino.RhinoScriptEngine;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import org.jsoup.nodes.Entities;
import org.mozilla.javascript.NativeObject;

import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.lang.Console;
import cn.hutool.core.util.ReUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.asymmetric.KeyType;

public class AnalyzeRule extends JsExtensions {

    public static Gson gson = new GsonBuilder()
            .registerTypeAdapter(new TypeToken<Map<String,Object>>(){}.getType(),new DataTypeAdapter())
            .registerTypeAdapter(new TypeToken<List>(){}.getType(),new DataTypeAdapter())
            .create();

    private Object content = null;
    private String baseUrl = null;
    private URL redirectUrl = null;
    private boolean isJSON = false;
    private boolean isRegex = false;

    private AnalyzeByXPath analyzeByXPath = null;
    private AnalyzeByJSoup analyzeByJSoup = null;
    private AnalyzeByJSonPath analyzeByJSonPath = null;

    private boolean objectChangedXP = false;
    private boolean objectChangedJS = false;
    private boolean objectChangedJP = false;

    private final Pattern JS_PATTERN =
            Pattern.compile("<js>([\\w\\W]*?)</js>|@js:([\\w\\W]*)", Pattern.CASE_INSENSITIVE);
    private final Pattern putPattern = Pattern.compile("@put:(\\{[^}]+?\\})", Pattern.CASE_INSENSITIVE);
    private final Pattern evalPattern =
            Pattern.compile("@get:\\{[^}]+?\\}|\\{\\{[\\w\\W]*?\\}\\}", Pattern.CASE_INSENSITIVE);
    private final Pattern regexPattern = Pattern.compile("\\$\\d{1,2}");
    private final RuleDataInterface ruleData;

    public AnalyzeRule() {
        ruleData = new RuleData();
    }

    public AnalyzeRule(RuleDataInterface ruleData) {
        this.ruleData = ruleData;
    }

    public AnalyzeRule setContent(Object content) {
        return setContent(content, null);
    }

    public AnalyzeRule setContent(Object content, String baseUrl) {
        if (content == null) {
            throw new AssertionError("内容不可为空");
        }
        this.content = content;
        isJSON = StringUtil.isJson(content.toString());
        setBaseUrl(baseUrl);
        objectChangedJP = true;
        objectChangedXP = true;
        objectChangedJS = true;
        return this;
    }

    public AnalyzeRule setBaseUrl(String baseUrl) {
        if (StrUtil.isNotEmpty(baseUrl)) {
            this.baseUrl = baseUrl;
        }
        return this;
    }

    public void setRedirectUrl(String url) {
        try {
            redirectUrl = new URL(url);
        } catch (Exception e) {
            e.printStackTrace();
            SpiderDebug.log(StrUtil.format("URL {} error\n{}",url,e.getLocalizedMessage()));
        }
//        return redirectUrl;
    }

    /**
     * 获取XPath解析类
     */
    private AnalyzeByXPath getAnalyzeByXPath(Object o) {
        if (o != content) {
            return new AnalyzeByXPath(o);
        } else {
            if (analyzeByXPath == null || objectChangedXP) {
                analyzeByXPath = new AnalyzeByXPath(content);
                objectChangedXP = false;
            }
            return analyzeByXPath;
        }
    }

    /**
     * 获取JSOUP解析类
     */
    private AnalyzeByJSoup getAnalyzeByJSoup(Object o) {
        if (o != content) {
            return new AnalyzeByJSoup(o);
        } else {
            if (analyzeByJSoup == null || objectChangedJS) {
                analyzeByJSoup = new AnalyzeByJSoup(content);
                objectChangedJS = false;
            }
            return analyzeByJSoup;
        }
    }

    /**
     * 获取JSON解析类
     */
    private AnalyzeByJSonPath getAnalyzeByJSonPath(Object o) {
        if (o != content) {
            return new AnalyzeByJSonPath(o);
        } else {
            if (analyzeByJSonPath == null || objectChangedJP) {
                analyzeByJSonPath = new AnalyzeByJSonPath(content);
                objectChangedJP = false;
            }
            return analyzeByJSonPath;
        }
    }

    public List<String> getStringList(String rule) {
        return getStringList(rule, null, false);
    }

    public List<String> getStringList(String rule, Object mContent, boolean isUrl) {
        if (StrUtil.isEmpty(rule)) return null;
        List<SourceRule> ruleList = splitSourceRule(rule, false);
        return getStringList(ruleList, mContent, isUrl);
    }

    public List<String> getStringList(List<SourceRule> ruleList, Object mContent, boolean isUrl) {
        Object result = null;
        Object content = mContent != null ? mContent : this.content;
        if (content != null && ruleList != null && !ruleList.isEmpty()) {
            result = content;
            if (result instanceof NativeObject) {
                SourceRule sourceRule = ruleList.get(0);
                putRule(sourceRule.putMap);
                sourceRule.makeUpRule(result);
                if (sourceRule.getParamSize() > 1) {
                    result = sourceRule.rule;
                } else {
                    result = ((NativeObject) result).get(sourceRule.rule);
                }
                if (result != null)
                    result = replaceRegex(result.toString(), sourceRule);
            }
            for (SourceRule sourceRule : ruleList) {
                putRule(sourceRule.putMap);
                sourceRule.makeUpRule(result);
                if (result != null && StrUtil.isNotEmpty(sourceRule.rule)) {
                    switch (sourceRule.mode) {
                        case Js:
                            result = evalJS(sourceRule.rule, result);
                            break;
                        case Json:
                            result = getAnalyzeByJSonPath(result).getStringList(sourceRule.rule);
                            break;
                        case XPath:
                            result = getAnalyzeByXPath(result).getStringList(sourceRule.rule);
                            break;
                        case Default:
                            result = getAnalyzeByJSoup(result).getStringList(sourceRule.rule);
                            break;
                        default:
                            result = sourceRule.rule;
                    }
                }
                if (result instanceof String) {
                    result = StrUtil.split(result.toString(), "\n");
                }
                if (StrUtil.isNotEmpty(sourceRule.replaceRegex) && result instanceof List) {
                    List<String> newList = new ArrayList<>();
                    for (Object item : Convert.convert(List.class, result)) {
                        newList.add(replaceRegex(item.toString(), sourceRule));
                    }
                    result = newList;
                } else if (StrUtil.isNotEmpty(sourceRule.replaceRegex)) {
                    result = replaceRegex(Convert.convert(String.class, result), sourceRule);
                }
            }
        }
        if (result == null) return null;
        if (result instanceof String) {
            result = StrUtil.split(result.toString(), "\n");
        }
        if (isUrl) {
            List<String> urlList = new ArrayList<>();
            if (result instanceof List) {
                for (Object url : Convert.convert(List.class, result)) {
                    String absoluteURL = NetworkUtils.INSTANCE.getAbsoluteURL(redirectUrl, url.toString());
                    if (StrUtil.isNotEmpty(absoluteURL) && !urlList.contains(absoluteURL)) {
                        urlList.add(absoluteURL);
                    }
                }
            }
            return urlList;
        }
        return Convert.toList(String.class, result);
    }

    private Object evalJS(String rule, Object result) {
        Bindings bindings = new SimpleBindings();
        ScriptEngine scriptEngine = new RhinoScriptEngine(bindings);
        bindings.put("java", this);
        bindings.put("result", result);
        bindings.put("src", content);
        bindings.put("baseUrl", baseUrl);
        bindings.put("PublicKey", KeyType.PublicKey);
        bindings.put("PrivateKey", KeyType.PrivateKey);
        result = scriptEngine.eval(rule, bindings);
        return result;
    }

    public String getString(String ruleStr, boolean unescape) {
        return getString(ruleStr, null, false, unescape);
    }
    
    public String getString(String ruleStr) {
        return getString(ruleStr, null, false, true);
    }

    public String getString(String ruleStr, Object mContent, boolean isUrl) {
        return getString(ruleStr, mContent, isUrl, true);
    }

    public String getString(String ruleStr, Object mContent, boolean isUrl, boolean unescape) {
        if (StrUtil.isEmpty(ruleStr)) return "";
        List<SourceRule> ruleList = splitSourceRule(ruleStr, false);
        return getString(ruleList, mContent, isUrl, unescape);
    }

    public String getString(List<SourceRule> ruleList, Object mContent, boolean isUrl, boolean unescape) {
        Object result = null;
        Object content = mContent != null ? mContent : this.content;
        if (content != null && ruleList != null && !ruleList.isEmpty()) {
            result = content;
            if (result instanceof NativeObject) {
                SourceRule sourceRule = ruleList.get(0);
                putRule(sourceRule.putMap);
                sourceRule.makeUpRule(result);
                if (sourceRule.getParamSize() > 1) {
                    result = sourceRule.rule;
                } else {
                    result = ((NativeObject) result).get(sourceRule.rule);
                }
                if (result != null)
                    result = replaceRegex(result.toString(), sourceRule);
            }
            for (SourceRule sourceRule : ruleList) {
                putRule(sourceRule.putMap);
                sourceRule.makeUpRule(result);
                if (StrUtil.isNotEmpty(sourceRule.rule) || StrUtil.isEmpty(sourceRule.replaceRegex)) {
                    switch (sourceRule.mode) {
                        case Js:
                            result = evalJS(sourceRule.rule, result);
                            break;
                        case Json:
                            result = getAnalyzeByJSonPath(result).getString(sourceRule.rule);
                            break;
                        case XPath:
                            result = getAnalyzeByXPath(result).getString(sourceRule.rule);
                            break;
                        case Default:
                            result = isUrl ? getAnalyzeByJSoup(result).getString0(sourceRule.rule) : getAnalyzeByJSoup(result).getString(sourceRule.rule);
                            break;
                        default:
                            result = sourceRule.rule;
                    }
                }
                if (result != null && StrUtil.isNotEmpty(sourceRule.replaceRegex)) {
                    result = replaceRegex(result.toString(), sourceRule);
                }
            }
        }
        if (result == null) return "";
        String str;
        if (unescape) {
            try {
                str = Entities.unescape(result.toString());
            } catch (Exception e) {
                SpiderDebug.log("Entities.unescape() error\n " + e.getLocalizedMessage());
                str = result.toString();
            }
        } else {
            str = result.toString();
        }
        if (isUrl) {
            if (StrUtil.isEmpty(str)) {
                baseUrl = baseUrl == null ? "" : baseUrl;
                return baseUrl;
            } else {
                return NetworkUtils.INSTANCE.getAbsoluteURL(redirectUrl, str);
            }
        }
        return str;
    }

    public Object getElement(String ruleStr) {
        Object result = null;
        if (StrUtil.isEmpty(ruleStr)) return null;
        Object content = this.content;
        List<SourceRule> ruleList = splitSourceRule(ruleStr, true);
        if (content != null && !ruleList.isEmpty()) {
            result = content;
            for (SourceRule sourceRule : ruleList) {
                putRule(sourceRule.putMap);
                sourceRule.makeUpRule(result);
                switch (sourceRule.mode) {
                    case Js:
                        result = evalJS(sourceRule.rule, result);
                        break;
                    case Regex:
                        result = AnalyzeByRegex.getElement(Convert.convert(String.class, result), StrUtil.splitTrim(sourceRule.rule, "&&"));
                        break;
                    case Json:
                        result = getAnalyzeByJSonPath(result).getObject(sourceRule.rule);
                        break;
                    case XPath:
                        result = getAnalyzeByXPath(result).getElements(sourceRule.rule);
                        break;
                    default:
                        result = getAnalyzeByJSoup(result).getElements(sourceRule.rule);
                }

                if (result != null && StrUtil.isNotEmpty(sourceRule.replaceRegex)) {
                    result = replaceRegex(result.toString(), sourceRule);
                }
            }
        }
        return result;
    }

    public List<Object> getElements(String ruleStr) {
        if (StrUtil.isEmpty(ruleStr)) {
            return new ArrayList<>();
        }
        Object result = null;
        Object content = this.content;
        List<SourceRule> ruleList = splitSourceRule(ruleStr, true);
        if (content != null && !ruleList.isEmpty()) {
            result = content;
            for (SourceRule sourceRule : ruleList) {
                putRule(sourceRule.putMap);
                switch (sourceRule.mode) {
                    case Js:
                        result = evalJS(sourceRule.rule, result);
                        break;
                    case Regex:
                        result = AnalyzeByRegex.getElements(Convert.convert(String.class, result), StrUtil.splitTrim(sourceRule.rule, "&&"));
                        break;
                    case Json:
                        result = getAnalyzeByJSonPath(result).getList(sourceRule.rule);
                        break;
                    case XPath:
                        result = getAnalyzeByXPath(result).getElements(sourceRule.rule);
                        break;
                    default:
                        result = getAnalyzeByJSoup(result).getElements(sourceRule.rule);
                }

                if (StrUtil.isNotEmpty(sourceRule.replaceRegex) && result instanceof List) {
                    List<String> newList = new ArrayList<>();
                    for (Object item : Convert.convert(List.class ,result)) {
                        newList.add(replaceRegex(item.toString(), sourceRule));
                    }
                    result = newList;
                } else if (StrUtil.isNotEmpty(sourceRule.replaceRegex)) {
                    result = replaceRegex(Convert.convert(String.class, result), sourceRule);
                }
            }
        }
        List<Object> results = new ArrayList<>();
        if (result instanceof List) {
            return Convert.toList(Object.class, result);
        }
        return results;
    }

    private void putRule(Map<String, String> putMap) {
        for (Map.Entry<String, String> entry : putMap.entrySet()) {
            put(entry.getKey(), getString(entry.getValue()));
        }
    }

    private String splitPutRule(String ruleStr, Map<String, String> putMap) {
        String vRuleStr = ruleStr;
        Matcher putMatcher = putPattern.matcher(vRuleStr);
        while (putMatcher.find()) {
            vRuleStr = vRuleStr.replace(putMatcher.group(), "");
            String dataStr = StrUtil.replace(putMatcher.group(1),"%7B","{");
            dataStr = StrUtil.replace(dataStr,"%7D","}");
            Map<String, String> data = gson.fromJson(dataStr, new TypeToken<Map<String,String>>(){}.getType());
            if (data != null)
                putMap.putAll(data);
        }
        return vRuleStr;
    }

    private String replaceRegex(String result, SourceRule sourceRule) {
        if (StrUtil.isEmpty(sourceRule.replaceRegex)) return result;
        String vResult = result;
        if (sourceRule.replaceFirst) {
            vResult = ReUtil.replaceFirst(Pattern.compile(sourceRule.replaceRegex), vResult,sourceRule.replacement);
        } else {
            vResult = ReUtil.replaceAll(vResult, sourceRule.replaceRegex,sourceRule.replacement);
        }
        return vResult;
    }

    private List<SourceRule> splitSourceRule(String rule, boolean allInOne) {
        if (StrUtil.isEmpty(rule))
            return new ArrayList<>();
        List<SourceRule> ruleList = new ArrayList<>();
        Mode mMode = Mode.Default;
        int start = 0;
        if (allInOne && rule.startsWith(":")) {
            mMode = Mode.Regex;
            isRegex = true;
            start = 1;
        } else if (isRegex) {
            mMode = Mode.Regex;
        }
        Matcher jsMatcher = JS_PATTERN.matcher(rule);
        String tmp;
        if(jsMatcher.find()) {
            do {
                if(jsMatcher.start()> start) {
                    tmp = rule.substring(start,jsMatcher.start());
                    if(StrUtil.isNotEmpty(tmp)) {
                        ruleList.add(new SourceRule(tmp,mMode));
                    }
                }
                if(StrUtil.isNotEmpty(jsMatcher.group(1)) || StrUtil.isNotEmpty(jsMatcher.group(2)))
                    ruleList.add(new SourceRule(jsMatcher.group(1) == null?jsMatcher.group(2):jsMatcher.group(1),Mode.Js));
                start = jsMatcher.end();
            } while (jsMatcher.find());
        }
        if (rule.length() > start) {
            tmp = StrUtil.trim(rule.substring(start));
            if (StrUtil.isNotEmpty(tmp)) {
                ruleList.add(new SourceRule(tmp, mMode));
            }
        }
        return ruleList;
    }

    enum Mode {
        XPath, Json, Default, Js, Regex

    }

    public Object put(String key, Object value) {
        logType(value);
        ruleData.putVariable(key, value);
        return value;
    }

    public Object get(String key) {
        Object data = ruleData.getVariable(key);
        logType(data);
        if (data instanceof String) {
            return data.toString();
        }
        return data;
    }

    class SourceRule {
        private Mode mode;
        private String rule;
        private String replaceRegex = "";
        private boolean replaceFirst;
        private String replacement = "";

        private final Map<String, String> putMap = new HashMap<>();
        private final List<String> ruleParam = new ArrayList<>();
        private final List<Integer> ruleType = new ArrayList<>();
        private final int getRuleType = -2;
        private final int jsRuleType = -1;
        private final int defaultRuleType = 0;

        public SourceRule(String ruleStr, Mode mMode) {
            this.mode = mMode;
            this.rule = ruleStr;
            if(mMode == Mode.Js || mMode == Mode.Regex) {
                rule = ruleStr;
            } else if (StrUtil.startWithIgnoreCase(ruleStr,"@CSS:")) {
                this.mode = Mode.Default;
                rule = ruleStr;
            } else if (StrUtil.startWithIgnoreCase(ruleStr,"@@")) {
                this.mode = Mode.Default;
                this.rule = ruleStr.substring(2);
            } else if (StrUtil.startWithIgnoreCase(ruleStr,"@XPath:")) {
                this.mode = Mode.XPath;
                this.rule = ruleStr.substring(7);
            } else if (StrUtil.startWithIgnoreCase(ruleStr,"@Json:")) {
                this.mode = Mode.Json;
                this.rule = ruleStr.substring(6);
            } else if (isJSON||StrUtil.startWithIgnoreCase(ruleStr,"$.") || StrUtil.startWithIgnoreCase(ruleStr,"$[")) {
                this.mode = Mode.Json;
                rule = ruleStr;
            } else if (StrUtil.startWithIgnoreCase(ruleStr,"/")) {
                this.mode = Mode.XPath;
                rule = ruleStr;
            } else {
                rule = ruleStr;
            }

            //分离put
            rule = splitPutRule(rule, putMap);
            int start = 0;
            String tmp;
            Matcher evalMatcher = evalPattern.matcher(rule);
            if (evalMatcher.find()) {
                tmp = rule.substring(start, evalMatcher.start());
                if (mode != Mode.Js && mode != Mode.Regex && (evalMatcher.start() == 0 || !StrUtil.contains(tmp, "##"))) {
                    mode = Mode.Regex;
                }
                do {
                    if (evalMatcher.start() > start) {
                        tmp = rule.substring(start, evalMatcher.start());
                        splitRegex(tmp);
                    }
                    tmp = evalMatcher.group();
                    if (StrUtil.startWithIgnoreCase(tmp,"@get")) {
                        ruleType.add(getRuleType);
                        ruleParam.add(tmp.substring(6, tmp.length() - 1));
                    } else if (tmp.startsWith("{{")) {
                        ruleType.add(jsRuleType);
                        ruleParam.add(tmp.substring(2, tmp.length() - 2));
                    } else {
                        splitRegex(tmp);
                    }
                    start = evalMatcher.end();
                }while (evalMatcher.find());
            }
            if (rule.length() > start) {
                tmp = rule.substring(start);
                splitRegex(tmp);
            }
        }

        /**
         * 拆分\$\d{1,2}
         */
        private void splitRegex(String ruleStr) {
            int start = 0;
            String tmp;
            String[] ruleStrArray = StrUtil.splitToArray(ruleStr, "##");
            Matcher regexMatcher = regexPattern.matcher(ruleStrArray[0]);

            if (regexMatcher.find()) {
                if (mode != Mode.Js  && mode != Mode.Regex) {
                    mode = Mode.Regex;
                }
                do {
                    if (regexMatcher.start() > start) {
                        tmp = ruleStr.substring(start, regexMatcher.start());
                        ruleType.add(defaultRuleType);
                        ruleParam.add(tmp);
                    }
                    tmp = regexMatcher.group();
                    ruleType.add(Integer.parseInt(tmp.substring(1)));
                    ruleParam.add(tmp);
                    start = regexMatcher.end();
                } while (regexMatcher.find());
            }
            if (ruleStr.length() > start) {
                tmp = ruleStr.substring(start);
                ruleType.add(defaultRuleType);
                ruleParam.add(tmp);
            }
        }

        public void makeUpRule(Object result) {
            StringBuilder infoVal = new StringBuilder();
            if (!ruleParam.isEmpty()) {
                for (int index = ruleParam.size() - 1; index >= 0; --index) {
                    int regType = ruleType.get(index);
                    if (regType > defaultRuleType) {
                        if (result instanceof List) {
                            if (((List<?>) result).size() > regType) {
                                infoVal.insert(0, ((List<?>) result).get(regType));
                            }
                        } else {
                            infoVal.insert(0, ruleParam.get(index));
                        }
                    } else if(regType == jsRuleType){
                        if(isRule(ruleParam.get(index))) {
                            infoVal.insert(0,getString(ruleParam.get(index)));
                        } else {
                            Object jsEval = evalJS(ruleParam.get(index), result);
                            if (jsEval == null) {
                                System.out.println("执行了");
                            } else if (jsEval instanceof Double && (Double)jsEval % 1.0 == 0) {
                                infoVal.insert(0, String.format(Locale.CHINA, "%.0f", jsEval));
                            } else {
                                infoVal.insert(0, jsEval);
                            }
                        }
                    } else if (regType == getRuleType) {
                        infoVal.insert(0, get(ruleParam.get(index)));
                    } else {
                        infoVal.insert(0, ruleParam.get(index));
                    }
                }
                rule = infoVal.toString();
            }
            String[] ruleStrS = rule.split("##");
            rule = StrUtil.trim(ruleStrS[0]);
            if (ruleStrS.length > 1) {
                replaceRegex = ruleStrS[1];
            }
            if (ruleStrS.length > 2) {
                replacement = ruleStrS[2];
            }
            if (ruleStrS.length > 3) {
                replaceFirst = true;
            }
        }

        public Boolean isRule(String ruleStr) {
            return ruleStr.startsWith("@") //js首个字符不可能是@，除非是装饰器，所以@开头规定为规则
                    || ruleStr.startsWith("$.")
                    || ruleStr.startsWith("$[")
                    || ruleStr.startsWith("//");
        }

        public int getParamSize() {
            return ruleParam.size();
        }
    }


}
