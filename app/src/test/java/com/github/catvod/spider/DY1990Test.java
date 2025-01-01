package com.github.catvod.spider;

import com.github.catvod.crawler.Spider;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;


@Deprecated
@Ignore
public class DY1990Test extends SpiderTest {

    Spider dy1990 = null;
    @Before
    public void init() {
        dy1990 = new DY1990();
        super.init(dy1990,"");
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
        super.categoryContent();;
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