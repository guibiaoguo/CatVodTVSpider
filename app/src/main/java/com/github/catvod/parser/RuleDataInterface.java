package com.github.catvod.parser;

import java.util.HashMap;

public interface RuleDataInterface {

    HashMap<String, Object> getVariableMap();
    void putVariable(String key, Object Object);
    Object getVariable(String key);
}
