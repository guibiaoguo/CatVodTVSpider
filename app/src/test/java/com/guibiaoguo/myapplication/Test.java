package com.guibiaoguo.myapplication;

import org.json.JSONArray;
import org.json.JSONException;

public class Test {

    public void provlist() {
        String s = "[\"重庆\",\"河南\",\"广东\",\"湖北\",\"河北\",\"安徽\",\"江西\",\"黑龙江\",\"天津\",\"上海\",\"山西\",\"吉林\",\"江苏\",\"福建\",\"海南\",\"贵州\",\"云南\",\"陕西\",\"西藏\",\"宁夏\",\"内蒙古\",\"北京\",\"湖南\",\"广西\",\"甘肃\",\"浙江\",\"新疆\",\"山东\",\"四川\",\"青海\"]";
        try {
            JSONArray jsonArray = new JSONArray(s);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
