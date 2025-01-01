package com.github.catvod.spider;

import static org.mockito.Mockito.when;

import android.content.SharedPreferences;

import androidx.annotation.Nullable;

import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.guibiaoguo.myapplication.RoboApp;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import cn.hutool.core.io.file.FileReader;
import cn.hutool.core.io.file.FileWriter;

@RunWith(MockitoJUnitRunner.class)
public class LegadoTest {

    @Mock
    RoboApp mMockContext;

    private Spider legado;
    @Before
    public void setUp() throws Exception {
        legado = new Legado();
        init1();
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
//        legadoRule.setCateUrl("@js:pg=java.get('pg');cateId=java.get('cateId');'https://gitcafe.net/tool/alipaper/,'+JSON.stringify({'method':'POST','body':'action=viewcat&num='+pg+'&cat='+cateId})");
        legadoRule.setCateUrl("@js:pg=java.get('pg');cateId=java.get('cateId');if(cateId.search('aliyundrive')>-1){m=cateId.match('https://www.aliyundrive.com/s/([^/]+)(/folder/([^/]+))?');if(m){shareId=m[1];java.put('shareId',shareId);java.put('fileId',m[3]!=undefined?m[3]:'');};url='https://api.aliyundrive.com/adrive/v3/share_link/get_share_by_anonymous,'+JSON.stringify({'method':'POST','header':{'Referer':'https://www.aliyundrive.com/'},'body':{'share_id':shareId}});fileId=java.get('fileId');if(fileId==''){content=java.ajax(url);fileId=java.getString('$.file_infos[*].file_id',content,false);java.put('fileId',fileId);};token='9ed3f99efcbe40e89b13d307f915cb63';post={'body':{'refresh_token':token,'grant_type':'refresh_token'},'method':'POST','headers':{'referer':'https://www.aliyundrive.com/'}};content=java.ajax('https://auth.aliyundrive.com/v2/account/token,'+JSON.stringify(post));access_token=JSON.parse(content).access_token;java.put('accessToken',access_token);shareId=java.get('shareId');post={'method':'POST','body':{'share_pwd':'','share_id':shareId}};url='https://api.aliyundrive.com/v2/share_link/get_share_token,'+JSON.stringify(post);shareToken=JSON.parse(java.ajax(url)).share_token;java.put('shareToken',shareToken);fileId=java.get('fileId');post={'headers':{'x-canary':'client=web,app=share,version=v2.3.1','x-share-token':shareToken,'Referer':'https://www.aliyundrive.com/'},'method':'POST','body':{'share_id':shareId,'parent_file_id':fileId,'limit':200,'order_by':'name','order_direction':'ASC'}};url='https://api.aliyundrive.com/adrive/v2/file/list_by_share,'+JSON.stringify(post);}else{'https://gitcafe.net/tool/alipaper/,'+JSON.stringify({'method':'POST','body':'action=viewcat&num='+pg+'&cat='+cateId});}");
        legadoRule.setCateVodNode("$.data[*]||$.items[*]");
        legadoRule.setCateVodName("$.title||$.name");
        legadoRule.setCateVodPic("https://www.lgstatic.com/i/image2/M01/15/7E/{$.cat}.jpg");
        legadoRule.setCateVodRemarks("$.des||$.created_at");
        legadoRule.setCateVodId("@js:key=java.getString('$.key',result,false);type=java.getString('$.type',result,false);shareId=java.getString('$.share_id',result,false);fileId=java.getString('$.file_id',result,false);parentFileId=java.getString('$.parent_file_id',result,false);if(key!=''){result='https://www.aliyundrive.com/s/'+key;}else if(type=='folder'){result='https://www.aliyundrive.com/s/'+shareId+'/folder/'+fileId;}else if(type=='file'){result='https://www.aliyundrive.com/s/'+shareId+'/folder/'+parentFileId;}");
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
//        legadoRule.setDetailFileNodeUrl("https://api.aliyundrive.com/adrive/v2/file/list_by_share,"+new GsonBuilder().disableHtmlEscaping().create().toJson(data));
        legadoRule.setDetailFileNodeUrl("@js:shareId=java.get('shareId');fileId=JSON.parse(java.get('parent')).file_id;shareToken=java.get('shareToken');post={'headers':{'x-canary':'client=web,app=share,version=v2.3.1','x-share-token':String(shareToken),'Referer':'https://www.aliyundrive.com/'},'method':'POST','body':{'share_id':String(shareId),'parent_file_id':String(fileId),'limit':200,'order_by':'name','order_direction':'ASC'}};url='https://api.aliyundrive.com/adrive/v2/file/list_by_share,'+JSON.stringify(post);");
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
//        legadoRule.setPlayUrl("@js:token=String(java.ajax('https://www.qiaoji8.com/jar1/token.txt'));java.log(token);token='9ed3f99efcbe40e89b13d307f915cb63';post={'body':{'refresh_token':token,'grant_type':'refresh_token'},'method':'POST','headers':{'referer':'https://www.aliyundrive.com/'}};content=java.ajax('https://auth.aliyundrive.com/v2/account/token,'+JSON.stringify(post));access_token=JSON.parse(content).access_token;java.put('accessToken',access_token);shareToken=java.get('shareToken');shareId=java.get('shareId');playId=java.get('playId');content=java.ajax('https://api.aliyundrive.com/v2/file/get_share_link_download_url,'+JSON.stringify({'headers':{'authorization':String(access_token),'x-share-token':String(shareToken),'x-canary':'client=web,app=share,version=v2.3.1','referer':'https://www.aliyundrive.com/'},'method':'POST','body':{'share_id':String(shareId),'file_id':String(playId)}}));java.log(content);url=JSON.parse(content).url;");
        legadoRule.setPlayUrl("@js:token=String(java.ajax('https://www.qiaoji8.com/jar1/token.txt'));java.log(token);token='9ed3f99efcbe40e89b13d307f915cb63';post={'body':{'refresh_token':token,'grant_type':'refresh_token'},'method':'POST','headers':{'referer':'https://www.aliyundrive.com/'}};content=java.ajax('https://auth.aliyundrive.com/v2/account/token,'+JSON.stringify(post));access_token=JSON.parse(content).access_token;device_id=JSON.parse(content).device_id;user_id=JSON.parse(content).user_id;default_drive_id=JSON.parse(content).default_drive_id;java.put('accessToken',access_token);shareToken=java.get('shareToken');shareId=java.get('shareId');playId=java.get('playId');flag=java.get('playFlag');if(flag=='原画'){content=java.ajax('https://api.aliyundrive.com/v2/file/get_share_link_download_url,'+JSON.stringify({'headers':{'authorization':String(access_token),'x-share-token':String(shareToken),'x-canary':'client=web,app=share,version=v2.3.1','referer':'https://www.aliyundrive.com/'},'method':'POST','body':{'share_id':String(shareId),'file_id':String(playId)}}));java.log(content);url=JSON.parse(content).url;}else{if(flag=='SD'||flag=='标清'){template_id='SD';}else if(flag=='HD'||flag=='高清'){template_id='HD';}else if(flag=='FHD'||flag=='超清'){template_id='FHD';}else if(flag=='QHD'||flag=='2K'){template_id='QHD';}else{template_id='FHD';};url=java.format('http://59.47.74.33:3000/apis/yun-play/{}/{}/{}/{}/{}/{}/{}/{}/{}',shareId,playId,access_token,shareToken,template_id,default_drive_id,user_id,device_id,'index.m3u8');};");
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
        legadoRule.setDetailFileNodeNfo("@js:access_token=java.get('accessToken');shareToken=java.get('shareToken');shareId=java.get('shareId');playId=java.get('nfo');content=java.ajax('https://api.aliyundrive.com/v2/file/get_share_link_download_url,'+JSON.stringify({'headers':{'authorization':String(access_token),'x-share-token':String(shareToken),'x-canary':'client=web,app=share,version=v2.3.1','referer':'https://www.aliyundrive.com/'},'method':'POST','body':{'share_id':String(shareId),'file_id':String(playId)}}));java.log(content);url=JSON.parse(content).url;java.get(url,{'referer':'https://www.aliyundrive.com/'}).body();");
        legadoRule.setDetailVodPic("@js:java.get('proxy')+'?do=legado&js='+java.base64Encode('@js:playId=\"'+java.get('poster')+'\";shareId=\"'+java.get('shareId')+'\";shareToken=\"'+java.get('shareToken')+'\";access_token=\"'+java.get('accessToken')+'\";content=java.post(\"https://api.aliyundrive.com/v2/file/get_share_link_download_url\",\"{share_id:\"+shareId+\",file_id:\"+playId+\"}\",{\"referer\":\"https://www.aliyundrive.com/\",\"x-canary\":\"client=web,app=share,version=v2.3.1\",\"authorization\":access_token,\"x-share-token\":shareToken}).body();url=JSON.parse(content).url;url=java.head(url,{\"referer\":\"https://www.aliyundrive.com/\"}).get(\"Location\");url+\\',{\\\"headers\\\":{\\\"referer\\\":\\\"https://www.aliyundrive.com/\\\"}}\\'');");
//        legadoRule.setPlaySub("@js:access_token=java.get('accessToken');shareToken=java.get('shareToken');shareId=java.get('shareId');subs=java.get('subs');proxy=java.get('proxy');list=[];for(i=0;i<subs.size();i++){sub=subs.get(i);if(sub.search('@@@')>-1){name=sub.split('@@@')[0];ext=sub.split('@@@')[1];id=sub.split('@@@')[2];url='https://api.aliyundrive.com/v2/file/get_share_link_download_url,'+JSON.stringify({method:'POST',body:{'share_id':String(shareId),'file_id':String(id)},headers:{'authorization':String(access_token),'x-share-token':String(shareToken),'referer':'https://www.aliyundrive.com/','x-canary':'client=web,app=share,version=v2.3.1'}});content=java.ajax(url);url=JSON.parse(content).url;url=proxy+'?do=legado&js='+java.base64Encode('@js:url=\\''+url+'\\';url=java.head(url,{\\'referer\\':\\'https://www.aliyundrive.com/\\'}).get(\\'Location\\');url+\\',{\"headers\":{\"referer\":\"https://www.aliyundrive.com/\"}}\\'');list.push({'name':String(name),'url':String(url)});}};JSON.stringify(list);");
        legadoRule.setPlaySub("@js:accessToken=java.get('accessToken');shareToken=java.get('shareToken');shareId=java.get('shareId');subs=java.get('subs');proxy=java.get('proxy');list=[];for(i=0;i<subs.size();i++){sub=subs.get(i);if(sub.search('@@@')>-1){name=sub.split('@@@')[0];ext=sub.split('@@@')[1];id=sub.split('@@@')[2];url=proxy+'?do=legado&js='+java.base64Encode('@js:playId=\"'+id+'\";shareId=\"'+shareId+'\";shareToken=\"'+shareToken+'\";accessToken=\"'+accessToken+'\";content=java.post(\"https://api.aliyundrive.com/v2/file/get_share_link_download_url\",\"{share_id:\"+shareId+\",file_id:\"+playId+\"}\",{\"referer\":\"https://www.aliyundrive.com/\",\"x-canary\":\"client=web,app=share,version=v2.3.1\",\"authorization\":accessToken,\"x-share-token\":shareToken}).body();url=JSON.parse(content).url;url+\\',{\\\"headers\\\":{\\\"referer\\\":\\\"https://www.aliyundrive.com/\\\"}}\\'');list.push({'name':String(name),'url':String(url)});}};JSON.stringify(list);");
        legadoRule.setCateVodTag("$.key||$.type@js:if(result!='folder' && result!='file'){content=java.post('https://api.aliyundrive.com/adrive/v3/share_link/get_share_by_anonymous','{share_id:'+result+'}',{'referer':'https://www.aliyundrive.com/'}).body();type=java.getString('$.file_infos[*].type',String(content),false);result=type;};result");
        legadoRule.setTypeFlag("@js:'1'");
        legadoRule.setPageCount("@js:1");
        legado.init(null, new GsonBuilder().disableHtmlEscaping().create().toJson(legadoRule));
//        legado.init(null, "https://gitlab.com/mao4284120/js/-/raw/main/sub/paper.json");
//        legado.init(null, "https://aria2.guibiaoguo.ml/paper.json");
//        legado.init(null, "https://aria2.guibiaoguo.ml/ahhfs.json");
    }

