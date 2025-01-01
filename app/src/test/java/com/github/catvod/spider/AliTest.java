package com.github.catvod.spider;

import static org.mockito.Mockito.when;

import android.text.TextUtils;

import com.github.catvod.RemoteServer;
import com.github.catvod.bean.Result;
import com.github.catvod.crawler.Spider;
import com.google.gson.Gson;
import com.guibiaoguo.myapplication.RoboApp;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.io.File;
import java.util.Arrays;
import java.util.HashMap;

import cn.hutool.core.io.file.FileReader;

@RunWith(MockitoJUnitRunner.class)
public class AliTest {

    private static final String FAKE_STRING = "AndroidUnitTest";

    @Mock
    RoboApp mMockContext;

    private Spider ali;

    private RemoteServer remoteServer;

    @Before
    public void setUp() throws Exception {
        remoteServer = new RemoteServer();
        ali = new Ali();
        init();
    }

    @After
    public void tearDown() throws Exception {
        remoteServer.stop();
    }

    @Test
    public void init() {
        Proxy.port = 9978;
        FileReader fileReader = new FileReader("aliyundrive.json");
        String aliyundrive = fileReader.readString();
        //        when(mMockContext.getString(R.string.app_name)).thenReturn(FAKE_STRING);
        when(mMockContext.getPackageName()).thenReturn("com.github.androidunittest");
        when(mMockContext.getExternalFilesDir("/TV/")).thenReturn(new File("src/test/resources/"));
        Init.init(mMockContext);
        ali.init(mMockContext, "{\n" +
                "    \"quarkCookie\": \"ctoken=DMGSO0SeLnZaW5GxMkZWEqeH; b-user-id=558ee96b-57cd-0ad8-5647-54e744310f32; b-user-id=558ee96b-57cd-0ad8-5647-54e744310f32; grey-id=207bbafb-ee84-6304-71c6-2c87a953c238; grey-id.sig=oXd9CUlHV0l1wFJtBelHaAayjDkopwKXmhQgm4KIC3g; isQuark=false; isQuark.sig=DWPHMZYiiwQ-v58AbcP-rBdSIpzO8ZnrD67BdJuPatU; _UP_A4A_11_=wb96c19ecb584966b6e247a14f717ef6; __pus=1fa116795c4a151f736b380e7d7ed024AAStvJHfbGf/khGWKnmT7b+cSkc2fgsEXAcpAY6ffbgLGZVNK9mNyRA3PGARGGKCu4fU0b/FMlPPtxmRaUUflpw8; __kp=80a85e90-baf0-11ef-b679-6b3483afe36e; __kps=AAS7zqWk7TuDYriSEoVJ1bp8; __ktd=lWBRguyv6qMHpHCFD/XNJw==; __uid=AAS7zqWk7TuDYriSEoVJ1bp8; isg=BLa2e-3-zV-SQbk7tFRYkzEZB-y41_oRU0bYJyCUExk0Y1z9iGSGIdhQfz8PS_Ip; tfstk=goG-RNv9EnxlPrVMZQ90xd-Wv58mfKbrzXo5t6V3qKiYc2TzK2wlOW3K4JGo-7ZIDPiEtbvPFkELSPaIZ3FWJB3I5u1otLyC9oaUAe57VrwbSyklFuZQcoauNJkuxuqL92o9ohAMs4uzT5tMjCbrOl0Q_as7dMVXGPFLPNXoC33zTWtco69M64osnR0ZdWTYGy48RWw5FoTYJPEQOuwCcta_ckNIAJZfcPUNVywQFoTY8oZQOWiIlblCykb7v6HH_pY5VeSifchYy8Eskd5C9ZZcjo07D61Q2zeRH4ZAO6Gxnf5Qru9NokPu44a-YC5zNJHIZSGWcBNsQmhLC5pHz53xnA2-H31LmbqYKbwAVTaTwuesN-Q164yIHjFoNHWZoqE7BSDD3323w0Hab8920D3YqDG8hgK0xA0mN-n6msnUpvGuGbtX6g-isfFIJGqT-TTvk9WUFrrnzbyRMjqHmrEMotXFL-44klYvk9WUFrzYjEAcL9y0u; __wpkreporterwid_=8964776e-cb75-4aad-b4ac-122dd3400362; __itrace_wid=ece7efbd-a4a6-457b-3fde-c436d290d4dd; __puus=6d917126657a7d03c68e5813a67a5a78AAQzhRqXW9rOjF8slesTk96nrMriQXji1cFWcMPB3zs3KADkpMmTEelQ3o6pLfFxDvjvR1gbiklmtkKUmkx9gu17O6KZBuPfWlr1wJ+LonlYafVMqQJFaJsDQeznhNfsQaUqd9hCCBLD2RYTa56saDfQGg9jikcSPdLxHN5eiHnRUmqKv9zJcfyGVvPd/TASIq4Wf2Cy62VHm4XuTalA1kc3\",\n" +
                "    \"ucCookie\": \"ctoken=X6BYxED9SZs6yaa5RnewezPl;UDRIVE_TRANSFER_SESS=OSjfjvdvVB3kri7vp2BXpO8zFvKwBAY2kk7eicfA9iHBFdDlZmavQoQFtAIzHJAJpvRLxnA1WG5tE8EU31eST-NYT4dbsN7NzUzg34WXSuarlikSXqoKdjzUSJZcOUGOImIMdzM9_a_5kvwUbvDjqeBPcIYXAoW1NOPJBhqTXQxCMbt0PYA_P1VjIwGY3J_U;b-user-id=3ed1488d-3207-7c00-3376-3f7f989b736b;__itrace_wid=98b4fbc6-14b2-4f8c-1b91-bc57f8479ab3;_UP_A4A_11_=wb96c1ac386a49f99e490a90b1f9ef73;_UP_D_=pc;__pus=b979be0a5641760f21c0e723014965afAASObhQXtVSCAcyBhzsyJKXxewITkO1bDgIuACDfCKUllKY5GDa4f+aWj7itRpY3e8MqZlnMKE1A4kF6hRw3re3/;__kp=5b85f210-c164-11ef-9cb3-0f60c39d6897;__kps=AATLhwUilIHGTwYKwMW3DU1v;__ktd=Nq3OwP4vgnSQCtkVXW2xAw==;__uid=AATLhwUilIHGTwYKwMW3DU1v;_UP_28A_52_=519;tfstk=gGdKIN9k4DkHez5mtXMGqJ1PnjY-iQLUXH8bZgj3FhK9qUThF6fuwLI9kBXSYUxO23YPABbhxatJjG5lxBvHeyR9D7VnYv87w_fSmmcmiezFa_imQNSUEM7y5ggGdqVz2pfSmmcMgVG_n_tH--t3BFsNJy_WVJgO1wj_OaNCPlgOzG15Ras51G_5RuwCV3TsWaS1V_1WNSrf4jjLwL0CJ1yIbTF7NCQddvTCf7_w6wBdcet0N7TfJ9IXRGo4srNCHH6JaqF9Xpte91Xxf2C6BHRRnQqI5_65ftdH5qef2pYD9tIzlIAYbDZc71eKWVezU9_N4qLfSoGZuLQOmVAzU8WHwNImWVezU9_NWi0ae8yPKFC..;__puus=5fb84c8dbb4ad005551429ae62f3d500AASbj1IE64pGLm6yFzN+3sUq4rZGkJMMcxJDtJCEOTiwNq47YtSP+27tgb8FOfzNPRM7ejMoV+n4Ct4DIs396Pl40ciBTRfQKxd1G4W9qb8Cm97WONRr696DFSsjly2FZNBeMC7feJGuPmCr4GqzK981r+97d5iiZshsEaIywqvUNGwBfTrBgqDno6YLAbHpMtA=\",\n" +
                "    \"token\": \"2379914361074eb4a77f1d8eadd56f2e\",\n" +
                "    \"aliClasses\":[\n" +
                "        {\n" +
                "            \"type_name\":\"每日更新电视剧合集\",\n" +
                "            \"type_id\":\"https://www.alipan.com/s/4ydLxf7VgH7/folder/657bd9529befca98423c43c48a92733c623ea85b\",\n" +
                "            \"type_flag\":\"2\"\n" +
                "        },\n" +
                "        {\n" +
                "            \"type_name\":\"短剧162g\",\n" +
                "            \"type_id\":\"432b5cd3a225\",\n" +
                "            \"type_flag\":\"2\"\n" +
                "        }\n" +
                "    ]\n" +
                "}");
    }

