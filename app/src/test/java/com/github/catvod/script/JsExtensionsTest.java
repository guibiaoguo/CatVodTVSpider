package com.github.catvod.script;

import static org.junit.Assert.*;

import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.parser.StrResponse;
import com.github.catvod.utils.Base64;

import com.google.gson.GsonBuilder;

import org.apache.commons.lang3.StringUtils;
import org.junit.Test;
import org.mozilla.javascript.Scriptable;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.crypto.Cipher;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.date.TimeInterval;
import cn.hutool.core.lang.Console;
import cn.hutool.core.thread.ConcurrencyTester;
import cn.hutool.core.thread.ThreadUtil;
import cn.hutool.core.util.CharsetUtil;
import cn.hutool.core.util.HexUtil;
import cn.hutool.core.util.NumberUtil;
import cn.hutool.core.util.PageUtil;
import cn.hutool.core.util.RandomUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.core.util.URLUtil;
import cn.hutool.crypto.SecureUtil;
import cn.hutool.crypto.asymmetric.AsymmetricCrypto;
import cn.hutool.crypto.asymmetric.KeyType;
import cn.hutool.crypto.asymmetric.RSA;
import cn.hutool.crypto.asymmetric.Sign;
import cn.hutool.crypto.asymmetric.SignAlgorithm;
import cn.hutool.crypto.symmetric.SymmetricAlgorithm;
import cn.hutool.crypto.symmetric.SymmetricCrypto;

public class JsExtensionsTest {

    JsExtensions jsExtensions = new JsExtensions() {};

    @Test
    public void md5Encode() {
        String md5 = jsExtensions.md5Encode("123456789");
        System.out.println(md5);
        assertEquals(md5,"25f9e794323b453885f5181f1b624d0b");
    }

    @Test
    public void testInputStreamMd5Encode() {
        String result = jsExtensions.md5Encode(new ByteArrayInputStream("123456789".getBytes()));
        assertEquals(result,"25f9e794323b453885f5181f1b624d0b");
    }

    @Test
    public void md5Encode16() {
        String result = jsExtensions.md5Encode16("123456789");
        assertEquals("323b453885f5181f",result);
    }

    @Test
    public void createSymmetricCryptoAES() {
        SymmetricCrypto symmetricCrypto = jsExtensions.createSymmetricCrypto("AES", cn.hutool.core.codec.Base64.decode("tCcPM8stSTtx88DeW0oFfA=="));
//        String code = symmetricCrypto.encryptHex("123456789");
//        System.out.println(code);
        String dcode = symmetricCrypto.decryptStr("e7e6100153ca3853b73be2a171e48d6c");
        assertEquals("test中文",dcode);
        System.out.println(dcode);
    }

    @Test
    public void createSymmetricCryptoAESEncry() {
        SymmetricCrypto symmetricCrypto = jsExtensions.createSymmetricCrypto("AES", "ZGqw971Ddd3F6E4q");
        String code = symmetricCrypto.encryptHex("test中文天海翼");
        System.out.println(code);
        assertEquals("2ee0bfe187dd6525e5960249091a363c1c22b7a7034859a4cd26f4f56f53dc9e",code);
//        String dcode = symmetricCrypto.decryptStr("e7e6100153ca3853b73be2a171e48d6c");
//        System.out.println(dcode);
    }

    @Test
    public void createSymmetricCryptoAESDecry() {
        SymmetricCrypto symmetricCrypto = jsExtensions.createSymmetricCrypto("AES", "ZGqw971Ddd3F6E4q");
//        String code = symmetricCrypto.encryptHex("123456789");
//        System.out.println(code);
        String dcode = symmetricCrypto.decryptStr("2ee0bfe187dd6525e5960249091a363c1c22b7a7034859a4cd26f4f56f53dc9e");
        assertEquals("test中文天海翼",dcode);
        System.out.println(dcode);

    }

    @Test
    public void createSymmetricCryptojsAESDecry() {
//        AnalyzeRule analyzeRule = new AnalyzeRule();
//        analyzeRule.setContent("");
//        String decode = analyzeRule.getString("@js:java.createSymmetricCrypto('AES','ZGqw971Ddd3F6E4q').decryptStr('2ee0bfe187dd6525e5960249091a363c1c22b7a7034859a4cd26f4f56f53dc9e')");
//        assertEquals("test中文天海翼",decode);
//        System.out.println(decode);
    }

    @Test
    public void createSymmetricCrypto() {
        SymmetricCrypto symmetricCrypto = jsExtensions.createSymmetricCrypto("AES","1234567812345678","1234567812345678");
        String code = symmetricCrypto.encryptHex("123456789");
        System.out.println(code);
        String dcode = symmetricCrypto.decryptStr(code);
        System.out.println(dcode);
    }

    @Test
    public void testCreateSymmetricCrypto() {
        SymmetricCrypto symmetricCrypto = jsExtensions.createSymmetricCrypto("AES","1234567812345678","1234567812345678");
        String code = symmetricCrypto.encryptHex("123456789");
        System.out.println(code);
        String dcode = symmetricCrypto.decryptStr(code);
        System.out.println(dcode);

    }

