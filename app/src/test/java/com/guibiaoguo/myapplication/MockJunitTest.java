package com.guibiaoguo.myapplication;

import static org.mockito.Mockito.*;

import android.content.Context;

import org.junit.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.Iterator;
import java.util.List;

@RunWith(MockitoJUnitRunner.class)
public class MockJunitTest {

    @Mock
    Context context;

    @Test
    public void test() {
        assert 1 == 1;
    }

    @Test

    public void configMockObject() {

        List mockedList = mock(List.class);



        // 我们定制了当调用 mockedList.add("one") 时, 返回 true

        when(mockedList.add("one")).thenReturn(true);

        // 当调用 mockedList.size() 时, 返回 1

        when(mockedList.size()).thenReturn(1);



        Assert.assertTrue(mockedList.add("one"));

        // 因为我们没有定制 add("two"), 因此返回默认值, 即 false.

        Assert.assertFalse(mockedList.add("two"));

        Assert.assertEquals(mockedList.size(), 1);



        Iterator i = mock(Iterator.class);

        when(i.next()).thenReturn("Hello,").thenReturn("Mockito!");

        String result = i.next() + " " + i.next();

        //assert

        Assert.assertEquals("Hello, Mockito!", result);

    }
}
