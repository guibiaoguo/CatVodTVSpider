package com.github.catvod.script.quickjs;

import com.github.catvod.parser.DataTypeAdapter;
import com.github.catvod.parser.RuleData;
import com.github.catvod.script.Bindings;
import com.github.catvod.script.Compilable;
import com.github.catvod.script.CompiledScript;
import com.github.catvod.script.Invocable;
import com.github.catvod.script.ScriptContext;
import com.github.catvod.script.SimpleBindings;
import com.github.tvbox.quickjs.JSArray;
import com.github.tvbox.quickjs.JSFunction;
import com.github.tvbox.quickjs.JSObject;
import com.github.tvbox.quickjs.QuickJSContext;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.internal.LinkedTreeMap;
import com.google.gson.reflect.TypeToken;

import java.io.Reader;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.hutool.core.codec.Base64;
import cn.hutool.core.convert.Convert;
import cn.hutool.core.convert.impl.CollectionConverter;
import cn.hutool.core.convert.impl.MapConverter;
import cn.hutool.core.lang.Console;
import cn.hutool.core.util.ReUtil;
import cn.hutool.core.util.ReflectUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.core.util.TypeUtil;

public class QuickJSScriptEngine implements Invocable, Compilable {

    private final Bindings bindings;

    public static Gson gson = new GsonBuilder()
            .registerTypeAdapter(new TypeToken<Map<String,Object>>(){}.getType(),new DataTypeAdapter())
            .registerTypeAdapter(new TypeToken<List>(){}.getType(),new DataTypeAdapter())
            .create();
    static QuickJSScriptEngine instance = null;

    public static QuickJSScriptEngine getInstance() {
        if (instance == null)
            instance = new QuickJSScriptEngine();
        return instance;
    }

    private QuickJSContext jsContext;

    public QuickJSScriptEngine() {
        jsContext = QuickJSContext.create();
        bindings = new SimpleBindings();
    }

    public QuickJSScriptEngine(Bindings bindings) {
        jsContext = QuickJSContext.create();
        this.bindings =bindings;
    }
    /**
     * @return
     */

    public Bindings createBindings() {
        return new SimpleBindings();
    }

    /**
     * @param reader
     * @return
     */

    public Object eval(Reader reader) {
        return null;
    }

    /**
     * @param reader
     * @param bindings
     * @return
     */

    public Object eval(Reader reader, Bindings bindings) {
        return null;
    }

    /**
     * @param reader
     * @param context
     * @return
     */

    public Object eval(Reader reader, ScriptContext context) {
        return null;
    }

    /**
     * @param script
     * @return
     */

    public Object eval(String script) {
        return null;
    }

    /**
     * @param script
     * @param bindings
     * @return
     */

    public Object eval(String script, Bindings bindings) {
        this.bindings.putAll(bindings);
        JSObject jsObject = jsContext.getGlobalObject();
        try {
            for (Map.Entry<String, Object> entry : bindings.entrySet()) {
                try {
                    if (entry.getValue() instanceof Integer) {
                        jsObject.setProperty(entry.getKey(), Integer.parseInt(entry.getValue().toString()));
                    } else if (entry.getValue() instanceof Double) {
                        jsObject.setProperty(entry.getKey(), Double.parseDouble(entry.getValue().toString()));
                    } else if (entry.getValue() instanceof Boolean) {
                        jsObject.setProperty(entry.getKey(), Boolean.parseBoolean(entry.getValue().toString()));
                    } else if (entry.getValue() instanceof String) {
                        jsObject.setProperty(entry.getKey(), entry.getValue().toString());
                    } else if (entry.getValue() instanceof JSObject) {
                        jsObject.setProperty(entry.getKey(), (JSObject) entry.getValue());
                    } else if (entry.getValue() instanceof JSFunction) {
                        jsObject.setProperty(entry.getKey(), (JSFunction) entry.getValue());
                    } else if (entry.getValue() == null) {
                        jsObject.setProperty(entry.getKey(), "");
                    } else if (Map.class.isAssignableFrom(TypeUtil.getClass(entry.getValue().getClass())) || Collection.class.isAssignableFrom(TypeUtil.getClass(entry.getValue().getClass()))){
                        jsObject.setProperty(entry.getKey(), gson.toJson(entry.getValue()));
                    } else {
                        JSObject jt = javaToJS(jsObject, entry.getKey(), entry.getValue());
                        jt.release();
                    }
                } catch (Exception e) {
                    Console.log(e);
                }
            }
            Object result1 = jsContext.evaluate(script);
            return jsTOJava(result1);
        } catch (Exception e) {
            Console.log(e);
        } finally {
//            for (int i = 0; i < 51205; i++) {
//                jsObject.setProperty(i+"",i);
//            }
//            List<String> jsList = ReUtil.findAll("(\\w+): \\{",jsObject.toString(),1);
//            for (String s : jsList) {
//                jsObject.setProperty(s,"");
//            }
            jsObject.release();
        }
        return null;
    }

