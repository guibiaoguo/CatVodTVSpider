//package com.github.catvod.script;
//
//import org.mozilla.javascript.Scriptable;
//
//import java.io.Reader;
//
//public interface ScriptEngine {
//    Bindings createBindings();
//    Object eval(Reader reader, Scriptable scope);
//    Object eval(String script, Scriptable scope);
//    Object eval(Reader reader);
//    Object eval(Reader reader, Bindings bindings);
//    Object eval(Reader reader, ScriptContext context);
//    Object eval(String script);
//    Object eval(String script, Bindings bindings);
//    Object eval(String script, ScriptContext context);
//    Scriptable getRuntimeScope(ScriptContext context);
//    ScriptContext getScriptContext(Bindings bindings);
//    Object get(String key);
//    Bindings getBindings(int scope);
//    void put(String key, String value);
//    void setBindings(Bindings bindings, int scope);
//
//    ScriptContext context();
//    void context(ScriptContext context);
//}
