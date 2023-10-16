//package com.github.catvod.script;
//
//public abstract class CompiledScript {
//
//    abstract ScriptEngine getEngine();
//    abstract Object eval(ScriptContext context);
//
//    public Object eval(Bindings bindings) {
//        ScriptContext ctxt = getEngine().context();
//        if (bindings != null) {
//            SimpleScriptContext tempContext = new SimpleScriptContext();
//            tempContext.setBindings(bindings, 100);
//            tempContext.setBindings(ctxt.getBindings(200), 200);
//            tempContext.writer(ctxt.writer());
//            tempContext.reader(ctxt.reader());
//            tempContext.errorWriter(ctxt.errorWriter());
//            ctxt = tempContext;
//        }
//        return this.eval(ctxt);
//    }
//
//    public Object eval() {
//        return this.eval(getEngine().context());
//    }
//}
