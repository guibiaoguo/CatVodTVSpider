.class public final Lcom/github/catvod/spider/merge2/xbpq/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/github/catvod/spider/merge2/xbpq/e/NO;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Lcom/github/catvod/spider/merge2/xbpq/e/g;
    .registers 4

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/e/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/e/g;-><init>()V

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/a;

    invoke-direct {v1, p1, v0, p0}, Lcom/github/catvod/spider/merge2/xbpq/e/a;-><init>(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/e/g;Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V

    invoke-static {v1, p1}, Lcom/github/catvod/spider/merge2/xbpq/a/u;->c(Lcom/github/catvod/spider/merge2/xbpq/e/OP;Lcom/github/catvod/spider/merge2/xbpq/c/r;)V

    return-object v0
.end method

.method public static b(Lcom/github/catvod/spider/merge2/xbpq/e/NO;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 10

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/e/b;

    invoke-direct {v0, p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/e/b;-><init>(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V

    const/4 p0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_8
    if-eqz v1, :cond_54

    .line 1
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/b;->b(Lcom/github/catvod/spider/merge2/xbpq/c/r;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_12

    goto :goto_54

    :cond_12
    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->h()I

    move-result v5

    if-lez v5, :cond_22

    invoke-virtual {v1, p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->g(I)Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_22
    :goto_22
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->s()Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-nez v5, :cond_40

    if-gtz v2, :cond_2d

    goto :goto_40

    :cond_2d
    if-eq v3, v4, :cond_31

    if-ne v3, v7, :cond_32

    :cond_31
    const/4 v3, 0x1

    :cond_32
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->A()Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v6, :cond_3d

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->C()V

    :cond_3d
    move-object v1, v5

    const/4 v3, 0x1

    goto :goto_22

    :cond_40
    :goto_40
    if-eq v3, v4, :cond_46

    if-ne v3, v7, :cond_45

    goto :goto_46

    :cond_45
    move v4, v3

    :cond_46
    :goto_46
    if-ne v1, p1, :cond_49

    goto :goto_54

    :cond_49
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->s()Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v3

    if-ne v4, v6, :cond_52

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->C()V

    :cond_52
    move-object v1, v3

    goto :goto_8

    .line 2
    :cond_54
    :goto_54
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/e/b;->a(Lcom/github/catvod/spider/merge2/xbpq/e/b;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p0

    return-object p0
.end method
