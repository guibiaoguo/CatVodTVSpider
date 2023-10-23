.class final enum Lcom/github/catvod/spider/merge1/aQ/rx$j;
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

.method private nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 4

    const-string v0, "body"

    .line 1
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/HW;->cG(Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    .line 3
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method O2(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/rx;->W(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->W()Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->z(Lcom/github/catvod/spider/merge1/aQ/lK$c;)V

    goto/16 :goto_b8

    .line 3
    :cond_f
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->A()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->Eg()Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->c(Lcom/github/catvod/spider/merge1/aQ/lK$AA;)V

    goto/16 :goto_b8

    .line 5
    :cond_1e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->cG()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 6
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto/16 :goto_b8

    .line 7
    :cond_29
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->Gq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_97

    .line 8
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->X()Lcom/github/catvod/spider/merge1/aQ/lK$G;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 11
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->zK(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/rx;)Z

    move-result p1

    return p1

    :cond_47
    const-string v3, "body"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 13
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 14
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    .line 15
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_b8

    :cond_5b
    const-string v3, "frameset"

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 17
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 18
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/rx;->Vp:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_b8

    .line 19
    :cond_6c
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx$R;->y:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 20
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 21
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->et()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    .line 22
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Db(Lcom/github/catvod/spider/merge1/aQ/li;)V

    .line 23
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/rx;->jl:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->zK(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/rx;)Z

    .line 24
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->B2(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    goto :goto_b8

    :cond_87
    const-string v0, "head"

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 26
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v1

    .line 27
    :cond_93
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$j;->nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    goto :goto_b8

    .line 28
    :cond_97
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->nN()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 29
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->jl()Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/github/catvod/spider/merge1/aQ/rx$R;->jl:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$j;->nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    goto :goto_b8

    .line 31
    :cond_b1
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v1

    .line 32
    :cond_b5
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$j;->nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    :goto_b8
    const/4 p1, 0x1

    return p1
.end method
