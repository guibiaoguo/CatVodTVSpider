package com.github.catvod.parser;

import org.apache.commons.lang3.StringUtils;

import java.util.HashMap;

public class RuleData implements RuleDataInterface {

    private HashMap<String,Object> variableMap = new HashMap<>();

    @Override
    public HashMap<String, Object> getVariableMap() {
        return variableMap;
    }

    @Override
    public void putVariable( String key, Object value) {
        if (value != null) {
            variableMap.put(key,value);
        } else {
            variableMap.remove(key);
        }
    }

    @Override
    public Object getVariable(String key) {
        Object value = "";
        if(key != null) {
            value = variableMap.get(key);
        }
        if (value == null || StringUtils.isEmpty(value.toString())) {
            return "";
        }
        return value;
    }
}
