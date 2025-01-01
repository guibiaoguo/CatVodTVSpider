package com.github.catvod.spider;

import com.github.catvod.RemoteServer;
import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class BiliTest extends SpiderTest {

    private RemoteServer remoteServer;

    @Before
    public void setUp() throws Exception {
        remoteServer = new RemoteServer();
        Proxy.port = 9978;
        init();
    }

    @After
    public void tearDown() throws Exception {
        remoteServer.stop();
    }

    Spider bili = null;
    public void init() {
        bili = new Bili();
        super.init(bili,"{\"json\":\"https://gitlab.com/mao4284120/gao/-/raw/master/json/bili.json\",\"type\":\"帕梅拉#太极拳#广场舞#演唱会\",\"cookie\":\"\"}");
    }

    @Test
    public void homeContent() throws Exception {
        super.homeContent(false);
    }

    @Test
    public void homeVideoContent() throws Exception {
        super.homeVideoContent();
    }

    @Test
    public void categoryContent() throws Exception {
        super.categoryContent();
    }

    @Test
    public void detailContent() throws Exception {
        super.detailContent();
    }

    @Test
    public void playerContent() throws Exception {
        super.playerContent();
    }

    @Test
    public void searchContent() throws Exception {
        super.searchContent("柯南");
    }
}