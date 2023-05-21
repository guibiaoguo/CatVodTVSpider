package com.github.catvod.parser;

import android.text.TextUtils;

import com.github.catvod.script.IFunction;
import com.github.catvod.script.JsExtensions;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.github.catvod.script.Bindings;
import com.github.catvod.script.ScriptEngine;
import com.github.catvod.script.SimpleBindings;
import com.github.catvod.script.rhino.RhinoScriptEngine;

import org.apache.commons.lang3.StringUtils;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import okhttp3.Call;
import okhttp3.Headers;
import okhttp3.Response;

public class AnalyzeUrl extends JsExtensions implements IFunction {

    private String mUrl;
    private String key;
    private int page;
    private String baseUrl;

    public AnalyzeUrl(RequestMethod method, String mUrl, Map<String, String> headerMapF) {
        this.method = method;
        this.mUrl = mUrl;
        this.url = mUrl;
        this.baseUrl = "";
        this.charset = "utf-8";
        if (headerMapF != null)
            this.headerMap.putAll(headerMapF);
        if (!this.headerMap.containsKey("User-Agent")) {
            headerMap.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42");
        }
    }

    public AnalyzeUrl(RequestMethod method, String mUrl, String body, Map<String, String> headerMapF) {
        this.method = method;
        this.mUrl = mUrl;
        this.url = mUrl;
        this.baseUrl = "";
        this.body = body;
        this.charset = "utf-8";
        if (headerMapF != null)
            this.headerMap.putAll(headerMapF);
        if (!this.headerMap.containsKey("User-Agent")) {
            headerMap.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42");
        }
    }

    public AnalyzeUrl(String mUrl, String key, int page, String baseUrl) {
        this.mUrl = mUrl;
        this.key = key;
        this.page = page;
        this.baseUrl = baseUrl;
        init();
        if (!this.headerMap.containsKey("User-Agent")) {
            headerMap.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42");
        }
    }

    private final Pattern paramPattern = Pattern.compile("\\s*,\\s*(?=\\{)");
    private final Pattern pagePattern = Pattern.compile("<(.*?)>");
    private final Pattern JS_PATTERN = Pattern.compile("<js>([\\w\\W]*?)</js>|@js:([\\w\\W]*)", Pattern.CASE_INSENSITIVE);

    private String ruleUrl = "";
    private String url = "";
    private String body = "";
    private String type = "";

    private Map<String, String> headerMap = new HashMap<>();
    private String urlNoQuery = "";
    private String queryStr = null;
    private Map<String, String> fieldMap = new LinkedHashMap<>();
    private String charset = null;
    private RequestMethod method = RequestMethod.GET;
    private String proxy = null;
    private int retry = 0;
    private String domain;

    private Long serverId = null;
    private RuleDataInterface ruleData;

    public void init() {
        Matcher urlMatcher = paramPattern.matcher(baseUrl);
        if (urlMatcher.find()) {
            baseUrl = baseUrl.substring(0, urlMatcher.start());
        }
        initUrl();
        domain = NetworkUtils.INSTANCE.getSubDomain(mUrl);
        ruleData = new RuleData();
    }

    private void initUrl() {
        ruleUrl = mUrl;
        //执行@js,<js></js>
        analyzeJs();
        //替换参数
        replaceKeyPageJs();
        //处理URL
        analyzeUrl();
    }

    private void analyzeJs() {
        int start = 0;
        Matcher jsMatcher = JS_PATTERN.matcher(ruleUrl);
        String result = ruleUrl;
        while (jsMatcher.find()) {
            if (jsMatcher.start() > start) {
                result = ruleUrl.substring(start, jsMatcher.start());
                if (result != null) {
                    result = result.replace("@result", result);
                }
            }
            result = evalJS(jsMatcher.group(2)!=null?jsMatcher.group(2):jsMatcher.group(1), result).toString();
            start = jsMatcher.end();
        }
        if (ruleUrl.length() > start) {
            result = ruleUrl.substring(start);
            if (result != null) {
                result = result.replace("@result", result);
            }
        }
    }

