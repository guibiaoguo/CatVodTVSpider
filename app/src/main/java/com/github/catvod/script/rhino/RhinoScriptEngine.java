//package com.github.catvod.script.rhino;
//
//import com.github.catvod.script.AbstractScriptEngine;
//import com.github.catvod.script.Bindings;
//import com.github.catvod.script.Compilable;
//import com.github.catvod.script.CompiledScript;
//import com.github.catvod.script.Invocable;
//import com.github.catvod.script.ScriptContext;
//
//import org.mozilla.javascript.Context;
//import org.mozilla.javascript.RhinoException;
//import org.mozilla.javascript.Scriptable;
//import org.mozilla.javascript.Undefined;
//import org.mozilla.javascript.Wrapper;
//
//import java.io.IOException;
//import java.io.Reader;
//import java.util.HashMap;
//import java.util.Map;
//
//public class RhinoScriptEngine extends AbstractScriptEngine implements Invocable, Compilable {
//
//    private Map indexedProps;
//    private Scriptable topLevel;
//
//    public RhinoScriptEngine(Bindings bindings) {
//        super(bindings);
//        indexedProps = new HashMap();
//        Context cx = Context.enter();
//        try {
//            topLevel = new RhinoTopLevel(cx, true);
//        } finally {
//            Context.exit();
//        }
//    }
//
//    @Override
//    public CompiledScript compile(Reader script) {
//        return null;
//    }
//
//    @Override
//    public CompiledScript compile(String script) {
//        return null;
//    }
//
//    @Override
//    public Object getInterface(Class clazz) {
//        return null;
//    }
//
//    @Override
//    public Object getInterface(Object obj, Class clazz) {
//        return null;
//    }
//
//    @Override
//    public Object invokeFunction(String name, Object args) {
//        return null;
//    }
//
//    @Override
//    public Object invokeMethod(Object obj, String name, Object args) {
//        return null;
//    }
//
//    @Override
//    public Bindings createBindings() {
//        return null;
//    }
//
//    @Override
//    public Object eval(Reader reader, Scriptable scope) {
//        Context cx = Context.enter();
//        cx.setOptimizationLevel(-1);
//        Object ret = null;
//        if (scope == null) {
//            scope = cx.initStandardObjects();
//        }
//        try {
//            String filename = "javax.script.filename";
//            if (this.get(filename) != null) {
//                filename = this.get(filename).toString();
//            }
//            ret = cx.evaluateReader(scope, reader, filename,1 ,null);
//        } catch (RhinoException e) {
//            System.out.println(e);
//        } catch (IOException e) {
//            System.out.println(e);
//        } finally {
//            Context.exit();
//        }
//        return unwrapReturnValue(ret);
//    }
//
//    public Object unwrapReturnValue(Object result) {
//        Object result1 = result;
//        if (result1 instanceof Wrapper) {
//            result1 = ((Wrapper) result1).unwrap();
//        }
//        if (result1 instanceof Undefined) {
//            return null;
//        }
//        return result1;
//    }
//    @Override
//    public Scriptable getRuntimeScope(ScriptContext context) {
//        Scriptable newScope = new ExternalScriptable(context,indexedProps);
//        newScope.setPrototype(topLevel);
////        newScope.setParentScope(topLevel);
//        newScope.put("context", newScope, context);
//        return newScope;
//    }
//}