    @Test
    public void testCreateSymmetricCrypto1() {
        SymmetricCrypto symmetricCrypto = jsExtensions.createSymmetricCrypto("DES","12345678");
        String code = symmetricCrypto.encryptHex("12345678");
        System.out.println(code);
        String dcode = symmetricCrypto.decryptStr(code);
        System.out.println(dcode);
    }

    @Test
    public void testCreateSymmetricCrypto2() {
        SymmetricCrypto symmetricCrypto = jsExtensions.createSymmetricCrypto("DES","12345678".getBytes());
        String code = symmetricCrypto.encryptHex("123456789");
        System.out.println(code);
        String dcode = symmetricCrypto.decryptStr(code);
        System.out.println(dcode);
    }

    @Test
    public void createAsymmetricCryptoRSAEncry() {
        KeyPair pair = SecureUtil.generateKeyPair("RSA");
        String privateKey = Base64.encodeToString(pair.getPrivate().getEncoded(), Base64.DEFAULT);
        String publicKey = Base64.encodeToString(pair.getPublic().getEncoded(), Base64.DEFAULT);
        System.out.println(privateKey);
        System.out.println(publicKey);
        AsymmetricCrypto asymmetricCrypto = jsExtensions.createAsymmetricCrypto("RSA", privateKey, publicKey);
        String ecode = asymmetricCrypto.encryptBase64("test中文天海翼",KeyType.PublicKey);
        System.out.println(ecode);
    }

    @Test
    public void createAsymmetricCryptoRSADecry() {
        KeyPair pair = SecureUtil.generateKeyPair("RSA");
        String privateKey = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAPlhVO6qfz6fB9iDsNgM7ilXj1CB\n" +
                "YevNT97M380KmwoYcG+XTmOmFyI8h1nkR0rV9ioNIhjgRezG818012Brz2FphgotI+1ADuCqPrhx\n" +
                "3y1I29pro2BFeNxid/uoVJm/aE/55sxSqCcas7vXfdfh+cSBDJ1VWLkgDlnAaxFga2ARAgMBAAEC\n" +
                "gYAhAjkeaNhJjv3tiBYzAsMjcGuP2br/CJYMhPcP9NoWDqtomeZ5BNWwZRf6q19PEIhyLdAtlWys\n" +
                "Ap7ZeJe+3jD8uPnvokfWD+kf/zXiIkEwyoRD4tVt+xip44WAGtvAv4OtHzDAPqdFZP6BH9mtILXj\n" +
                "15r9p/ECsKkH43GiT6KF4QJBAP3Ldph77kKGvJE145RLupb+f37L6jCBTDFBCQGcib+ku6trDmAF\n" +
                "5WYuMf1auly3UA2Z5Fqnjzh9xUODJPG6+NcCQQD7jAx92ZCWJgJTudvxs/BDikx4ubCd3EQMPsoI\n" +
                "gPJ4Wp5fs7ZAyzeBkY5OwvVkv16Ri294BDCLYURmbrfngMlXAkEArqzEmTpix+LYEdFXKw/cAmRy\n" +
                "95/9NRkoiZXLTxKgNAh7KgXqxOgJ9QPCYC97qKh6LoJGiqZcinL1u/udB8q5zQJAI8a6bBfKeaB0\n" +
                "SkYv4wONk32S/MSkOv996iPwBh+Y3Mc+qSvdKv/8KAB0tf0Ce86/+4FSXEZ0RQ6TdOIgY9usRwJB\n" +
                "AODRcy9I3oyGqOQmDS+Hk+7iMVxAD4l/IxjNcu6cqQh7ZxLQu3hGPDc8XfykYZPoauiEnujFMU+z\n" +
                "i6nF8lAOcGQ=";
        String publicKey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQD5YVTuqn8+nwfYg7DYDO4pV49QgWHrzU/ezN/N\n" +
                "CpsKGHBvl05jphciPIdZ5EdK1fYqDSIY4EXsxvNfNNdga89haYYKLSPtQA7gqj64cd8tSNvaa6Ng\n" +
                "RXjcYnf7qFSZv2hP+ebMUqgnGrO7133X4fnEgQydVVi5IA5ZwGsRYGtgEQIDAQAB";
        System.out.println(privateKey);
        System.out.println(publicKey);
        AsymmetricCrypto asymmetricCrypto = jsExtensions.createAsymmetricCrypto("RSA", privateKey, null);
        String dcode = asymmetricCrypto.decryptStr("uDKkGb0Lqzz7sl90c6S6Wk+tDd0EM68h2WVqmMgMq9B7vJaQ7h2gcEWmXRr96FfCv2N1nnVDYIRro/WSrEqYOqzMrPAyJ4f0kzOaH1lHp/sKfvXDRxE3eaP1KQPifzmRS60qUsaQPGWwtAwHwBbeUCn+aXnycd/dyxGC6RKVipg=",KeyType.PrivateKey);
        assertEquals("test中文天海翼",dcode);
        System.out.println(dcode);
    }

