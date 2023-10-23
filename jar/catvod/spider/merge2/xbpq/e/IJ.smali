.class public final Lcom/github/catvod/spider/merge2/xbpq/e/IJ;
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

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_36

    instance-of v2, p1, Lcom/github/catvod/spider/merge2/xbpq/c/h;

    if-eqz v2, :cond_d

    goto :goto_36

    :cond_d
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->R()Lcom/github/catvod/spider/merge2/xbpq/e/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :cond_16
    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->m0()Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v3

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->m0()Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_33
    if-ne v2, v1, :cond_36

    const/4 v0, 0x1

    :cond_36
    :goto_36
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, ":only-of-type"

    return-object v0
.end method
