.class public final Lcom/github/catvod/spider/merge2/xbpq/a/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/github/catvod/spider/merge2/xbpq/e/OP;Lcom/github/catvod/spider/merge2/xbpq/c/r;)V
    .registers 7

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_3
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->A()Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v3

    invoke-interface {p0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/e/OP;->a(Lcom/github/catvod/spider/merge2/xbpq/c/r;I)V

    if-eqz v3, :cond_1c

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->q()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->H()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->g(I)Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v1

    :cond_1c
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->h()I

    move-result v3

    if-lez v3, :cond_29

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->g(I)Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_29
    :goto_29
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->s()Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v3

    if-nez v3, :cond_3c

    if-gtz v2, :cond_32

    goto :goto_3c

    :cond_32
    invoke-interface {p0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/e/OP;->b(Lcom/github/catvod/spider/merge2/xbpq/c/r;I)V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->A()Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    :cond_3c
    :goto_3c
    invoke-interface {p0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/e/OP;->b(Lcom/github/catvod/spider/merge2/xbpq/c/r;I)V

    if-ne v1, p1, :cond_42

    goto :goto_47

    :cond_42
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->s()Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v1

    goto :goto_3

    :cond_47
    :goto_47
    return-void
.end method
