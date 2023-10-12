# Merge
-flattenpackagehierarchy com.github.catvod.spider.merge
-dontwarn org.slf4j.impl.StaticLoggerBinder

# Spider
-keep class com.github.catvod.crawler.* { *; }
-keep class com.github.catvod.spider.* { public <methods>; }
-keep class com.github.catvod.parser.* { public <methods>; }
-keep class com.github.catvod.script.* { public <methods>; }
-keep class com.github.catvod.script.rhino.* { public <methods>; }

# Gson
-keepattributes Signature
-keepattributes *Annotation*
-dontwarn sun.misc.**
-keep class com.google.gson.**{*;}
-keep class * extends com.google.gson.TypeAdapter
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer
-keepclassmembers,allowobfuscation class * { @com.google.gson.annotations.SerializedName <fields>; }
-keep,allowobfuscation,allowshrinking class com.google.gson.reflect.TypeToken
-keep,allowobfuscation,allowshrinking class * extends com.google.gson.reflect.TypeToken

#rhino
-keep class org.mozilla.javascript.VMBridge {*;}
-keep class * extends org.mozilla.javascript.VMBridge {*;}
-keep class org.mozilla.javascript.Context {*;}
-keep class org.mozilla.javascript.NativeJavaClass {*;}
-keep class org.mozilla.javascript.Scriptable {*;}
-keep class * implements org.mozilla.javascript.Scriptable {*;}
-keep class org.mozilla.javascript.Wrapper {*;}
-keep class * implements org.mozilla.javascript.Wrapper {*;}
-keep class org.mozilla.javascript.RhinoException {*;}
-keep class * extends org.mozilla.javascript.RhinoException {*;}
-keep class org.mozilla.javascript.Undefined {*;}
-keep class org.mozilla.javascript.IdFunctionObject {*;}
-keep class * extends org.mozilla.javascript.IdFunctionObject {*;}
-keep class org.mozilla.javascript.ImporterTopLevel {*;}
-keep class * extends org.mozilla.javascript.ImporterTopLevel {*;}
-keep class org.mozilla.javascript.ContextFactory {*;}
-keep class * extends org.mozilla.javascript.ContextFactory {*;}
-keep class org.mozilla.javascript.Evaluator {*;}
-keep class * implements org.mozilla.javascript.Evaluator {*;}
-keep class org.mozilla.javascript.Interpreter {*;}
-keep class org.mozilla.javascript.RegExpProxy {*;}
-keep class * implements org.mozilla.javascript.RegExpProxy {*;}
-keep class org.mozilla.javascript.GeneratedClassLoader {*;}
-keep class * implements org.mozilla.javascript.GeneratedClassLoader {*;}
-keep class org.mozilla.javascript.DefiningClassLoader {*;}
-keep class org.mozilla.javascript.Script {*;}
-keep class * implements org.mozilla.javascript.Script {*;}
-keep class org.mozilla.javascript.BaseFunction {*;}
-keep class * extends org.mozilla.javascript.BaseFunction {*;}
-keep class org.mozilla.javascript.ScriptRuntime {*;}
-keep class * extends org.mozilla.javascript.ScriptRuntime {*;}


# Zxing
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# OkHttp
-keep class okio.**{*;}
-keep class okhttp3.**{*;}

# Cronet
-keep class org.chromium.net.**{*;}
-keep class com.google.net.cronet.**{*;}

##JSOUP
#-keep class org.jsoup.**{*;}
#-keep class **.xpath.**{*;}
#-dontwarn org.bouncycastle.jce.provider.BouncyCastleProvider

# hutool-core hutool-crypto
#-keep class cn.hutool.core.**{*;}
-keep class cn.hutool.crypto.**{*;}
-dontwarn cn.hutool.**
# quickjs引擎
-keep class com.github.tvbox.quickjs.** {*;}