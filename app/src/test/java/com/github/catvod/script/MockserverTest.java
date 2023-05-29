package com.github.catvod.script;

import com.github.catvod.parser.AnalyzeRule;
import com.github.catvod.parser.AnalyzeUrl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.junit.MockitoJUnitRunner;

@RunWith(MockitoJUnitRunner.class)
public class MockserverTest {

//    @Rule
//    public MockServerRule mockServerRule = new MockServerRule(this, 9978);
//
//    private MockServerClient mockServerClient;

//    @Before
//    public void setUp() {
//        mockServerClient.when(request().withPath("proxy")).respond(HttpResponse.response().withBody("{'json':'test'}"));
//    }
    @Test
    public void testSub() {
        AnalyzeRule analyzeRule = new AnalyzeRule();
        analyzeRule.setContent("");
        String url = analyzeRule.getString("");
        AnalyzeUrl analyzeUrl = new AnalyzeUrl(url);
        System.out.println(analyzeUrl.getStrResponse().body());
    }
}
