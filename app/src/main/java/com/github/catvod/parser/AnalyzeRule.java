package com.github.catvod.parser;

import com.github.catvod.script.JsExtensions;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.StringUtil;
import com.google.gson.Gson;
import com.github.catvod.script.Bindings;
import com.github.catvod.script.ScriptEngine;
import com.github.catvod.script.SimpleBindings;
import com.github.catvod.script.rhino.RhinoScriptEngine;

import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.Entities;
import org.mozilla.javascript.NativeObject;

import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cn.hutool.crypto.asymmetric.KeyType;

public class AnalyzeRule extends JsExtensions {

    private String nextChapterUrl = null;
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

    private Pattern JS_PATTERN =
            Pattern.compile("<js>([\\w\\W]*?)</js>|@js:([\\w\\W]*)", Pattern.CASE_INSENSITIVE);
    private Pattern putPattern = Pattern.compile("@put:(\\{[^}]+?\\})", Pattern.CASE_INSENSITIVE);
    private Pattern evalPattern =
            Pattern.compile("@get:\\{[^}]+?\\}|\\{\\{[\\w\\W]*?\\}\\}", Pattern.CASE_INSENSITIVE);
    private Pattern regexPattern = Pattern.compile("\\$\\d{1,2}");
    private Pattern titleNumPattern = Pattern.compile("(第)(.+?)(章)");
    private RuleDataInterface ruleData;

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
        if (StringUtils.isNotEmpty(baseUrl)) {
            this.baseUrl = baseUrl;
        }
        return this;
    }

    public URL setRedirectUrl(String url) {
        try {
            redirectUrl = new URL(url);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return redirectUrl;
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
        if (StringUtils.isEmpty(rule)) return null;
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
                if (result != null && StringUtils.isNotEmpty(sourceRule.rule)) {
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
                    result = Arrays.asList(StringUtils.split(result.toString(), "\n"));
                }
                if (StringUtils.isNotEmpty(sourceRule.replaceRegex) && result instanceof List) {
                    List<String> newList = new ArrayList<>();
                    for (Object item : (List) result) {
                        newList.add(replaceRegex(item.toString(), sourceRule));
                    }
                    result = newList;
                } else if (StringUtils.isNotEmpty(sourceRule.replaceRegex)) {
                    result = replaceRegex(result.toString(), sourceRule);
                }
            }
        }
        if (result == null) return null;
        if (result instanceof String) {
            result = Arrays.asList(StringUtils.split(result.toString(), "\n"));
        }
        if (isUrl) {
            List<String> urlList = new ArrayList<>();
            if (result instanceof List) {
                for (Object url : (List) result) {
                    try {
                        if (url == null || StringUtils.isBlank(url.toString())) {
                            baseUrl = baseUrl == null ? "" : baseUrl;
                            urlList.add(baseUrl);
                        } else if(url != null && url.toString().startsWith("/")) {
                            urlList.add(StringUtil.getBaseUrl(baseUrl) + url.toString());
                        }else if(url != null && !url.toString().startsWith("http") && !StringUtil.isBase64(url.toString())) {
//                            try {
//                                String absoluteURL = NetworkUtils.INSTANCE.getAbsoluteURL(redirectUrl, url.toString());
//                                if (StringUtils.isNotEmpty(absoluteURL) && !urlList.contains(absoluteURL)) {
//                                    urlList.add(absoluteURL);
//                                }
//                            } catch (MalformedURLException e) {
//                                e.printStackTrace();
//                            }
                        }
                    } catch (Exception e) {

                    }
                }
            }
            return urlList;
        }
        return (List<String>) result;
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

    public String getString(String ruleStr) {
        return getString(ruleStr, null, false);
    }

    public String getString(String ruleStr, Object mContent, boolean isUrl) {
        if (StringUtils.isEmpty(ruleStr)) return "";
        List<SourceRule> ruleList = splitSourceRule(ruleStr, false);
        return getString(ruleList, mContent, isUrl);
    }

    public String getString(List<SourceRule> ruleList, Object mContent, boolean isUrl) {
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
//                result = funRule(sourceRule.funMap,result);
                sourceRule.makeUpRule(result);
                if (StringUtils.isNotEmpty(sourceRule.rule) || StringUtils.isEmpty(sourceRule.replaceRegex)) {
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
                if (result != null && StringUtils.isNotEmpty(sourceRule.replaceRegex)) {
                    result = replaceRegex(result.toString(), sourceRule);
                }
            }
        }
        if (result == null) return "";
        String str = null;
        try {
            str = Entities.unescape(result.toString());
        } catch (Exception e) {
            str = result.toString();
        }
        if (isUrl) {
            if (StringUtils.isBlank(str)) {
                baseUrl = baseUrl == null ? "" : baseUrl;
                return baseUrl;
            } else if(str.startsWith("/")) {
                return StringUtil.getBaseUrl(baseUrl) + str;
            }
//            else if(!str.startsWith("http") && !StringUtil.isBase64(str)) {
//                try {
//                    return NetworkUtils.INSTANCE.getAbsoluteURL(redirectUrl, str);
//                } catch (MalformedURLException e) {
//                    e.printStackTrace();
//                }
//            }
        }
        return str;
    }

    public Object getElement(String ruleStr) {
        Object result = null;
        if (StringUtils.isEmpty(ruleStr)) return null;
        Object content = this.content;
        List<SourceRule> ruleList = splitSourceRule(ruleStr, true);
        if (content != null && ruleList != null && !ruleList.isEmpty()) {
            result = content;
            for (SourceRule sourceRule : ruleList) {
                putRule(sourceRule.putMap);
//                result = funRule(sourceRule.funMap,result);
                sourceRule.makeUpRule(result);
                switch (sourceRule.mode) {
                    case Js:
                        result = evalJS(sourceRule.rule, result);
                        break;
                    case Regex:
                        result = AnalyzeByRegex.getElement(result.toString(), StringUtils.split(sourceRule.rule, "&&"));
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

                if (result != null && StringUtils.isNotEmpty(sourceRule.replaceRegex)) {
                    result = replaceRegex(result.toString(), sourceRule);
                }
            }
        }
        return result;
    }

    public List<Object> getElements(String ruleStr) {
        if (StringUtils.isEmpty(ruleStr)) {
            return new ArrayList<>();
        }
        Object result = null;
        Object content = this.content;
        List<SourceRule> ruleList = splitSourceRule(ruleStr, true);
        if (content != null && ruleList != null && !ruleList.isEmpty()) {
            result = content;
            for (SourceRule sourceRule : ruleList) {
                putRule(sourceRule.putMap);
//                result = funRule(sourceRule.funMap,result);
//                sourceRule.makeUpRule(sourceRule.rule);
                switch (sourceRule.mode) {
                    case Js:
                        result = evalJS(sourceRule.rule, result);
                        break;
                    case Regex:
                        result = AnalyzeByRegex.getElements(result.toString(), StringUtils.split(sourceRule.rule, "&&"));
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

                if (StringUtils.isNotEmpty(sourceRule.replaceRegex) && result instanceof List) {
                    List<String> newList = new ArrayList<>();
                    for (Object item : (List) result) {
                        newList.add(replaceRegex(item.toString(), sourceRule));
                    }
                    result = newList;
                } else if (StringUtils.isNotEmpty(sourceRule.replaceRegex)) {
                    result = replaceRegex(result.toString(), sourceRule);
                }
            }
        }
        List<Object> results = new ArrayList<>();
        if (result instanceof List) {
            results = (List) result;
            return results;
        }
        return results;
    }

    private void putRule(Map<String, String> putMap) {
        for (Map.Entry data:putMap.entrySet()) {
            put(data.getKey().toString(),getString(data.getValue().toString()));
        }
    }

    private Object funRule(LinkedHashMap<String,String> ruleMap,Object data) {
        Object result = data;
        for(Map.Entry<String,String> entry:ruleMap.entrySet()) {
            String key = entry.getKey();
            if(StringUtils.isNotEmpty(entry.getValue()) && !StringUtil.isJson(entry.getValue()))
                result = getString(entry.getValue());
            else if(StringUtil.isJson(entry.getValue()))
                result = getString(entry.getValue());
//                for (Iterator<String> it = ruleData.getVariableMap().keySet().iterator(); it.hasNext(); ) {
//                    String key1 = it.next();
//                    String value = get(key1);
//                    value = StringUtils.startsWith(key,"urlEncode")?value:StringUtil.encode(value);
//                    if (value.length() > 0) {
//                        result = result.toString().replace("{" + key1 + "}", value);
//                    }
//                }
//            }
            String charset = "utf-8";
            if(key.split("#").length>1){
                charset = key.split("#")[1];
            }
            try{
                if(StringUtils.startsWith(key,"base64Encode")) {
                    result = Base64.encodeToString(result.toString().getBytes(charset),Base64.NO_WRAP);
                } else if(StringUtils.startsWith(key,"base64Decode")) {
                    result = new String(Base64.decode(result.toString(),Base64.NO_WRAP));
                }  else if(StringUtils.startsWith(key,"urlEncode")) {
                    result = StringUtil.encode(result.toString(),charset);
                }  else if(StringUtils.startsWith(key,"urlDecode")) {
                    result = StringUtil.decode(result.toString(),charset);
                }
            } catch (Exception e) {

            }
        }
        return result;
    }
    private String splitPutRule(String ruleStr, Map<String, String> putMap) {
        String vRuleStr = ruleStr;
        Matcher putMatcher = putPattern.matcher(vRuleStr);
        while (putMatcher.find()) {
            vRuleStr = vRuleStr.replace(putMatcher.group(), "");
            Map<String, String> data = new Gson().fromJson(putMatcher.group(1).replaceAll("%7B","{").replaceAll("%7D","}"), Map.class);
            putMap.putAll(data);
        }
        return vRuleStr;
    }

//    @TargetApi(Build.VERSION_CODES.N)
//    private String splitFunRule(String ruleStr, LinkedHashMap<String, String> putMap) {
//        String vRuleStr = ruleStr;
//        Matcher putMatcher = funPattern.matcher(vRuleStr);
//        while (putMatcher.find()) {
//            vRuleStr = vRuleStr.replace(putMatcher.group(), "");
//            try {
//                String js = putMatcher.group(1);
////                js = js.replaceAll("【","{").replaceAll("】","}");
//                JSONObject navs = new JSONObject(js);
//                List<String> sorts = new ArrayList();
//                if (navs != null) {
//                    Iterator<String> keys = navs.keys();
//                    while (keys.hasNext()) {
//                        String name = keys.next();
//                        sorts.add(js.indexOf(name)+"$"+name);
//                    }
//                }
//                sorts.sort(Comparator.naturalOrder());
//                for (String sort:sorts) {
//                    String name = sort.split("\\$")[1];
//                    putMap.put(name.trim(), navs.optString(name).replaceAll("%7B","{").replaceAll("%7D","}"));
//                }
//            } catch (Exception e) {
//
//            }
//        }
//        return vRuleStr;
//    }

    private String replaceRegex(String result, SourceRule sourceRule) {
        if (StringUtils.isEmpty(sourceRule.replaceRegex)) return result;
        String vResult = result;
        if (sourceRule.replaceFirst) {
            try {
                Pattern pattern = Pattern.compile(sourceRule.replaceRegex);
                Matcher matcher = pattern.matcher(vResult);
                if (matcher.find()) {
                    vResult = matcher.group(0);
                    if (StringUtils.isNotEmpty(vResult)) {
                        vResult = vResult.replaceFirst(sourceRule.replaceRegex, sourceRule.replacement);
                    } else {
                        vResult = "";
                    }
                }
            } catch (Exception e) {
                vResult = vResult.replaceFirst(sourceRule.replaceRegex, sourceRule.replacement);
            }
        } else {
            try {
                vResult = vResult.replaceAll(sourceRule.replaceRegex, sourceRule.replacement);
            } catch (Exception e) {
                vResult = vResult.replaceAll(sourceRule.replaceRegex, sourceRule.replacement);
            }
        }
        return vResult;
    }

    private List<SourceRule> splitSourceRule(String rule, boolean allInOne) {
        if (StringUtil.isBase64(rule))
            rule = new String(Base64.decode(rule, Base64.NO_WRAP));
        if (StringUtils.isEmpty(rule))
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
        String tmp = "";
        if(jsMatcher.find()) {
            do {
                if(jsMatcher.start()> start) {
                    tmp = rule.substring(start,jsMatcher.start());
                    if(StringUtils.isNotEmpty(tmp)) {
                        ruleList.add(new SourceRule(tmp,mMode));
                    }
                }
                if(StringUtils.isNotEmpty(jsMatcher.group(1)) || StringUtils.isNotEmpty(jsMatcher.group(2)))
                    ruleList.add(new SourceRule(jsMatcher.group(1) == null?jsMatcher.group(2):jsMatcher.group(1),Mode.Js));
                start = jsMatcher.end();
            } while (jsMatcher.find());
        }
        if (rule.length() > start) {
            tmp = StringUtils.trim(rule.substring(start));
            if (StringUtils.isNotEmpty(tmp)) {
                ruleList.add(new SourceRule(tmp, mMode));
            }
        }
        return ruleList;
    }

    enum Mode {
        XPath, Json, Default, Js, Regex

    }

    public Object put(String key, Object value) {
        ruleData.putVariable(key, value);
        return value;
    }

    public Object get(String key) {
        Object value = ruleData.getVariable(key);
        if(value == null || StringUtils.isEmpty(value.toString())) {
            return "";
        }
        Object data = ruleData.getVariable(key);
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

        private Map<String, String> putMap = new HashMap<String, String>();
        private LinkedHashMap<String,String> funMap = new LinkedHashMap();
        private List<String> ruleParam = new ArrayList<>();
        private List<Integer> ruleType = new ArrayList<>();
        private int fun = -3;
        private int getRuleType = -2;
        private int jsRuleType = -1;
        private int defaultRuleType = 0;

        public SourceRule(String ruleStr) {
            new SourceRule(ruleStr, Mode.Default);
        }

        public SourceRule(String ruleStr, Mode mMode) {
            this.mode = mMode;
            this.rule = ruleStr;
//            ruleStr = splitFunRule(rule,funMap);
            if(mMode == Mode.Js) {
                this.mode = Mode.Js;
                rule = ruleStr;
            } else if (StringUtils.startsWithIgnoreCase(ruleStr,"@CSS:")) {
                this.mode = Mode.Default;
                rule = ruleStr;
            } else if (StringUtils.startsWithIgnoreCase(ruleStr,"@@")) {
                this.mode = Mode.Default;
                this.rule = ruleStr.substring(2);
            } else if (StringUtils.startsWithIgnoreCase(ruleStr,"@XPath:")) {
                this.mode = Mode.XPath;
                this.rule = ruleStr.substring(7);
//            }  else if (StringUtils.startsWithIgnoreCase(ruleStr,"@Js:")) {
//                this.mode = Mode.Js;
//                this.rule = ruleStr.substring(4);
            } else if (StringUtils.startsWithIgnoreCase(ruleStr,"@Json:")) {
                this.mode = Mode.Json;
                this.rule = ruleStr.substring(6);
            } else if (isJSON||StringUtils.startsWithIgnoreCase(ruleStr,"$.") || StringUtils.startsWithIgnoreCase(ruleStr,"$[")) {
                this.mode = Mode.Json;
                rule = ruleStr;
            } else if (StringUtils.startsWithIgnoreCase(ruleStr,"/")) {
                this.mode = Mode.XPath;
                rule = ruleStr;
            } else {
                rule = ruleStr;
            }

            //分离put
            rule = splitPutRule(rule, putMap);
            int start = 0;
            String tmp = "";
            Matcher evalMatcher = evalPattern.matcher(rule);
            if (evalMatcher.find()) {
                tmp = rule.substring(start, evalMatcher.start());
                if (mode != Mode.Js && mode != Mode.Regex && (evalMatcher.start() == 0 || !StringUtils.contains(tmp, "##"))) {
                    mode = Mode.Regex;
                }
                do {
                    if (evalMatcher.start() > start) {
                        tmp = rule.substring(start, evalMatcher.start());
                        splitRegex(tmp);
                    }
                    tmp = evalMatcher.group();
                    if (StringUtils.startsWithIgnoreCase(tmp,"@get")) {
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
            String[] ruleStrArray = StringUtils.split(ruleStr, "##");
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
            if (ruleParam != null && !ruleParam.isEmpty()) {
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
                                infoVal.insert(0, String.format("%0.f", jsEval));
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
            String[] ruleStrs = rule.split("##");
            rule = StringUtils.trim(ruleStrs[0]);
            if (ruleStrs.length > 1) {
                replaceRegex = ruleStrs[1];
            }
            if (ruleStrs.length > 2) {
                replacement = ruleStrs[2];
            }
            if (ruleStrs.length > 3) {
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
