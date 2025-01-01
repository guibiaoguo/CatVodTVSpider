package com.github.catvod.spider;

import com.github.catvod.crawler.Spider;

import org.junit.Before;
import org.junit.Test;

public class Xb6vTest extends SpiderTest {

    Spider xb6v = null;
    @Before
    public void init() {
        xb6v = new Xb6v();
        super.init(xb6v,"");
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
        super.searchContent("游戏");
    }
}
