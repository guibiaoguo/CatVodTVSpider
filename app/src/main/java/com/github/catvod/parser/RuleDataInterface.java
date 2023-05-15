package com.github.catvod.parser;

import java.util.HashMap;

public interface RuleDataInterface {

    HashMap<String, String> getVariableMap();
    void putVariable(String key, String value);
    String getVariable(String key);
}
