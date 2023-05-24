package com.github.catvod.script;

import static org.junit.Assert.*;

import com.github.catvod.crawler.SpiderDebug;
import com.github.catvod.parser.AnalyzeRule;
import com.github.catvod.parser.AnalyzeUrl;
import com.github.catvod.parser.StrResponse;
import com.github.catvod.utils.Base64;
import com.google.gson.GsonBuilder;

import org.junit.Test;
import org.mozilla.javascript.Scriptable;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.StringReader;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;

import javax.crypto.Cipher;

import cn.hutool.core.util.CharsetUtil;
import cn.hutool.core.util.HexUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.SecureUtil;
import cn.hutool.crypto.asymmetric.AsymmetricCrypto;
import cn.hutool.crypto.asymmetric.KeyType;
import cn.hutool.crypto.asymmetric.RSA;
import cn.hutool.crypto.asymmetric.Sign;
import cn.hutool.crypto.asymmetric.SignAlgorithm;
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
    public void testMd5Encode() {
        System.out.println(jsExtensions.md5Encode(new ByteArrayInputStream("123456789".getBytes())));
    }

    @Test
    public void md5Encode16() {
        System.out.println(jsExtensions.md5Encode16("123456789"));
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
        System.out.println(jsExtensions.digestBase64Str("123456789","SHA256"));
    }

    @Test
    public void HMacHex() {
        System.out.println(jsExtensions.HMacHex("123456789","HmacSHA256","123456789"));
    }

    @Test
    public void hmacBase64() {
        String str = jsExtensions.HmacBase64("123456789","HmacSHA256","12345789");
        System.out.println(str);
    }

    @Test
    public void ajax() {
        System.out.println(jsExtensions.ajax("https://gitcafe.net/tool/alipaper/,{\"method\":\"POST\",\"body\":\"action=viewcat&num=1&cat=hyds\"}"));
    }

    @Test
    public void ajaxPost() {
        Map<String, Object> data = new HashMap<>();
        data.put("charset","utf-8");
        data.put("method","POST");
        data.put("body","keyword=我的&kwtype=0");
        String body = new GsonBuilder().disableHtmlEscaping().create().toJson(data);
        String url = "https://m.huangdizhijia.com/index.php?action=search," + body;
        System.out.println(jsExtensions.ajax(url));
    }

    @Test
    public void get(){
        Map<String, String> header = new HashMap<>();
        header.put("Content-Type","charset=utf-8");
        StrResponse response = jsExtensions.get("https://m.huangdizhijia.com", header);
        System.out.println(response.body());
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
        System.out.println(response.body());
    }

    @Test
    public void strToBytes() {
        System.out.println(jsExtensions.strToBytes("123456789"));
    }

    @Test
    public void testStrToBytes() {
        System.out.println(jsExtensions.strToBytes("123456789","utf-8"));
    }

    @Test
    public void bytesToStr() {
        System.out.println(jsExtensions.bytesToStr("123456789".getBytes()));
    }

    @Test
    public void testBytesToStr() {
        System.out.println(jsExtensions.bytesToStr("123456789".getBytes(),"UTF-8"));
    }

    @Test
    public void base64Decode() {
        System.out.println(jsExtensions.base64Decode("aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy"));
    }

    @Test
    public void testBase64Decode() {
        System.out.println(jsExtensions.base64Decode("aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy", Base64.NO_WRAP));
    }

    @Test
    public void testBase64Decode1() {
        System.out.println(jsExtensions.base64Decode("aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy","utf-8"));
    }

    @Test
    public void base64DecodeToByteArray() {
        System.out.println(jsExtensions.base64DecodeToByteArray("aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy"));
    }

    @Test
    public void testBase64DecodeToByteArray() {
        System.out.println(jsExtensions.base64DecodeToByteArray("aHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L0ZBWGN0czBy",Base64.NO_WRAP));
    }

    @Test
    public void base64Encode() {
        System.out.println(jsExtensions.base64Encode("123456789"));
    }

    @Test
    public void testBase64Encode() {
        System.out.println(jsExtensions.base64Encode("123456789",Base64.NO_WRAP));
    }

    @Test
    public void hexDecodeToByteArray() {
        System.out.println(jsExtensions.hexDecodeToByteArray("123456789"));
    }

    @Test
    public void hexDecodeToString() {
        System.out.println(jsExtensions.hexDecodeToString("313233343536373839"));
    }

    @Test
    public void hexEncodeToByteArray() {
        System.out.println(jsExtensions.hexEncodeToByteArray("123456789"));
    }

    @Test
    public void hexEncodeToString() {
        System.out.println(jsExtensions.hexEncodeToString("123456789"));
    }

    @Test
    public void timeFormatUTC() {
        System.out.println(jsExtensions.timeFormatUTC(System.currentTimeMillis(),"yyyy",8));
    }

    @Test
    public void timeFormat() {
        System.out.println(System.currentTimeMillis());
        System.out.println(jsExtensions.timeFormat(System.currentTimeMillis()));
    }

    @Test
    public void utf8ToGbk() {
        System.out.println(jsExtensions.utf8ToGbk("123456789"));
    }

    @Test
    public void encodeURI() {
        System.out.println(jsExtensions.encodeURI("中文"));
    }

    @Test
    public void testEncodeURI() {
        System.out.println(jsExtensions.encodeURI("中文","GBK"));
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
    public void test_js() {
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        analyzeRule.put("detailId", "https://www.aliyundrive.com/s/aHCAJFSRyua");
        System.out.println(analyzeRule.getString("@js:code=java.get('detailId');m=code.match(\"https://www.aliyundrive.com/s/([^/]+)(/folder/([^/]+))?\");if(m){result=m[1];java.put('fileId',m[3]!=undefined?m[3]:'');};result"));
        System.out.println(analyzeRule.get("fileId"));
        analyzeRule.getElements("@js:'原画,超清,高清'.split(',')");
        String accessToken = analyzeRule.getString("@js:token=String(java.ajax('https://www.qiaoji8.com/jar1/token.txt'));java.log(token);token='9ed3f99efcbe40e89b13d307f915cb63';post={'body':{'refresh_token':token,'grant_type':'refresh_token'},'method':'POST','headers':{'referer':'https://www.aliyundrive.com/'}};content=java.ajax('https://auth.aliyundrive.com/v2/account/token,'+JSON.stringify(post));accessToken=JSON.parse(content).access_token");
        System.out.println(analyzeRule.getString("@js:java.ajax('https://api.aliyundrive.com/token/refresh,'+JSON.stringify({'method':'post','body':{'client_id':'0','refresh_token':'9ed3f99efcbe40e89b13d307f915cb63'}}))"));
        System.out.println("******");
        System.out.println(analyzeRule.getString("@js:java.ajax('https://www.aliyundrive.com/oauth/access_token,'+JSON.stringify({'method':'post','body':{'client_id':'0','refresh_token':'9ed3f99efcbe40e89b13d307f915cb63','grant_type':'refresh_token'}}))"));
        System.out.println("*****");
        System.out.println(accessToken);
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
    public void test_analyzeurl() {
        AnalyzeUrl analyzeUrl = new AnalyzeUrl("https://www.mbtxt.la/modules/article/search1.php,{\"body\":\"searchtype=articlename&searchkey=我的\",\"method\":\"POST\",\"charset\":\"gbk\"}");
        System.out.println(analyzeUrl.getResponse());
        analyzeUrl = analyzeUrl = new AnalyzeUrl("https://m.huangdizhijia.com/index.php?action=search,{\"body\":\"searchtype=articlename&searchkey=我的\",\"method\":\"POST\"}");
        System.out.println(analyzeUrl.getResponse());
    }

    @Test
    public void test_analyzeur2() throws IOException {
        System.out.println(jsExtensions.get("https://www.mbtxt.la/go/117589/",null,"gbk").body());
    }

    @Test
    public void test_analyzeRule1() {
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        System.out.println(analyzeRule.getString("@js:java.ajax('https://www.mbtxt.la/modules/article/search1.php,{\"body\":\"searchtype=articlename&searchkey=我的\",\"method\":\"POST\",\"charset\":\"gbk\"}');"));
    }

    @Test
    public void test_analyzeRule2() {
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        System.out.println(analyzeRule.getString("@js:result=java.post('https://www.mbtxt.la/modules/article/search1.php',\"searchtype=articlename&searchkey=我的\",{},'gbk').body();"));
    }

    @Test
    public void test_post1() {
        System.out.println(jsExtensions.post("https://www.mbtxt.la/modules/article/search1.php","searchtype=articlename&searchkey=我的",new HashMap<>(),"gbk").body());
    }

    @Test
    public void test_analyzeRule3() {
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        analyzeRule.put("detailId", "https://www.aliyundrive.com/s/Lvt6XJobogm/folder/637a2afe82dedfde45d5400fb46f47f33ff5b438");
        String url = analyzeRule.getString("@js:code=java.get('detailId');m=code.match('https://www.aliyundrive.com/s/([^/]+)(/folder/([^/]+))?');if(m){shareId=m[1];java.put('shareId',shareId);java.put('fileId',m[3]!=undefined?m[3]:'');};'https://api.aliyundrive.com/adrive/v3/share_link/get_share_by_anonymous,'+JSON.stringify({'method':'POST','header':{'Referer':'https://www.aliyundrive.com/'},'body':{'share_id':shareId}})");
        AnalyzeUrl analyzeUrl = new AnalyzeUrl(url);
        System.out.println(analyzeUrl.getResponse());
    }

    @Test
    public void writeFile() {
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        String accessToken = analyzeRule.getString("@js:token=String(java.ajax('https://www.qiaoji8.com/jar1/token.txt'));java.log(token);token='9ed3f99efcbe40e89b13d307f915cb63';post={'body':{'refresh_token':token,'grant_type':'refresh_token'},'method':'POST','headers':{'referer':'https://www.aliyundrive.com/'}};content=java.ajax('https://auth.aliyundrive.com/v2/account/token,'+JSON.stringify(post));path=java.writeFile('ali-token.json',content);java.log(path);accessToken=JSON.parse(content).access_token");
        System.out.println(accessToken);
    }

    @Test
    public void readFile() {
//        System.out.println(jsExtensions.readFile("ali-token.json"));
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
//        System.out.println(analyzeRule.getString("@js:content=java.readFile('ali-token.json');java.log(content);token=JSON.parse(content).refresh_token;"));
        String accessToken = analyzeRule.getString("@js:content=java.readFile('ali-token.json');java.log(content);token=JSON.parse(content).refresh_token;post={'body':{'refresh_token':token,'grant_type':'refresh_token'},'method':'POST','headers':{'referer':'https://www.aliyundrive.com/'}};content=java.ajax('https://auth.aliyundrive.com/v2/account/token,'+JSON.stringify(post));path=java.writeFile('ali-token.json',content);java.log(path);accessToken=JSON.parse(content).access_token");
        System.out.println(accessToken);
    }

    @Test
    public void ls() {
        jsExtensions.ls(".");
    }
}