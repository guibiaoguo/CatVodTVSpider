package com.guibiaoguo.myapplication;

import org.apache.commons.lang3.StringUtils;

import java.util.Calendar;

public class Test {

    public void d() {
        StringBuilder builder = new StringBuilder();
        Calendar calendar = Calendar.getInstance();
        builder.append(calendar.get(Calendar.YEAR)).append("-").append(calendar.get(Calendar.MONTH)+1).append("-").append(calendar.get(Calendar.DATE));
        String c = builder.toString();
    }
}