    public Object jsTOJava(Object result1) {
        if (result1 instanceof String || result1 instanceof Integer || result1 instanceof Boolean || result1 instanceof Double) {
            return result1;
        } else if (result1 instanceof JSArray) {
            String ruleDataKey = ((JSArray) result1).getPointer()+"";
            if (bindings.get(ruleDataKey)!= null) {
              return bindings.get(ruleDataKey);
            } else {
                return gson.fromJson(((JSArray) result1).stringify(),List.class);
            }
        }
        else if (result1 instanceof JSObject) {
            String ruleDataKey =((JSObject) result1).getString("ruleDataKey");
//            String clsNme = ((JSObject) result1).getString("className");
//            String clsField =((JSObject) result1).getString("classNameField");
//            String ruleDataKey =((JSObject) result1).getString("ruleDataKey");
//            Boolean isArray =((JSObject) result1).getBoolean("isArray");
//            if (isArray) {
//                if (clsNme != null && clsNme.equals("byte[]")) {
//                    return Base64.decode(clsField);
//                } else if (clsField != null){
//                    return gson.fromJson(clsField,List.class);
//                }
//            } else {
//                return bindings.get(ruleDataKey);
//            }
            return bindings.get(ruleDataKey);
        }
        Console.log(result1);
        return result1;
    }

