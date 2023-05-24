package com.github.catvod.spider;

import com.github.catvod.crawler.Spider;
import com.google.gson.GsonBuilder;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LegadoTest {

    private Spider legado;
    @Before
    public void setUp() throws Exception {
        legado = new Legado();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        Proxy.port = 9978;
        LegadoRule legadoRule = new LegadoRule();
        legadoRule.setHomeUrl("@js:'https://gitcafe.net/alipaper/'");
        legadoRule.setTypeNode("class.tableizer-title");
        legadoRule.setTypeName("td@text");
        legadoRule.setTypeId("tag.a@href###");
        legadoRule.setHomeVideoUrl("@js:'https://gitcafe.net/alipaper/home.json'");
        legadoRule.setHomeVodNode("$.info.new[*]");
        legadoRule.setHomeVodName("$.title");
        legadoRule.setHomeVodPic("https://www.lgstatic.com/i/image2/M01/15/7E/{$.cat}.jpg");
        legadoRule.setHomeVodRemarks("$.des");
        legadoRule.setHomeVodId("$.key##^##https://www.aliyundrive.com/s/");
        Map<String, Object> data = new HashMap<>();
        data.put("method","POST");
        data.put("body","action=viewcat&num=@get:{pg}&cat=@get:{cateId}");
//        legadoRule.setCateUrl("https://gitcafe.net/tool/alipaper/," + new GsonBuilder().disableHtmlEscaping().create().toJson(data));
        legadoRule.setCateUrl("@js:pg=java.get('pg');cateId=java.get('cateId');'https://gitcafe.net/tool/alipaper/,'+JSON.stringify({'method':'POST','body':'action=viewcat&num='+pg+'&cat='+cateId})");
        legadoRule.setCateVodNode("$.data[*]");
        legadoRule.setCateVodName("$.title");
        legadoRule.setCateVodPic("https://www.lgstatic.com/i/image2/M01/15/7E/{$.cat}.jpg");
        legadoRule.setCateVodRemarks("$.des");
        legadoRule.setCateVodId("$.key##^##https://www.aliyundrive.com/s/");
        data = new HashMap<>();
        data.put("method","POST");
        data.put("body","{'share_id':'{{code=java.get('detailId');m=code.match('https://www.aliyundrive.com/s/([^/]+)(/folder/([^/]+))?');if(m){result=m[1];java.put('shareId',result);java.put('fileId',m[3]!=undefined?m[3]:'');};result}}'}");
        HashMap<String,String> header = new HashMap<>();
        header.put("Referer","https://www.aliyundrive.com/");
        data.put("header",header);
//        legadoRule.setDetailUrl("https://api.aliyundrive.com/adrive/v3/share_link/get_share_by_anonymous,"+new GsonBuilder().disableHtmlEscaping().create().toJson(data));
        legadoRule.setDetailUrl("@js:code=java.get('detailId');m=code.match('https://www.aliyundrive.com/s/([^/]+)(/folder/([^/]+))?');if(m){shareId=m[1];java.put('shareId',shareId);java.put('fileId',m[3]!=undefined?m[3]:'');};'https://api.aliyundrive.com/adrive/v3/share_link/get_share_by_anonymous,'+JSON.stringify({'method':'POST','header':{'Referer':'https://www.aliyundrive.com/'},'body':{'share_id':shareId}})");
        legadoRule.setDetailFileNodeParent("$.file_infos[*]@js:token='9ed3f99efcbe40e89b13d307f915cb63';post={'body':{'refresh_token':token,'grant_type':'refresh_token'},'method':'POST','headers':{'referer':'https://www.aliyundrive.com/'}};content=java.ajax('https://auth.aliyundrive.com/v2/account/token,'+JSON.stringify(post));access_token=JSON.parse(content).access_token;java.put('accessToken',access_token);shareId=java.get('shareId');post={'method':'POST','body':'{\"share_pwd\":\"\",\"share_id\":\"'+shareId+'\"}'};url='https://api.aliyundrive.com/v2/share_link/get_share_token,'+JSON.stringify(post);shareToken=JSON.parse(java.ajax(url)).share_token;java.put('shareToken',shareToken);fileId=java.get('fileId');fileId!=''?'{\"file_id\":\"'+fileId+'\"}':result");
        data = new HashMap<>();
        data.put("method","POST");
        Map<String,Object> params = new HashMap<>();
        params.put("limit", 200);
        params.put("share_id", "{{shareId=java.get('shareId')}}");
        params.put("parent_file_id", "{{JSON.parse(java.get('parent')).file_id;}}");
        params.put("order_by", "name");
        params.put("order_direction", "ASC");
        data.put("body", params);
        header = new HashMap<>();
        header.put("Referer","https://www.aliyundrive.com/");
        header.put("x-canary", "client=web,app=share,version=v2.3.1");
//        header.put("authorization","{{java.get('authorization')}}");
        header.put("x-share-token","{{java.get('shareToken')}}");
        data.put("headers",header);
        legadoRule.setDetailFileNodeUrl("https://api.aliyundrive.com/adrive/v2/file/list_by_share,"+new GsonBuilder().disableHtmlEscaping().create().toJson(data));
        legadoRule.setDetailFileNode("$.items[*]");
        legadoRule.setDetailFileNodeRoot("$.type@js:result=='folder'?result:''");
        legadoRule.setDetailFileNodeLeaf("$.name");
        legadoRule.setDetailFileNodeFlag("$.next_marker");
        legadoRule.setDetailFileNodeId("$.file_id");
        legadoRule.setDetailVodPlayFrom("@js:'原画,超清,高清'.split(',')");
        legadoRule.setVodPlayForm("@js:result");
        legadoRule.setVodPlayName("@js:size=result.get('size');name=result.get('name');parent_file_id=result.get('parent_file_id');result=name;parents=java.get('parents');for(i=0;i<parents.size();i++){parent=JSON.parse(parents.get(i));if(parent.file_id == parent_file_id){pname=parent.file_name?parent.file_name:parent.name;result=pname+ ' ' + name + ' [' + java.getSize(size)+']';break};};result;");
        legadoRule.setVodPlayUrl("$.file_id");
        legadoRule.setDetailFileNodeSub("$.name");
//        legadoRule.setPlayUrl("@js:token=java.ajax('https://www.qiaoji8.com/jar1/token.txt');content=java.ajax('https://auth.aliyundrive.com/v2/account/token,{'headers':{'referer':'https://www.aliyundrive.com/'},'method':'POST','body':{'refresh_token':token,'grant_type':'grant_type'}}');java.log(content);");
        legadoRule.setPlayUrl("@js:token=String(java.ajax('https://www.qiaoji8.com/jar1/token.txt'));java.log(token);token='9ed3f99efcbe40e89b13d307f915cb63';post={'body':{'refresh_token':token,'grant_type':'refresh_token'},'method':'POST','headers':{'referer':'https://www.aliyundrive.com/'}};content=java.ajax('https://auth.aliyundrive.com/v2/account/token,'+JSON.stringify(post));access_token=JSON.parse(content).access_token;java.put('accessToken',access_token);shareToken=java.get('shareToken');shareId=java.get('shareId');playId=java.get('playId');content=java.ajax('https://api.aliyundrive.com/v2/file/get_share_link_download_url,'+JSON.stringify({'headers':{'authorization':String(access_token),'x-share-token':String(shareToken),'x-canary':'client=web,app=share,version=v2.3.1','referer':'https://www.aliyundrive.com/'},'method':'POST','body':{'share_id':String(shareId),'file_id':String(playId)}}));java.log(content);url=JSON.parse(content).url;java.head(url,{'referer':'https://www.aliyundrive.com/'}).get('Location')");
//        legadoRule.setPlayUrl("@js:access_token='Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI0MTdiYzk5NTllZDk0N2M3YmQzNDgzMzJlODg3YmI2MSIsImN1c3RvbUpzb24iOiJ7XCJjbGllbnRJZFwiOlwiMjVkelgzdmJZcWt0Vnh5WFwiLFwiZG9tYWluSWRcIjpcImJqMjlcIixcInNjb3BlXCI6W1wiRFJJVkUuQUxMXCIsXCJTSEFSRS5BTExcIixcIkZJTEUuQUxMXCIsXCJVU0VSLkFMTFwiLFwiVklFVy5BTExcIixcIlNUT1JBR0UuQUxMXCIsXCJTVE9SQUdFRklMRS5MSVNUXCIsXCJCQVRDSFwiLFwiT0FVVEguQUxMXCIsXCJJTUFHRS5BTExcIixcIklOVklURS5BTExcIixcIkFDQ09VTlQuQUxMXCIsXCJTWU5DTUFQUElORy5MSVNUXCIsXCJTWU5DTUFQUElORy5ERUxFVEVcIl0sXCJyb2xlXCI6XCJ1c2VyXCIsXCJyZWZcIjpcImh0dHBzOi8vd3d3LmFsaXl1bmRyaXZlLmNvbS9cIixcImRldmljZV9pZFwiOlwiOWU5ODQxZjJiM2I4NDZhMWIwZWUyYTAwYzhiZjkxYzJcIn0iLCJleHAiOjE2ODQ4Mzg4ODgsImlhdCI6MTY4NDgzMTYyOH0.me46GHIyw5mvRgX3A-VN9E-wMHjFu3iNZJuuScV0LbrBbD7GzKa9sddeZiJGFKQHs_qQhcu2smcIGMXq6aDjxnS1N5NzTwfihRarsVxXgE4yZtl3CcKSW1IhGWACeFeGvD2cwJipo8cNBasPOV5JuF5WXZPV9L37w9Cd642iuj0';java.put('accessToken',access_token);shareToken=java.get('shareToken');shareId=java.get('shareId');playId=java.get('playId');content=java.ajax('https://api.aliyundrive.com/v2/file/get_share_link_download_url,'+JSON.stringify({'headers':{'authorization':String(access_token),'x-share-token':String(shareToken),'x-canary':'client=web,app=share,version=v2.3.1','referer':'https://www.aliyundrive.com/'},'method':'POST','body':{'share_id':String(shareId),'file_id':String(playId)}}));java.log(content);url=JSON.parse(content).url;java.head(url,{'referer':'https://www.aliyundrive.com/'}).get('Location')");
        header = new HashMap<>();
        header.put("Referer","https://www.aliyundrive.com/");
        legadoRule.setPlayHeader(header);
        legadoRule.setSearchUrl("https://gitcafe.net/tool/alipaper/,{'charset':'utf-8',method:\"POST\",body:\"action=search&from=web&keyword=@get:{searchKey}\"}");
        legadoRule.setSearchVodNode("$.data[*]");
        legadoRule.setSearchVodName("$.title");
        legadoRule.setSearchVodPic("https://www.lgstatic.com/i/image2/M01/15/7E/{$.cat}.jpg");
        legadoRule.setSearchVodRemarks("$.des");
        legadoRule.setSearchVodId("$.key##^##https://www.aliyundrive.com/s/");
        legadoRule.setDetailFileNodeNfo("@js:access_token=java.get('accessToken');shareToken=java.get('shareToken');shareId=java.get('shareId');playId=java.get('nfo');content=java.ajax('https://api.aliyundrive.com/v2/file/get_share_link_download_url,'+JSON.stringify({'headers':{'authorization':String(access_token),'x-share-token':String(shareToken),'x-canary':'client=web,app=share,version=v2.3.1','referer':'https://www.aliyundrive.com/'},'method':'POST','body':{'share_id':String(shareId),'file_id':String(playId)}}));java.log(content);url=JSON.parse(content).url;url=java.head(url,{'referer':'https://www.aliyundrive.com/'}).get('Location');java.get(url,{'referer':'https://www.aliyundrive.com/'}).body();");
        legadoRule.setDetailVodPic("@js:access_token=java.get('accessToken');shareToken=java.get('shareToken');shareId=java.get('shareId');playId=java.get('nfo');content=java.ajax('https://api.aliyundrive.com/v2/file/get_share_link_download_url,'+JSON.stringify({'headers':{'authorization':String(access_token),'x-share-token':String(shareToken),'x-canary':'client=web,app=share,version=v2.3.1','referer':'https://www.aliyundrive.com/'},'method':'POST','body':{'share_id':String(shareId),'file_id':String(playId)}}));java.log(content);url=JSON.parse(content).url;url=java.head(url,{'referer':'https://www.aliyundrive.com/'}).get('Location');proxy=java.get('proxy');proxy+'?do=legado&type=pic&url='+url +','+ JSON.stringify({'header':{'referer':'https://www.aliyundrive.com/'}});");
        legado.init(null, new GsonBuilder().disableHtmlEscaping().create().toJson(legadoRule));
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(legado.homeContent(true));
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(legado.homeVideoContent());
    }

    @Test
    public void categoryContent() throws Exception {

        System.out.println(legado.categoryContent("hyds","1",true, new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
//        System.out.println(legado.detailContent(List.of("https://www.aliyundrive.com/s/UAhNowcSsBR")));
        System.out.println(legado.detailContent(List.of("https://www.aliyundrive.com/s/Lvt6XJobogm/folder/637a2afe82dedfde45d5400fb46f47f33ff5b438")));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(legado.searchContent("火影",true));
    }

    @Test
    public void playerContent() throws Exception {
//        System.out.println(legado.detailContent(List.of("https://www.aliyundrive.com/s/UAhNowcSsBR")));
        System.out.println(legado.detailContent(List.of("https://www.aliyundrive.com/s/Lvt6XJobogm/folder/637a2afe82dedfde45d5400fb46f47f33ff5b438")));
//        System.out.println(legado.playerContent("原画","646734b8a921719397cb4486b0a97ab50a15af57",new ArrayList<>()));
        System.out.println(legado.playerContent("原画","637a2aff700ed916ffad45c2a507e0039f51c1c0",new ArrayList<>()));
    }

    @Test
    public void isVideoFormat() {

    }

    @Test
    public void manualVideoCheck() {
    }

}