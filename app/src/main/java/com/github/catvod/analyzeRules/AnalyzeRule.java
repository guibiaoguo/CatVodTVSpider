package com.github.catvod.analyzeRules;

import android.annotation.TargetApi;
import android.os.Build;

import com.github.catvod.utils.StringUtil;

import org.apache.commons.lang3.StringUtils;
import org.json.JSONObject;
import org.jsoup.nodes.Entities;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AnalyzeRule {

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

    private Pattern putPattern = Pattern.compile("@put:(\\{[^}]+?\\})", Pattern.CASE_INSENSITIVE);
    private Pattern evalPattern =
            Pattern.compile("@get:\\{[^}]+?\\}|\\{\\{[\\w\\W]*?\\}\\}", Pattern.CASE_INSENSITIVE);
    private Pattern regexPattern = Pattern.compile("\\$\\d{1,2}");
    private Pattern titleNumPattern = Pattern.compile("(第)(.+?)(章)");
    private RuleDataInterface ruleData;

    public AnalyzeRule() {

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
                objectChangedXP = false;
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
                objectChangedXP = false;
            }
            return analyzeByJSonPath;
        }
    }

    public List<String> getStringList(String rule) {
        return getStringList(rule, null, false);
    }

    public List<String> getStringList(String rule, Object mContent, boolean isUrl) {
        if (StringUtils.isNotEmpty(rule)) return null;
        List<SourceRule> ruleList = splitSourceRule(rule, false);
        return getStringList(ruleList, mContent, isUrl);
    }

    public List<String> getStringList(List<SourceRule> ruleList) {
        return getStringList(ruleList);
    }

    public List<String> getStringList(List<SourceRule> ruleList, Object mContent, boolean isUrl) {
        Object result = null;
        Object content = mContent != null ? mContent : this.content;
        if (content != null && ruleList != null && !ruleList.isEmpty()) {
            result = content;
            for (SourceRule sourceRule : ruleList) {
                putRule(sourceRule.putMap);
                sourceRule.makeUpRule(result);
                if (StringUtils.isNotEmpty(sourceRule.rule)) {
                    switch (sourceRule.mode) {
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
            result = StringUtils.split(result.toString(), "\n");
        }
        if (isUrl) {
            List<String> urlList = new ArrayList<>();
            if (result instanceof List) {
                for (Object url : (List) result) {
                    try {
                        String absoluteURL = NetworkUtils.INSTANCE.getAbsoluteURL(redirectUrl, url.toString());
                        if (StringUtils.isNotEmpty(absoluteURL) && !urlList.contains(absoluteURL)) {
                            urlList.add(absoluteURL);
                        }
                    } catch (Exception e) {

                    }
                }
            }
            return urlList;
        }
        return (List<String>) result;
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
            for (SourceRule sourceRule : ruleList) {
                putRule(sourceRule.putMap);
                sourceRule.makeUpRule(result);
                if (StringUtils.isNotEmpty(sourceRule.rule) || StringUtils.isEmpty(sourceRule.replaceRegex)) {
                    switch (sourceRule.mode) {
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
            } else if(str.startsWith("/")){
                try {
                    return NetworkUtils.INSTANCE.getAbsoluteURL(redirectUrl, str.substring(1));
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                }
            }
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
                sourceRule.makeUpRule(result);
                switch (sourceRule.mode) {
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
        Object result = null;
        Object content = this.content;
        List<SourceRule> ruleList = splitSourceRule(ruleStr, true);
        if (content != null && ruleList != null && !ruleList.isEmpty()) {
            result = content;
            for (SourceRule sourceRule : ruleList) {
                putRule(sourceRule.putMap);
                sourceRule.makeUpRule(sourceRule.rule);
                switch (sourceRule.mode) {
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

    @TargetApi(Build.VERSION_CODES.N)
    private void putRule(Map<String, String> putMap) {
        putMap.forEach((key, value) -> {
            put(key, getString(value));
        });
    }

    private String splitPutRule(String ruleStr, Map<String, String> putMap) {
        String vRuleStr = ruleStr;
        Matcher putMatcher = putPattern.matcher(vRuleStr);
        while (putMatcher.find()) {
            vRuleStr = vRuleStr.replace(putMatcher.group(), "");
            try {
                JSONObject navs = new JSONObject(putMatcher.group(1));
                if (navs != null) {
                    Iterator<String> keys = navs.keys();
                    while (keys.hasNext()) {
                        String name = keys.next();
                        putMap.put(name.trim(), navs.optString(name).trim());
                    }
                }
            } catch (Exception e) {

            }
        }
        return vRuleStr;
    }

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
        if (StringUtils.isEmpty(rule)) return new ArrayList<>();
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
        String tmp;
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

    private String put(String key, String value) {
        ruleData.putVariable(key, value);
        return value;
    }

    private String get(String key) {
        return ruleData.getVariable(key);
    }

    class SourceRule {
        private Mode mode;
        private String rule;
        private String replaceRegex = "";
        private boolean replaceFirst;
        private String replacement = "";

        private Map<String, String> putMap = new HashMap<String, String>();
        private List<String> ruleParam = new ArrayList<>();
        private List<Integer> ruleType = new ArrayList<>();
        private int getRuleType = -2;
        private int jsRuleType = -1;
        private int defaultRuleType = 0;

        public SourceRule(String ruleStr) {
            new SourceRule(ruleStr, Mode.Default);
        }

        public SourceRule(String ruleStr, Mode mMode) {
            this.mode = mMode;
            this.rule = ruleStr;
            if (ruleStr.startsWith("@CSS")) {
                this.mode = Mode.Default;
                rule = ruleStr;
            } else if (ruleStr.startsWith("@@")) {
                this.mode = Mode.Default;
                this.rule = ruleStr.substring(2);
            } else if (ruleStr.startsWith("@XPath")) {
                this.mode = Mode.XPath;
                this.rule = ruleStr.substring(7);
            } else if (ruleStr.startsWith("@Json")) {
                this.mode = Mode.Json;
                this.rule = ruleStr.substring(6);
            } else if (isJSON || ruleStr.startsWith("$.") || ruleStr.startsWith("$[")) {
                this.mode = Mode.Json;
                rule = ruleStr;
            } else if (ruleStr.startsWith("/")) {
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
                if (mode != Mode.Json && mode != Mode.Regex && (evalMatcher.start() == 0 || !StringUtils.contains(tmp, "##"))) {
                    mode = Mode.Regex;
                }
                do {
                    if (evalMatcher.start() > start) {
                        tmp = rule.substring(start, evalMatcher.start());
                        splitRegex(tmp);
                    }
                    tmp = evalMatcher.group();
                    if (tmp.startsWith("@get")) {
                        ruleType.add(getRuleType);
                        ruleParam.add(tmp.substring(6, tmp.length() - 1));
                    } else if (tmp.startsWith("{{")) {
                        ruleType.add(jsRuleType);
                        ruleParam.add(tmp.substring(2, tmp.length() - 3));
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
                if (mode != Mode.Js && mode != Mode.Regex) {
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
    }
}