    @Test
    public void createSymmetricCryptojsRSADecry() {
//        AnalyzeRule analyzeRule = new AnalyzeRule();
//        analyzeRule.setContent("");
//        String privateKey = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAPlhVO6qfz6fB9iDsNgM7ilXj1CB\n" +
//                "YevNT97M380KmwoYcG+XTmOmFyI8h1nkR0rV9ioNIhjgRezG818012Brz2FphgotI+1ADuCqPrhx\n" +
//                "3y1I29pro2BFeNxid/uoVJm/aE/55sxSqCcas7vXfdfh+cSBDJ1VWLkgDlnAaxFga2ARAgMBAAEC\n" +
//                "gYAhAjkeaNhJjv3tiBYzAsMjcGuP2br/CJYMhPcP9NoWDqtomeZ5BNWwZRf6q19PEIhyLdAtlWys\n" +
//                "Ap7ZeJe+3jD8uPnvokfWD+kf/zXiIkEwyoRD4tVt+xip44WAGtvAv4OtHzDAPqdFZP6BH9mtILXj\n" +
//                "15r9p/ECsKkH43GiT6KF4QJBAP3Ldph77kKGvJE145RLupb+f37L6jCBTDFBCQGcib+ku6trDmAF\n" +
//                "5WYuMf1auly3UA2Z5Fqnjzh9xUODJPG6+NcCQQD7jAx92ZCWJgJTudvxs/BDikx4ubCd3EQMPsoI\n" +
//                "gPJ4Wp5fs7ZAyzeBkY5OwvVkv16Ri294BDCLYURmbrfngMlXAkEArqzEmTpix+LYEdFXKw/cAmRy\n" +
//                "95/9NRkoiZXLTxKgNAh7KgXqxOgJ9QPCYC97qKh6LoJGiqZcinL1u/udB8q5zQJAI8a6bBfKeaB0\n" +
//                "SkYv4wONk32S/MSkOv996iPwBh+Y3Mc+qSvdKv/8KAB0tf0Ce86/+4FSXEZ0RQ6TdOIgY9usRwJB\n" +
//                "AODRcy9I3oyGqOQmDS+Hk+7iMVxAD4l/IxjNcu6cqQh7ZxLQu3hGPDc8XfykYZPoauiEnujFMU+z\n" +
//                "i6nF8lAOcGQ=";
//        analyzeRule.put("private",privateKey);
//        String decode = analyzeRule.getString("@js:private=java.get('private');java.createAsymmetricCrypto('RSA',private,null).decryptStr('uDKkGb0Lqzz7sl90c6S6Wk+tDd0EM68h2WVqmMgMq9B7vJaQ7h2gcEWmXRr96FfCv2N1nnVDYIRro/WSrEqYOqzMrPAyJ4f0kzOaH1lHp/sKfvXDRxE3eaP1KQPifzmRS60qUsaQPGWwtAwHwBbeUCn+aXnycd/dyxGC6RKVipg=',PrivateKey)");
//        System.out.println(decode);
    }

