package com.github.catvod.parser;

import android.text.TextUtils;

import com.github.catvod.script.IFunction;
import com.github.catvod.script.JsExtensions;
//import com.github.catvod.script.quickjs.QuickJSScriptEngine;
import com.github.catvod.utils.StringUtil;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;
import com.google.gson.Gson;
import com.github.catvod.script.Bindings;
import com.github.catvod.script.ScriptEngine;
import com.github.catvod.script.SimpleBindings;
import com.github.catvod.script.rhino.RhinoScriptEngine;
import com.google.gson.GsonBuilder;
//import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;

import org.apache.commons.lang3.StringUtils;

import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cn.hutool.core.lang.Console;
import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.asymmetric.KeyType;
import okhttp3.Call;
import okhttp3.Headers;
import okhttp3.Response;

public class AnalyzeUrl extends JsExtensions implements IFunction {

    public static Gson gson = new GsonBuilder()
            .registerTypeAdapter(new TypeToken<Map<String,Object>>(){}.getType(),new DataTypeAdapter())
            .registerTypeAdapter(new TypeToken<List>(){}.getType(),new DataTypeAdapter())
            .create();

    private final String mUrl;
    private String key;
    private int page;
    private String baseUrl;

    private String urlNoQuery;
    public AnalyzeUrl(RequestMethod method, String mUrl, Map<String, String> headerMapF,String charset) {
        this.method = method;
        this.mUrl = mUrl;
        this.url = mUrl;
        this.baseUrl = "";
        if (headerMapF != null)
            this.headerMap.putAll(headerMapF);
        if (!this.headerMap.containsKey("User-Agent")) {
            headerMap.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42");
        }
        this.charset = charset;
        ruleData = new RuleData();
    }

    public AnalyzeUrl(RequestMethod method, String mUrl, Object body, Map<String, String> headerMapF,String charset) {
        this.method = method;
        this.mUrl = mUrl;
        this.url = mUrl;
        this.baseUrl = "";
        this.body = body.toString();
        if (headerMapF != null)
            this.headerMap.putAll(headerMapF);
        if (!this.headerMap.containsKey("User-Agent")) {
            headerMap.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42");
        }
        this.charset = charset;
        ruleData = new RuleData();
    }

    public AnalyzeUrl(String mUrl) {
        this.mUrl = mUrl;
        this.key = "";
        this.page = 1;
        this.baseUrl = "";
        ruleData = new RuleData();
        init();
        if (!this.headerMap.containsKey("User-Agent")) {
            headerMap.put("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42");
        }
    }