    @Test
    public void homeVideoContent() throws Exception {
        System.out.println(ali.homeContent(false));
        System.out.println(ali.homeVideoContent());
    }

    @Test
    public void categoryContent() throws Exception {
        String content = ali.homeContent(false);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        content = ali.categoryContent(result.getClasses().get(0).getTypeId(),"1",false,new HashMap<>());
        System.out.println(content);
        result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
        System.out.println(ali.categoryContent("https://www.alipan.com/s/4ydLxf7VgH7/folder/657bd9529befca98423c43c48a92733c623ea85b","1",false,new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
        String content = ali.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        if (result.getList().isEmpty()) {
            content = ali.homeVideoContent();
            result = new Gson().fromJson(content, Result.class);
            System.out.println(content);
        }
        String id = result.getList().get(0).getVodId();
        content = ali.detailContent(Arrays.asList(id));
        System.out.println(content);
        result = new Gson().fromJson(content, Result.class);
        Assert.assertTrue(result.getList().size() > 0);
        Assert.assertTrue(!TextUtils.isEmpty(result.getList().get(0).getVodPlayUrl()));

        System.out.println(ali.detailContent(Arrays.asList("https://www.alipan.com/s/4ydLxf7VgH7/folder/657bd9529befca98423c43c48a92733c623ea85b")));
    }

    @Test
    public void playerContent() throws Exception {
//        String content = ali.detailContent(Arrays.asList("https://www.alipan.com/s/LHLUL8woDQj#31vz"));
//        Result result = new Gson().fromJson(content, Result.class);
//        String id = result.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
//        System.out.println(ali.playerContent("原畫", id, null));
//        System.out.println(ali.playerContent("高清", id, null));
        String content = ali.homeContent(true);
        System.out.println(content);
        Result result = new Gson().fromJson(content, Result.class);
        if (result.getList().isEmpty()) {
            content = ali.homeVideoContent();
            result = new Gson().fromJson(content, Result.class);
        }
        String id = result.getList().get(0).getVodId();
        System.out.println(id);
        content = ali.detailContent(Arrays.asList(id));
        System.out.println(content);
        result = new Gson().fromJson(content, Result.class);
        id = result.getList().get(0).getVodPlayUrl().split("#")[0].split("\\$")[1];
        System.out.println(id);
        String flag = result.getList().get(0).getVodPlayFrom().split("$$$")[0];
        System.out.println(ali.playerContent(flag, id, null));
    }

}