.class public abstract Lcom/github/catvod/spider/merge1/aQ/tb$DK;
.super Lcom/github/catvod/spider/merge1/aQ/tb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/tb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge1/aQ/tb<",
        "Lokhttp3/Response;",
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
.method public bridge synthetic onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/tb$DK;->onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Lokhttp3/Response;
    .registers 3

    return-object p2
.end method
