package com.github.catvod.script;

import android.os.Build;

import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.parser.AnalyzeUrl;
import com.github.catvod.parser.RequestMethod;
import com.github.catvod.parser.StrResponse;
import com.github.catvod.spider.Init;
import com.github.catvod.utils.Utils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


import java.io.File;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.security.spec.AlgorithmParameterSpec;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.SimpleTimeZone;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionService;
import java.util.concurrent.Future;

import cn.hutool.core.codec.Base64;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.lang.Console;
import cn.hutool.core.thread.ThreadUtil;
import cn.hutool.core.util.CharsetUtil;
import cn.hutool.core.util.HexUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.core.util.URLUtil;
import cn.hutool.crypto.asymmetric.AsymmetricCrypto;
import cn.hutool.crypto.asymmetric.Sign;
import cn.hutool.crypto.digest.DigestUtil;
import cn.hutool.crypto.symmetric.SymmetricCrypto;
import cn.hutool.crypto.digest.HMac;
import okhttp3.Headers;

public abstract class JsExtensions implements JsEncodeUtils {

    /**
     * @param str
     * @return
     */
    @Override
    public String md5Encode(String str) {
        return DigestUtil.digester("MD5").digestHex(str);
    }

    @Override
    public String md5Encode(InputStream str) {
        return DigestUtil.digester("MD5").digestHex(str);
    }

    /**
     * @param str
     * @return
     */
    @Override
    public String md5Encode16(String str) {
        return DigestUtil.digester("MD5").digestHex(str).substring(8, 24);
    }

    /**
     * 在js中这样使用
     * java.createSymmetricCrypto(transformation, key, iv).decrypt(data)
     * java.createSymmetricCrypto(transformation, key, iv).decryptStr(data)
     * <p>
     * java.createSymmetricCrypto(transformation, key, iv).encrypt(data)
     * java.createSymmetricCrypto(transformation, key, iv).encryptBase64(data)
     * java.createSymmetricCrypto(transformation, key, iv).encryptHex(data)
     *
     * @param transformation
     * @param key
     * @param iv
     */
    /* 调用SymmetricCrypto key为null时使用随机密钥*/
    @Override
    public SymmetricCrypto createSymmetricCrypto(String transformation, byte[] key, byte[] iv) {
        SymmetricCrypto symmetricCrypto = new SymmetricCrypto(transformation, key);
//        if (iv != null && iv.length > 0) {
//            return symmetricCrypto.setParams(new AlgorithmParameterSpec);
//        }
        return symmetricCrypto;
    }

    /**
     * @param transformation
     * @param key
     * @return
     */
    @Override
    public SymmetricCrypto createSymmetricCrypto(String transformation, byte[] key) {
        return createSymmetricCrypto(transformation, key, null);
    }

    /**
     * @param transformation
     * @param key
     * @return
     */
    @Override
    public SymmetricCrypto createSymmetricCrypto(String transformation, String key) {
        return createSymmetricCrypto(transformation, key, null);
    }

    /**
     * @param transformation
     * @param key
     * @param iv
     * @return
     */
    @Override
    public SymmetricCrypto createSymmetricCrypto(String transformation, String key, String iv) {
        if (StrUtil.isNotEmpty(iv))
            return createSymmetricCrypto(transformation, key.getBytes(), iv.getBytes());
        else
            return createSymmetricCrypto(transformation, key.getBytes(), null);
    }

    //******************非对称加密解密************************//

    /**
     * 构造，创建新的私钥公钥对
     *
     * @param algorithm 算法
     */
    @Override
    public AsymmetricCrypto createAsymmetricCrypto(String algorithm) {
        return new AsymmetricCrypto(algorithm);
    }

    /**
     * 构造 私钥和公钥同时为空时生成一对新的私钥和公钥<br>
     * 私钥和公钥可以单独传入一个，如此则只能使用此钥匙来做加密或者解密
     *
     * @param algorithm        非对称加密算法
     * @param privateKeyBase64 私钥Base64
     * @param publicKeyBase64  公钥Base64
     */
    @Override
    public AsymmetricCrypto createAsymmetricCrypto(String algorithm, String privateKeyBase64, String publicKeyBase64) {
        if (StrUtil.isEmpty(privateKeyBase64)) {
            return new AsymmetricCrypto(algorithm,null,publicKeyBase64);
        } else if (StrUtil.isEmpty(publicKeyBase64)) {
            return new AsymmetricCrypto(algorithm,privateKeyBase64,null);
        } else {
            return new AsymmetricCrypto(algorithm,privateKeyBase64,publicKeyBase64);
        }
    }

    /**
     * 构造
     * <p>
     * 私钥和公钥同时为空时生成一对新的私钥和公钥<br>
     * 私钥和公钥可以单独传入一个，如此则只能使用此钥匙来做加密或者解密
     *
     * @param algorithm  算法
     * @param privateKey 私钥
     * @param publicKey  公钥
     */
    @Override
    public AsymmetricCrypto createAsymmetricCrypto(String algorithm, byte[] privateKey, byte[] publicKey) {
        return new AsymmetricCrypto(algorithm, privateKey, publicKey);
    }

