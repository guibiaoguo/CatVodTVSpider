//package com.github.catvod.script.rhino;
//
//import org.mozilla.javascript.Context;
//import org.mozilla.javascript.IdFunctionObject;
//import org.mozilla.javascript.ImporterTopLevel;
//import org.mozilla.javascript.Scriptable;
//
//public class RhinoTopLevel extends ImporterTopLevel {
//
//    public RhinoTopLevel() {
//        super();
//    }
//
//    public RhinoTopLevel(Context cx) {
//        super(cx);
//    }
//
//    public RhinoTopLevel(Context cx, boolean sealed) {
//        super(cx, sealed);
//    }
//
//    @Override
//    public String getClassName() {
//        return super.getClassName();
//    }
//
//    @Override
//    public void initStandardObjects(Context cx, boolean sealed) {
//        super.initStandardObjects(cx, sealed);
//    }
//
//    @Override
//    public boolean has(String name, Scriptable start) {
//        return super.has(name, start);
//    }
//
//    @Override
//    public Object get(String name, Scriptable start) {
//        return super.get(name, start);
//    }
//
//    @Override
//    protected void initPrototypeId(int id) {
//        super.initPrototypeId(id);
//    }
//
//    @Override
//    public Object execIdCall(IdFunctionObject f, Context cx, Scriptable scope, Scriptable thisObj, Object[] args) {
//        return super.execIdCall(f, cx, scope, thisObj, args);
//    }
//
//    @Override
//    protected int findPrototypeId(String s) {
//        return super.findPrototypeId(s);
//    }
//}