    public JSObject javaToJS(JSObject jsObject, String name, Object object) {
        JSObject jsObj = jsContext.createNewJSObject();
        Method[] methods = ReflectUtil.getMethods(object.getClass());
        LinkedTreeMap<String, Map<Integer, List<Method>>> linkedTreeMap = new LinkedTreeMap();
        for (Method method : methods) {
            String methodname = method.getName();
            Map<Integer, List<Method>> mobject = linkedTreeMap.get(methodname);
            if (mobject == null) {
                mobject = new HashMap<>();
            }
            List<Method> tmethod = mobject.get(method.getParameterTypes().length);
            if (tmethod == null) {
                tmethod = new ArrayList<>();
            }
            tmethod.add(method);
            mobject.put(method.getParameterTypes().length, tmethod);
            linkedTreeMap.put(methodname, mobject);
            jsObj.setProperty(method.getName(), args -> {
                List<Method> methodList = linkedTreeMap.get(method.getName()).get(args.length);
                if (methodList == null) {
                    methodList = new ArrayList<>();
                    for (Map.Entry<Integer, List<Method>> listEntry : linkedTreeMap.get(method.getName()).entrySet()) {
                        if (!listEntry.getValue().isEmpty()) {
                            methodList.addAll(listEntry.getValue());
                        }
                    }
                }
                Object result1 = null;
                int k = 0;
                int max = k;
                Method newMethod = method;
                Object[] newArgs = args;
                for (Method method1 : methodList) {
                    Class<?>[] paramCls = method1.getParameterTypes();
                    int i = 0;
                    for (Object arg : args) {
                        if (i >= paramCls.length && paramCls.length < args.length && methodList.size() == 1) {
                            List<Object> newObject = new ArrayList();
                            Object[] newArgs2 = new Object[paramCls.length];
                            for (int j = 0; j < i; j++) {
                                newArgs2[j]=newArgs[j];
                            }
                            newObject.add(newArgs[i-1]);
                            for (int j = i; j < args.length; j++) {
                                newObject.add(args[j]);
                            }
                            newArgs2[i-1] = newObject.toArray();
                            newArgs = newArgs2;
                        }
                        if (i >= paramCls.length) {
                            break;
                        }
                        Object test = convertSpecial(paramCls[i], TypeUtil.getClass(paramCls[i]),arg,null);
                        if (arg == null) {
                            k++;
                        }
                        else if(arg instanceof JSArray) {
                            String ruleDataKey = ((JSArray)arg).getPointer()+"";
                            newArgs[i]=bindings.get(ruleDataKey) != null? bindings.get(ruleDataKey): arg;
                            if (Collection.class.isAssignableFrom(TypeUtil.getClass(paramCls[i]))) {
                                newArgs[i] = gson.fromJson(((JSObject)newArgs[i]).stringify(),TypeUtil.getClass(paramCls[i]));
                            }
                        } else if (arg instanceof JSObject) {
                            String clsName = ((JSObject)arg).getString("className");
                            if (StrUtil.isEmpty(clsName)) {
                                clsName = paramCls[i].getName();
                            }
//                            String clsField = ((JSObject)arg).getString("classNameField");
                            String ruleDataKey = ((JSObject)arg).getString("ruleDataKey");
                            if (StrUtil.isNotEmpty(ruleDataKey)){
                                newArgs[i] = bindings.get(ruleDataKey);
                            }
                            else if (clsName.equals(paramCls[i].getName())) {
                                try {
//                                    Class argCls1 = Class.forName(clsName);
                                    if (StrUtil.isNotEmpty(ruleDataKey)) {
//                                        Object[] enumConstants = argCls.getEnumConstants();
//                                        for (Object enumConstant : enumConstants) {
//                                            if (enumConstant.toString().equalsIgnoreCase(clsField)) {
//                                                arg = enumConstant;
//                                                newArgs[i] = arg;
//                                            }
//                                        }
                                        newArgs[i] = bindings.get(ruleDataKey);
                                    } else if (Map.class.isAssignableFrom(TypeUtil.getClass(paramCls[i]))) {
                                        Map map = gson.fromJson(((JSObject)arg).stringify(),Map.class);
                                        newArgs[i] = map;
                                    } else if (Collection.class.isAssignableFrom(TypeUtil.getClass(paramCls[i]))) {
//                                        List map = gson.fromJson(((JSObject)arg).stringify(),List.class);
                                        newArgs[i] = gson.fromJson(((JSObject)arg).stringify(),TypeUtil.getClass(paramCls[i]));
                                    } else if (paramCls[i].getName().equals("java.lang.Object")) {
                                        arg = ((JSObject)arg).stringify();
                                        newArgs[i] = arg;
                                    } else {
                                        arg = ((JSObject)arg).stringify();
                                        newArgs[i] = arg;
                                    }
                                } catch (Exception e) {
                                    Console.log(e);
                                }
                            }
                        } else if (paramCls[i].isArray() && args.length == 1 && methodList.size() == 1) {
                            Object[] newArray = {arg};
                            newArgs[i] = newArray;
                        } else if (Long.class.isAssignableFrom(TypeUtil.getClass(paramCls[i]))) {
                            newArgs[i] = ReflectUtil.invoke(arg,"longValue");
                        }
                        if ((!(newArgs[i] instanceof JSObject)) && (newArgs[i].getClass().getName().equals(paramCls[i].getName()) || newArgs[i].getClass().isAssignableFrom(TypeUtil.getClass(paramCls[i]))))
                            k++;
                        i++;
                    }
                    if (methodList.size() == 1) {
                        newMethod = method1;
                        break;
                    }
                    if (k == paramCls.length) {
                        newMethod = method1;
                        break;
                    } else if (k > max) {
                        newMethod = method1;
                        max = k;
                        k = 0;
                    }
                }
                result1 = ReflectUtil.invoke(object, newMethod, newArgs);
                if (result1 instanceof String || result1 instanceof Integer || result1 instanceof Boolean || result1 instanceof Double || result1 instanceof JSObject) {
                    return result1;
                }
                else if(result1.getClass().isArray()) {
                    JSArray jsArray = jsContext.createNewJSArray();
                    Object[] newResult = null;
                    if (result1.getClass().getSimpleName().equals("byte[]")) {
                        byte[] bytes = (byte[]) result1;
                        for (int i = 0; i < bytes.length; i++) {
                            jsArray.set((int)bytes[i],i);
                        }
                    } else if (result1.getClass().getSimpleName().equals("char[]")) {
                        char[] bytes = (char[]) result1;
                        for (int i = 0; i < bytes.length; i++) {
                            jsArray.set((int)bytes[i],i);
                        }
                    } else {
                        newResult = (Object[]) result1;
                        for (int i = 0; i < newResult.length; i++) {
                            if (newResult[i] instanceof String || newResult[i] instanceof Integer || newResult[i] instanceof Boolean || newResult[i] instanceof Double || newResult[i] instanceof JSObject)
                                jsArray.set(newResult[i],i);
                            else {

                            }
                        }
                    }
                    bindings.put(jsArray.getPointer()+"",result1);
                    return jsArray;
                }
                else if (result1 != null){
                    JSObject jsObject1 = javaToJS(jsObject, result1.getClass().getName(), result1);
                    bindings.put(result1.getClass().hashCode()+"",result1);
                    return jsObject1;
                }
                return null;
            });

        }
        jsObj.setProperty("isArray",object.getClass().isArray());
        if (object.getClass().isArray()) {
            jsObj.setProperty("className", object.getClass().getSimpleName());
//            if (jsObj.getProperty("className").equals("byte[]")) {
//                jsObj.setProperty("classNameField", Base64.encode((byte[]) object));
//            } else {
//                jsObj.setProperty("classNameField",gson.toJson(object));
//            }
        } else {
            jsObj.setProperty("className", object.getClass().getName());
        }
//        if(object.getClass().isEnum()) {
//            jsObj.setProperty("classNameField", object.toString());
//        } else {
//            jsObj.setProperty("classNameField", object.toString());
//        }
        jsObj.setProperty("ruleDataKey", object.getClass().hashCode()+"");
        bindings.put(object.getClass().hashCode()+"", object);
        jsObject.setProperty(name, jsObj);
        return jsObj;
    }

