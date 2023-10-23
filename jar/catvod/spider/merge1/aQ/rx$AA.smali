.class final enum Lcom/github/catvod/spider/merge1/aQ/rx$AA;
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

.method private Gq(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 4

    const-string v0, "tbody"

    .line 1
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Sp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "thead"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Sp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "tfoot"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1d
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->f()V

    .line 4
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 5
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1
.end method

.method private nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->cG:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->zK(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/rx;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method O2(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 7

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx$d;->W:[I

    iget-object v1, p1, Lcom/github/catvod/spider/merge1/aQ/lK;->W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$AA;->nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result p1

    return p1

    .line 3
    :cond_15
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->jl()Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/rx$R;->V:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 6
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Sp(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 7
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v2

    .line 8
    :cond_30
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->f()V

    .line 9
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->l()Lcom/github/catvod/spider/merge1/aQ/li;

    .line 10
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/rx;->cG:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_81

    :cond_3c
    const-string v1, "table"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$AA;->Gq(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result p1

    return p1

    .line 13
    :cond_49
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/rx$R;->bq:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 14
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v2

    .line 15
    :cond_55
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$AA;->nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result p1

    return p1

    .line 16
    :cond_5a
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->X()Lcom/github/catvod/spider/merge1/aQ/lK$G;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v1

    const-string v2, "template"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 19
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_81

    :cond_6e
    const-string v2, "tr"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 21
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->f()V

    .line 22
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 23
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/rx;->P:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    :goto_81
    const/4 p1, 0x1

    return p1

    .line 24
    :cond_83
    sget-object v3, Lcom/github/catvod/spider/merge1/aQ/rx$R;->E:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 25
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 26
    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge1/aQ/HW;->cG(Ljava/lang/String;)Z

    .line 27
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1

    .line 28
    :cond_96
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx$R;->Wa:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$AA;->Gq(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result p1

    return p1

    .line 30
    :cond_a3
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$AA;->nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result p1

    return p1
.end method