    //******************签名************************//
    @Override
    public Sign createSign(String algorithm) {
        return new Sign(algorithm);
    }

    /**
     * 生成摘要，并转为16进制字符串
     *
     * @param data      被摘要数据
     * @param algorithm 签名算法
     * @return 16进制字符串
     */
    @Override
    public String digestHex(String data, String algorithm) {
        return DigestUtil.digester(algorithm).digestHex(data);
    }
    //******************非对称加密解密************************//

    /**
     * 生成摘要，并转为Base64字符串
     *
     * @param data      被摘要数据
     * @param algorithm 签名算法
     * @return Base64字符串
     */
    @Override
    public String digestBase64Str(String data, String algorithm) {
        return Base64.encode(DigestUtil.digester(algorithm).digest(data));
    }

    /**
     * 生成散列消息鉴别码，并转为16进制字符串
     *
     * @param data      被摘要数据
     * @param algorithm 签名算法
     * @param key       密钥
     * @return 16进制字符串
     */
    @Override
    public String HMacHex(String data, String algorithm, String key) {
        return new HMac(algorithm, key.getBytes()).digestHex(data);
    }

    /**
     * 生成散列消息鉴别码，并转为Base64字符串
     *
     * @param data      被摘要数据
     * @param algorithm 签名算法
     * @param key       密钥
     * @return Base64字符串
     */
    @Override
    public String HmacBase64(String data, String algorithm, String key) {
        return Base64.encode(new
                HMac(algorithm, key.getBytes()).digest(data)
        );
    }

    /**
     * 访问网络,返回String
     */
    public String ajax(Object url) {
        String urlStr = url.toString();
        if (url instanceof List) {
            urlStr = ((List<?>) url).get(0).toString();
        }
        AnalyzeUrl analyzeUrl = new AnalyzeUrl(urlStr);
        return analyzeUrl.getResponse();
    }

    public List<StrResponse> ajaxAll(List<String> urlList) throws Exception {
        List<StrResponse> strResponses = new ArrayList<>();
        CompletionService<StrResponse> completionService =  ThreadUtil.newCompletionService();
        for (String url : urlList) {
            Future<StrResponse> future = completionService.submit(new Callable<StrResponse>() {
                @Override
                public StrResponse call() throws Exception {
                    AnalyzeUrl analyzeUrl = new AnalyzeUrl(url);
                    return analyzeUrl.getStrResponse();
                }
            });
        }
        for (int i = 0; i < urlList.size(); i++) {
            strResponses.add(completionService.take().get());
        }
        return strResponses;
    }
    /**
     * js实现重定向拦截,网络访问get
     */
    public StrResponse get(Object url, Map<String, String> headers, String charset) {
        String urlStr = url.toString();
        if (url instanceof List) {
            urlStr = ((List<?>) url).get(0).toString();
        }
        AnalyzeUrl analyzeUrl = new AnalyzeUrl(RequestMethod.GET, urlStr, headers, charset);
        return analyzeUrl.response();
    }

    public StrResponse get(Object url, Map<String, String> headers) {
        return get(url,headers, "utf-8");
    }
    /**
     * js实现重定向拦截,网络访问get
     */
    public Headers head(Object url, Map<String, String> headers) {
        String urlStr = url.toString();
        if (url instanceof List) {
            urlStr = ((List<?>) url).get(0).toString();
        }
        AnalyzeUrl analyzeUrl = new AnalyzeUrl(RequestMethod.HEAD, urlStr, headers, "utf-8");
        return analyzeUrl.head();
    }

    /**
     * js实现重定向拦截,网络访问get
     */
    public StrResponse post(Object url, Object body, Map<String, String> headers, String charset) {
        String urlStr = url.toString();
        if (url instanceof List) {
            urlStr = ((List<?>) url).get(0).toString();
        }
        if (!(body instanceof String)) {
            body = new Gson().toJson(body);
        }
        AnalyzeUrl analyzeUrl = new AnalyzeUrl(RequestMethod.POST, urlStr, body, headers, charset);
        return analyzeUrl.response();
    }

    public StrResponse post(Object url, Object body, Map<String, String> headers) {
        StrResponse strResponse = post(url,body,headers,"utf-8");
        return strResponse;
    }

    public byte[] strToBytes(String str)  {
        return StrUtil.bytes(str);
    }

    public byte[] strToBytes(String str, String charset) {
        return StrUtil.bytes(str, charset);
    }

    public String bytesToStr(byte[] bytes)  {
        return StrUtil.str(bytes,"utf-8");
    }

    public String bytesToStr(byte[] bytes, String charset) {
        return StrUtil.str(bytes,charset);
    }

    public String base64Decode(String str)  {
        return Base64.decodeStr(str);
    }

    public String base64Decode(String str, String charset) {
        return Base64.decodeStr(str, charset);
    }

