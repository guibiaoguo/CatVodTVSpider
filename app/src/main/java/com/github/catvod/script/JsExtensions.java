package com.github.catvod.script;

import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.parser.AnalyzeUrl;
import com.github.catvod.parser.RequestMethod;
import com.github.catvod.utils.Base64;
import com.github.catvod.utils.Misc;
import com.google.gson.GsonBuilder;

import org.apache.commons.lang3.StringUtils;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.SimpleTimeZone;
import java.util.UUID;

import cn.hutool.core.util.HexUtil;
import cn.hutool.crypto.asymmetric.AsymmetricAlgorithm;
import cn.hutool.crypto.asymmetric.AsymmetricCrypto;
import cn.hutool.crypto.asymmetric.Sign;
import cn.hutool.crypto.digest.DigestUtil;
import cn.hutool.crypto.symmetric.SymmetricCrypto;
import cn.hutool.crypto.digest.HMac;
import okhttp3.Headers;
import okhttp3.Response;

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
        if (iv != null && iv.length > 0) {
            return symmetricCrypto.setIv(iv);
        }
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
        if (StringUtils.isNotEmpty(iv))
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
        return new AsymmetricCrypto(algorithm,privateKeyBase64,publicKeyBase64);
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
        return Base64.encodeToString(DigestUtil.digester(algorithm).digest(data), Base64.NO_WRAP);
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
        return Base64.encodeToString(new
                HMac(algorithm, key.getBytes()).digest(data),
                Base64.NO_WRAP
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
        AnalyzeUrl analyzeUrl = new AnalyzeUrl(urlStr,"",1,"");
        return analyzeUrl.getResponse();
    }

    /**
     * js实现重定向拦截,网络访问get
     */
    public Response get(Object url, Map<String, String> headers) {
        String urlStr = url.toString();
        if (url instanceof List) {
            urlStr = ((List<?>) url).get(0).toString();
        }
        AnalyzeUrl analyzeUrl = new AnalyzeUrl(RequestMethod.GET, urlStr, headers);
        return analyzeUrl.response();
    }

    /**
     * js实现重定向拦截,网络访问get
     */
    public Headers head(Object url, Map<String, String> headers) {
        String urlStr = url.toString();
        if (url instanceof List) {
            urlStr = ((List<?>) url).get(0).toString();
        }
        AnalyzeUrl analyzeUrl = new AnalyzeUrl(RequestMethod.GET, urlStr, headers);
        return analyzeUrl.head();
    }

    /**
     * js实现重定向拦截,网络访问get
     */
    public Response post(Object url, String body, Map<String, String> headers) {
        String urlStr = url.toString();
        if (url instanceof List) {
            urlStr = ((List<?>) url).get(0).toString();
        }
        AnalyzeUrl analyzeUrl = new AnalyzeUrl(RequestMethod.POST, urlStr, body, headers);
        return analyzeUrl.response();
    }

    public byte[] strToBytes(String str)  {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public byte[] strToBytes(String str, String charset) {
        try {
            return str.getBytes(charset);
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public String bytesToStr(byte[] bytes)  {
        try {
            return new String(bytes, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public String bytesToStr(byte[] bytes, String charset) {
        try {
            return new String(bytes, charset);
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public String base64Decode(String str)  {
        try {
            return new String(Base64.decode(str, Base64.DEFAULT),"UTF-8");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public String base64Decode(String str, String charset) {
        try {
            return new String(Base64.decode(str, Base64.DEFAULT), charset);
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public String base64Decode(String str, int flags) {
        try {
            return new String(Base64.decode(str, flags),"UTF-8");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public byte[] base64DecodeToByteArray(String str) {
        if (StringUtils.isEmpty(str)) {
            return null;
        } else {
            return Base64.decode(str, Base64.DEFAULT);
        }
    }

    public byte[] base64DecodeToByteArray(String str, int flags) {
        if (StringUtils.isEmpty(str)) {
            return null;
        } else {
            return Base64.decode(str, flags);
        }
    }

    public String base64Encode(String str) {
        return Base64.encodeToString(str.getBytes(), Base64.NO_WRAP);
    }

    public String base64Encode(String str, int flags) {
        return Base64.encodeToString(str.getBytes(), flags);
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
        String utf8 = null;
        try {
            utf8 = new String(str.getBytes("UTF-8"));
            String unicode = new String(utf8.getBytes(), "UTF-8");
            return new String(unicode.getBytes("GBK"));
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public String encodeURI(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public String encodeURI(String str, String charset) {
        try {
            return URLEncoder.encode(str, charset);
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public String htmlFormat(String str) {
        return "";
    }

    public Object log(Object msg) {
        SpiderDebug.log(new GsonBuilder().disableHtmlEscaping().create().toJson(msg));
        return msg;
    }

    /**
     * 生成UUID
     */
    public String randomUUID() {
        return UUID.randomUUID().toString();
    }

}
