.class final enum Lcom/github/catvod/spider/merge1/aQ/rx$Xx;
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

.method private nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/HW;)Z
    .registers 4

    const-string v0, "head"

    .line 1
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/HW;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method O2(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 9

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/rx;->W(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->W()Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->z(Lcom/github/catvod/spider/merge1/aQ/lK$c;)V

    return v1

    .line 3
    :cond_f
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx$d;->W:[I

    iget-object v2, p1, Lcom/github/catvod/spider/merge1/aQ/lK;->W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_ef

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_eb

    const/4 v2, 0x3

    const-string v4, "head"

    if-eq v0, v2, :cond_55

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2c

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$Xx;->nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/HW;)Z

    move-result p1

    return p1

    .line 5
    :cond_2c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->jl()Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 8
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->l()Lcom/github/catvod/spider/merge1/aQ/li;

    .line 9
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/rx;->i:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto/16 :goto_f6

    .line 10
    :cond_44
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/rx$R;->Ku:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$Xx;->nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/HW;)Z

    move-result p1

    return p1

    .line 12
    :cond_51
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v3

    .line 13
    :cond_55
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->X()Lcom/github/catvod/spider/merge1/aQ/lK$G;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v2

    const-string v5, "html"

    .line 15
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 16
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {v0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx;->O2(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result p1

    return p1

    .line 17
    :cond_6c
    sget-object v5, Lcom/github/catvod/spider/merge1/aQ/rx$R;->W:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 18
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->s(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    const-string v0, "base"

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    const-string v0, "href"

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 20
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->ft(Lcom/github/catvod/spider/merge1/aQ/li;)V

    goto :goto_f6

    :cond_8c
    const-string v5, "meta"

    .line 21
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 22
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->s(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_f6

    :cond_98
    const-string v5, "title"

    .line 23
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 24
    invoke-static {v0, p2}, Lcom/github/catvod/spider/merge1/aQ/rx;->Eg(Lcom/github/catvod/spider/merge1/aQ/lK$G;Lcom/github/catvod/spider/merge1/aQ/iL;)V

    goto :goto_f6

    .line 25
    :cond_a4
    sget-object v5, Lcom/github/catvod/spider/merge1/aQ/rx$R;->Eg:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 26
    invoke-static {v0, p2}, Lcom/github/catvod/spider/merge1/aQ/rx;->Ku(Lcom/github/catvod/spider/merge1/aQ/lK$G;Lcom/github/catvod/spider/merge1/aQ/iL;)V

    goto :goto_f6

    :cond_b0
    const-string v5, "noscript"

    .line 27
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 28
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 29
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/rx;->X:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_f6

    :cond_c1
    const-string v5, "script"

    .line 30
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 31
    iget-object p1, p2, Lcom/github/catvod/spider/merge1/aQ/HW;->Ku:Lcom/github/catvod/spider/merge1/aQ/WL;

    sget-object v2, Lcom/github/catvod/spider/merge1/aQ/n6;->i:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, v2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 32
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->fI()V

    .line 33
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/rx;->A:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 34
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_f6

    .line 35
    :cond_dc
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 36
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v3

    .line 37
    :cond_e6
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$Xx;->nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/HW;)Z

    move-result p1

    return p1

    .line 38
    :cond_eb
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v3

    .line 39
    :cond_ef
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->Eg()Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->c(Lcom/github/catvod/spider/merge1/aQ/lK$AA;)V

    :cond_f6
    :goto_f6
    return v1
.end method
