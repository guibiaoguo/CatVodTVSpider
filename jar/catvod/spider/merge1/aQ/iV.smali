.class public abstract Lcom/github/catvod/spider/merge1/aQ/iV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/catvod/spider/merge1/aQ/iV$DK;
    }
.end annotation


# static fields
.field static final W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/aQ/iV;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field Eg:Lcom/github/catvod/spider/merge1/aQ/iV;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field Ku:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/iV;->W:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bq(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->T()Ljava/util/List;

    move-result-object v0

    .line 2
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_16

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/iV;

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->Sp(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method


# virtual methods
.method public A(I)Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->T()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/iV;

    return-object p1
.end method

.method public Cv()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/aQ/iV;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    if-nez v0, :cond_9

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->T()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/iV;

    if-eq v2, p0, :cond_1c

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2e
    return-object v1
.end method

.method protected E(Ljava/lang/Appendable;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/iV$DK;

    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/m0;->W(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/github/catvod/spider/merge1/aQ/iV$DK;-><init>(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)V

    invoke-static {v0, p0}, Lcom/github/catvod/spider/merge1/aQ/A3;->Eg(Lcom/github/catvod/spider/merge1/aQ/lj;Lcom/github/catvod/spider/merge1/aQ/iV;)V

    return-void
.end method

.method protected varargs Eg(I[Lcom/github/catvod/spider/merge1/aQ/iV;)V
    .registers 10

    .line 1
    invoke-static {p2}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    array-length v0, p2

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->T()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/iV;->z0()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 5
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/iV;->cG()I

    move-result v3

    array-length v4, p2

    if-ne v3, v4, :cond_4c

    .line 6
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/iV;->T()Ljava/util/List;

    move-result-object v3

    .line 7
    array-length v4, p2

    :goto_20
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_30

    .line 8
    aget-object v4, p2, v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v4, v6, :cond_2e

    const/4 v3, 0x0

    goto :goto_31

    :cond_2e
    move v4, v5

    goto :goto_20

    :cond_30
    const/4 v3, 0x1

    :goto_31
    if-eqz v3, :cond_4c

    .line 9
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/iV;->P()Lcom/github/catvod/spider/merge1/aQ/iV;

    .line 10
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 11
    array-length v0, p2

    :goto_3e
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_48

    .line 12
    aget-object v0, p2, v1

    iput-object p0, v0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    move v0, v1

    goto :goto_3e

    .line 13
    :cond_48
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->bq(I)V

    return-void

    .line 14
    :cond_4c
    invoke-static {p2}, Lcom/github/catvod/spider/merge1/aQ/QL;->X([Ljava/lang/Object;)V

    .line 15
    array-length v2, p2

    :goto_50
    if-ge v1, v2, :cond_5a

    aget-object v3, p2, v1

    .line 16
    invoke-virtual {p0, v3}, Lcom/github/catvod/spider/merge1/aQ/iV;->j(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 17
    :cond_5a
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 18
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->bq(I)V

    return-void
.end method

.method public GL()Lcom/github/catvod/spider/merge1/aQ/Yw;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->RV()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/github/catvod/spider/merge1/aQ/Yw;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/Yw;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method protected Gq(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 3
    .param p1  # Lcom/github/catvod/spider/merge1/aQ/iV;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/iV;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_11

    .line 2
    iput-object p1, v0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_e

    .line 3
    :cond_c
    iget p1, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku:I

    :goto_e
    iput p1, v0, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku:I

    return-object v0

    :catch_11
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public JW(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->o(Ljava/lang/String;)V

    return-void
.end method

.method protected K(Lcom/github/catvod/spider/merge1/aQ/iV;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->x(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    .line 4
    :cond_a
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    return-void
.end method

.method public Ku(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->mw()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_c

    return-object v1

    .line 3
    :cond_c
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->Gq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    return-object v0

    :cond_1b
    const-string v0, "abs:"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2d
    return-object v1
.end method

.method public O2()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/aQ/iV;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->cG()I

    move-result v0

    if-nez v0, :cond_9

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/iV;->W:Ljava/util/List;

    return-object v0

    .line 3
    :cond_9
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->T()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract P()Lcom/github/catvod/spider/merge1/aQ/iV;
.end method

.method public RV()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 3

    move-object v0, p0

    .line 1
    :goto_1
    iget-object v1, v0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method protected Sp(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku:I

    return-void
.end method

.method protected abstract T()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/aQ/iV;",
            ">;"
        }
    .end annotation
.end method

.method public Tr()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/gx;->Eg()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->E(Ljava/lang/Appendable;)V

    .line 3
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->o(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected UO(Lcom/github/catvod/spider/merge1/aQ/iV;Lcom/github/catvod/spider/merge1/aQ/iV;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->Ku(Z)V

    .line 2
    invoke-static {p2}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p2, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    if-eqz v0, :cond_14

    .line 4
    invoke-virtual {v0, p2}, Lcom/github/catvod/spider/merge1/aQ/iV;->x(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    .line 5
    :cond_14
    iget v0, p1, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku:I

    .line 6
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->T()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p0, p2, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    .line 8
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->Sp(I)V

    const/4 p2, 0x0

    .line 9
    iput-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    return-void
.end method

.method public V(Lcom/github/catvod/spider/merge1/aQ/iV;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    invoke-virtual {v0, p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->UO(Lcom/github/catvod/spider/merge1/aQ/iV;Lcom/github/catvod/spider/merge1/aQ/iV;)V

    return-void
.end method

.method protected Vp(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    .registers 5

    const/16 v0, 0xa

    .line 1
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->i()I

    move-result p3

    mul-int p2, p2, p3

    invoke-static {p2}, Lcom/github/catvod/spider/merge1/aQ/gx;->Gq(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public W(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->y(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->mw()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->P(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_25

    .line 3
    :cond_14
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->Gq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/gx;->P(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_25
    :goto_25
    const-string p1, ""

    return-object p1
.end method

.method public Wa()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku:I

    if-lez v2, :cond_19

    .line 3
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->T()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/iV;

    return-object v0

    :cond_19
    return-object v1
.end method

.method public abstract X()Lcom/github/catvod/spider/merge1/aQ/dH;
.end method

.method public abstract cG()I
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->nN()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v0

    return-object v0
.end method

.method public abstract cs()Ljava/lang/String;
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public final et()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    return-object v0
.end method

.method abstract ey(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
.end method

.method public f(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->mw()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    const-string v0, "abs:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->P(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_2e
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->P(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public gK()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku:I

    return v0
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method protected j(Lcom/github/catvod/spider/merge1/aQ/iV;)V
    .registers 2

    .line 1
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->K(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    return-void
.end method

.method public jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/m0;->Eg(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/dz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/dz;->i()Lcom/github/catvod/spider/merge1/aQ/Vp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/Vp;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/dH;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method abstract kc(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
.end method

.method lB()V
    .registers 1

    return-void
.end method

.method protected abstract mw()Z
.end method

.method public nK()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->x(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    return-void
.end method

.method public nN()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 8

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->Gq(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_d
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    .line 5
    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/iV;

    .line 6
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/iV;->cG()I

    move-result v3

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_d

    .line 7
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/iV;->T()Ljava/util/List;

    move-result-object v5

    .line 8
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge1/aQ/iV;

    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge1/aQ/iV;->Gq(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v6

    .line 9
    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_37
    return-object v0
.end method

.method protected abstract o(Ljava/lang/String;)V
.end method

.method public r()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->T()Ljava/util/List;

    move-result-object v0

    .line 3
    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku:I

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1b

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/iV;

    return-object v0

    :cond_1b
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected x(Lcom/github/catvod/spider/merge1/aQ/iV;)V
    .registers 4

    .line 1
    iget-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->Ku(Z)V

    .line 2
    iget v0, p1, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku:I

    .line 3
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->T()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->bq(I)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    return-void
.end method

.method public y(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku:I

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/github/catvod/spider/merge1/aQ/iV;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg(I[Lcom/github/catvod/spider/merge1/aQ/iV;)V

    return-object p0
.end method

.method public z0()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    return-object v0
.end method
