package com.github.catvod.spider;

import static org.junit.Assert.*;

import com.github.catvod.crawler.Spider;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class AListTest {

    private Spider alist;

    @Before
    public void setUp() throws Exception {
        alist = new AList();
        init();
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void init() {
        alist.init(null, "https://gitlab.com/mao4284120/js/-/raw/main/sub/Alist.json");
    }

    @Test
    public void homeContent() throws Exception {
        System.out.println(alist.homeContent(true));
    }

    @Test
    public void categoryContent() throws Exception {
        System.out.println(alist.categoryContent("神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1","1",false, new HashMap<>()));
    }

    @Test
    public void detailContent() throws Exception {
//        System.out.println(alist.detailContent(Arrays.asList("小雅/动漫/A-Z/A/爱吃拉面的小泉同学/Season 01/[UHA-WINGS][Ramen Daisuki Koizumi-san] S01E01[x264_1080p][BIG5].mp4")));
        System.out.println(alist.detailContent(Arrays.asList("神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 01.mkv")));
    }

    @Test
    public void searchContent() throws Exception {
        System.out.println(alist.searchContent("拉面", false));
    }

    @Test
    public void playerContent() throws Exception {
//        System.out.println(alist.playerContent("", "小雅/动漫/A-Z/A/爱吃拉面的小泉同学/Season 01/[UHA-WINGS][Ramen Daisuki Koizumi-san] S01E01[x264_1080p][BIG5].mp4", null));
        System.out.println(alist.playerContent("", "某科学的超电磁炮 S1 01.mkv$神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 01.mkv~~~某科学的超电磁炮 S1 01.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 01.ass~~~某科学的超电磁炮 S1 02.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 02.ass~~~某科学的超电磁炮 S1 03.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 03.ass~~~某科学的超电磁炮 S1 04.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 04.ass~~~某科学的超电磁炮 S1 05.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 05.ass~~~某科学的超电磁炮 S1 06.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 06.ass~~~某科学的超电磁炮 S1 07.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 07.ass~~~某科学的超电磁炮 S1 08.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 08.ass~~~某科学的超电磁炮 S1 09.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 09.ass~~~某科学的超电磁炮 S1 10.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 10.ass~~~某科学的超电磁炮 S1 11.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 11.ass~~~某科学的超电磁炮 S1 12.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 12.ass~~~某科学的超电磁炮 S1 13.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 13.ass~~~某科学的超电磁炮 S1 14.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 14.ass~~~某科学的超电磁炮 S1 15.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 15.ass~~~某科学的超电磁炮 S1 16.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 16.ass~~~某科学的超电磁炮 S1 17.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 17.ass~~~某科学的超电磁炮 S1 18.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 18.ass~~~某科学的超电磁炮 S1 19.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 19.ass~~~某科学的超电磁炮 S1 20.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 20.ass~~~某科学的超电磁炮 S1 21.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 21.ass~~~某科学的超电磁炮 S1 22.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 22.ass~~~某科学的超电磁炮 S1 23.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 23.ass~~~某科学的超电磁炮 S1 24.ass@@@ass@@@神童/代码神童/10TB动漫合集  wanrenmi8.com/动漫首字母J到N  wanrenmi8.com/K科学超电磁炮全三季/1/某科学的超电磁炮 S1 24.ass", null));
    }
}