    @Test
    public void createAsymmetricCrypto() {
        KeyPair pair = SecureUtil.generateKeyPair("RSA");
        System.out.println(Base64.encodeToString(pair.getPrivate().getEncoded(),Base64.DEFAULT));
        System.out.println(Base64.encodeToString(pair.getPublic().getEncoded(),Base64.DEFAULT));
        ;
        String publicKey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCma/KlvKlXe58kxjDDtk7ju8oHGpl0dfSAQRVg\n" +
                "yWJHIVCfU8F5ZE784fcfOaSF5MB10WuCbAN+WK5S1aPRtKC37jGhMRNBWLwau5bSjuNaALO1Dq0o\n" +
                "rhUc/3NMpvw1MHZgVu/wbLvus1B8Up2+qYsbkelKtbUrjsL2JB+smGq/5QIDAQAB";
        String privateKey = "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAKZr8qW8qVd7nyTGMMO2TuO7ygca\n" +
                "mXR19IBBFWDJYkchUJ9TwXlkTvzh9x85pIXkwHXRa4JsA35YrlLVo9G0oLfuMaExE0FYvBq7ltKO\n" +
                "41oAs7UOrSiuFRz/c0ym/DUwdmBW7/Bsu+6zUHxSnb6pixuR6Uq1tSuOwvYkH6yYar/lAgMBAAEC\n" +
                "gYADgyllXGnPNLGN/fgp1poBThrRneWZjXhsu92UI9vvoraIDk/53GdFs2KFpa/2ZXa3EIWY2ee+\n" +
                "+GcsIgx+5grdniEQbFyi9CVfQbxwcqDf74y6JNUHdSyWxUK2L0nMEyxbmAUOz/7NMgNGCGj0dWYL\n" +
                "FbPymWLajWQQjs8slu8DBwJBAOnNiAzZtUN+N/BtIPR16+dz5QZc7vWygwbfPAFScvaMOlIa9Xdi\n" +
                "p1Hfv3ukq/NfN+xf/gDCpisT88jydmhAG1cCQQC2OL+TQ2QFom9AUI7TdzpCNwQnMK1MKjkjlR+7\n" +
                "OoTA4hQuWttccxADfGOwQxl+hd+PYdI2g4trxlbO11I9MjUjAkEAqy3XUYlIRJ0x+a78tN9tk+1v\n" +
                "noQGVQ+ZDTv+Y/1ovIiY3qpsVDd/x9spCC7d0ndBq6fwgcACB4I5OEQFW3isSwJBAIQrDxFSTQcl\n" +
                "NUpR4/aPwQrr+rAuR1Q6P+2GKVjU7hs1H+wrbHZW4uOUYn4jfSdfFLNcAWwW55ZJawdl+Dl45D8C\n" +
                "QC6AcAEdPgSV9S0ythvvdphwzspt8aqBlQwqARh4Y+tnQYBXkkJcqVk08DuoVYqPbUe3jjVoA53l\n" +
                "/Od7c/4LNMs=";
        AsymmetricCrypto asymmetricCrypto = jsExtensions.createAsymmetricCrypto("RSA", privateKey, publicKey);
        String code = asymmetricCrypto.encryptBase64("123456789", KeyType.PublicKey);
        System.out.println(code);
        String dcode = asymmetricCrypto.decryptStr(code, KeyType.PrivateKey);
        System.out.println(dcode);
        RSA rsa = new RSA();
//获得私钥
        rsa.getPrivateKey();
        rsa.getPrivateKeyBase64();
//获得公钥
        rsa.getPublicKey();
        rsa.getPublicKeyBase64();
//公钥加密，私钥解密
        byte[] encrypt = rsa.encrypt(StrUtil.bytes("我是一段测试aaaa", CharsetUtil.CHARSET_UTF_8), KeyType.PublicKey);
        byte[] decrypt = rsa.decrypt(encrypt, KeyType.PrivateKey);
//Junit单元测试
        assertEquals("我是一段测试aaaa", StrUtil.str(decrypt, CharsetUtil.CHARSET_UTF_8));
//私钥加密，公钥解密
        byte[] encrypt2 = rsa.encrypt(StrUtil.bytes("我是一段测试aaaa", CharsetUtil.CHARSET_UTF_8), KeyType.PrivateKey);
        byte[] decrypt2 = rsa.decrypt(encrypt2, KeyType.PublicKey);
//Junit单元测试
        assertEquals("我是一段测试aaaa", StrUtil.str(decrypt2, CharsetUtil.CHARSET_UTF_8));
    }

    @Test
    public void createSign() {
        Sign sign = jsExtensions.createSign(SignAlgorithm.MD5withRSA.getValue());
        byte[] data = "我是一段测试字符串".getBytes();
//签名
        byte[] signed = sign.sign(data);
        System.out.println(HexUtil.encodeHexStr(signed));
//验证签名
        boolean verify = sign.verify(data, signed);
        assert verify;
    }

    @Test
    public void digestHex() {
        String str = jsExtensions.digestHex("123456789","sha256");
        System.out.println(str);
        assertEquals(str, "15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225");
    }

    @Test
    public void digestBase64Str() {
        String dcode = jsExtensions.digestBase64Str("test中文天海翼","SHA256");
        assertEquals("7KButkCEigoCnmk8q0Y1qOUeN8bd5tYt8ZkkNfGMByM=",dcode);
        System.out.println(dcode);
    }

    @Test
    public void HMacHex() {
        String ecode = jsExtensions.HMacHex("test中文天海翼","HmacSHA256","123456789");
        assertEquals("6fd73523f716ef6b75d5f32e15d73d5fbf1798ddf550a155dcffd1aa029dafcc",ecode);
        System.out.println(ecode);
    }

    @Test
    public void hmacBase64() {
        String str = jsExtensions.HmacBase64("123456789","HmacSHA256","12345789");
        assertEquals("gB2uYNHXcCB+Ye9Nlz0LhGp8f+9ef9HZNuZ/O7TVfFE=",str);
        System.out.println(str);
    }

    @Test
    public void ajax() {
        String content = jsExtensions.ajax("https://gitcafe.net/tool/alipaper/,{\"method\":\"POST\",\"body\":\"action=viewcat&num=1&cat=hyds\"}");
        assertNotNull(content);
        System.out.println(content);
    }

    @Test
    public void ajaxPost() {
        Map<String, Object> data = new HashMap<>();
        data.put("charset","utf-8");
        data.put("method","POST");
        data.put("body","keyword=我的&kwtype=0");
        String body = new GsonBuilder().disableHtmlEscaping().create().toJson(data);
        String url = "https://m.huangdizhijia.com/index.php?action=search," + body;
        String content = jsExtensions.ajax(url);
        assertNotNull(content);
        System.out.println(content);
    }

    @Test
    public void ajaxAll() throws Exception {
        List<String> urlList = new ArrayList<>();
        for (int i = 0; i < 5; i++) {
            urlList.add(StrUtil.format("https://www.huangdizhijia.com/novel/{}.html", 490 + i));
        }
        List<StrResponse> strResponses = jsExtensions.ajaxAll(urlList);
        for (StrResponse strRespon : strResponses) {
            String content = strRespon.body();
            assertNotNull(content);
            System.out.println(content);
        }
    }

