.class abstract Lcom/github/catvod/spider/merge1/aQ/dl;
.super Lcom/github/catvod/spider/merge1/aQ/iV;
.source "SourceFile"


# instance fields
.field jl:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;-><init>()V

    return-void
.end method

.method private s()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;->mw()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dl;->jl:Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/aQ/dH;-><init>()V

    .line 4
    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dl;->jl:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    .line 5
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->cs()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->lB(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/dH;

    :cond_1a
    return-void
.end method


# virtual methods
.method protected bridge synthetic Gq(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/dl;->c(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/dl;

    move-result-object p1

    return-object p1
.end method

.method public Ku(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;->mw()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->cs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/dl;->jl:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_1a

    :cond_18
    const-string p1, ""

    :goto_1a
    return-object p1

    .line 4
    :cond_1b
    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public P()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 1

    return-object p0
.end method

.method protected T()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/aQ/iV;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/iV;->W:Ljava/util/List;

    return-object v0
.end method

.method public W(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;->s()V

    .line 2
    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final X()Lcom/github/catvod/spider/merge1/aQ/dH;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;->s()V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dl;->jl:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/dH;

    return-object v0
.end method

.method protected c(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/dl;
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->Gq(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/dl;

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;->mw()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dl;->jl:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->cG()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v0

    iput-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/dl;->jl:Ljava/lang/Object;

    :cond_16
    return-object p1
.end method

.method public cG()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->z0()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, ""

    :goto_11
    return-object v0
.end method

.method public jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;->mw()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->cs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    iput-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/dl;->jl:Ljava/lang/Object;

    goto :goto_19

    .line 3
    :cond_13
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;->s()V

    .line 4
    invoke-super {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/iV;->jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/iV;

    :goto_19
    return-object p0
.end method

.method protected final mw()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dl;->jl:Ljava/lang/Object;

    instance-of v0, v0, Lcom/github/catvod/spider/merge1/aQ/dH;

    return v0
.end method

.method protected o(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method z()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->cs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/dl;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
