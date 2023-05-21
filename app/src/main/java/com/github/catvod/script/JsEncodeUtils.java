package com.github.catvod.script;

import java.io.InputStream;

import cn.hutool.crypto.asymmetric.AsymmetricCrypto;
import cn.hutool.crypto.asymmetric.Sign;
import cn.hutool.crypto.symmetric.SymmetricCrypto;

public interface JsEncodeUtils {

    String md5Encode(String str);
    String md5Encode(InputStream str);
    String md5Encode16(String str);

    //******************对称加密解密************************//
    /**
     * 在js中这样使用
     * java.createSymmetricCrypto(transformation, key, iv).decrypt(data)
     * java.createSymmetricCrypto(transformation, key, iv).decryptStr(data)

     * java.createSymmetricCrypto(transformation, key, iv).encrypt(data)
     * java.createSymmetricCrypto(transformation, key, iv).encryptBase64(data)
     * java.createSymmetricCrypto(transformation, key, iv).encryptHex(data)
     */

    /* 调用SymmetricCrypto key为null时使用随机密钥*/
    SymmetricCrypto createSymmetricCrypto(String transformation, byte[] key, byte[] iv);
    SymmetricCrypto createSymmetricCrypto(String transformation, byte[] key);
    SymmetricCrypto createSymmetricCrypto(String transformation, String key);
    SymmetricCrypto createSymmetricCrypto(String transformation, String key, String iv);
    //******************非对称加密解密************************//
    /**
     * 构造，创建新的私钥公钥对
     *
     * @param algorithm 算法
     */
    AsymmetricCrypto createAsymmetricCrypto(String algorithm);
    /**
     * 构造 私钥和公钥同时为空时生成一对新的私钥和公钥<br>
     * 私钥和公钥可以单独传入一个，如此则只能使用此钥匙来做加密或者解密
     *
     * @param algorithm        非对称加密算法
     * @param privateKeyBase64 私钥Base64
     * @param publicKeyBase64  公钥Base64
     */
    AsymmetricCrypto createAsymmetricCrypto(String algorithm, String privateKeyBase64, String publicKeyBase64);
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
    AsymmetricCrypto createAsymmetricCrypto(String algorithm, byte[] privateKey, byte[] publicKey);
    //******************签名************************//
    Sign createSign(String algorithm);
    /**
     * 生成摘要，并转为16进制字符串
     *
     * @param data 被摘要数据
     * @param algorithm 签名算法
     * @return 16进制字符串
     */
    String digestHex(String data, String algorithm);

    /**
     * 生成摘要，并转为Base64字符串
     *
     * @param data 被摘要数据
     * @param algorithm 签名算法
     * @return Base64字符串
     */

    String digestBase64Str(String data, String algorithm);

    /**
     * 生成散列消息鉴别码，并转为16进制字符串
     *
     * @param data 被摘要数据
     * @param algorithm 签名算法
     * @param key 密钥
     * @return 16进制字符串
     */
    String HMacHex(String data, String algorithm, String key);

    /**
     * 生成散列消息鉴别码，并转为Base64字符串
     *
     * @param data 被摘要数据
     * @param algorithm 签名算法
     * @param key 密钥
     * @return Base64字符串
     */
    String HmacBase64(String data,String algorithm,String key);



}