    @Test
    public void get(){
        Map<String, String> header = new HashMap<>();
        header.put("Content-Type","charset=utf-8");
        StrResponse response = jsExtensions.get("https://m.huangdizhijia.com", header);
        String content = response.body();
        assertNotNull(content);
        System.out.println(content);
    }

    @Test
    public void head() {
        System.out.println(jsExtensions.head("https://www.huangdizhijia.com", new HashMap<>()));
    }

    @Test
    public void post() throws IOException {
        Map<String, String> header = new HashMap<>();
        header.put("Content-Type","charset=utf-8");
        StrResponse response = jsExtensions.post("https://m.huangdizhijia.com/index.php?action=search", "keyword=我的", header);
        assertNotNull(response.body());
        System.out.println(response.body());
    }

    @Test
    public void strToBytes() {
        byte[] bytes = jsExtensions.strToBytes("123456789");
        byte[] exBytes = new byte[]{49, 50, 51, 52, 53, 54, 55, 56, 57};
        System.out.println(StrUtil.str(exBytes,"utf-8"));
        assertArrayEquals(exBytes,bytes);
//        assertEquals(exBytes,bytes);
        System.out.println(bytes);
    }

    @Test
    public void testStrToBytes() {
        byte[] bytes = jsExtensions.strToBytes("123456789","utf-8");
        byte[] exBytes = new byte[]{49, 50, 51, 52, 53, 54, 55, 56, 57};
        System.out.println(StrUtil.str(exBytes,"utf-8"));
        assertArrayEquals(exBytes,bytes);
//        assertEquals(exBytes,bytes);
        System.out.println(bytes);
    }

    @Test
    public void bytesToStr() {
        byte[] exBytes = new byte[]{49, 50, 51, 52, 53, 54, 55, 56, 57};
        String dcode = jsExtensions.bytesToStr(exBytes);
        assertEquals("123456789",dcode);
        System.out.println(dcode);
    }

    @Test
    public void testBytesToStr() {
        byte[] exBytes = new byte[]{49, 50, 51, 52, 53, 54, 55, 56, 57};
        String dcode = jsExtensions.bytesToStr(exBytes,"utf-8");
        assertEquals("123456789",dcode);
        System.out.println(dcode);
    }

    @Test
    public void base64Decode() {
        String dcode = jsExtensions.base64Decode("aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy");
        assertEquals("https://pastebin.com/raw/FAXcts0r",dcode);
        System.out.println(dcode);
    }

    @Test
    public void testBase64Decode() {
        String dcode = jsExtensions.base64Decode("aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy");
        assertEquals("https://pastebin.com/raw/FAXcts0r",dcode);
        System.out.println(dcode);
    }

    @Test
    public void testBase64Decode1() {
        System.out.println(jsExtensions.base64Decode("aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy","utf-8"));
    }

    @Test
    public void base64DecodeToByteArray() {
        byte[] exbytes = new byte[]{104, 116, 116, 112, 115, 58, 47, 47, 112, 97, 115, 116, 101, 98, 105, 110, 46, 99, 111, 109, 47, 114, 97, 119, 47, 70, 65, 88, 99, 116, 115, 48, 114};
        byte[] bytes = jsExtensions.base64DecodeToByteArray("aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy");
        assertArrayEquals(exbytes,bytes);
        System.out.println(bytes);
    }

    @Test
    public void testBase64DecodeToByteArray() {
        byte[] exbytes = new byte[]{104, 116, 116, 112, 115, 58, 47, 47, 112, 97, 115, 116, 101, 98, 105, 110, 46, 99, 111, 109, 47, 114, 97, 119, 47, 70, 65, 88, 99, 116, 115, 48, 114};
        byte[] bytes = jsExtensions.base64DecodeToByteArray("aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy");
        assertArrayEquals(exbytes,bytes);
        System.out.println(bytes);
    }

    @Test
    public void base64Encode() {
        String dcode = jsExtensions.base64EncodeStr("123456789");
        assertEquals("MTIzNDU2Nzg5",dcode);
        System.out.println(dcode);
    }

    @Test
    public void testBase64Encode() {
        byte[] exBytes = new byte[]{49, 50, 51, 52, 53, 54, 55, 56, 57};
        String dcode = jsExtensions.base64Encode(exBytes);
        assertEquals("MTIzNDU2Nzg5",dcode);
        System.out.println(dcode);
    }

    @Test
    public void hexDecodeToByteArray() {
        byte[] exbytes = new byte[]{18, 52, 86, 120, -111};
        byte[] bytes = jsExtensions.hexDecodeToByteArray("1234567891");
        assertArrayEquals(exbytes,bytes);
        System.out.println(bytes);
    }

    @Test
    public void hexDecodeToString() {
        String dcode = jsExtensions.hexDecodeToString("313233343536373839");
        assertEquals("123456789",dcode);
        System.out.println(dcode);
    }

