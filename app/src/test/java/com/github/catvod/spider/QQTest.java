package com.github.catvod.spider;

import com.github.catvod.crawler.Spider;

//import com.github.catvod.parser.AnalyzeByJSonPath;
//import com.github.catvod.parser.AnalyzeRule;

import org.junit.Before;
import org.junit.Test;

public class QQTest extends SpiderTest {

    Spider qq = null;
    @Before
    public void init() {
        qq = new QQ();
        super.init(qq,"");
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