    @Test
    public void init1() {
        Proxy.port = 9978;
        FileReader fileReader = new FileReader("aliyundrive.json");
        String aliyundrive = fileReader.readString();
        //        when(mMockContext.getString(R.string.app_name)).thenReturn(FAKE_STRING);
        when(mMockContext.getPackageName()).thenReturn("com.github.androidunittest");
//        when(mMockContext.getApplicationContext()).thenReturn(new Application());
//        PowerMockito.mockStatic(Looper.class);
//        PowerMockito.when(Looper.getMainLooper()).thenReturn(null);
        when(mMockContext.getSharedPreferences("com.github.androidunittest_preferences",0)).thenReturn(new SharedPreferences() {
            @Override
            public Map<String, ?> getAll() {
                return null;
            }

            @Nullable
            @Override
            public String getString(String key, @Nullable String defValue) {
                if (key.equals("aliyundrive")) {
                    return aliyundrive;
                }
                return null;
            }

            @Nullable
            @Override
            public Set<String> getStringSet(String key, @Nullable Set<String> defValues) {
                return null;
            }

            @Override
            public int getInt(String key, int defValue) {
                return 0;
            }

            @Override
            public long getLong(String key, long defValue) {
                return 0;
            }

            @Override
            public float getFloat(String key, float defValue) {
                return 0;
            }

            @Override
            public boolean getBoolean(String key, boolean defValue) {
                return false;
            }

            @Override
            public boolean contains(String key) {
                return false;
            }

            @Override
            public Editor edit() {
                return new Editor() {
                    @Override
                    public Editor putString(String key, @Nullable String value) {
                        if (key.equals("aliyundrive")) {
                            FileWriter writer = new FileWriter(new File("src/test/resources/aliyundrive.json"));
                            writer.write(value);
                        }
                        return this;
                    }

                    @Override
                    public Editor putStringSet(String key, @Nullable Set<String> values) {
                        return this;
                    }

                    @Override
                    public Editor putInt(String key, int value) {
                        return this;
                    }

                    @Override
                    public Editor putLong(String key, long value) {
                        return this;
                    }

                    @Override
                    public Editor putFloat(String key, float value) {
                        return this;
                    }

                    @Override
                    public Editor putBoolean(String key, boolean value) {
                        return null;
                    }

                    @Override
                    public Editor remove(String key) {
                        return this;
                    }

                    @Override
                    public Editor clear() {
                        return this;
                    }

                    @Override
                    public boolean commit() {
                        return false;
                    }

                    @Override
                    public void apply() {

                    }
                };
            }

            @Override
            public void registerOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {

            }

            @Override
            public void unregisterOnSharedPreferenceChangeListener(OnSharedPreferenceChangeListener listener) {

            }
        });
        Init.init(mMockContext);
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

//        System.out.println(legado.categoryContent("movie","1",true, new HashMap<>()));
        System.out.println(legado.categoryContent("https://www.aliyundrive.com/s/bVL7e72NjD4","1",true, new HashMap<>()));
//        System.out.println(legado.categoryContent("hydm","1",true, new HashMap<>()));
//        System.out.println(legado.categoryContent("https://www.aliyundrive.com/s/ZkWU6zze181","1",true, new HashMap<>()));
//        System.out.println(legado.categoryContent("https://www.aliyundrive.com/s/ZkWU6zze181/folder/63fc2f8f06a95f15b7614fbfbde70f984995dd45","1",true, new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
//        System.out.println(legado.detailContent(List.of("https://www.aliyundrive.com/s/UAhNowcSsBR")));
//        System.out.println(legado.detailContent(List.of("https://www.aliyundrive.com/s/Lvt6XJobogm/folder/637a2afe82dedfde45d5400fb46f47f33ff5b438")));
//        System.out.println(legado.detailContent(List.of("https://www.aliyundrive.com/s/ZkWU6zze181/folder/63fc2f8f06a95f15b7614fbfbde70f984995dd45")));
//        System.out.println(legado.detailContent(List.of("https://www.aliyundrive.com/s/6Nci4iACvRw\\nhttps://www.aliyundrive.com/s/1CGRp48dPiT")));
//        System.out.println(legado.detailContent(List.of("https://www.aliyundrive.com/s/KwUCz4H31JK/folder/619ae206f21fe67ebabb402d9429931729e7c039")));
//        System.out.println(legado.detailContent(List.of("https://www.aliyundrive.com/s/uPeGEsbs29u/folder/643b9319ce6e812a45fa4bb5991a77977f18885f")));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(legado.searchContent("火影",true));
    }