    private <T> T convertSpecial(Type type, Class<T> rowType, Object value, T defaultValue) {
        if (null == rowType) {
            return defaultValue;
        }

        if (value instanceof JSObject) {
            String ruleDataKey = ((JSObject) value).getString("ruleDataKey");
            if (StrUtil.isNotEmpty(ruleDataKey)) {
                return (T) bindings.get(ruleDataKey);
            }
        }
        // 集合转换（不可以默认强转）
        if (Collection.class.isAssignableFrom(rowType)) {
            if (value instanceof JSObject) {
                value = ((JSObject) value).stringify();
            }
            return (T) gson.fromJson(value.toString(), rowType);
        }

        // Map类型（不可以默认强转）
        if (Map.class.isAssignableFrom(rowType)) {
            if (value instanceof JSObject) {
                value = ((JSObject) value).stringify();
            }
            return (T) gson.fromJson(value.toString(), rowType);
        }

        // 默认强转
        if (rowType.isInstance(value) || rowType.isInstance(Convert.unWrap(value.getClass()))) {
            return (T) value;
        }

        // 数组转换
//        if (rowType.isArray()) {
//            final ArrayConverter arrayConverter = new ArrayConverter(rowType);
//            try {
//                return (T) arrayConverter.convert(value, defaultValue);
//            } catch (Exception e) {
//                // 数组转换失败进行下一步
//            }
//        }

        // 枚举转换
//        if (rowType.isEnum()) {
//            return (T) new EnumConverter(rowType).convert(value, defaultValue);
//        }
        // 表示非需要特殊转换的对象
        return defaultValue;
    }
    /**
     * @param script
     * @param context
     * @return
     */

    public Object eval(String script, ScriptContext context) {
        return null;
    }

    /**
     * @param bindings
     * @return
     */

    public ScriptContext getScriptContext(Bindings bindings) {
        return null;
    }

    /**
     * @param key
     * @return
     */

    public Object get(String key) {
        return null;
    }

    /**
     * @param scope
     * @return
     */

    public Bindings getBindings(int scope) {
        return null;
    }

    /**
     * @param key
     * @param value
     */

    public void put(String key, String value) {

    }

    /**
     * @param bindings
     * @param scope
     */

    public void setBindings(Bindings bindings, int scope) {

    }

    /**
     * @return
     */

    public QuickJSContext context() {
        return jsContext;
    }

    /**
     * @param context
     */

    public void context(ScriptContext context) {

    }

    /**
     * @param script
     * @return
     */
    @Override
    public CompiledScript compile(Reader script) {
        return null;
    }

    /**
     * @param script
     * @return
     */
    @Override
    public CompiledScript compile(String script) {
        return null;
    }

    /**
     * @param clazz
     * @return
     */
    @Override
    public Object getInterface(Class clazz) {
        return null;
    }

    /**
     * @param obj
     * @param clazz
     * @return
     */
    @Override
    public Object getInterface(Object obj, Class clazz) {
        return null;
    }

    /**
     * @param name
     * @param args
     * @return
     */
    @Override
    public Object invokeFunction(String name, Object args) {
        return null;
    }

    /**
     * @param obj
     * @param name
     * @param args
     * @return
     */
    @Override
    public Object invokeMethod(Object obj, String name, Object args) {
        return null;
    }
}
