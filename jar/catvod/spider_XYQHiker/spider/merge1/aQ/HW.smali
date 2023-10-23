.class abstract Lcom/github/catvod/spider/merge1/aQ/HW;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected A:Lcom/github/catvod/spider/merge1/aQ/Vp;

.field Eg:Lcom/github/catvod/spider/merge1/aQ/sJ;

.field Ku:Lcom/github/catvod/spider/merge1/aQ/WL;

.field private O2:Lcom/github/catvod/spider/merge1/aQ/lK$MB;

.field protected W:Lcom/github/catvod/spider/merge1/aQ/dz;

.field protected X:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            ">;"
        }
    .end annotation
.end field

.field private cG:Lcom/github/catvod/spider/merge1/aQ/lK$G;

.field protected i:Ljava/lang/String;

.field protected jl:Lcom/github/catvod/spider/merge1/aQ/Yw;

.field protected y:Lcom/github/catvod/spider/merge1/aQ/lK;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/lK$G;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$G;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->cG:Lcom/github/catvod/spider/merge1/aQ/lK$G;

    .line 3
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$MB;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->O2:Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    return-void
.end method


# virtual methods
.method protected A(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->y:Lcom/github/catvod/spider/merge1/aQ/lK;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->O2:Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    if-ne v0, v1, :cond_14

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$MB;-><init>()V

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->et(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/HW;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1

    .line 3
    :cond_14
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->nK()Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->et(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/HW;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1
.end method

.method abstract Eg()Lcom/github/catvod/spider/merge1/aQ/Vp;
.end method

.method protected Ku(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->W:Lcom/github/catvod/spider/merge1/aQ/dz;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/dz;->W()Lcom/github/catvod/spider/merge1/aQ/d1;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/d1;->W()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/KX;

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->Eg:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->UO()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/github/catvod/spider/merge1/aQ/KX;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method public O2(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->cG:Lcom/github/catvod/spider/merge1/aQ/lK$G;

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->y:Lcom/github/catvod/spider/merge1/aQ/lK;

    if-ne v1, v0, :cond_14

    .line 3
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/lK$G;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$G;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$G;->UO(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)Lcom/github/catvod/spider/merge1/aQ/lK$G;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/HW;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1

    .line 4
    :cond_14
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$G;->nK()Lcom/github/catvod/spider/merge1/aQ/lK$l;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$G;->UO(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)Lcom/github/catvod/spider/merge1/aQ/lK$G;

    .line 6
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/HW;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1
.end method

.method protected W()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method protected abstract X(Ljava/lang/String;)Z
.end method

.method protected cG(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->cG:Lcom/github/catvod/spider/merge1/aQ/lK$G;

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->y:Lcom/github/catvod/spider/merge1/aQ/lK;

    if-ne v1, v0, :cond_14

    .line 3
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/lK$G;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$G;-><init>()V

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->et(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/HW;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1

    .line 4
    :cond_14
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$G;->nK()Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->et(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/HW;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1
.end method

.method i(Ljava/io/Reader;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dz;)Lcom/github/catvod/spider/merge1/aQ/Yw;
    .registers 4
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge1/aQ/HW;->jl(Ljava/io/Reader;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dz;)V

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/HW;->nN()V

    .line 3
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->Eg:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->jl()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->Eg:Lcom/github/catvod/spider/merge1/aQ/sJ;

    .line 5
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->Ku:Lcom/github/catvod/spider/merge1/aQ/WL;

    .line 6
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    .line 7
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->jl:Lcom/github/catvod/spider/merge1/aQ/Yw;

    return-object p1
.end method

.method protected jl(Ljava/io/Reader;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dz;)V
    .registers 5
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    const-string v0, "String input must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->O2(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BaseURI must not be null"

    .line 2
    invoke-static {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->O2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/Yw;

    invoke-direct {v0, p2}, Lcom/github/catvod/spider/merge1/aQ/Yw;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->jl:Lcom/github/catvod/spider/merge1/aQ/Yw;

    .line 5
    invoke-virtual {v0, p3}, Lcom/github/catvod/spider/merge1/aQ/Yw;->GA(Lcom/github/catvod/spider/merge1/aQ/dz;)Lcom/github/catvod/spider/merge1/aQ/Yw;

    .line 6
    iput-object p3, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->W:Lcom/github/catvod/spider/merge1/aQ/dz;

    .line 7
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge1/aQ/dz;->i()Lcom/github/catvod/spider/merge1/aQ/Vp;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->A:Lcom/github/catvod/spider/merge1/aQ/Vp;

    .line 8
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/sJ;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->Eg:Lcom/github/catvod/spider/merge1/aQ/sJ;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->y:Lcom/github/catvod/spider/merge1/aQ/lK;

    .line 10
    new-instance p1, Lcom/github/catvod/spider/merge1/aQ/WL;

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->Eg:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge1/aQ/dz;->W()Lcom/github/catvod/spider/merge1/aQ/d1;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lcom/github/catvod/spider/merge1/aQ/WL;-><init>(Lcom/github/catvod/spider/merge1/aQ/sJ;Lcom/github/catvod/spider/merge1/aQ/d1;)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->Ku:Lcom/github/catvod/spider/merge1/aQ/WL;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x20

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    .line 12
    iput-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->i:Ljava/lang/String;

    return-void
.end method

.method protected nN()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->Ku:Lcom/github/catvod/spider/merge1/aQ/WL;

    .line 2
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->i:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    .line 3
    :cond_4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/WL;->lB()Lcom/github/catvod/spider/merge1/aQ/lK;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge1/aQ/HW;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    .line 5
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/lK;->o()Lcom/github/catvod/spider/merge1/aQ/lK;

    .line 6
    iget-object v2, v2, Lcom/github/catvod/spider/merge1/aQ/lK;->W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    if-ne v2, v1, :cond_4

    return-void
.end method

.method protected abstract y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z
.end method