    public String base64Decode(String str, int flags) {
        return Base64.decodeStr(str);
    }

    public byte[] base64DecodeToByteArray(String str) {
        return Base64.decode(str);
    }

    public byte[] base64DecodeToByteArray(String str, int flags) {
        return Base64.decode(str);
    }

    public String base64EncodeStr(Object str) {
        if (!(str instanceof String)) {
            return Base64.encode(new Gson().toJson(str));
        }
        return Base64.encode(str.toString());
    }

    public String base64Encode(byte[] bytes) {
        return Base64.encode(bytes);
    }

    public String base64Encode(String str, int flags) {
        return Base64.encode(str);
    }
    /* HexString 解码为字节数组 */
    public byte[] hexDecodeToByteArray(String hex) {
        return HexUtil.decodeHex(hex);
    }

    /* hexString 解码为utf8String*/
    public String hexDecodeToString(String hex) {
        return HexUtil.decodeHexStr(hex);
    }

    /* HexString 编码为字符数组 */
    public char[] hexEncodeToByteArray(String hex) {
        return HexUtil.encodeHex(hex.getBytes());
    }

    /* utf8 编码为hexString */
    public String hexEncodeToString(String hex) {
        return HexUtil.encodeHexStr(hex);
    }

    /**
     * 格式化时间
     */
    public String timeFormatUTC(Long time, String format, int sh) {
        SimpleTimeZone utc = new SimpleTimeZone(sh, "UTC");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format,Locale.getDefault());
        simpleDateFormat.setTimeZone(utc);
        return new SimpleDateFormat(format).format(new Date(time));
    }

    /**
     * 时间格式化
     */
    public String timeFormat(Long time) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        return dateFormat.format(new Date(time));
    }

    /**
     * utf8编码转gbk编码
     */
    public String utf8ToGbk(String str)  {
        return CharsetUtil.convert(str,"utf-8","gbk");
    }

    public String encodeURI(String str) {
        return URLUtil.encode(str);
    }

    public String encodeURI(String str, String charset) {
        return URLUtil.encode(str, Charset.forName(charset));
    }

    public String decodeURI(String str) {
        return URLUtil.decode(str);
    }

    public String decodeURI(String str, String charset) {
        return URLUtil.decode(str, Charset.forName(charset));
    }

    public String getSize(String size) {
        if (StrUtil.isEmpty(size)) {
            return "";
        } else {
            return Utils.getSize(Double.parseDouble(size));
        }
    }

    /**
     *  格式化文本, {} 表示占位符<br>
     * @param template
     * @param params
     * @return
     */
    public String format(String template, Object... params) {
        return StrUtil.format(template, params);
    }

    public String removePrefix(String str, String prefix) {
        return StrUtil.removePrefix(str,prefix);
    }

    public String removeSuffix(String str, String prefix) {
        return StrUtil.removeSuffix(str,prefix);
    }

    public String sub(String str, int fromIndexInclude, int toIndexExclude) {
        return StrUtil.sub(str, fromIndexInclude, toIndexExclude);
    }

    public List<String> split(Object object, String separator) {
        if (object instanceof List) {
            return StrUtil.split(StrUtil.join("\n", (List)object),separator);
        }
        return StrUtil.split(object.toString(), separator);
    }

    public String htmlFormat(String str) {
        return "";
    }

    public Object log(Object ... msg) {
        SpiderDebug.log(new GsonBuilder().setPrettyPrinting().setLenient().disableHtmlEscaping().create().toJson(msg));
        Console.log(msg);
        return msg;
    }

    public void logType(Object msg) {
        Console.log(msg.getClass().getName());
    }

    public void toast(Object msg) {
        Init.show(new Gson().toJson(msg));
    }
    /**
     * 生成UUID
     */
    public String randomUUID() {
        return UUID.randomUUID().toString();
    }

    //****************文件操作******************//

    /***
     * 写入文件
     * @param path 文件路径
     * @param content 文件内容
     * @return 返回文件路径
     */
    public String writeFile(String path, String content) {
        path = Init.context().getExternalFilesDir(path).getAbsolutePath();
        File file = FileUtil.writeString(content, path,"utf-8");
        return file.getPath();
    }

    public String readFile(String path) {
        path = Init.context().getExternalFilesDir(path).getAbsolutePath();
        return FileUtil.readString(path, CharsetUtil.charset("utf-8"));
    }

    public void ls(String path) {
        System.out.println(Init.context().getCacheDir());
        System.out.println(Init.context().getFilesDir());
        System.out.println(Init.context().getExternalFilesDir(""));
        System.out.println(Init.context().getFilesDir());
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            System.out.println(Init.context().getCodeCacheDir());
        }
        System.out.println(Init.context().getExternalCacheDir());
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            System.out.println(Init.context().getExternalMediaDirs());
        }
        System.out.println(Init.context().getExternalCacheDirs());
        System.out.println(Init.context().getDatabasePath("/"));
//        System.out.println(Init.context().getDataDir().getAbsolutePath());
    }

}
