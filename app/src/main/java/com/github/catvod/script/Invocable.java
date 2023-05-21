package com.github.catvod.script;

public interface Invocable<T> {
    T getInterface(Class<T> clazz);
    T getInterface(Object obj, Class<T> clazz);
    Object invokeFunction(String name, Object args);
    Object invokeMethod(Object obj, String name, Object args);
}
