package com.github.catvod.analyzeRules;

import org.apache.commons.lang3.StringUtils;

import java.util.HashMap;

public class RuleData implements RuleDataInterface {

    private HashMap<String,String> variableMap = new HashMap<>();

    @Override
    public HashMap<String, String> getVariableMap() {
        return variableMap;
    }

    @Override
    public void putVariable( String key, String value) {
        if (value != null) {
            variableMap.put(key,value);
        } else {
            variableMap.remove(key);
        }
    }

    @Override
    public String getVariable(String key) {
        String value = "";
        if(key != null) {
            value = variableMap.get(key);
        }
        if (StringUtils.isEmpty(value)) {
            return "";
        }
        return value;
    }
}
