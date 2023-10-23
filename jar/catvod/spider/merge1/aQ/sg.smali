.class public Lcom/github/catvod/spider/merge1/aQ/sg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/catvod/spider/merge1/aQ/sg$DK;
    }
.end annotation


# direct methods
.method public static Eg(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/nM;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/QL;->y(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->r(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/u5;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/sg;->Ku(Lcom/github/catvod/spider/merge1/aQ/u5;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object p0

    return-object p0
.end method

.method public static Ku(Lcom/github/catvod/spider/merge1/aQ/u5;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/nM;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 3
    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/Lc;->W(Lcom/github/catvod/spider/merge1/aQ/u5;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object p0

    return-object p0
.end method

.method public static W(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/github/catvod/spider/merge1/aQ/nM;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            ">;)",
            "Lcom/github/catvod/spider/merge1/aQ/nM;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/QL;->y(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 3
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->r(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/u5;

    move-result-object p0

    .line 4
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/nM;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/nM;-><init>()V

    .line 5
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 7
    invoke-static {p0, v2}, Lcom/github/catvod/spider/merge1/aQ/sg;->Ku(Lcom/github/catvod/spider/merge1/aQ/u5;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 9
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2c

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_44
    return-object v0
.end method

.method public static jl(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/QL;->y(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->r(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/u5;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/Lc;->Eg(Lcom/github/catvod/spider/merge1/aQ/u5;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p0

    return-object p0
.end method
