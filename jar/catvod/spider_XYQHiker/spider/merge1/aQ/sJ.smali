.class public final Lcom/github/catvod/spider/merge1/aQ/sJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:[Ljava/lang/String;

.field private Eg:Ljava/io/Reader;

.field private Ku:I

.field private W:[C

.field private X:I

.field private cG:Z

.field private i:I

.field private jl:I

.field private y:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    const v0, 0x8000

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->y:I

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->Ku(Z)V

    .line 6
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg:Ljava/io/Reader;

    const p1, 0x8000

    .line 7
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    .line 8
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 10
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/github/catvod/spider/merge1/aQ/sJ;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method private Eg()V
    .registers 15

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->cG:Z

    if-nez v0, :cond_6e

    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->jl:I

    if-ge v0, v1, :cond_b

    goto :goto_6e

    .line 2
    :cond_b
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->y:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_16

    sub-int/2addr v0, v1

    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 3
    :goto_17
    :try_start_17
    iget-object v4, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg:Ljava/io/Reader;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/io/Reader;->skip(J)J

    move-result-wide v7

    .line 4
    iget-object v4, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg:Ljava/io/Reader;

    const v9, 0x8000

    invoke-virtual {v4, v9}, Ljava/io/Reader;->mark(I)V

    const/4 v4, 0x0

    :goto_27
    const/16 v9, 0x400

    const/4 v10, 0x1

    if-gt v4, v9, :cond_3f

    .line 5
    iget-object v9, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg:Ljava/io/Reader;

    iget-object v11, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    array-length v12, v11

    sub-int/2addr v12, v4

    invoke-virtual {v9, v11, v4, v12}, Ljava/io/Reader;->read([CII)I

    move-result v9

    if-ne v9, v2, :cond_3a

    .line 6
    iput-boolean v10, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->cG:Z

    :cond_3a
    if-gtz v9, :cond_3d

    goto :goto_3f

    :cond_3d
    add-int/2addr v4, v9

    goto :goto_27

    .line 7
    :cond_3f
    :goto_3f
    iget-object v9, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg:Ljava/io/Reader;

    invoke-virtual {v9}, Ljava/io/Reader;->reset()V

    if-lez v4, :cond_66

    cmp-long v9, v7, v5

    if-nez v9, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v10, 0x0

    .line 8
    :goto_4c
    invoke-static {v10}, Lcom/github/catvod/spider/merge1/aQ/QL;->Ku(Z)V

    .line 9
    iput v4, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    .line 10
    iget v5, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->i:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->i:I

    .line 11
    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    .line 12
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->y:I

    if-eq v0, v2, :cond_5e

    .line 13
    iput v3, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->y:I

    :cond_5e
    const/16 v0, 0x6000

    .line 14
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->jl:I
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_66} :catch_67

    :cond_66
    return-void

    :catch_67
    move-exception v0

    .line 15
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/mg;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/mg;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_6e
    :goto_6e
    return-void
.end method

.method private static Ku([C[Ljava/lang/String;II)Ljava/lang/String;
    .registers 8

    const/16 v0, 0xc

    if-le p3, v0, :cond_a

    .line 1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_a
    const/4 v0, 0x1

    if-ge p3, v0, :cond_10

    const-string p0, ""

    return-object p0

    :cond_10
    mul-int/lit8 v0, p3, 0x1f

    const/4 v1, 0x0

    move v2, p2

    :goto_14
    if-ge v1, p3, :cond_21

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v3, v2, 0x1

    .line 2
    aget-char v2, p0, v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_14

    :cond_21
    and-int/lit16 v0, v0, 0x1ff

    .line 3
    aget-object v1, p1, v0

    if-nez v1, :cond_2f

    .line 4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 5
    aput-object v1, p1, v0

    goto :goto_3d

    .line 6
    :cond_2f
    invoke-static {p0, p2, p3, v1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->V([CIILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    return-object v1

    .line 7
    :cond_36
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 8
    aput-object v1, p1, v0

    :goto_3d
    return-object v1
.end method

.method static V([CIILjava/lang/String;)Z
    .registers 8

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1f

    const/4 v0, 0x0

    :goto_8
    add-int/lit8 v2, p2, -0x1

    if-eqz p2, :cond_1d

    add-int/lit8 p2, p1, 0x1

    .line 2
    aget-char p1, p0, p1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_19

    return v1

    :cond_19
    move p1, p2

    move p2, v2

    move v0, v3

    goto :goto_8

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    return v1
.end method

.method private lB()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method A()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    .line 3
    :goto_5
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    if-ge v1, v2, :cond_1c

    .line 4
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1c

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1c

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    goto :goto_5

    .line 6
    :cond_1c
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v0, v1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method E(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->GL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method GL(Ljava/lang/String;)Z
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_10

    return v2

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_24

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget v5, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_21

    return v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method Gq()Ljava/lang/String;
    .registers 7

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    .line 2
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    .line 3
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    move v3, v0

    :goto_7
    if-ge v3, v1, :cond_14

    .line 4
    aget-char v4, v2, v3

    if-eqz v4, :cond_14

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 5
    :cond_14
    iput v3, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    if-le v3, v0, :cond_22

    .line 6
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_22
    const-string v0, ""

    :goto_24
    return-object v0
.end method

.method JW()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9

    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    return-void

    .line 3
    :cond_9
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/mg;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "WTF: No buffer left to unconsume."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/mg;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method K()V
    .registers 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->y:I

    return-void
.end method

.method O2()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    .line 3
    :goto_5
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    if-ge v1, v2, :cond_2c

    .line 4
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_17

    const/16 v2, 0x5a

    if-le v1, v2, :cond_25

    :cond_17
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1f

    const/16 v2, 0x7a

    if-le v1, v2, :cond_25

    .line 5
    :cond_1f
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 6
    :cond_25
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    goto :goto_5

    .line 7
    :cond_2c
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    iget v3, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P(C)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->x(C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_17

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    invoke-static {v0, v1, v2, p1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    return-object v0

    .line 4
    :cond_17
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method RV()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 2
    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    .line 3
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->K()V

    return-void

    .line 4
    :cond_b
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/mg;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mark invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/mg;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method T(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->j(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 2
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    invoke-static {p1, v1, v2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    return-object p1

    .line 4
    :cond_17
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 5
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_27
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 7
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    sub-int v3, v0, v2

    invoke-static {p1, v1, v2, v3}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 8
    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    return-object p1
.end method

.method Tr()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    sub-int/2addr v0, v1

    const/16 v1, 0x400

    if-ge v0, v1, :cond_c

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->jl:I

    .line 3
    :cond_c
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 4
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->y:I

    return-void
.end method

.method public UO()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->i:I

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    add-int/2addr v0, v1

    return v0
.end method

.method Vp(Ljava/lang/String;)Z
    .registers 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->j(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1a

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->j(Ljava/lang/CharSequence;)I

    move-result p1

    if-le p1, v1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p1, 0x1

    :goto_1b
    return p1
.end method

.method public W()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    return-void
.end method

.method Wa()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->cs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    aget-char v0, v0, v2

    const/16 v2, 0x30

    if-lt v0, v2, :cond_17

    const/16 v2, 0x39

    if-gt v0, v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method X()C
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->lB()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0xffff

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    aget-char v0, v0, v1

    .line 3
    :goto_13
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    return v0
.end method

.method bq(Ljava/lang/String;)Z
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_10

    return v2

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_2c

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget v5, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_29

    return v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2c
    const/4 p1, 0x1

    return p1
.end method

.method cG()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    .line 3
    :goto_5
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    if-ge v1, v2, :cond_2c

    .line 4
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_17

    const/16 v3, 0x39

    if-le v2, v3, :cond_27

    :cond_17
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x46

    if-le v2, v3, :cond_27

    :cond_1f
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2c

    const/16 v3, 0x66

    if-gt v2, v3, :cond_2c

    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    goto :goto_5

    .line 6
    :cond_2c
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v0, v1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cs()Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method d()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    iget v3, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v2, v3}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    return-object v0
.end method

.method et([C)Z
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->cs()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method ey(C)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->cs()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public varargs f([C)Ljava/lang/String;
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    .line 4
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    .line 5
    array-length v3, p1

    move v4, v0

    :goto_b
    if-ge v4, v1, :cond_1d

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v3, :cond_1a

    .line 6
    aget-char v6, v2, v4

    aget-char v7, p1, v5

    if-ne v6, v7, :cond_17

    goto :goto_1d

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 7
    :cond_1d
    :goto_1d
    iput v4, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    if-le v4, v0, :cond_2b

    .line 8
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    sub-int/2addr v4, v0

    invoke-static {p1, v1, v0, v4}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    :cond_2b
    const-string p1, ""

    :goto_2d
    return-object p1
.end method

.method i(Z)Ljava/lang/String;
    .registers 8

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    .line 2
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    .line 3
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    move v3, v0

    :goto_7
    if-ge v3, v1, :cond_23

    .line 4
    aget-char v4, v2, v3

    if-eqz v4, :cond_23

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1d

    const/16 v5, 0x26

    if-eq v4, v5, :cond_23

    const/16 v5, 0x27

    if-eq v4, v5, :cond_1a

    goto :goto_20

    :cond_1a
    if-eqz p1, :cond_1d

    goto :goto_23

    :cond_1d
    if-nez p1, :cond_20

    goto :goto_23

    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 5
    :cond_23
    :goto_23
    iput v3, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    if-le v3, v0, :cond_31

    .line 6
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v0, v3}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_33

    :cond_31
    const-string p1, ""

    :goto_33
    return-object p1
.end method

.method j(Ljava/lang/CharSequence;)I
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    :goto_a
    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    if-ge v1, v2, :cond_49

    .line 4
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_21

    :goto_15
    add-int/2addr v1, v3

    .line 5
    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    if-ge v1, v2, :cond_21

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_21

    goto :goto_15

    :cond_21
    add-int/lit8 v2, v1, 0x1

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    .line 7
    iget v5, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    if-ge v1, v5, :cond_47

    if-gt v4, v5, :cond_47

    move v5, v2

    :goto_30
    if-ge v5, v4, :cond_41

    .line 8
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    aget-char v7, v7, v5

    if-ne v6, v7, :cond_41

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_41
    if-ne v5, v4, :cond_47

    .line 9
    iget p1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    sub-int/2addr v1, p1

    return v1

    :cond_47
    move v1, v2

    goto :goto_a

    :cond_49
    const/4 p1, -0x1

    return p1
.end method

.method public jl()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg:Ljava/io/Reader;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_12
    .catchall {:try_start_6 .. :try_end_9} :catchall_a

    goto :goto_12

    :catchall_a
    move-exception v0

    .line 3
    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg:Ljava/io/Reader;

    .line 4
    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    .line 5
    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    .line 6
    throw v0

    .line 7
    :catch_12
    :goto_12
    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg:Ljava/io/Reader;

    .line 8
    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    .line 9
    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    return-void
.end method

.method kc(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->bq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method varargs mw([C)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    .line 4
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    move v3, v0

    :goto_a
    if-ge v3, v1, :cond_18

    .line 5
    aget-char v4, v2, v3

    invoke-static {p1, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-ltz v4, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 6
    :cond_18
    :goto_18
    iput v3, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    if-le v3, v0, :cond_26

    .line 7
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v0, v3}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_26
    const-string p1, ""

    :goto_28
    return-object p1
.end method

.method nK()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->cs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_16

    const/16 v2, 0x5a

    if-le v0, v2, :cond_24

    :cond_16
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1e

    const/16 v2, 0x7a

    if-le v0, v2, :cond_24

    .line 3
    :cond_1e
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method nN()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    .line 3
    :goto_5
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    if-ge v1, v2, :cond_2c

    .line 4
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_17

    const/16 v2, 0x5a

    if-le v1, v2, :cond_25

    :cond_17
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1f

    const/16 v2, 0x7a

    if-le v1, v2, :cond_25

    .line 5
    :cond_1f
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 6
    :cond_25
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    goto :goto_5

    .line 7
    :cond_2c
    :goto_2c
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->lB()Z

    move-result v1

    if-nez v1, :cond_45

    .line 8
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    aget-char v1, v1, v2

    const/16 v3, 0x30

    if-lt v1, v3, :cond_45

    const/16 v3, 0x39

    if-gt v1, v3, :cond_45

    add-int/lit8 v2, v2, 0x1

    .line 9
    iput v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    goto :goto_2c

    .line 10
    :cond_45
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    iget v3, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method o()Ljava/lang/String;
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    .line 4
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    move v3, v0

    :goto_a
    if-ge v3, v1, :cond_33

    .line 5
    aget-char v4, v2, v3

    if-eqz v4, :cond_33

    const/16 v5, 0x20

    if-eq v4, v5, :cond_33

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_33

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_33

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_33

    const/16 v5, 0x9

    if-eq v4, v5, :cond_33

    const/16 v5, 0xa

    if-eq v4, v5, :cond_33

    const/16 v5, 0xc

    if-eq v4, v5, :cond_33

    const/16 v5, 0xd

    if-eq v4, v5, :cond_33

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 6
    :cond_33
    iput v3, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    if-le v3, v0, :cond_41

    .line 7
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_41
    const-string v0, ""

    :goto_43
    return-object v0
.end method

.method public r()C
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->lB()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0xffff

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    aget-char v0, v0, v1

    :goto_13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_a

    const-string v0, ""

    return-object v0

    .line 2
    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    iget v3, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method x(C)I
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    :goto_5
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    if-ge v0, v1, :cond_16

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_13

    .line 4
    iget p1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    sub-int/2addr v0, p1

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method y()Ljava/lang/String;
    .registers 7

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    .line 2
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku:I

    .line 3
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    move v3, v0

    :goto_7
    if-ge v3, v1, :cond_18

    .line 4
    aget-char v4, v2, v3

    if-eqz v4, :cond_18

    const/16 v5, 0x26

    if-eq v4, v5, :cond_18

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_18

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 5
    :cond_18
    iput v3, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    if-le v3, v0, :cond_26

    .line 6
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->A:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Ku([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_26
    const-string v0, ""

    :goto_28
    return-object v0
.end method

.method varargs z0([C)Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->cs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2
    :cond_8
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Eg()V

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->W:[C

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/sJ;->X:I

    aget-char v0, v0, v2

    .line 4
    array-length v2, p1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_1e

    aget-char v4, p1, v3

    if-ne v4, v0, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1e
    return v1
.end method
