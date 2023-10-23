.class public Lcom/github/catvod/spider/merge1/aQ/dH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/github/catvod/spider/merge1/aQ/qx;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field Eg:[Ljava/lang/String;

.field Ku:[Ljava/lang/String;

.field private W:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 3
    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    return-void
.end method

.method static A(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method static synthetic Eg(Lcom/github/catvod/spider/merge1/aQ/dH;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->r(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic Ku(Lcom/github/catvod/spider/merge1/aQ/dH;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->kc(I)V

    return-void
.end method

.method static Vp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic W(Lcom/github/catvod/spider/merge1/aQ/dH;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    return p0
.end method

.method private d(Ljava/lang/String;)I
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    :goto_4
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    if-ge v0, v1, :cond_16

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method private kc(I)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->Eg(Z)V

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1d

    .line 3
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :cond_1d
    iget p1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    .line 6
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 7
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    aput-object v1, v0, p1

    return-void
.end method

.method private r(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_13

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x2f

    if-ne p1, v2, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private y(I)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->Ku(Z)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    array-length v1, v0

    if-lt v1, p1, :cond_10

    return-void

    :cond_10
    const/4 v2, 0x3

    if-lt v1, v2, :cond_17

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    mul-int/lit8 v2, v1, 0x2

    :cond_17
    if-le p1, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move p1, v2

    .line 4
    :goto_1b
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method E(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->d(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 3
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 4
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    aput-object p1, p2, v0

    goto :goto_1d

    .line 5
    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/dH;->jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/dH;

    :cond_1d
    :goto_1d
    return-void
.end method

.method public Gq(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->d(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    const-string p1, ""

    goto :goto_12

    .line 2
    :cond_a
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method public O2(Lcom/github/catvod/spider/merge1/aQ/Vp;)I
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/dH;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/Vp;->jl()Z

    move-result p1

    const/4 v0, 0x0

    .line 3
    :goto_d
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_45

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    .line 4
    :goto_15
    iget-object v4, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_43

    .line 5
    aget-object v5, v4, v3

    if-nez v5, :cond_1f

    goto :goto_43

    :cond_1f
    if-eqz p1, :cond_2b

    .line 6
    aget-object v5, v4, v1

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    :cond_2b
    if-nez p1, :cond_40

    iget-object v4, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    aget-object v5, v4, v1

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    :cond_39
    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-direct {p0, v3}, Lcom/github/catvod/spider/merge1/aQ/dH;->kc(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_43
    :goto_43
    move v1, v2

    goto :goto_d

    :cond_45
    return v0
.end method

.method public P(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->d(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public T()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/gx;->Eg()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    :try_start_4
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/Yw;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/Yw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/Yw;->i5()Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/catvod/spider/merge1/aQ/dH;->f(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_17

    .line 3
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->o(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_17
    move-exception v0

    .line 4
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/Cc;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/Cc;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public Tr(Lcom/github/catvod/spider/merge1/aQ/qx;)Lcom/github/catvod/spider/merge1/aQ/dH;
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/qx;->Ku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/catvod/spider/merge1/aQ/dH;->lB(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/dH;

    .line 3
    iput-object p0, p1, Lcom/github/catvod/spider/merge1/aQ/qx;->jl:Lcom/github/catvod/spider/merge1/aQ/dH;

    return-object p0
.end method

.method public X(Lcom/github/catvod/spider/merge1/aQ/dH;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    iget v1, p1, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->y(I)V

    .line 3
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/qx;

    .line 4
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->Tr(Lcom/github/catvod/spider/merge1/aQ/qx;)Lcom/github/catvod/spider/merge1/aQ/dH;

    goto :goto_13

    :cond_23
    return-void
.end method

.method public cG()Lcom/github/catvod/spider/merge1/aQ/dH;
    .registers 4

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/dH;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_23

    .line 2
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    iput v1, v0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    return-object v0

    :catch_23
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/dH;->cG()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v0

    return-object v0
.end method

.method public cs()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    if-ge v0, v1, :cond_12

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/github/catvod/spider/merge1/aQ/KC;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    .line 1
    const-class v1, Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_2d

    .line 2
    :cond_10
    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/dH;

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    iget v2, p1, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    if-eq v1, v2, :cond_19

    return v0

    .line 4
    :cond_19
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    iget-object v2, p1, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v0

    .line 5
    :cond_24
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2d
    :goto_2d
    return v0
.end method

.method final f(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    .registers 13

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_41

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge1/aQ/dH;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_3e

    .line 3
    :cond_10
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 4
    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/16 v4, 0x20

    .line 5
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 6
    invoke-static {v2, v3, p2}, Lcom/github/catvod/spider/merge1/aQ/qx;->cG(Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "=\""

    .line 7
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-nez v3, :cond_30

    const-string v3, ""

    :cond_30
    move-object v5, v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v6, p2

    .line 8
    invoke-static/range {v4 .. v9}, Lcom/github/catvod/spider/merge1/aQ/Y5;->X(Ljava/lang/Appendable;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;ZZZ)V

    const/16 v2, 0x22

    .line 9
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_41
    return-void
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/aQ/qx;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_8
    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    if-ge v1, v2, :cond_2a

    .line 3
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge1/aQ/dH;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_27

    .line 4
    :cond_17
    new-instance v2, Lcom/github/catvod/spider/merge1/aQ/qx;

    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4, p0}, Lcom/github/catvod/spider/merge1/aQ/qx;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6
    :cond_2a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/github/catvod/spider/merge1/aQ/qx;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge1/aQ/dH$DK;-><init>(Lcom/github/catvod/spider/merge1/aQ/dH;)V

    return-object v0
.end method

.method public jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/dH;
    .registers 5
    .param p2  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->y(I)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    aput-object p1, v0, v1

    .line 3
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    return-object p0
.end method

.method public lB(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/dH;
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->mw(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 3
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    aput-object p2, p1, v0

    goto :goto_12

    .line 4
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/dH;->jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/dH;

    :goto_12
    return-object p0
.end method

.method mw(Ljava/lang/String;)I
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    :goto_4
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    if-ge v0, v1, :cond_16

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method public nN(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->mw(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    const-string p1, ""

    goto :goto_12

    .line 2
    :cond_a
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_12
    return-object p1
.end method

.method public o(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->mw(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public size()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->W:I

    if-ge v0, v2, :cond_15

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge1/aQ/dH;->r(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    add-int/lit8 v1, v1, 0x1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/dH;->T()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
