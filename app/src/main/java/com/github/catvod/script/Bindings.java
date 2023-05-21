package com.github.catvod.script;

import java.util.Map;

public interface Bindings extends Map<String, Object>{

    Boolean containsKey(String key);
    Object get(String key);
    Object put(String key, String value);
//    void  putAll(Map<String, Object>  from);
    Object remove(String key);
}
