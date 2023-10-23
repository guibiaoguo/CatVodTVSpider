.class public abstract Lcom/github/catvod/spider/merge1/aQ/tb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/catvod/spider/merge1/aQ/tb$K;,
        Lcom/github/catvod/spider/merge1/aQ/tb$DK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private W:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/tb;->W:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected Eg(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/tb;->W:Ljava/lang/Object;

    return-void
.end method

.method protected W(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/tb;->onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/tb;->Eg(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/tb;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/tb;->W:Ljava/lang/Object;

    return-object v0
.end method

.method protected onError(Lokhttp3/Call;Ljava/lang/Exception;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/tb;->onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V

    return-void
.end method

.method protected abstract onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V
.end method

.method protected abstract onParseResponse(Lokhttp3/Call;Lokhttp3/Response;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract onResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
