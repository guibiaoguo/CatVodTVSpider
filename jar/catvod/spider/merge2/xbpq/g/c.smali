.class public final Lcom/github/catvod/spider/merge2/xbpq/g/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/github/catvod/spider/merge2/xbpq/g/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private b:Lcom/github/catvod/spider/merge2/xbpq/g/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ck"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "codeContent"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "qrCodeStatus"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bizExt"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/g/c;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/github/catvod/spider/merge2/xbpq/g/c;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/catvod/spider/merge2/xbpq/g/c;

    if-nez p0, :cond_14

    new-instance p0, Lcom/github/catvod/spider/merge2/xbpq/g/c;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/g/c;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-object p0

    :catch_15
    new-instance p0, Lcom/github/catvod/spider/merge2/xbpq/g/c;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/g/c;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/c;->e:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public final b()Lcom/github/catvod/spider/merge2/xbpq/g/c;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/c;->b:Lcom/github/catvod/spider/merge2/xbpq/g/c;

    if-nez v0, :cond_9

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/g/c;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/c;-><init>()V

    :cond_9
    return-object v0
.end method

.method public final c()Lcom/github/catvod/spider/merge2/xbpq/g/c;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/c;->a:Lcom/github/catvod/spider/merge2/xbpq/g/c;

    if-nez v0, :cond_9

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/g/c;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/c;-><init>()V

    :cond_9
    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/g/c;->c:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_c

    move-object v1, v2

    :cond_c
    const-string v3, "t"

    .line 2
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/g/c;->d:Ljava/lang/String;

    if-nez v1, :cond_16

    move-object v1, v2

    :cond_16
    const-string v3, "ck"

    .line 4
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appName"

    const-string v3, "aliyun_drive"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appEntrance"

    const-string v3, "web"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isMobile"

    const-string v3, "false"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lang"

    const-string v3, "zh_CN"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "returnUrl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fromSite"

    const-string v3, "52"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bizParams"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "navlanguage"

    const-string v2, "zh-CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "navPlatform"

    const-string v2, "MacIntel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/g/c;->g:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, ""

    :cond_8
    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 3
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/github/catvod/spider/merge2/xbpq/g/a;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/g/a;

    .line 4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/a;->a()Lcom/github/catvod/spider/merge2/xbpq/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/c;->f:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_7

    move-object v0, v1

    :cond_7
    const-string v2, "CONFIRMED"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/c;->g:Ljava/lang/String;

    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    move-object v1, v0

    .line 4
    :goto_15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method
