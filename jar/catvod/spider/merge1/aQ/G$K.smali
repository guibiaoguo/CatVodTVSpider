.class Lcom/github/catvod/spider/merge1/aQ/G$K;
.super Lcom/github/catvod/spider/merge1/aQ/tb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/catvod/spider/merge1/aQ/G;->o(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge1/aQ/tb<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Eg:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/G$K;->Eg:Ljava/util/Map;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/tb;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V
    .registers 3

    const-string p1, ""

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/tb;->Eg(Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/G$K;->onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Ljava/lang/String;
    .registers 4

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/G$K;->Eg:Ljava/util/Map;

    if-eqz p1, :cond_14

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 4
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/G$K;->Eg:Ljava/util/Map;

    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5
    :cond_14
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    const-string p1, ""

    return-object p1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/G$K;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