    private Object evalJS(String rule, Object result) {
        Bindings bindings = new SimpleBindings();
        ScriptEngine scriptEngine = new RhinoScriptEngine(bindings);
        bindings.put("java", this);
        bindings.put("result", result);
        bindings.put("baseUrl", baseUrl);
        bindings.put("page",page);
        bindings.put("key",key);
        result = scriptEngine.eval(rule, bindings);
        return result;
    }

    private void replaceKeyPageJs() {
        if (ruleUrl.contains("{{") && ruleUrl.contains("}}")) {
            RuleAnalyzer analyzer = new RuleAnalyzer(ruleUrl);
            String url = analyzer.innerRule("{{","}}", this);
            if (!TextUtils.isEmpty(url)) {
                ruleUrl = url;
            }
        }
        Matcher pageMatcher = pagePattern.matcher(ruleUrl);
        while (pageMatcher.find()) {
            String[] pages = pageMatcher.group(1).split(",");
            if (page < pages.length) {
                ruleUrl = ruleUrl.replace(pageMatcher.group(), pages[page -1]);
            } else {
                ruleUrl = ruleUrl.replace(pageMatcher.group(), pages[pages.length-1]);
            }
        }
    }

    private void analyzeUrl() {
        Matcher urlMatcher = paramPattern.matcher(ruleUrl);
        String urlNoOption = ruleUrl;
        if (urlMatcher.find())
            urlNoOption = ruleUrl.substring(0, urlMatcher.start());
        url = NetworkUtils.INSTANCE.getAbsoluteURL(baseUrl, urlNoOption);
        baseUrl = NetworkUtils.INSTANCE.getBaseUrl(url);
        if (urlNoOption.length() != ruleUrl.length()) {
            UrlOption option = new Gson().fromJson(ruleUrl.substring(urlMatcher.end()), UrlOption.class);
            if (option != null) {
                if (StringUtils.equalsIgnoreCase("POST",option.getMethod())) {
                    method = RequestMethod.POST;
                }
            }
            if (option.getHeaderMap() != null) {
                for (Map.Entry<String, String> entry : option.getHeaderMap().entrySet()) {
                    headerMap.put(entry.getKey(), entry.getValue());
                }
            }
            body = option.getBody();
            type = option.getType();
            charset = option.getCharset();
            retry = option.getRetry();
            if (StringUtils.isNotEmpty(option.getJs())) {
                url = evalJS(option.getJs(),"").toString();
            }
        }
        urlNoOption = url;
        switch (method) {
            case GET:
                int pos = url.indexOf("?");
                if (pos != -1) {
                    analyzeFields(url.substring(pos + 1));
                    urlNoQuery = url.substring(0, pos);
                }
                break;
            case POST:
                if (!StringUtil.isJson(body) && !StringUtil.isXml(body) && StringUtils.isEmpty(headerMap.get("Content-Type")))
                    analyzeFields(body);
                break;
        }
    }

    private void analyzeFields(String fieldTxt) {
        queryStr = fieldTxt;
        String[] queryS = StringUtils.split(fieldTxt,"&");
        for (String query : queryS) {
            String[] queryPair = StringUtils.splitByWholeSeparator(query,"=",2);
            String key = queryPair[0];
            String value = queryPair.length > 1 ? queryPair[1]: "";
            if (StringUtils.isEmpty(charset)) {
                if (NetworkUtils.hasUrlEncode(value)) {
                    fieldMap.put(key, value);
                } else {
                    fieldMap.put(key, StringUtil.encode(value));
                }
            } else if(charset.equals("escape")) {
                fieldMap.put(key, StringUtil.escape(value));
            } else if (StringUtils.equalsIgnoreCase(charset, "utf-8")){
                fieldMap.put(key, value);
            } else {
                fieldMap.put(key, StringUtil.encode(value, charset));
            }
        }
    }