    @Test
    public void hexEncodeToByteArray() {
        char[] exbytes = new char[]{'3', '1', '3', '2', '3', '3', '3', '4', '3', '5', '3', '6', '3', '7', '3', '8', '3', '9'};
        char[] bytes = jsExtensions.hexEncodeToByteArray("123456789");
        assertArrayEquals(exbytes,bytes);
        System.out.println(bytes);
    }

    @Test
    public void hexEncodeToString() {
        String encode = jsExtensions.hexEncodeToString("123456789");
        assertEquals("313233343536373839",encode);
        System.out.println(encode);
    }

    @Test
    public void timeFormatUTC() {
        long time = System.currentTimeMillis();
        System.out.println(time);
        String code = jsExtensions.timeFormatUTC(time,"yyyy",8);
        assertEquals("2023",code);
        System.out.println(code);
    }

    @Test
    public void timeFormat() {
        System.out.println(System.currentTimeMillis());
        System.out.println(jsExtensions.timeFormat(System.currentTimeMillis()));
    }

    @Test
    public void utf8ToGbk() throws UnsupportedEncodingException {
        String content = jsExtensions.ajax("https://www.mbtxt.la/go/117589/");
        System.out.println(content);
//        String dcode = new String(StrUtil.bytes(content,"utf-8"),"GBK");
//        System.out.println(dcode);
//        System.out.println(CharsetUtil.convert(content,"gbk","utf-8"));
//        String utf8 = new String(content.getBytes("utf-8"));
//        String unicode = new String(utf8.getBytes(),"utf-8");
//        System.out.println(unicode);
//        String dcode = new String(unicode.getBytes("gbk"));
//        System.out.println(dcode);
//        System.out.println(code);
//        String dcode = jsExtensions.utf8ToGbk(code);
//        System.out.println(dcode);
//        assertArrayEquals(dcode.getBytes(),StrUtil.bytes("test中文天海翼","gbk"));
//        System.out.println(dcode);
    }


    @Test
    public void encodeURI() {
        String ecode = jsExtensions.encodeURI("中文");
        assertEquals("%E4%B8%AD%E6%96%87",ecode);
        System.out.println(ecode);
    }

    @Test
    public void testEncodeURI() {
        String dcode = jsExtensions.encodeURI("test中文天海翼","GBK");
        assertEquals("test%D6%D0%CE%C4%CC%EC%BA%A3%D2%ED",dcode);
        System.out.println(dcode);
    }

    @Test
    public void decodeURI() {
        System.out.println(URLUtil.encode("https://m.huangdizhijia.com"));
        System.out.println(jsExtensions.decodeURI("https://m.huangdizhijia.com"));
    }

    @Test
    public void htmlFormat() {
    }

    @Test
    public void log() {
        jsExtensions.log("中文");
    }

    @Test
    public void randomUUID() {
        System.out.println(jsExtensions.randomUUID());
    }


    @Test
    public void test_json() {
        org.mozilla.javascript.Context cx = org.mozilla.javascript.Context.enter();
        try {
            cx.setOptimizationLevel(-1);
            Scriptable scope = cx.initStandardObjects();
            String str = "result='https://gitcafe.net/tool/alipaper/,'+JSON.stringify({'a':'2'})";
            Object result = cx.evaluateString(scope, str, "javax.script.filename", 1, null);
            Object result_reader = cx.evaluateReader(scope,new StringReader(str),"javax.script.filename",1, null);
            System.out.println(str + "=" + result);
        } catch (Exception e) {
            SpiderDebug.log(e);
        }finally {
            org.mozilla.javascript.Context.exit();
        }
    }

    @Test
    public void test_analyzeur2() throws IOException {
        System.out.println(jsExtensions.get("https://www.mbtxt.la/go/117589/",null,"gbk").body());
    }

    @Test
    public void test_post1() {
        System.out.println(jsExtensions.post("https://www.mbtxt.la/modules/article/search1.php","searchtype=articlename&searchkey=我的",new HashMap<>(),"gbk").body());
    }

//    @Test
//    public void ls() {
//        jsExtensions.ls(".");
//    }

    @Test
    public void testMehod() {
        System.out.println(StrUtil.str(null));
//        String url = URLUtil.complateUrl("https://m.huangdingzhijia.com/test/index.php?action=search", "novel/6098.html");
        String url = URLUtil.completeUrl("https://m.huangdingzhijia.com/test/index.php?action=search", "novel/6098.html");
        System.out.println(url);
        System.out.println(StringUtils.substringBefore("https://m.huangdingzhijia.com/test/index.php,{'method':'post','body':''}", ","));
        System.out.println(StrUtil.subBefore("https://m.huangdingzhijia.com/test/index.php,{'method':'post','body':''}", ",",false));
//        System.out.println(URLUtil.getHost(URLUtil.url("https://m.huangdingzhijia.com/test/index.php?action=search,{'method':'post'}")).toString());
    }

