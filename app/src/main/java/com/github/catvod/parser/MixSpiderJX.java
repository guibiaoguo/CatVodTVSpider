//package com.github.catvod.parser;
//
//import com.github.catvod.crawler.SpiderDebug;
//import com.github.catvod.utils.Base64;
//import com.github.catvod.utils.okhttp.OkHttpUtil;
//
//import org.json.JSONArray;
//import org.json.JSONObject;
//
//import java.util.ArrayList;
//import java.util.HashMap;
//import java.util.Iterator;
//import java.util.LinkedHashMap;
//import java.util.List;
//
//public class MixSpiderJX {
//
//    public static HashMap<String, ArrayList<String>> flagWebJx = new HashMap<>();
//
//    static HashMap<String, ArrayList<String>> configs = null;
//
//    public static JSONObject parse(LinkedHashMap<String, HashMap<String, String>> jx, String nameMe, String flag, String url) {
//        try {
//            if (configs == null) {
//                configs = new HashMap<>();
//                Iterator<String> keys = jx.keySet().iterator();
//                while (keys.hasNext()) {
//                    String key = keys.next();
//                    HashMap<String, String> parseBean = jx.get(key);
//                    String type = parseBean.get("type");
//                    if (type.equals("1") || type.equals("0")) {
//                        try {
//                            JSONArray flags = new JSONObject(parseBean.get("ext")).getJSONArray("flag");
//                            for (int j = 0; j < flags.length(); j++) {
//                                String flagKey = flags.getString(j);
//                                ArrayList<String> flagJx = configs.get(flagKey);
//                                if (flagJx == null) {
//                                    flagJx = new ArrayList<>();
//                                    configs.put(flagKey, flagJx);
//                                }
//                                flagJx.add(key);
//                            }
//                        } catch (Throwable th) {
//
//                        }
//                    } else if (type.equals("4")) {
//                        try {
//                            String ext = parseBean.get("ext");
//                            JSONObject jsonObject = new JSONObject(ext);
//                            JSONArray jsonArray = jsonObject.optJSONArray("jx");
//                            for (int i = 0; i < jsonArray.length(); i++) {
//                                JSONObject jxUrl = jsonArray.optJSONObject(i);
//                                String s = OkHttpUtil.string(jxUrl.optString("url"),null);
//                                AnalyzeRule analyzeRule = new AnalyzeRule();
//                                analyzeRule.setContent(s);
//                                List<Object> elements = analyzeRule.getElements(jxUrl.optString("urlNode"));
//                                for (Object element:elements) {
//                                    analyzeRule.setContent(element);
//                                    String title = analyzeRule.getString(jxUrl.optString("urlName"));
//                                    String urlId = analyzeRule.getString(jxUrl.optString("urlId"));
//                                    HashMap<String,String> urlMap = new HashMap<>();
//                                    urlMap.put("url", urlId);
//                                    urlMap.put("type", "0");
//                                    jx.put(title, urlMap);
//                                    try {
//                                        JSONArray flags = jxUrl.getJSONArray("flag");
//                                        for (int j = 0; j < flags.length(); j++) {
//                                            String flagKey = flags.getString(j);
//                                            ArrayList<String> flagJx = configs.get(flagKey);
//                                            if (flagJx == null) {
//                                                flagJx = new ArrayList<>();
//                                                configs.put(flagKey, flagJx);
//                                            }
//                                            flagJx.add(title);
//                                        }
//                                    } catch (Throwable th) {
//
//                                    }
//                                }
//                            }
//                        } catch (Throwable th) {
//
//                        }
//                    }
//                }
//            }
//            // 通过上面的配置获得解析列表
//            LinkedHashMap<String, String> jsonJx = new LinkedHashMap<>();
//            ArrayList<String> webJx = new ArrayList<>();
//            ArrayList<String> flagJx = configs.get(flag);
//            if (flagJx != null && !flagJx.isEmpty()) {
//                for (int i = 0; i < flagJx.size(); i++) {
//                    String key = flagJx.get(i);
//                    HashMap<String, String> parseBean = jx.get(key);
//                    String type = parseBean.get("type");
//                    if (type.equals("1")) {
//                        jsonJx.put(key, mixUrl(parseBean.get("url"), parseBean.get("ext")));
//                    } else if (type.equals("0")) {
//                        webJx.add(parseBean.get("url"));
//                    }
//                }
//            } else {
//                Iterator<String> keys = jx.keySet().iterator();
//                while (keys.hasNext()) {
//                    String key = keys.next();
//                    HashMap<String, String> parseBean = jx.get(key);
//                    String type = parseBean.get("type");
//                    if (type.equals("1")) {
//                        jsonJx.put(key, mixUrl(parseBean.get("url"), parseBean.get("ext")));
//                    } else if (type.equals("0")) {
//                        webJx.add(parseBean.get("url"));
//                    }
//                }
//            }
//            if (!webJx.isEmpty()) {
//                flagWebJx.put(flag, webJx);
//            }
//            // 优先使用json并发解析
//            JSONObject jsonResult = JsonParallel.parse(jsonJx, url);
//            if (jsonResult != null && jsonResult.has("url")) {
//                return jsonResult;
//            }
//            // json解析没有得到结果 用webview解析
//            if (!webJx.isEmpty()) {
//                JSONObject webResult = new JSONObject();
//                webResult.put("url", "proxy://do=parseMix&flag=" + flag + "&url=" + Base64.encodeToString(url.getBytes(), Base64.DEFAULT | Base64.URL_SAFE | Base64.NO_WRAP));
//                webResult.put("parse", 1);
//                return webResult;
//            }
//        } catch (Throwable th) {
//            SpiderDebug.log(th);
//        }
//        return new JSONObject();
//    }
//
//    private static String mixUrl(String url, String ext) {
//        if (ext.trim().length() > 0) {
//            int idx = url.indexOf("?");
//            if (idx > 0) {
//                return url.substring(0, idx + 1) + "cat_ext=" + Base64.encodeToString(ext.getBytes(), Base64.DEFAULT | Base64.URL_SAFE | Base64.NO_WRAP) + "&" + url.substring(idx + 1);
//            }
//        }
//        return url;
//    }
//
//}
