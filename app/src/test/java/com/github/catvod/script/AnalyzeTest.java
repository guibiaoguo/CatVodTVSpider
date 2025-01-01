package com.github.catvod.script;

import static org.junit.Assert.assertEquals;

import com.github.catvod.parser.AnalyzeByJSonPath;
import com.github.catvod.parser.AnalyzeRule;
import com.github.catvod.parser.AnalyzeUrl;
import com.github.catvod.parser.NetworkUtils;

import org.junit.Test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.date.TimeInterval;
import cn.hutool.core.lang.Console;
import cn.hutool.core.thread.ConcurrencyTester;
import cn.hutool.core.thread.ThreadUtil;
import cn.hutool.core.util.NumberUtil;
import cn.hutool.core.util.PageUtil;
import cn.hutool.core.util.RandomUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.core.util.URLUtil;

public class AnalyzeTest {

    @Test
    public void createSymmetricCryptojsAESDecry() {
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        String decode = analyzeRule.getString("@js:java.createSymmetricCrypto('AES','ZGqw971Ddd3F6E4q').decryptStr('2ee0bfe187dd6525e5960249091a363c1c22b7a7034859a4cd26f4f56f53dc9e')");
        assertEquals("test中文天海翼",decode);
        System.out.println(decode);
    }

    @Test
    public void createSymmetricCryptojsRSADecry() {
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
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
        analyzeRule.put("private",privateKey);
        String decode = analyzeRule.getString("@js:private=java.get('private');java.createAsymmetricCrypto('RSA',private,null).decryptStr('uDKkGb0Lqzz7sl90c6S6Wk+tDd0EM68h2WVqmMgMq9B7vJaQ7h2gcEWmXRr96FfCv2N1nnVDYIRro/WSrEqYOqzMrPAyJ4f0kzOaH1lHp/sKfvXDRxE3eaP1KQPifzmRS60qUsaQPGWwtAwHwBbeUCn+aXnycd/dyxGC6RKVipg=',PrivateKey)");
        System.out.println(decode);
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
    public void test_analyzeurl() {
        AnalyzeUrl analyzeUrl = new AnalyzeUrl("https://www.mbtxt.la/modules/article/search1.php,{\"body\":\"searchtype=articlename&searchkey=我的\",\"method\":\"POST\",\"charset\":\"gbk\"}");
        System.out.println(analyzeUrl.getResponse());
        analyzeUrl = analyzeUrl = new AnalyzeUrl("https://m.huangdizhijia.com/index.php?action=search,{\"body\":\"searchtype=articlename&searchkey=我的\",\"method\":\"POST\"}");
        System.out.println(analyzeUrl.getResponse());
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
        String accessToken = analyzeRule.getString("@js:token=String(java.ajax('https://raw.fgit.cf/omiitop/TV/main/token.txt'));token='f58bea917ce946c18479c25e453544b3';java.log(token);post={'body':{'refresh_token':token,'grant_type':'refresh_token'},'method':'POST','headers':{'referer':'https://www.aliyundrive.com/'}};content=java.ajax('https://auth.aliyundrive.com/v2/account/token,'+JSON.stringify(post));java.log(content);path=java.writeFile('ali-token.json',content);java.log(path);accessToken=JSON.parse(content).access_token");
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
    public void testEncode() {
        System.out.println(URLUtil.encode("我的"));
        System.out.println(NetworkUtils.INSTANCE.isDigit16Char('E'));
        System.out.println(NetworkUtils.INSTANCE.hasUrlEncode(URLUtil.encode("我的")));
        System.out.println(String.format("%.0f",5.05555));
        System.out.println(NumberUtil.roundStr(5.05555,0));
        Object result = Arrays.asList(1, 2, 3, 4);
        System.out.println(result instanceof List);
        for (Object o : Convert.convert(List.class, result)) {
            System.out.println(o);
        }
        Object result1 = "12455";
        System.out.println(Convert.convert(String.class,result1));
        Map<String,Object> data = new HashMap<>();
        data.put("a","b");
        data.put("c","d");
        AnalyzeByJSonPath analyzeByJSonPath = new AnalyzeByJSonPath("{'file_id':1}");
        System.out.println(analyzeByJSonPath.getString("$.file_id"));
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("<a href='/novel/500.html'></a>");
        System.out.println(analyzeRule.getString("tag.a@href##/(\\d+).html##/book/$1.html"));
        System.out.println(analyzeRule.getString("tag.a@href##\\d##6###"));
    }

    @Test
    public void test1() {
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        analyzeRule.put("accessToken","eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI0MTdiYzk5NTllZDk0N2M3YmQzNDgzMzJlODg3YmI2MSIsImN1c3RvbUpzb24iOiJ7XCJjbGllbnRJZFwiOlwiMjVkelgzdmJZcWt0Vnh5WFwiLFwiZG9tYWluSWRcIjpcImJqMjlcIixcInNjb3BlXCI6W1wiRFJJVkUuQUxMXCIsXCJTSEFSRS5BTExcIixcIkZJTEUuQUxMXCIsXCJVU0VSLkFMTFwiLFwiVklFVy5BTExcIixcIlNUT1JBR0UuQUxMXCIsXCJTVE9SQUdFRklMRS5MSVNUXCIsXCJCQVRDSFwiLFwiT0FVVEguQUxMXCIsXCJJTUFHRS5BTExcIixcIklOVklURS5BTExcIixcIkFDQ09VTlQuQUxMXCIsXCJTWU5DTUFQUElORy5MSVNUXCIsXCJTWU5DTUFQUElORy5ERUxFVEVcIl0sXCJyb2xlXCI6XCJ1c2VyXCIsXCJyZWZcIjpcImh0dHBzOi8vd3d3LmFsaXl1bmRyaXZlLmNvbS9cIixcImRldmljZV9pZFwiOlwiMTczOGZlOWE2NjA4NDAxNWExNDcxNjgzZTAwZmFmOGJcIn0iLCJleHAiOjE2ODUwNTUzNzUsImlhdCI6MTY4NTA0ODExNX0.p_AYgx24KMLqHchnmptbqYkdsGq_mP0Rhrrh5oCE97vWgVYJ5-51o7jquK3PoPuRb4M4xP70fY6l6tB8pxyPJBUKP_vPRsGMRvIyjczsW850utFmQtR2_JoW4MFzo3_1S5ivTk8sOpJjWrAI_XOl07qJrAdKlWZCZJPPbgJw3vs");
        analyzeRule.put("shareToken","eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJjdXN0b21Kc29uIjoie1wiZG9tYWluX2lkXCI6XCJiajI5XCIsXCJzaGFyZV9pZFwiOlwiS3dVQ3o0SDMxSktcIixcImNyZWF0b3JcIjpcImEzOWY5YTMyNjEzMzQ1ZTk4ODRjOGExYTI5OGY2ZGVjXCIsXCJ1c2VyX2lkXCI6XCJhbm9ueW1vdXNcIn0iLCJjdXN0b21UeXBlIjoic2hhcmVfbGluayIsImV4cCI6MTY4NTA1NTM3NSwiaWF0IjoxNjg1MDQ4MTE1fQ.KWW_vD3EWOSWCw5EpQPKpUftmN0q_k-ZkS_awXgzAsQqbXKrhZOh62xRROmL6xNtyEbceuuhdNJprOgb9F4pnjhNl967Z30Hml53INy8awi4Y72NRVl3VVzJe08M5ap5Bc2ETykGcwMCbJovRVLg1adIofS_nJIDjtspE_VFHfo");
        analyzeRule.put("poster","619ae207b6f14e786a234bb9bf1c0c8998b75834");
        analyzeRule.put("proxy","http://127.0.0.:9978");
        analyzeRule.put("shareId","KwUCz4H31JK");
        String proxy = analyzeRule.getString("@js:proxy=java.get('proxy');list=[];list.push(proxy);list");
        String str =analyzeRule.getString("@js:java.get('proxy')+'?do=legado&js='+java.base64Encode('@js:playId=\"'+java.get('poster')+'\";shareId=\"'+java.get('shareId')+'\";shareToken=\"'+java.get('shareToken')+'\";access_token=\"'+java.get('accessToken')+'\";content=java.post(\"https://api.aliyundrive.com/v2/file/get_share_link_download_url\",\"{share_id:\"+shareId+\",file_id:\"+playId+\"}\",{\"referer\":\"https://www.aliyundrive.com/\",\"x-canary\":\"client=web,app=share,version=v2.3.1\",\"authorization\":access_token,\"x-share-token\":shareToken}).body();url=JSON.parse(content).url;url=java.head(url,{\"referer\":\"https://www.aliyundrive.com/\"}).get(\"Location\");url+\\',{\\\"headers\\\":{\\\"referer\\\":\\\"https://www.aliyundrive.com/\\\"}}\\'');");
        System.out.println(str);
        System.out.println(cn.hutool.core.codec.Base64.decodeStr(str.split("js=")[1]));
        String content = analyzeRule.getString(cn.hutool.core.codec.Base64.decodeStr(str.split("js=")[1]));
        System.out.println(content);
        AnalyzeUrl analyzeUrl = new AnalyzeUrl(content);
        System.out.println(analyzeUrl.getResponse());
    }

    @Test
    public void testFormat() {
        System.out.println(StrUtil.format("{} test", "car"));
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        System.out.println(analyzeRule.getString("@js:java.format('{} run {}','car','test');"));
        System.out.println(analyzeRule.getString("@js:java.sub('teseefefe',2,4)"));
        final TimeInterval timer = new TimeInterval();

// 分组1
//        timer.start("1");
//        ThreadUtil.sleep(800);
//
// 分组2
//        timer.start("2");
//        ThreadUtil.sleep(900);

//        Console.log("Timer 1 took {} ms", timer.intervalMs("1"));
//        Console.log("Timer 2 took {} ms", timer.intervalMs("2"));
        int[] startEnd1 = PageUtil.transToStartEnd(0, 10);//[0, 10]
        int[] startEnd2 = PageUtil.transToStartEnd(1, 10);//[10, 20]
        analyzeRule.log(startEnd1);
        analyzeRule.log(startEnd2);
        ConcurrencyTester tester = ThreadUtil.concurrencyTest(100, () -> {
            // 测试的逻辑内容
            long delay = RandomUtil.randomLong(100, 1000);
            ThreadUtil.sleep(delay);
            Console.log("{} test finished, delay: {}", Thread.currentThread().getName(), delay);
        });

// 获取总的执行时间，单位毫秒
        Console.log(tester.getInterval());
    }

    @Test
    public void testCopy() {
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        analyzeRule.put("accessToken","Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI0NGM4YjFlZTlhMWQ0ZTY3YTBjYTJhYjJiOWYwODhmOCIsImN1c3RvbUpzb24iOiJ7XCJjbGllbnRJZFwiOlwicEpaSW5OSE4yZFpXazhxZ1wiLFwiZG9tYWluSWRcIjpcImJqMjlcIixcInNjb3BlXCI6W1wiRFJJVkUuQUxMXCIsXCJGSUxFLkFMTFwiLFwiVklFVy5BTExcIixcIlNIQVJFLkFMTFwiLFwiU1RPUkFHRS5BTExcIixcIlNUT1JBR0VGSUxFLkxJU1RcIixcIlVTRVIuQUxMXCIsXCJCQVRDSFwiLFwiQUNDT1VOVC5BTExcIixcIklNQUdFLkFMTFwiLFwiSU5WSVRFLkFMTFwiLFwiU1lOQ01BUFBJTkcuTElTVFwiXSxcInJvbGVcIjpcInVzZXJcIixcInJlZlwiOlwiXCIsXCJkZXZpY2VfaWRcIjpcIjRhOGY2Zjk0ODgxYzRlYTdiYzBkNWVkYjZmNGU5NTM5XCJ9IiwiZXhwIjoxNjg1MTQ1NjA1LCJpYXQiOjE2ODUxMzgzNDV9.LrD5KNG7kxX9c0lhpaHDKzDcepG0cEc9Don3yoBqWnsqE4qoqe7Js0COqqnOYJCyVgTii6XFa6p-cqinLKzUbyaVzvr0HmPoOkQ1_aw2031eXJmuc1CRWnRfV3qCSVL1a4Sl6q-qHiHC7iM2TmKSWdK43gqNnsbv4Dx0i4nPg6s");
        analyzeRule.put("shareId","BfFQz6zbfYm");
        String shareToken = analyzeRule.getString("@js:shareId=java.get('shareId');post={'method':'POST','body':{'share_pwd':'','share_id':String(shareId)}};url='https://api.aliyundrive.com/v2/share_link/get_share_token,'+JSON.stringify(post);shareToken=JSON.parse(java.ajax(url)).share_token;java.put('shareToken',shareToken);shareToken");
        System.out.println(shareToken);
        String webUrl = "https://api.aliyundrive.com/v2/file/get_share_link_video_preview_play_info?jsonBody={\"share_id\":\"{{$.share_id}}\",\"file_id\":\"{{$.file_id}}\",\"template_id\":\"\",\"category\":\"live_transcoding\"};post;utf-8;{x-share-token@@get:{share_token}&&authorization@@get:{access_token}&&User-Agent@PC_UA}";
        String purl = analyzeRule.getString("@js:shareId=java.get('shareId');accessToken=java.get('accessToken');shareToken=java.get('shareToken');java.post('https://api.aliyundrive.com/v2/file/get_share_link_video_preview_play_info',JSON.stringify({'share_id':String(shareId),'file_id':'646f5da5ab61d810d9c74ac7baf24020742d07ad','template_id':'','category':'live_transcoding'}),{'X-Device-Id':'7d4aa4f32c5845e1b470ec40a7da186c','x-share-token':String(shareToken),'authorization':accessToken}).body();");
        System.out.println(purl);
    }

    @Test
    public void testClasses() {
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
//        analyzeRule.getString("@js:java.createAsymmetricCrypto('','',null);");
        System.out.println(analyzeRule.getString("@js:token='9ed3f99efcbe40e89b13d307f915cb63';post={'body':{'refresh_token':token,'grant_type':'refresh_token'},'method':'POST','headers':{'referer':'https://www.aliyundrive.com/'}};content=java.ajax('https://auth.aliyundrive.com/v2/account/token,'+JSON.stringify(post));access_token=JSON.parse(content).access_token;java.put('accessToken',access_token);shareId='U2tn1eo6zLw';post={'method':'POST','body':'{\\\"share_pwd\\\":\\\"\\\",\\\"share_id\\\":\\\"'+shareId+'\\\"}'};url='https://api.aliyundrive.com/v2/share_link/get_share_token,'+JSON.stringify(post);content=java.ajax(url);shareToken=JSON.parse(content).share_token;java.put('shareToken',shareToken);fileId=java.get('fileId');fileId!=''?'{\\\"file_id\\\":\\\"'+fileId+'\\\"}':result"));
    }
}
