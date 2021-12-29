package com.github.catvod.analyzeRules;

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
        if(key != null) {
            return variableMap.get(key);
        }
        return "";
    }
}
