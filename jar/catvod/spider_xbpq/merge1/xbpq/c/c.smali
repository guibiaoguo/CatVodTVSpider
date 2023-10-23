.class public final Lcom/github/catvod/spider/merge1/xbpq/c/c;
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
        "Lcom/github/catvod/spider/merge1/xbpq/c/a;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private c:I

.field d:[Ljava/lang/String;

.field e:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/github/catvod/spider/merge1/xbpq/c/c;)I
    .registers 1

    iget p0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    return p0
.end method

.method static synthetic b(Lcom/github/catvod/spider/merge1/xbpq/c/c;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->q(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/github/catvod/spider/merge1/xbpq/c/c;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->v(I)V

    return-void
.end method

.method private g(I)V
    .registers 5

    iget v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->e(Z)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    array-length v1, v0

    if-lt v1, p1, :cond_10

    return-void

    :cond_10
    const/4 v2, 0x3

    if-lt v1, v2, :cond_17

    iget v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    mul-int/lit8 v2, v1, 0x2

    :cond_17
    if-le p1, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move p1, v2

    :goto_1b
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    return-void
.end method

.method private p(Ljava/lang/String;)I
    .registers 4

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->l(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

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

.method private q(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_13

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

.method private v(I)V
    .registers 6

    iget v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->d(Z)V

    iget v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1d

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    iget p1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    aput-object v1, v0, p1

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->h()Lcom/github/catvod/spider/merge1/xbpq/c/c;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/xbpq/c/c;
    .registers 5

    iget v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->g(I)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    return-object p0
.end method

.method public final e(Lcom/github/catvod/spider/merge1/xbpq/c/c;)V
    .registers 7

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    iget v1, p1, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->g(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_11
    iget v2, p1, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    if-ge v1, v2, :cond_22

    .line 2
    iget-object v2, p1, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 3
    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 4
    :cond_22
    iget v2, p1, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    if-ge v1, v2, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    if-eqz v2, :cond_3e

    .line 5
    new-instance v2, Lcom/github/catvod/spider/merge1/xbpq/c/a;

    iget-object v3, p1, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p1, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge1/xbpq/c/c;)V

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->s(Lcom/github/catvod/spider/merge1/xbpq/c/a;)Lcom/github/catvod/spider/merge1/xbpq/c/c;

    goto :goto_11

    :cond_3e
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    const-class v1, Lcom/github/catvod/spider/merge1/xbpq/c/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_2d

    :cond_10
    check-cast p1, Lcom/github/catvod/spider/merge1/xbpq/c/c;

    iget v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    iget v2, p1, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    if-eq v1, v2, :cond_19

    return v0

    :cond_19
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    iget-object v2, p1, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v0

    :cond_24
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2d
    :goto_2d
    return v0
.end method

.method public final f()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/xbpq/c/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    if-ge v1, v2, :cond_2a

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_27

    :cond_17
    new-instance v2, Lcom/github/catvod/spider/merge1/xbpq/c/a;

    iget-object v3, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4, p0}, Lcom/github/catvod/spider/merge1/xbpq/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge1/xbpq/c/c;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/github/catvod/spider/merge1/xbpq/c/c;
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/xbpq/c/c;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_23

    iget v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    iput v1, v0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    return-object v0

    :catch_23
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(Lcom/github/catvod/spider/merge1/xbpq/d/D;)I
    .registers 9

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_c

    return v2

    .line 2
    :cond_c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/D;->d()Z

    move-result p1

    const/4 v0, 0x0

    :goto_11
    iget-object v3, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_48

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    :goto_19
    iget-object v5, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_46

    aget-object v6, v5, v4

    if-nez v6, :cond_23

    goto :goto_46

    :cond_23
    if-eqz p1, :cond_2f

    aget-object v6, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    :cond_2f
    if-nez p1, :cond_44

    iget-object v5, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    aget-object v6, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v4}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->v(I)V

    add-int/lit8 v4, v4, -0x1

    :cond_44
    add-int/2addr v4, v1

    goto :goto_19

    :cond_46
    :goto_46
    move v2, v3

    goto :goto_11

    :cond_48
    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/github/catvod/spider/merge1/xbpq/c/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/github/catvod/spider/merge1/xbpq/c/b;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge1/xbpq/c/b;-><init>(Lcom/github/catvod/spider/merge1/xbpq/c/c;)V

    return-object v0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->o(Ljava/lang/String;)I

    move-result p1

    const-string v0, ""

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    goto :goto_12

    :cond_a
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    aget-object p1, v1, p1

    if-nez p1, :cond_11

    goto :goto_12

    :cond_11
    move-object v0, p1

    :goto_12
    return-object v0
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->p(Ljava/lang/String;)I

    move-result p1

    const-string v0, ""

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    goto :goto_12

    :cond_a
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    aget-object p1, v1, p1

    if-nez p1, :cond_11

    goto :goto_12

    :cond_11
    move-object v0, p1

    :goto_12
    return-object v0
.end method

.method public final l(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->o(Ljava/lang/String;)I

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

.method public final m(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->p(Ljava/lang/String;)I

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

.method final n(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/xbpq/c/g;)V
    .registers 13

    iget v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_41

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_3e

    :cond_10
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/16 v4, 0x20

    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-static {v2, v3, p2}, Lcom/github/catvod/spider/merge1/xbpq/c/a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge1/xbpq/c/g;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string v2, "=\""

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

    invoke-static/range {v4 .. v9}, Lcom/github/catvod/spider/merge1/xbpq/c/n;->d(Ljava/lang/Appendable;Ljava/lang/String;Lcom/github/catvod/spider/merge1/xbpq/c/g;ZZZ)V

    const/16 v2, 0x22

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_41
    return-void
.end method

.method final o(Ljava/lang/String;)I
    .registers 4

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->l(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    if-ge v0, v1, :cond_16

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

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

.method public final r()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public final s(Lcom/github/catvod/spider/merge1/xbpq/c/a;)Lcom/github/catvod/spider/merge1/xbpq/c/c;
    .registers 4

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/xbpq/c/c;

    iput-object p0, p1, Lcom/github/catvod/spider/merge1/xbpq/c/a;->e:Lcom/github/catvod/spider/merge1/xbpq/c/c;

    return-object p0
.end method

.method public final size()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->c:I

    if-ge v0, v2, :cond_15

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->q(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    add-int/lit8 v1, v1, 0x1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_15
    return v1
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/xbpq/c/c;
    .registers 5

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->l(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->o(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-object p1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    aput-object p2, p1, v0

    goto :goto_12

    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/xbpq/c/c;

    :goto_12
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/github/catvod/spider/merge1/xbpq/b/j;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    :try_start_4
    new-instance v1, Lcom/github/catvod/spider/merge1/xbpq/c/h;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/xbpq/c/h;-><init>()V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/xbpq/c/h;->s0()Lcom/github/catvod/spider/merge1/xbpq/c/g;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->n(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/xbpq/c/g;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_15

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/xbpq/b/j;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_15
    move-exception v0

    new-instance v1, Lcom/github/catvod/spider/merge1/xbpq/Y/a;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge1/xbpq/Y/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final u(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->p(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->e:[Ljava/lang/String;

    aput-object p2, v1, v0

    iget-object p2, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    iget-object p2, p0, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d:[Ljava/lang/String;

    aput-object p1, p2, v0

    goto :goto_1d

    :cond_1a
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/xbpq/c/c;

    :cond_1d
    :goto_1d
    return-void
.end method