    private String put(String key, String value) {
        ruleData.putVariable(key, value);
        return value;
    }

    private String get(String key) {
        String value = ruleData.getVariable(key);
        if(StringUtils.isEmpty(value) || value.equalsIgnoreCase("null")) {
            return "";
        }
        return ruleData.getVariable(key);
    }

    public void getRespone(OKCallBack okCallBack) {
        switch (method) {
            case GET:
                OkHttpUtil.get(OkHttpUtil.defaultClient(),url,fieldMap,headerMap, okCallBack);
                break;
            case POST:
                if (StringUtil.isJson(body) || StringUtil.isXml(body))
                    OkHttpUtil.postJson(OkHttpUtil.defaultClient(),url,body,headerMap,okCallBack);
                else
                    OkHttpUtil.post(OkHttpUtil.defaultClient(),url,fieldMap,headerMap, okCallBack);
                break;
        }
    }

    public String getResponse() {

        OKCallBack<String> okCallBack = new OKCallBack.OKCallBackString() {
            /**
             * @param call
             * @param e
             */
            @Override
            protected void onFailure(Call call, Exception e) {

            }

            /**
             * @param response
             */
            @Override
            protected void onResponse(String response) {

            }
        };
        switch (method) {
            case GET:
                OkHttpUtil.get(OkHttpUtil.defaultClient(),url,fieldMap,headerMap, okCallBack);
                break;
            case POST:
                if (StringUtil.isJson(body) || StringUtil.isXml(body))
                    OkHttpUtil.postJson(OkHttpUtil.defaultClient(),url,body,headerMap,okCallBack);
                else
                    OkHttpUtil.post(OkHttpUtil.defaultClient(),url,fieldMap,headerMap, okCallBack);
                break;
        }
        return okCallBack.getResult();
    }

    public Headers head() {
        return response().headers();
    }

    public Response response() {
        OKCallBack<Response> okCallBack = new OKCallBack.OKCallBackDefault() {
            @Override
            protected void onFailure(Call call, Exception e) {

            }

            @Override
            protected void onResponse(Response response) {

            }
        };
        if (StringUtils.isNotEmpty(body) && (!StringUtil.isJson(body)||!StringUtil.isXml(body))) {
            analyzeFields(body);
        }
        switch (method) {
            case GET:
                OkHttpUtil.get(OkHttpUtil.noRedirectClient(), url, fieldMap, headerMap, okCallBack);
                break;
            case POST:
                if (StringUtil.isJson(body) || StringUtil.isXml(body))
                    OkHttpUtil.postJson(OkHttpUtil.noRedirectClient(),url,body,headerMap,okCallBack);
                else
                    OkHttpUtil.post(OkHttpUtil.noRedirectClient(), url, fieldMap, headerMap, okCallBack);
                break;
        }
        return okCallBack.getResult();
    }

    public String getBaseUrl() {
        return baseUrl;
    }

    @Override
    public String getInnerRule(String rule) {
        Object jsEval = evalJS(rule,"");
        String url = "";
        if (jsEval instanceof String) {
            url = jsEval.toString();
        } else if (jsEval instanceof Double && (Double)jsEval % 1.0 == 0) {
            url = String.format("%0.f", jsEval);
        } else if (jsEval == null){
            url = "";
        }
        return url;
    }

    class UrlOption {
        private String method;
        private Map<String, String> headerMap;
        private String body;
        private String type;
        private String charset;
        private int retry;
        private String js;

        public String getCharset() {
            return charset;
        }

        public String getMethod() {
            return method;
        }

        public Map<String, String> getHeaderMap() {
            return headerMap;
        }

        public String getBody() {
            return body;
        }

        public String getType() {
            return type;
        }

        public int getRetry() {
            return retry;
        }

        public String getJs() {
            return js;
        }
    }
}
