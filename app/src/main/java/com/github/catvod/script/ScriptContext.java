package com.github.catvod.script;

import java.io.Reader;
import java.io.Writer;
import java.util.List;

public interface ScriptContext {

    Writer errorWriter();
    Reader reader();
    List<Integer> scopes();
    Writer writer();

    Object getAttribute(String name);
    Object getAttribute(String name, int scope);
    int getAttributesScope(String name);
    Bindings getBindings(int scope);
    Object removeAttribute(String name, int scope);
    void setAttribute(String name,Object value,int scope);
    void setBindings(Bindings bindings, int scope);

    void errorWriter(Writer errorWriter);
    void reader(Reader reader);
    void scopes(List<Integer> scopes);
    void writer(Writer writer);
}