    public AnalyzeUrl(String mUrl, String key, int page, String baseUrl) {
        this.mUrl = mUrl;
        this.key = key;
        this.page = page;
        this.baseUrl = baseUrl;
        ruleData = new RuleData();
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

    private final Map<String, String> headerMap = new HashMap<>();
    private final Map<String, String> fieldMap = new LinkedHashMap<>();
    private String charset = null;
    private RequestMethod method = RequestMethod.GET;
    private String domain;

    private final RuleDataInterface ruleData;

    public void init() {
        Matcher urlMatcher = paramPattern.matcher(baseUrl);
        if (urlMatcher.find()) {
            baseUrl = baseUrl.substring(0, urlMatcher.start());
        }
        initUrl();
        domain = NetworkUtils.INSTANCE.getSubDomain(mUrl);
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
                result = result.replace("@result", result);
            }
            result = evalJS(jsMatcher.group(2)!=null?jsMatcher.group(2):jsMatcher.group(1), result).toString();
            start = jsMatcher.end();
        }
        if (ruleUrl.length() > start) {
            result = ruleUrl.substring(start);
            result = result.replace("@result", result);
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
//        try {
//            bindings = new SimpleBindings();
//            bindings.put("java", this);
//            bindings.put("result", result);
//            bindings.put("page", page);
//            bindings.put("baseUrl", baseUrl);
//            bindings.put("key", key);
//            QuickJSScriptEngine quickJSScriptEngine = QuickJSScriptEngine.getInstance();
//            result = quickJSScriptEngine.eval(rule, bindings);
//            Console.log(result);
//        } catch (Exception e) {
//            Console.log(e);
//        }
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
            List<String> pages = StrUtil.split(pageMatcher.group(1), ",");
            if (page < pages.size()) {
                ruleUrl = ruleUrl.replace(pageMatcher.group(), pages.get(page -1));
            } else {
                ruleUrl = ruleUrl.replace(pageMatcher.group(), pages.get(pages.size()-1));
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
            System.out.println("***********option start*********************");
            System.out.println(ruleUrl.substring(urlMatcher.end()));
            System.out.println(option.getBody());
            System.out.println(option.getJs());
            System.out.println(option.getHeaders());
            System.out.println(option.getMethod());
            System.out.println("**********option end*********************");
            if (StringUtils.equalsIgnoreCase("POST",option.getMethod())) {
                method = RequestMethod.POST;
            }
            if (option.getHeaders() != null) {
                headerMap.putAll(option.getHeaders());
            }
            if (option.getBody() instanceof String) {
                body = option.getBody().toString();
            } else if (option.getBody() != null){
                Map<String,Object> data = gson.fromJson(ruleUrl.substring(urlMatcher.end()),new TypeToken<Map<String,Object>>(){}.getType());
                body = new GsonBuilder().disableHtmlEscaping().create().toJson(data.get("body"));
            }
            charset = option.getCharset();
            if (StringUtils.isNotEmpty(option.getJs())) {
                url = evalJS(option.getJs(),"").toString();
            }
        }
        urlNoQuery = url;
        switch (method) {
            case GET:
                int pos = url.indexOf("?");
                if (pos != -1 && !headerMap.containsKey("referer")) {
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
        String[] queryS = StringUtils.split(fieldTxt,"&");
        for (String query : queryS) {
            String[] queryPair = StringUtils.splitByWholeSeparator(query,"=",2);
            String key = queryPair[0];
            String value = queryPair.length > 1 ? queryPair[1]: "";
            if (StringUtils.isEmpty(charset)) {
                if (NetworkUtils.INSTANCE.hasUrlEncode(value)) {
                    fieldMap.put(key, value);
                } else {
                    fieldMap.put(key, StringUtil.encode(value));
                }
            } else if(charset.equals("escape")) {
                fieldMap.put(key, StringUtil.escape(value));
            } else {
                fieldMap.put(key, StringUtil.encode(value, charset));
            }
        }
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

    public void getRespone(OKCallBack<?> okCallBack) {
        switch (method) {
            case GET:
                OkHttpUtil.get(OkHttpUtil.defaultClient(),urlNoQuery,fieldMap,headerMap, okCallBack);
                break;
            case POST:
                if (StringUtil.isJson(body) || StringUtil.isXml(body))
                    OkHttpUtil.postJson(OkHttpUtil.defaultClient(),urlNoQuery,body,headerMap,okCallBack);
                else
                    OkHttpUtil.post(OkHttpUtil.defaultClient(),urlNoQuery,fieldMap,headerMap, okCallBack);
                break;
        }
    }

    public StrResponse getStrResponse() {

        OKCallBack<Response> okCallBack = new OKCallBack.OKCallBackDefault() {
            /**
             * @param call 回调
             * @param e 错误信息
             */
            @Override
            protected void onFailure(Call call, Exception e) {

            }

            /**
             * @param response 返回响应
             */
            @Override
            protected void onResponse(Response response) {

            }
        };
        Console.log(headerMap);
        switch (method) {
            case HEAD:
                System.out.println("head请求");
                OkHttpUtil.get(OkHttpUtil.noRedirectClient(),urlNoQuery,fieldMap,headerMap, okCallBack);
                break;
            case GET:
                System.out.println("get请求");
                OkHttpUtil.get(OkHttpUtil.defaultClient(),urlNoQuery,fieldMap,headerMap, okCallBack);
                break;
            case POST:
                if (StringUtil.isJson(body) || StringUtil.isXml(body)) {
                    System.out.println("postJson请求");
                    OkHttpUtil.postJson(OkHttpUtil.defaultClient(), urlNoQuery, body, headerMap, okCallBack);
                }
                else {
                    System.out.println("post请求");
                    OkHttpUtil.post(OkHttpUtil.defaultClient(), urlNoQuery, fieldMap, headerMap, okCallBack);
                }
                break;
        }
        return new StrResponse(okCallBack.getResult(),charset);
    }

    public String getResponse() {
        StrResponse strResponse = getStrResponse();
        if (strResponse != null)
            return strResponse.body();
        return "";
    }

    public Headers head() {
        return response().header();
    }

    public StrResponse response() {
        urlNoQuery = url;
        switch (method) {
            case GET:
                int pos = url.indexOf("?");
                if (pos != -1 && !headerMap.containsKey("referer")) {
                    analyzeFields(url.substring(pos + 1));
                    urlNoQuery = url.substring(0, pos);
                }
                break;
            case POST:
                if (!StringUtil.isJson(body) && !StringUtil.isXml(body) && StringUtils.isEmpty(headerMap.get("Content-Type")))
                    analyzeFields(body);
                break;
        }
        return getStrResponse();
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
            url = String.format(Locale.CHINA, "%.0f", jsEval);
        } else if (jsEval == null){
            url = "";
        }
        return url;
    }
}