    @Test
    public void testSub() {
        String url = "http://127.0.0.1:9978/proxy?do=legado&js=@js:java.head(\"https://pdsapi.aliyundrive.com/v2/redirect?id=700559d915124bd19ad97223d91825341685019125170095386\",{\"referer\":\"https://www.aliyundrive.com/\"}).get(\"Location\")";

    }

    @Test
    public void testHex() {
        System.out.println(jsExtensions.hexEncodeToString("12345678wwerw"));
        System.out.println(jsExtensions.hexDecodeToString("31323334353637387777657277"));
        System.out.println(jsExtensions.hexEncodeToByteArray("12345678werw"));
        System.out.println(jsExtensions.hexDecodeToByteArray("313233343536373877657277"));
        System.out.println(jsExtensions.strToBytes("12345678"));
        System.out.println(jsExtensions.timeFormatUTC(1684692908439L,"yyyy",8));
    }

    @Test
    public void testFormat1() {
        System.out.println(jsExtensions.format("https://m.huangdizhijia.com/book/{}.html",500));
    }

    private static final String ALGO = "RSA";
    private static final String CHARSET = "UTF-8";

    /*
     * 用于存储随机产生的公钥与私钥
     */
    private static Map<Integer, String> KEY_CACHE = new HashMap<>();

    /**
     * 随机生成密钥对
     *
     * @throws NoSuchAlgorithmException
     */
    private static void generateKeyPair() throws NoSuchAlgorithmException {
        // KeyPairGenerator 类用于生成公钥和私钥对，基于RSA算法生成对象
        KeyPairGenerator keyPairGen = KeyPairGenerator.getInstance(ALGO);
        // 初始化密钥对生成器，密钥大小为 96-1024 位
        keyPairGen.initialize(1024, new SecureRandom());
        // 生成一个密钥对，保存在 keyPair 中
        KeyPair keyPair = keyPairGen.generateKeyPair();
        // 得到私钥
        RSAPrivateKey privateKey = (RSAPrivateKey) keyPair.getPrivate();
        // 得到公钥
        RSAPublicKey publicKey = (RSAPublicKey) keyPair.getPublic();
        String publicKeyString = new String(Base64.encode(publicKey.getEncoded(),Base64.DEFAULT));
        // 得到私钥字符串
        String privateKeyString = new String(Base64.encode(privateKey.getEncoded(),Base64.DEFAULT));
        // 将公钥和私钥保存到 Map
        KEY_CACHE.put(0, publicKeyString);
        KEY_CACHE.put(1, privateKeyString);
    }

    /**
     * RSA公钥加密
     *
     * @param data       加密字符串
     * @param publicKey 公钥
     * @return 密文
     * @throws Exception 加密过程中的异常信息
     */
    private static String encrypt(String data, String publicKey) throws Exception {
        // base64 编码的公钥
        byte[] decoded = Base64.decode(publicKey,Base64.DEFAULT);
        RSAPublicKey pubKey = (RSAPublicKey) KeyFactory.getInstance(ALGO).generatePublic(new X509EncodedKeySpec(decoded));
        // RSA加密
        Cipher cipher = Cipher.getInstance(ALGO);
        // 公钥加密
        cipher.init(Cipher.ENCRYPT_MODE, pubKey);
        return Base64.encodeToString(cipher.doFinal(data.getBytes(CHARSET)),Base64.DEFAULT);
    }

    /**
     * RSA私钥解密
     *
     * @param data        加密字符串
     * @param privateKey 私钥
     * @return 铭文
     * @throws Exception 解密过程中的异常信息
     */
    private static String decrypt(String data, String privateKey) throws Exception {
        byte[] inputByte = Base64.decode(data.getBytes(CHARSET),Base64.DEFAULT);
        // base64 编码的私钥
        byte[] decoded = Base64.decode(privateKey,Base64.DEFAULT);
        RSAPrivateKey priKey = (RSAPrivateKey) KeyFactory.getInstance(ALGO).generatePrivate(new PKCS8EncodedKeySpec(decoded));
        // RSA 解密
        Cipher cipher = Cipher.getInstance(ALGO);
        // 私钥解密
        cipher.init(Cipher.DECRYPT_MODE, priKey);
        return new String(cipher.doFinal(inputByte));
    }

