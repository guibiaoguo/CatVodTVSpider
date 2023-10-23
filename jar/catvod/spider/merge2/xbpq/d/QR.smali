.class final Lcom/github/catvod/spider/merge2/xbpq/d/QR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final r:[C

.field static final s:[I


# instance fields
.field private final a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

.field private final b:Lcom/github/catvod/spider/merge2/xbpq/d/CD;

.field private c:Lcom/github/catvod/spider/merge2/xbpq/d/h1;

.field private d:Lcom/github/catvod/spider/merge2/xbpq/d/OP;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/StringBuilder;

.field h:Ljava/lang/StringBuilder;

.field i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

.field j:Lcom/github/catvod/spider/merge2/xbpq/d/MN;

.field k:Lcom/github/catvod/spider/merge2/xbpq/d/LM;

.field l:Lcom/github/catvod/spider/merge2/xbpq/d/HI;

.field m:Lcom/github/catvod/spider/merge2/xbpq/d/JK;

.field n:Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

.field private o:Ljava/lang/String;

.field private final p:[I

.field private final q:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_16

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->r:[C

    const/16 v1, 0x20

    new-array v1, v1, [I

    fill-array-data v1, :array_22

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->s:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_16
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_22
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method constructor <init>(Lcom/github/catvod/spider/merge2/xbpq/d/a;Lcom/github/catvod/spider/merge2/xbpq/d/CD;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->c:Lcom/github/catvod/spider/merge2/xbpq/d/h1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->h:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/MN;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->j:Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/LM;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->k:Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/HI;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->l:Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/JK;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/JK;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->m:Lcom/github/catvod/spider/merge2/xbpq/d/JK;

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->n:Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->p:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q:[I

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->b:Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->b:Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/CD;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->b:Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/d/BC;

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->E()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Invalid character reference: %s"

    invoke-direct {v1, v2, p1, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/BC;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method


# virtual methods
.method final a(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->a()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->c:Lcom/github/catvod/spider/merge2/xbpq/d/h1;

    return-void
.end method

.method final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->o:Ljava/lang/String;

    return-object v0
.end method

.method final d(Ljava/lang/Character;Z)[I
    .registers 11

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->s()C

    move-result v0

    if-ne p1, v0, :cond_19

    return-object v1

    :cond_19
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->r:[C

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->A([C)Z

    move-result p1

    if-eqz p1, :cond_24

    return-object v1

    :cond_24
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->p:[I

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->v()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->w(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "missing semicolon"

    const-string v3, ";"

    const/4 v4, 0x0

    if-eqz v0, :cond_b5

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    const-string v0, "X"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->x(Ljava/lang/String;)Z

    move-result p2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    if-eqz p2, :cond_4b

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_4b
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->h()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_60

    const-string p1, "numeric reference with no numerals"

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->c(Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->F()V

    return-object v1

    :cond_60
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->H()V

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->w(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_70

    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->c(Ljava/lang/String;)V

    :cond_70
    if-eqz p2, :cond_75

    const/16 p2, 0x10

    goto :goto_77

    :cond_75
    const/16 p2, 0xa

    :goto_77
    const/4 v1, -0x1

    :try_start_78
    invoke-static {v0, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_80} :catch_81

    goto :goto_82

    :catch_81
    const/4 p2, -0x1

    :goto_82
    if-eq p2, v1, :cond_aa

    const v0, 0xd800

    if-lt p2, v0, :cond_8e

    const v0, 0xdfff

    if-le p2, v0, :cond_aa

    :cond_8e
    const v0, 0x10ffff

    if-le p2, v0, :cond_94

    goto :goto_aa

    :cond_94
    const/16 v0, 0x80

    if-lt p2, v0, :cond_a7

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->s:[I

    const/16 v1, 0xa0

    if-ge p2, v1, :cond_a7

    const-string v1, "character is not a valid unicode code point"

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->c(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x80

    aget p2, v0, p2

    :cond_a7
    aput p2, p1, v4

    goto :goto_b4

    :cond_aa
    :goto_aa
    const-string p2, "character outside of valid range"

    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->c(Ljava/lang/String;)V

    const p2, 0xfffd

    aput p2, p1, v4

    :goto_b4
    return-object p1

    :cond_b5
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->y(C)Z

    move-result v5

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/n;->e(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_d5

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/n;->f(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d3

    if-eqz v5, :cond_d3

    goto :goto_d5

    :cond_d3
    const/4 v6, 0x0

    goto :goto_d6

    :cond_d5
    :goto_d5
    const/4 v6, 0x1

    :goto_d6
    if-nez v6, :cond_e5

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->F()V

    if-eqz v5, :cond_e4

    const-string p1, "invalid named reference"

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->c(Ljava/lang/String;)V

    :cond_e4
    return-object v1

    :cond_e5
    if-eqz p2, :cond_107

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->C()Z

    move-result p2

    if-nez p2, :cond_5a

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->B()Z

    move-result p2

    if-nez p2, :cond_5a

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    const/4 v5, 0x3

    new-array v5, v5, [C

    fill-array-data v5, :array_144

    invoke-virtual {p2, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->z([C)Z

    move-result p2

    if-eqz p2, :cond_107

    goto/16 :goto_5a

    :cond_107
    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->H()V

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->w(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_117

    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->c(Ljava/lang/String;)V

    :cond_117
    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q:[I

    invoke-static {v0, p2}, Lcom/github/catvod/spider/merge2/xbpq/c/n;->c(Ljava/lang/String;[I)I

    move-result p2

    if-ne p2, v7, :cond_126

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q:[I

    aget p2, p2, v4

    aput p2, p1, v4

    return-object p1

    :cond_126
    const/4 p1, 0x2

    if-ne p2, p1, :cond_12c

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q:[I

    return-object p1

    :cond_12c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected characters returned for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->b(Ljava/lang/String;)V

    goto :goto_142

    :goto_141
    throw v1

    :goto_142
    goto :goto_141

    nop

    :array_144
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method final e()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->n:Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->g()Lcom/github/catvod/spider/merge2/xbpq/d/OP;

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->n:Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method final f()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->m:Lcom/github/catvod/spider/merge2/xbpq/d/JK;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->g()Lcom/github/catvod/spider/merge2/xbpq/d/OP;

    return-void
.end method

.method final g(Z)Lcom/github/catvod/spider/merge2/xbpq/d/NO;
    .registers 2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->j:Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/MN;->v()Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    goto :goto_d

    :cond_8
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->k:Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->v()Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    :goto_d
    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    return-object p1
.end method

.method final h()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->h:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->h(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method final i(C)V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f:Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f:Ljava/lang/String;

    goto :goto_1f

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1f
    return-void
.end method

.method final j(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)V
    .registers 4

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->e:Z

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->d(Z)V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->d:Lcom/github/catvod/spider/merge2/xbpq/d/OP;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->e:Z

    iget v0, p1, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->o:Ljava/lang/String;

    goto :goto_26

    :cond_16
    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->r()Z

    move-result p1

    if-eqz p1, :cond_26

    const-string p1, "Attributes incorrectly present on end tag"

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->r(Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void
.end method

.method final k(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f:Ljava/lang/String;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f:Ljava/lang/String;

    goto :goto_1b

    :cond_7
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1b
    return-void
.end method

.method final l(Ljava/lang/StringBuilder;)V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f:Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f:Ljava/lang/String;

    goto :goto_1f

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_1f
    return-void
.end method

.method final m()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->n:Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->j(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)V

    return-void
.end method

.method final n()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->m:Lcom/github/catvod/spider/merge2/xbpq/d/JK;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->j(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)V

    return-void
.end method

.method final o()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->q()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->j(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)V

    return-void
.end method

.method final p(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V
    .registers 7

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->b:Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/CD;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->b:Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/d/BC;

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->E()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Unexpectedly reached end of file (EOF) in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/BC;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method final q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V
    .registers 8

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->b:Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/CD;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->b:Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/d/BC;

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->E()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->s()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/BC;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2d
    return-void
.end method

.method final r(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->b:Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/CD;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->b:Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/d/BC;

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->E()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/BC;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method final s()Z
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->o:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->t()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method final t()Lcom/github/catvod/spider/merge2/xbpq/d/OP;
    .registers 6

    :goto_0
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->e:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->c:Lcom/github/catvod/spider/merge2/xbpq/d/h1;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v0, p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iput-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->l:Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/HI;->i(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    return-object v0

    :cond_29
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f:Ljava/lang/String;

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->l:Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/HI;->i(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    iput-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f:Ljava/lang/String;

    return-object v1

    :cond_35
    iput-boolean v3, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->e:Z

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->d:Lcom/github/catvod/spider/merge2/xbpq/d/OP;

    return-object v0
.end method

.method final u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->c:Lcom/github/catvod/spider/merge2/xbpq/d/h1;

    return-void
.end method
