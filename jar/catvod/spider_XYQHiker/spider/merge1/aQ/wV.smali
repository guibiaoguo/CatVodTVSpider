.class public Lcom/github/catvod/spider/merge1/aQ/wV;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Eg:I

.field private W:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    .line 3
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    return-void
.end method

.method public static Vp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/gx;->Eg()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v2, v1, :cond_20

    aget-char v4, p0, v2

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_19

    if-ne v3, v5, :cond_1c

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 4
    :cond_19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1c
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_b

    .line 5
    :cond_20
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->o(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public varargs A([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    .line 2
    :goto_2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->O2()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/wV;->P([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    goto :goto_2

    .line 4
    :cond_15
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Eg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/wV;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    return-object v0
.end method

.method public Gq(Ljava/lang/String;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public Ku()C
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public O2()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->d()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public varargs P([Ljava/lang/String;)Z
    .registers 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {p0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public T()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->O2()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->cG(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public W(CC)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 1
    :cond_7
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->O2()Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_46

    .line 2
    :cond_e
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->Ku()C

    move-result v7

    const/16 v8, 0x5c

    if-eq v0, v8, :cond_3d

    const/16 v8, 0x27

    if-ne v7, v8, :cond_21

    if-eq v7, p1, :cond_21

    if-nez v2, :cond_21

    xor-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_21
    const/16 v8, 0x22

    if-ne v7, v8, :cond_2b

    if-eq v7, p1, :cond_2b

    if-nez v4, :cond_2b

    xor-int/lit8 v2, v2, 0x1

    :cond_2b
    :goto_2b
    if-nez v4, :cond_44

    if-eqz v2, :cond_30

    goto :goto_44

    :cond_30
    if-ne v7, p1, :cond_39

    add-int/lit8 v3, v3, 0x1

    if-ne v5, v1, :cond_3d

    .line 3
    iget v5, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    goto :goto_3d

    :cond_39
    if-ne v7, p2, :cond_3d

    add-int/lit8 v3, v3, -0x1

    :cond_3d
    :goto_3d
    if-lez v3, :cond_43

    if-eqz v0, :cond_43

    .line 4
    iget v6, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    :cond_43
    move v0, v7

    :cond_44
    :goto_44
    if-gtz v3, :cond_7

    :goto_46
    if-ltz v6, :cond_4f

    .line 5
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_51

    :cond_4f
    const-string p1, ""

    :goto_51
    if-lez v3, :cond_6c

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Did not find balanced marker at \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/github/catvod/spider/merge1/aQ/QL;->W(Ljava/lang/String;)V

    :cond_6c
    return-object p1
.end method

.method public X()Ljava/lang/String;
    .registers 4

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    .line 2
    :goto_2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->O2()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->f()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_2a

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->o([C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3
    :cond_1a
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    goto :goto_2

    .line 4
    :cond_21
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_2a
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method

.method public cG()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :goto_2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->T()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    const/4 v1, 0x1

    goto :goto_2

    :cond_f
    return v1
.end method

.method public f()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->O2()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    .line 2
    :goto_2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->O2()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->f()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2b

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "*|"

    aput-object v4, v1, v3

    const-string v3, "|"

    aput-object v3, v1, v2

    const/4 v3, 0x2

    const-string v4, "_"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "-"

    aput-object v4, v1, v3

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->P([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3
    :cond_2b
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    goto :goto_2

    .line 4
    :cond_31
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jl(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 3
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->d()I

    move-result v0

    if-gt p1, v0, :cond_16

    .line 4
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    return-void

    .line 5
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue not long enough to consume sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue did not match expected sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mw()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    return-object v0
.end method

.method public nN(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public varargs o([C)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->O2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    array-length v0, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1d

    aget-char v3, p1, v2

    .line 3
    iget-object v4, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    iget v5, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1d
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1d

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->W:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg:I

    return-object p1

    .line 4
    :cond_1d
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wV;->mw()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
