.class public Lcom/guibiaoguo/myapplication/Test;
.super Ljava/lang/Object;
.source "Test.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provlist()V
    .registers 4

    .prologue
    .line 9
    const-string v1, "[\"\u91cd\u5e86\",\"\u6cb3\u5357\",\"\u5e7f\u4e1c\",\"\u6e56\u5317\",\"\u6cb3\u5317\",\"\u5b89\u5fbd\",\"\u6c5f\u897f\",\"\u9ed1\u9f99\u6c5f\",\"\u5929\u6d25\",\"\u4e0a\u6d77\",\"\u5c71\u897f\",\"\u5409\u6797\",\"\u6c5f\u82cf\",\"\u798f\u5efa\",\"\u6d77\u5357\",\"\u8d35\u5dde\",\"\u4e91\u5357\",\"\u9655\u897f\",\"\u897f\u85cf\",\"\u5b81\u590f\",\"\u5185\u8499\u53e4\",\"\u5317\u4eac\",\"\u6e56\u5357\",\"\u5e7f\u897f\",\"\u7518\u8083\",\"\u6d59\u6c5f\",\"\u65b0\u7586\",\"\u5c71\u4e1c\",\"\u56db\u5ddd\",\"\u9752\u6d77\"]"

    .line 11
    .local v1, "s":Ljava/lang/String;
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_7} :catch_8

    .line 15
    :goto_7
    return-void

    .line 12
    :catch_8
    move-exception v0

    .line 13
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7
.end method