    @Test
    public void playerContent() throws Exception {
//        System.out.println(legado.detailContent(List.of("https://www.aliyundrive.com/s/UAhNowcSsBR")));
//        String content = legado.detailContent(List.of("https://www.aliyundrive.com/s/Lvt6XJobogm/folder/637a2afe82dedfde45d5400fb46f47f33ff5b438"));
//        System.out.println(legado.playerContent("原画","646734b8a921719397cb4486b0a97ab50a15af57",new ArrayList<>()));
        String content = legado.detailContent(Arrays.asList("https://www.aliyundrive.com/s/KwUCz4H31JK/folder/619ae206f21fe67ebabb402d9429931729e7c039"));
//        String content = legado.detailContent(List.of("https://www.aliyundrive.com/s/BfFQz6zbfYm/folder/646f5d3147fd14c065c14811ac2cc1773e3474bd"));
        Result result = new Gson().fromJson(content, Result.class);
        String id = result.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
        System.out.println(legado.playerContent("原畫",id,new ArrayList<>()));
//        System.out.println(legado.playerContent("原画","637a2aff700ed916ffad45c2a507e0039f51c1c0",new ArrayList<>()));
    }

    @Test
    public void isVideoFormat() {

    }

    @Test
    public void manualVideoCheck() {
    }

}