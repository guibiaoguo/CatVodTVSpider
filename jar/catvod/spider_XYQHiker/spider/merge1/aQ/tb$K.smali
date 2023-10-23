.class public abstract Lcom/github/catvod/spider/merge1/aQ/tb$K;
.super Lcom/github/catvod/spider/merge1/aQ/tb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/tb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "K"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge1/aQ/tb<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/tb;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lokhttp3/Call;Ljava/lang/Exception;)V
    .registers 4

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/tb;->Eg(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/tb;->onError(Lokhttp3/Call;Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/tb$K;->onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Ljava/lang/String;
    .registers 3

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    const-string p1, ""

    return-object p1
.end method
