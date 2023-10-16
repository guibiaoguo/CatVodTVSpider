//package com.github.catvod.script.rhino;
//
//import com.github.catvod.script.ScriptContext;
//
//import org.mozilla.javascript.Context;
//import org.mozilla.javascript.NativeJavaClass;
//import org.mozilla.javascript.Scriptable;
//import org.mozilla.javascript.Wrapper;
//
//import java.util.Map;
//
//public class
//ExternalScriptable implements Scriptable {
//
//    private ScriptContext context;
//    private Map indexedProps;
//    private Scriptable prototype = null;
//    private Scriptable parent = null;
//
//    public ExternalScriptable(ScriptContext context, Map indexedProps) {
//        if (context == null) {
//            throw new NullPointerException("context is null");
//        } else {
//            this.context = context;
//            this.indexedProps = indexedProps;
//        }
//    }
//    public ExternalScriptable(ScriptContext context, Map indexedProps, Scriptable prototype, Scriptable parent) {
//
//    }
//
//    @Override
//    public String getClassName() {
//        return "Global";
//    }
//
//    @Override
//    public Object get(String name, Scriptable start) {
//        Object result = Scriptable.NOT_FOUND;
//        if (this.isEmpty(name)) {
//             result = indexedProps.get(name);
//        } else {
//            synchronized (context) {
//                int scope = context.getAttributesScope(name);
//                if (scope != -1) {
//                    Object value = context.getAttribute(name, scope);
//                    result = Context.javaToJS(value, this);
//                } else {
//                    result = Scriptable.NOT_FOUND;
//                }
//            }
//        }
//        if (result == null || result == Scriptable.NOT_FOUND)
//            return Scriptable.NOT_FOUND;
//        else
//            return result;
//    }
//
//    @Override
//    public Object get(int index, Scriptable start) {
//        return null;
//    }
//
//    @Override
//    public boolean has(String name, Scriptable start) {
//        return false;
//    }
//
//    @Override
//    public boolean has(int index, Scriptable start) {
//        return false;
//    }
//
//    private Boolean isEmpty(String name) {
//        return name.equals("");
//    }
//    @Override
//    public void put(String name, Scriptable start, Object value) {
//        if (start == this) {
//            synchronized (this) {
//                if (this.isEmpty(name)) {
//                    indexedProps.put(name, value);
//                } else {
//                    synchronized (context) {
//                        int scope = context.getAttributesScope(name);
//                        if (scope == -1) {
//                            scope = 100;
//                        }
//                        context.setAttribute(name, jsToJava(value), scope);
//                    }
//                }
//            }
//        } else {
//            start.put(name, start, value);
//        }
//    }
//
//    private Object jsToJava(Object jsObj) {
//        if (jsObj instanceof Wrapper) {
//            if (jsObj instanceof NativeJavaClass) {
//                return jsObj;
//            } else {
//                Object obj = ((Wrapper) jsObj).unwrap();
//                if (!(obj instanceof Number) && !(obj instanceof String) && !(obj instanceof Boolean) && !(obj instanceof Character)) {
//                    return obj;
//                } else {
//                    return jsObj;
//                }
//            }
//        }
//        return jsObj;
//    }
//
//    @Override
//    public void put(int index, Scriptable start, Object value) {
//        System.out.println("put int");
//    }
//
//    @Override
//    public void delete(String name) {
//        System.out.println("delete " + name);
//    }
//
//    @Override
//    public void delete(int index) {
//        indexedProps.remove(index);
//    }
//
//    @Override
//    public Scriptable getPrototype() {
//        return prototype;
//    }
//
//    @Override
//    public void setPrototype(Scriptable prototype) {
//        this.prototype = prototype;
//    }
//
//    @Override
//    public Scriptable getParentScope() {
//        return parent;
//    }
//
//    @Override
//    public void setParentScope(Scriptable parent) {
//        this.parent = parent;
//    }
//
//    @Override
//    public Object[] getIds() {
//        return new Object[0];
//    }
//
//    @Override
//    public Object getDefaultValue(Class<?> hint) {
//        return null;
//    }
//
//    @Override
//    public boolean hasInstance(Scriptable instance) {
//        Scriptable proto = instance.getPrototype();
//        while (proto != null) {
//            if (proto == this) {
//                return true;
//            }
//            proto = proto.getPrototype();
//        }
//        return false;
//    }
//}
