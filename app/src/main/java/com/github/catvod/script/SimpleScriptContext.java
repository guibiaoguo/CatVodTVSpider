package com.github.catvod.script;

import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.List;

public class SimpleScriptContext implements ScriptContext{

    private Bindings engineScope = new SimpleBindings();
    private Writer errorWriter = new PrintWriter(System.err, true);
    private Bindings globalScope = null;
    private Reader reader = new InputStreamReader(System.in);
    private Writer writer = new PrintWriter(System.out, true);

    private List<Integer> scopes = null;

    @Override
    public Writer errorWriter() {
        return errorWriter;
    }

    @Override
    public Reader reader() {
        return reader;
    }

    @Override
    public List<Integer> scopes() {
        return scopes;
    }

    @Override
    public Writer writer() {
        return writer;
    }

    @Override
    public Object getAttribute(String name) {
        if (engineScope.containsKey(name)) {
            return this.getAttribute(name, 100);
        } else if (globalScope.containsKey(name)) {
            return this.getAttribute(name, 200);
        }
        return null;
    }

    @Override
    public Object getAttribute(String name, int scope) {
        switch (scope) {
            case 100:
                return engineScope.get(name);
            case 200:
                return globalScope.get(name);
            default:
                return null;
        }
    }

    @Override
    public int getAttributesScope(String name) {
        if (engineScope.containsKey(name)) {
            return 100;
        } else if(globalScope.containsKey(name)) {
            return 200;
        } else {
            return -1;
        }
    }

    @Override
    public Bindings getBindings(int scope) {
        switch (scope) {
            case 100:
                return engineScope;
            case 200:
                return globalScope;
        }
        return null;
    }

    @Override
    public Object removeAttribute(String name, int scope) {
        switch (scope) {
            case 100:
                return engineScope.remove(name);
            case 200:
                return globalScope.remove(name);
            default:
                return null;
        }
    }

    @Override
    public void setAttribute(String name, Object value, int scope) {
        switch (scope) {
            case 100:
                engineScope.put(name, value);
                break;
            case 200:
                globalScope.put(name,value);
                break;
        }
    }

    @Override
    public void setBindings(Bindings bindings, int scope) {
        switch (scope) {
            case 100:
                engineScope = bindings;
            case 200:
                globalScope = bindings;
        }
    }

    @Override
    public void errorWriter(Writer errorWriter) {
        this.errorWriter = errorWriter;
    }

    @Override
    public void reader(Reader reader) {
        this.reader = reader;
    }

    @Override
    public void scopes(List<Integer> scopes) {
        this.scopes = scopes;
    }

    @Override
    public void writer(Writer writer) {
        this.writer = writer;
    }
}
