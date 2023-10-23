.class public final Lcom/github/catvod/spider/merge2/xbpq/d/PQ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    return-void
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v2, v1, :cond_1c

    aget-char v4, p0, v2

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_15

    if-ne v3, v5, :cond_18

    :cond_15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_18
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_b

    :cond_1c
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(CC)Ljava/lang/String;
    .registers 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :cond_7
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->i()Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_46

    :cond_e
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->c()C

    move-result v7

    const/16 v8, 0x5c

    if-eq v1, v8, :cond_3d

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

    if-ne v5, v0, :cond_3d

    iget v5, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    goto :goto_3d

    :cond_39
    if-ne v7, p2, :cond_3d

    add-int/lit8 v3, v3, -0x1

    :cond_3d
    :goto_3d
    if-lez v3, :cond_43

    if-eqz v1, :cond_43

    iget v6, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    :cond_43
    move v1, v7

    :cond_44
    :goto_44
    if-gtz v3, :cond_7

    :goto_46
    if-ltz v6, :cond_4f

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_51

    :cond_4f
    const-string p1, ""

    :goto_51
    if-gtz v3, :cond_54

    return-object p1

    :cond_54
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Did not find balanced marker at \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_70

    :goto_6f
    throw p1

    :goto_70
    goto :goto_6f
.end method

.method public final b()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    const-string v2, ")"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    iget v3, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    goto :goto_23

    :cond_1f
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->n()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_23
    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    return-object v0
.end method

.method public final c()C
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_19

    add-int/2addr v1, p1

    .line 2
    iput v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    return-void

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue not long enough to consume sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue did not match expected sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()Ljava/lang/String;
    .registers 10

    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    :goto_2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->i()Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->m()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_33

    const/4 v1, 0x2

    new-array v3, v1, [C

    fill-array-data v3, :array_42

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->i()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1d

    goto :goto_31

    :cond_1d
    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v1, :cond_31

    aget-char v6, v3, v4

    iget-object v7, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    iget v8, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_2e

    const/4 v5, 0x1

    goto :goto_31

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_31
    :goto_31
    if-eqz v5, :cond_39

    .line 2
    :cond_33
    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    goto :goto_2

    :cond_39
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_42
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method

.method public final f()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    :goto_2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->i()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->m()Z

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

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->l([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    :cond_2b
    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    goto :goto_2

    :cond_31
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs g([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    :goto_2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->i()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->l([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    goto :goto_2

    :cond_15
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h()Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :goto_3
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->i()Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    iget v4, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->d(I)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    if-eqz v3, :cond_23

    .line 2
    iget v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    const/4 v2, 0x1

    goto :goto_3

    :cond_23
    return v2
.end method

.method public final i()Z
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public final j(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public final k(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public final varargs l([Ljava/lang/String;)Z
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

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

.method public final m()Z
    .registers 3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->i()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

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

.method public final n()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a:Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
