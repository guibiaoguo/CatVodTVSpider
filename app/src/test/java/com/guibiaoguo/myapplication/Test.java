package com.guibiaoguo.myapplication;

import com.github.catvod.utils.Base64;
import com.github.catvod.utils.GlideFileUtil;
import com.github.catvod.utils.okhttp.OKCallBack;
import com.github.catvod.utils.okhttp.OkHttpUtil;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.DigestOutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

import javax.crypto.spec.IvParameterSpec;

import cn.hutool.core.io.FileUtil;
import cn.hutool.crypto.KeyUtil;
import cn.hutool.crypto.digest.DigestUtil;
import cn.hutool.crypto.symmetric.SymmetricCrypto;
import okhttp3.Call;
import okhttp3.Headers;
import okhttp3.Response;

public class Test {

    public void provlist() {
        String s = "[\"重庆\",\"河南\",\"广东\",\"湖北\",\"河北\",\"安徽\",\"江西\",\"黑龙江\",\"天津\",\"上海\",\"山西\",\"吉林\",\"江苏\",\"福建\",\"海南\",\"贵州\",\"云南\",\"陕西\",\"西藏\",\"宁夏\",\"内蒙古\",\"北京\",\"湖南\",\"广西\",\"甘肃\",\"浙江\",\"新疆\",\"山东\",\"四川\",\"青海\"]";
        try {
            JSONArray jsonArray = new JSONArray(s);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /**
     * 将int数值转换为占四个字节的byte数组，本方法适用于(低位在前，高位在后)的顺序。 和bytesToInt（）配套使用
     * @param value
     *            要转换的int值
     * @return byte数组
     */
    public static byte[] intToBytes( int value )
    {
        byte[] src = new byte[4];
        src[3] =  (byte) ((value>>24) & 0xFF);
        src[2] =  (byte) ((value>>16) & 0xFF);
        src[1] =  (byte) ((value>>8) & 0xFF);
        src[0] =  (byte) (value & 0xFF);
        return src;
    }

    /**
     * 将int数值转换为占四个字节的byte数组，本方法适用于(高位在前，低位在后)的顺序。  和bytesToInt2（）配套使用
     */
    public static byte[] intToBytes2(int value)
    {
        byte[] src = new byte[4];
        src[0] = (byte) ((value>>24) & 0xFF);
        src[1] = (byte) ((value>>16)& 0xFF);
        src[2] = (byte) ((value>>8)&0xFF);
        src[3] = (byte) (value & 0xFF);
        return src;
    }

    public int a(OutputStream outputStream, InputStream inputStream,int l) throws Exception {
        long j = 0;
        byte[] bJ = new byte[8192];
        //inputStream = new GZIPInputStream(inputStream);
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        GZIPOutputStream gzipOutputStream = new GZIPOutputStream(out);
        outputStream = new DigestOutputStream(outputStream, MessageDigest.getInstance("md5"));
//        byte[] b1 = new byte[]{31,-117,8,0,0};
//        outputStream.write(b1);
        ByteArrayOutputStream bf = new ByteArrayOutputStream();
        byte[] buffer = new byte[8192];
        int length;
//        bf.write(b1);
        //bf.write(intToBytes2(l));
        //inputStream.read(buffer,0,20);
        while ((length = inputStream.read(buffer)) != -1) {
            bf.write(buffer, 0, length);
        }
        bf.close();
        byte[] b1 = new byte[l];
        byte b2 = 0;
        Arrays.fill(b1,b2);
        gzipOutputStream.write(b1);
//        gzipOutputStream.write("".getBytes());
        gzipOutputStream.close();
        inputStream = new ByteArrayInputStream(GlideFileUtil.concat(out.toByteArray(),bf.toByteArray()));
        inputStream = new GZIPInputStream(inputStream);
        int i = 0;
        while (i >= 0) {
            int i2 = 0;
            while (i >= 0 ) {
                try {
                    if (i2 < bJ.length) {
                        i = inputStream.read(bJ, i2, bJ.length - i2);
                        if (i > 0) {
                            i2 += i;
                        }
                    }
                } catch (Exception e) {
                    outputStream.write(bJ, 0, i2);
                    e.printStackTrace();
                }
            }
            try {
                outputStream.write(bJ, 0, i2);
                j += i2;
            } finally {

            }
        }
//        gzipOutputStream.write("1".getBytes());
//        gzipOutputStream.close();
//        System.out.println(new String(out.toByteArray()));
        byte[] bArr = ((DigestOutputStream) outputStream).getMessageDigest().digest();
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        System.out.println(sb.toString());
        return i;
    }

    @org.junit.Test
    public void testC() {
        get("https://static.duokan.com/dk-fiction-resource/Duokan/0e79657bd75996916ade957205e6912c1a14332be");
    }
    public String get(String requestUrl) {
        HttpURLConnection connection = null;
        InputStream is = null;
        BufferedReader br = null;
        String result = null;
        try {
/** 创建远程url连接对象 */
            URL url = new URL(requestUrl);

/** 通过远程url对象打开一个连接，强制转换为HttpUrlConnection类型 */
            connection = (HttpURLConnection) url.openConnection();

/** 设置连接方式：GET */
            connection.setRequestMethod("GET");
/** 设置连接主机服务器超时时间：15000毫秒 */
            connection.setConnectTimeout(15000);
/** 设置读取远程返回的数据时间：60000毫秒 */
            connection.setReadTimeout(60000);

/** 设置通用的请求属性 */
            connection.setRequestProperty("accept", "*/*");
            connection.setRequestProperty("connection", "Keep-Alive");
            connection.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
// 设置传入参数的格式:请求参数应该是 name1=value1&name2=value2 的形式
            //connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            connection.setRequestProperty("Accept-Encoding","gzip,deflate");
/** 发送GET方式请求，使用connet方法建立和远程资源之间的实际连接即可 */
            connection.connect();

            /*-------------------------->*/
/** 获取所有相应头字段 */
            Map<String, List<String>> map = connection.getHeaderFields();
/** 遍历响应头字段 */
            for (String key : map.keySet()) {
                System.out.println(key + "---------->" + map.get(key));
            }
            /* <-------------------------- */
            System.out.println(connection.getContentEncoding());

/** 请求成功：返回码为200 */
            if (connection.getResponseCode() == 200) {
/** 通过connection连接，获取输入流 */
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream(connection.getContentLength());
                is = connection.getInputStream();
                a(outputStream,is,connection.getContentLength());
                String content = new String(outputStream.toByteArray());
                System.out.println(content);
/** 封装输入流is，并指定字符集 */
                br = new BufferedReader(new InputStreamReader(is, "UTF-8"));

/** 存放数据 */
                StringBuffer sbf = new StringBuffer();
                String line = null;
                while ((line = br.readLine()) != null) {
                    sbf.append(line);
                    sbf.append("\r\n");
                }
                result = sbf.toString();
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
/** 关闭资源 */
            try {

                if (null != br) {
                    br.close();
                }

                if (null != is) {
                    is.close();
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

/** 关闭远程连接 */
// 断开连接，最好写上，disconnect是在底层tcp socket链接空闲时才切断。如果正在被其他线程使用就不切断。
// 固定多线程的话，如果不disconnect，链接会增多，直到收发不出信息。写上disconnect后正常一些
            connection.disconnect();

            System.out.println("--------->>> GET request end <<<----------");
        }
//     try {
//        }
///** 创建远程url连接对象 */
//URL url = new URL(requestUrl);
//
///** 通过远程url对象打开一个连接，强制转换为HttpUrlConnection类型 */
//connection = (HttpURLConnection) url.openConnection();
//
///** 设置连接方式：GET */
//connection.setRequestMethod("GET");
///** 设置连接主机服务器超时时间：15000毫秒 */
//connection.setConnectTimeout(15000);
///** 设置读取远程返回的数据时间：60000毫秒 */
//connection.setReadTimeout(60000);
//
///** 设置通用的请求属性 */
//connection.setRequestProperty("accept", "*/*");
//connection.setRequestProperty("connection", "Keep-Alive");
//connection.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
//// 设置传入参数的格式:请求参数应该是 name1=value1&name2=value2 的形式
//connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
//
///** 发送GET方式请求，使用connet方法建立和远程资源之间的实际连接即可 */
//connection.connect();
//
///*-------------------------->*/
///** 获取所有相应头字段 */
//Map<String, List<String>> map = connection.getHeaderFields();
///** 遍历响应头字段 */
//for (String key : map.keySet()) {
//System.out.println(key + "---------->" + map.get(key));
//}
///* <-------------------------- */
//
///** 请求成功：返回码为200 */
//if (connection.getResponseCode() == 200) {
///** 通过connection连接，获取输入流 */
//is = connection.getInputStream();
///** 封装输入流is，并指定字符集 */
//br = new BufferedReader(new InputStreamReader(is, "UTF-8"));
//
///** 存放数据 */
//StringBuffer sbf = new StringBuffer();
//String line = null;
//while ((line = br.readLine()) != null) {
//sbf.append(line);
//sbf.append("\r\n");
//}
//result = sbf.toString();
//}
//
//} catch (Exception e) {
//e.printStackTrace();
//} finally {
///** 关闭资源 */
//try {
//
//if (null != br) {
//br.close();
//}
//
//if (null != is) {
//is.close();
//}
//
//} catch (Exception e) {
//e.printStackTrace();
//}
//
///** 关闭远程连接 */
//// 断开连接，最好写上，disconnect是在底层tcp socket链接空闲时才切断。如果正在被其他线程使用就不切断。
//// 固定多线程的话，如果不disconnect，链接会增多，直到收发不出信息。写上disconnect后正常一些
//connection.disconnect();
//
//System.out.println("--------->>> GET request end <<<----------");
//}
//
//return result;
        return "";
    }

    @org.junit.Test
    public void testDuoKan() throws Exception {
        OKCallBack<Response> callBack = new OKCallBack.OKCallBackDefault() {
            @Override
            protected void onFailure(Call call, Exception e) {

            }

            @Override
            protected void onResponse(Response response) {

            }
        };
        Map<String, String> head = new HashMap<>();
        head.put("Accept-Encoding", "gzip,deflate");
        //head.put("Accept", "application/json");
        OkHttpUtil.get(OkHttpUtil.defaultClient(), "https://static.duokan.com/dk-fiction-resource/Duokan/0e79657bd75996916ade957205e6912c1a14332be", null, head, callBack);
        Response response = callBack.getResult();
        Headers headers = callBack.getResult().headers();
        System.out.println(headers.get("Content-MD5"));
        int length = Integer.parseInt(headers.get("Content-Length"));
        InputStream inputStream = response.body().byteStream();
        //System.out.println(OkHttpUtil.string("https://static.duokan.com/dk-fiction-resource/Duokan/0b24154bb189e4c351dc67b7c4ac59983aa0bf252"));
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream(length>0?length:2024);
        //GZIPInputStream gZIPInputStream = new GZIPInputStream(inputStream);
        a(outputStream, inputStream,length);
        String content = new String(outputStream.toByteArray());
//        Matcher matcher = Pattern.compile("(?<=').*?(?=')").matcher(content);
//        if (matcher.find()) {
//            JSONObject jSONObject = new JSONObject(new String(Base64.decode(matcher.group(), 0)));
//            String optString = jSONObject.optString("t");
//
//        }
        System.out.println(content);
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                sb.append("0");
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    private static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes(StandardCharsets.US_ASCII));
            return a(messageDigest.digest());
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return "";
        }
    }


    private static byte[] c(String str) {
        byte[] bArr;
        int length = str.length();
        if (length % 2 == 1) {
            length++;
            bArr = new byte[length / 2];
            str = "0" + str;
        } else {
            bArr = new byte[length / 2];
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 2;
            bArr[i3] = b(str.substring(i2, i4));
            i3++;
            i2 = i4;
        }
        return bArr;
    }

    private static byte b(String str) {
        return (byte) Integer.parseInt(str, 16);
    }

    @org.junit.Test
    public void testYm() throws Exception {
        String content = OkHttpUtil.string("https://s.chuangke.tv/v4/1/lists.api?keyword=仙医&form=1");
//        String content = OkHttpUtil.string("https://chapter.chuangke.tv/sc/243/71/80/2654/1484.html");
        System.out.println(content);
        JSONObject jsonObject = new JSONObject(content);
        byte[] b = Base64.decode(jsonObject.optJSONObject("data").optString("content"),0);
        if (b != null) {
            String a = a(new String(GlideFileUtil.subBytes(b, 0, 16)));
            byte[] subBytes = GlideFileUtil.subBytes(b, 16, b.length - 32);
            String str = new String(GlideFileUtil.subBytes(b, b.length - 16, 16));
            String a2 = DigestUtil.digester("MD5").digestHex(str);
            byte[] bytes = str.getBytes();
            byte[] bytes2 = a2.getBytes();
            byte[] bArr = new byte[16];
            for (int i2 = 0; i2 < 16; i2++) {
                bArr[i2] = (byte) ((bytes2[i2] ^ bytes[i2]) ^ (-1));
            }
            SymmetricCrypto des = new SymmetricCrypto("AES/CBC/PKCS5Padding", KeyUtil.generateKey("AES/CBC/PKCS5Padding", c(a)),new IvParameterSpec(bArr));
            System.out.println(des.decryptStr(subBytes));
        }

    }

    @org.junit.Test
    public void testImage() throws Exception {
        OKCallBack<Response> callBack = new OKCallBack.OKCallBackDefault() {
            @Override
            protected void onFailure(Call call, Exception e) {

            }

            @Override
            protected void onResponse(Response response) {

            }
        };
        Map<String, String> head = new HashMap<>();
        head.put("Accept-Encoding", "gzip,deflate");
        //head.put("Accept", "application/json");
        String imgUrl = "https://c-chapter.chuangke.tv/bodong/220/e2/50/3553/399/9989";
        Pattern pattern = Pattern.compile("\\d+$");
        Matcher matcher = pattern.matcher(imgUrl);
        int id = 0;
        if (matcher.find()) {
            id = Integer.parseInt(matcher.group());
        }
        OkHttpUtil.get(OkHttpUtil.defaultClient(), imgUrl, null, head, callBack);
        Response response = callBack.getResult();
        Headers headers = callBack.getResult().headers();
        System.out.println(headers.get("Content-MD5"));
        int length = Integer.parseInt(headers.get("Content-Length"));
        InputStream inputStream = response.body().byteStream();
        inputStream = GlideFileUtil.getRemoveDataByteArray(id,0,GlideFileUtil.input2byte(inputStream));
        //BufferedWriter writer = new BufferedWriter(new FileWriter(new File("test.jpg")));
        FileUtil.writeBytes(GlideFileUtil.input2byte(inputStream),"E:\\CatVodTVSpider\\app\\src\\test\\resources\\test.jpg");
    }

    @org.junit.Test
    public void testCoverImage() throws Exception {
        OKCallBack<Response> callBack = new OKCallBack.OKCallBackDefault() {
            @Override
            protected void onFailure(Call call, Exception e) {

            }

            @Override
            protected void onResponse(Response response) {

            }
        };
        Map<String, String> head = new HashMap<>();
        head.put("Accept-Encoding", "gzip,deflate");
        //head.put("Accept", "application/json");
        OkHttpUtil.get(OkHttpUtil.defaultClient(), "https://c-res.chuangke.tv/jjwx/295/8f/d0/667597.jpg", null, head, callBack);
        Response response = callBack.getResult();
        Headers headers = callBack.getResult().headers();
        System.out.println(headers.get("Content-MD5"));
        int length = Integer.parseInt(headers.get("Content-Length"));
        InputStream inputStream = response.body().byteStream();
        inputStream = GlideFileUtil.getRemoveDataByteArray(0,0,GlideFileUtil.input2byte(inputStream));
        //BufferedWriter writer = new BufferedWriter(new FileWriter(new File("test.jpg")));
        FileUtil.writeBytes(GlideFileUtil.input2byte(inputStream),"E:\\CatVodTVSpider\\app\\src\\test\\resources\\test_cover.jpg");
    }
}
