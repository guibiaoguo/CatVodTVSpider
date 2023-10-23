.class final enum Lcom/github/catvod/spider/merge1/aQ/rx$DK;
.super Lcom/github/catvod/spider/merge1/aQ/rx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/rx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/github/catvod/spider/merge1/aQ/rx;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/aQ/rx$P;)V

    return-void
.end method


# virtual methods
.method O2(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 9

    .line 1
    iget-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/lK;->W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->X:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2a

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->W()Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$c;->mw()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/rx;->jl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v3

    .line 5
    :cond_1e
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->Wa()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$c;->mw()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2

    .line 6
    :cond_2a
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->Wa()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_95

    .line 7
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->Wa()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {v1}, Lcom/github/catvod/spider/merge1/aQ/rx;->X(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_85

    .line 9
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 10
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/github/catvod/spider/merge1/aQ/rx$R;->et:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 11
    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->Hw(Z)V

    .line 12
    new-instance v4, Lcom/github/catvod/spider/merge1/aQ/lK$c;

    invoke-direct {v4}, Lcom/github/catvod/spider/merge1/aQ/lK$c;-><init>()V

    invoke-virtual {v4, v1}, Lcom/github/catvod/spider/merge1/aQ/lK$c;->f(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object v1

    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, v1, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->zK(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/rx;)Z

    .line 13
    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->Hw(Z)V

    goto :goto_3c

    .line 14
    :cond_76
    new-instance v4, Lcom/github/catvod/spider/merge1/aQ/lK$c;

    invoke-direct {v4}, Lcom/github/catvod/spider/merge1/aQ/lK$c;-><init>()V

    invoke-virtual {v4, v1}, Lcom/github/catvod/spider/merge1/aQ/lK$c;->f(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object v1

    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, v1, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->zK(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/rx;)Z

    goto :goto_3c

    .line 15
    :cond_85
    new-instance v4, Lcom/github/catvod/spider/merge1/aQ/lK$c;

    invoke-direct {v4}, Lcom/github/catvod/spider/merge1/aQ/lK$c;-><init>()V

    invoke-virtual {v4, v1}, Lcom/github/catvod/spider/merge1/aQ/lK$c;->f(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->z(Lcom/github/catvod/spider/merge1/aQ/lK$c;)V

    goto :goto_3c

    .line 16
    :cond_92
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->k()V

    .line 17
    :cond_95
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->n7()Lcom/github/catvod/spider/merge1/aQ/rx;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 18
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1
.end method
