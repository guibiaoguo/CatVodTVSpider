//package com.github.catvod.script;
//
//import org.mozilla.javascript.Scriptable;
//
//import java.io.Reader;
//import java.io.StringReader;
//
//public abstract class AbstractScriptEngine implements ScriptEngine{
//
//    private ScriptContext context = new SimpleScriptContext();
//
//    private Bindings bindings;
//
//    public AbstractScriptEngine(Bindings bindings) {
//        this.bindings = bindings;
//        context.setBindings(bindings, 100);
//    }
//
//    @Override
//    public Object eval(String script, Scriptable scope) {
//        return this.eval(new StringReader(script), scope);
//    }
//
//    @Override
//    public Object eval(Reader reader) {
//        return this.eval(reader, context);
//    }
//
//    @Override
//    public Object eval(Reader reader, Bindings bindings) {
//        return this.eval(reader, getScriptContext(bindings));
//    }
//
//    @Override
//    public Object eval(Reader reader, ScriptContext context) {
//        return this.eval(reader, getRuntimeScope(context));
//    }
//
//    @Override
//    public Object eval(String script) {
//        return this.eval(script, context);
//    }
//
//    @Override
//    public Object eval(String script, Bindings bindings) {
//        return this.eval(script, getScriptContext(bindings));
//    }
//
//    @Override
//    public Object eval(String script, ScriptContext context) {
//        return this.eval(new StringReader(script), context);
//    }
//
//    @Override
//    public ScriptContext getScriptContext(Bindings bindings) {
//        ScriptContext ctx = new SimpleScriptContext();
//        Bindings gs = getBindings(200);
//        if( gs!= null) {
//            ctx.setBindings(gs, 200);
//        }
//        ctx.setBindings(bindings, 100);
//        ctx.reader(context.reader());
//        ctx.writer(context.writer());
//        ctx.errorWriter(context.errorWriter());
//        return ctx;
//    }
//
//    @Override
//    public Object get(String key) {
//        if (getBindings(100) != null)
//            return getBindings(100).get(key);
//        return null;
//    }
//
//    @Override
//    public Bindings getBindings(int scope) {
//        switch (scope) {
//            case 100:
//                return context.getBindings(scope);
//            case 200:
//                return context.getBindings(scope);
//            default:
//                return null;
//        }
//    }
//
//    @Override
//    public void put(String key, String value) {
//        if (getBindings(100) != null)
//            getBindings(100).put(key, value);
//    }
//
//    @Override
//    public void setBindings(Bindings bindings, int scope) {
//        switch (scope) {
//            case 100:
//                context.setBindings(bindings, scope);
//            case 200:
//                context.setBindings(bindings, scope);
//        }
//    }
//
//    @Override
//    public ScriptContext context() {
//        return this.context;
//    }
//
//    @Override
//    public void context(ScriptContext context) {
//        this.context = context;
//    }
//}
