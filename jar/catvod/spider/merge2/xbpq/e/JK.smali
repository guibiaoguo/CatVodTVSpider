.class public final Lcom/github/catvod/spider/merge2/xbpq/e/JK;
.super Lcom/github/catvod/spider/merge2/xbpq/e/NO;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/NO;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 8

    instance-of p1, p2, Lcom/github/catvod/spider/merge2/xbpq/c/t;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->q0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/u;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/c/t;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->n0()Ljava/lang/String;

    move-result-object v2

    .line 1
    sget-object v3, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->d:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/d/DE;)Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v2

    .line 2
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d()Lcom/github/catvod/spider/merge2/xbpq/c/c;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/github/catvod/spider/merge2/xbpq/c/t;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/FG;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->E(Lcom/github/catvod/spider/merge2/xbpq/c/r;)V

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->L(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_e

    :cond_38
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, ":matchText"

    return-object v0
.end method