    @Test
    public void test_rsa() {
        String originData = "123456789";
        try {
            generateKeyPair();
            String encryData = encrypt(originData, KEY_CACHE.get(0));
            System.out.println("encryData = " + encryData);
            String decryData = decrypt(encryData, KEY_CACHE.get(1));
            System.out.println("decryData = " + decryData);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void test_rsa1() {
        //私钥
        String PRIVATE_KEY = "MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAIL7pbQ+5KKGYRhw7jE31hmA"
                + "f8Q60ybd+xZuRmuO5kOFBRqXGxKTQ9TfQI+aMW+0lw/kibKzaD/EKV91107xE384qOy6IcuBfaR5lv39OcoqNZ"
                + "5l+Dah5ABGnVkBP9fKOFhPgghBknTRo0/rZFGI6Q1UHXb+4atP++LNFlDymJcPAgMBAAECgYBammGb1alndta"
                + "xBmTtLLdveoBmp14p04D8mhkiC33iFKBcLUvvxGg2Vpuc+cbagyu/NZG+R/WDrlgEDUp6861M5BeFN0L9O4hz"
                + "GAEn8xyTE96f8sh4VlRmBOvVdwZqRO+ilkOM96+KL88A9RKdp8V2tna7TM6oI3LHDyf/JBoXaQJBAMcVN7fKlYP"
                + "Skzfh/yZzW2fmC0ZNg/qaW8Oa/wfDxlWjgnS0p/EKWZ8BxjR/d199L3i/KMaGdfpaWbYZLvYENqUCQQCobjsuCW"
                + "nlZhcWajjzpsSuy8/bICVEpUax1fUZ58Mq69CQXfaZemD9Ar4omzuEAAs2/uee3kt3AvCBaeq05NyjAkBme8SwB0iK"
                + "kLcaeGuJlq7CQIkjSrobIqUEf+CzVZPe+AorG+isS+Cw2w/2bHu+G0p5xSYvdH59P0+ZT0N+f9LFAkA6v3Ae56OrI"
                + "wfMhrJksfeKbIaMjNLS9b8JynIaXg9iCiyOHmgkMl5gAbPoH/ULXqSKwzBw5mJ2GW1gBlyaSfV3AkA/RJC+adIjsRGg"
                + "JOkiRjSmPpGv3FOhl9fsBPjupZBEIuoMWOC8GXK/73DHxwmfNmN7C9+sIi4RBcjEeQ5F5FHZ";

//new一个rsa对象
        RSA rsa = new RSA(PRIVATE_KEY, null);

//秘文
        String a = "2707F9FD4288CEF302C972058712F24A5F3EC62C5A14AD2FC59DAB93503AA0FA17113A020EE4EA35EB53F"
                + "75F36564BA1DABAA20F3B90FD39315C30E68FE8A1803B36C29029B23EB612C06ACF3A34BE815074F5EB5AA3A"
                + "C0C8832EC42DA725B4E1C38EF4EA1B85904F8B10B2D62EA782B813229F9090E6F7394E42E6F44494BB8";

//将秘文解码为16进制字符串
        byte[] aByte = HexUtil.decodeHex(a);
//采用rsa解码方式解密秘文
        byte[] decrypt = rsa.decrypt(aByte, KeyType.PrivateKey);
//秘文为 虎头闯杭州,多抬头看天,切勿只管种地
        String code = StrUtil.str(decrypt, CharsetUtil.CHARSET_UTF_8);
        System.out.println(code);
    }

    @Test
    public void testAES() {
        String content = "test中文";
//随机生成密钥
        byte[] key = SecureUtil.generateKey(SymmetricAlgorithm.AES.getValue())
                .getEncoded();
        System.out.println(cn.hutool.core.codec.Base64.encode(key));
//构建
        SymmetricCrypto aes = new SymmetricCrypto(SymmetricAlgorithm.AES, key);
//加密
        byte[] encrypt = aes.encrypt(content);
//解密
        byte[] decrypt = aes.decrypt(encrypt);
//加密为16进制表示
        String encryptHex = aes.encryptHex(content);
        System.out.println(encryptHex);
//解密为字符串
        String decryptStr = aes.decryptStr(encryptHex, CharsetUtil.CHARSET_UTF_8);
        System.out.println(decryptStr);
    }

    public static byte[] getUTF8BytesFromGBKString(String gbkStr) {
        int n = gbkStr.length();
        byte[] utfBytes = new byte[3 * n];
        int k = 0;
        for (int i = 0; i < n; i++) {
            int m = gbkStr.charAt(i);
            if (m < 128 && m >= 0) {
                utfBytes[k++] = (byte) m;
                continue;
            }
            utfBytes[k++] = (byte) (0xe0 | (m >> 12));
            utfBytes[k++] = (byte) (0x80 | ((m >> 6) & 0x3f));
            utfBytes[k++] = (byte) (0x80 | (m & 0x3f));
        }
        if (k < utfBytes.length) {
            byte[] tmp = new byte[k];
            System.arraycopy(utfBytes, 0, tmp, 0, k);
            return tmp;
        }
        return utfBytes;
    }

    @Test
    public void gbkToUtf8() throws UnsupportedEncodingException {
        String utf8 = "中文";
        String gbk = new String(utf8.getBytes("utf-8"),"gbk");
        System.out.println(gbk);
        System.out.println(new String(getUTF8BytesFromGBKString(gbk),"gbk"));
    }

    @Test
    public void getSize() {
        System.out.println(jsExtensions.getSize("10240000"));
    }

    @Test
    public void removePrefix() {
        System.out.println(jsExtensions.removePrefix("test-ssni-590.mp4","test-"));
    }

    @Test
    public void removeSuffix() {
        System.out.println(jsExtensions.removeSuffix("ssni-590.mp4",".mp4"));
    }

    @Test
    public void sub() {
        System.out.println(jsExtensions.sub("ssni-590.mp4",5,-4));
    }

    @Test
    public void split() {
        System.out.println(jsExtensions.split("ssni-590.mp4",".").size());
    }
}