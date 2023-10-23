.class final Lcom/github/catvod/spider/merge2/xbpq/c/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/d/EF;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->y()Lcom/github/catvod/spider/merge2/xbpq/c/h;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/h;->u0()Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/h;->u0()Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    move-result-object p0

    goto :goto_1b

    :cond_11
    new-instance p0, Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/b;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/EF;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/i1;)V

    :goto_1b
    return-object p0
.end method
