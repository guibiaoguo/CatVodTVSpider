.class final Lcom/github/catvod/spider/merge1/aQ/WL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final Eg:[I

.field private static final W:[C


# instance fields
.field private A:Ljava/lang/String;

.field Gq:Lcom/github/catvod/spider/merge1/aQ/lK$G;

.field private final Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

.field O2:Ljava/lang/StringBuilder;

.field P:Lcom/github/catvod/spider/merge1/aQ/lK$c;

.field T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

.field private final Vp:[I

.field private X:Lcom/github/catvod/spider/merge1/aQ/n6;

.field private cG:Ljava/lang/StringBuilder;

.field private final d:[I

.field f:Lcom/github/catvod/spider/merge1/aQ/lK$AA;

.field private i:Lcom/github/catvod/spider/merge1/aQ/lK;

.field private final jl:Lcom/github/catvod/spider/merge1/aQ/d1;

.field private mw:Ljava/lang/String;

.field nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

.field o:Lcom/github/catvod/spider/merge1/aQ/lK$MB;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x7

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_16

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/WL;->W:[C

    const/16 v1, 0x20

    new-array v1, v1, [I

    .line 2
    fill-array-data v1, :array_22

    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/WL;->Eg:[I

    .line 3
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

.method constructor <init>(Lcom/github/catvod/spider/merge1/aQ/sJ;Lcom/github/catvod/spider/merge1/aQ/d1;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->X:Lcom/github/catvod/spider/merge1/aQ/n6;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->y:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->A:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->cG:Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->O2:Ljava/lang/StringBuilder;

    .line 7
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/lK$G;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$G;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Gq:Lcom/github/catvod/spider/merge1/aQ/lK$G;

    .line 8
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$MB;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->o:Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    .line 9
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/lK$c;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$c;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->P:Lcom/github/catvod/spider/merge1/aQ/lK$c;

    .line 10
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/lK$I;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$I;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    .line 11
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->f:Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 12
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->d:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 13
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Vp:[I

    .line 14
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    .line 15
    iput-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->jl:Lcom/github/catvod/spider/merge1/aQ/d1;

    return-void
.end method

.method private Ku(Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->jl:Lcom/github/catvod/spider/merge1/aQ/d1;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/d1;->W()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->jl:Lcom/github/catvod/spider/merge1/aQ/d1;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/KX;

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->UO()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Invalid character reference: %s"

    invoke-direct {v1, v2, p1, v3}, Lcom/github/catvod/spider/merge1/aQ/KX;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method


# virtual methods
.method A(Z)Lcom/github/catvod/spider/merge1/aQ/lK$l;
    .registers 2

    if-eqz p1, :cond_9

    .line 1
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Gq:Lcom/github/catvod/spider/merge1/aQ/lK$G;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$G;->nK()Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object p1

    goto :goto_f

    :cond_9
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->o:Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->nK()Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object p1

    :goto_f
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    return-object p1
.end method

.method Eg()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->mw:Ljava/lang/String;

    return-object v0
.end method

.method Gq(Ljava/lang/StringBuilder;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->A:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->A:Ljava/lang/String;

    goto :goto_1f

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->cG:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1a

    .line 4
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->cG:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1a
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->cG:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_1f
    return-void
.end method

.method O2(C)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->A:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->A:Ljava/lang/String;

    goto :goto_1f

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->cG:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1a

    .line 4
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->cG:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1a
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->cG:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1f
    return-void
.end method

.method P([I)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/WL;->nN(Ljava/lang/String;)V

    return-void
.end method

.method T()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->f:Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/WL;->o(Lcom/github/catvod/spider/merge1/aQ/lK;)V

    return-void
.end method

.method Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->X:Lcom/github/catvod/spider/merge1/aQ/n6;

    return-void
.end method

.method Vp(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->jl:Lcom/github/catvod/spider/merge1/aQ/d1;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/d1;->W()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->jl:Lcom/github/catvod/spider/merge1/aQ/d1;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/KX;

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->UO()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/github/catvod/spider/merge1/aQ/KX;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method W(Lcom/github/catvod/spider/merge1/aQ/n6;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->W()V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->X:Lcom/github/catvod/spider/merge1/aQ/n6;

    return-void
.end method

.method X()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->f:Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->o()Lcom/github/catvod/spider/merge1/aQ/lK;

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->f:Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->jl:Z

    return-void
.end method

.method cG()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->O2:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/lK;->P(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method cs()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->mw:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->z0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->mw:Ljava/lang/String;

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

.method d(Lcom/github/catvod/spider/merge1/aQ/n6;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->jl:Lcom/github/catvod/spider/merge1/aQ/d1;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/d1;->W()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->jl:Lcom/github/catvod/spider/merge1/aQ/d1;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/KX;

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->UO()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Unexpectedly reached end of file (EOF) in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lcom/github/catvod/spider/merge1/aQ/KX;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method f()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/WL;->o(Lcom/github/catvod/spider/merge1/aQ/lK;)V

    return-void
.end method

.method i()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->f:Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->o()Lcom/github/catvod/spider/merge1/aQ/lK;

    return-void
.end method

.method jl(Ljava/lang/Character;Z)[I
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->cs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    if-eqz p1, :cond_19

    .line 2
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->r()C

    move-result v0

    if-ne p1, v0, :cond_19

    return-object v1

    .line 3
    :cond_19
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/WL;->W:[C

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->et([C)Z

    move-result p1

    if-eqz p1, :cond_24

    return-object v1

    .line 4
    :cond_24
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->d:[I

    .line 5
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Tr()V

    .line 6
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->E(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "missing semicolon"

    const-string v3, ";"

    const/4 v4, 0x0

    if-eqz v0, :cond_b5

    .line 7
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    const-string v0, "X"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->kc(Ljava/lang/String;)Z

    move-result p2

    .line 8
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    if-eqz p2, :cond_4b

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->cG()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_4b
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->A()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_4f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_60

    const-string p1, "numeric reference with no numerals"

    .line 10
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->RV()V

    return-object v1

    .line 12
    :cond_60
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->K()V

    .line 13
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge1/aQ/sJ;->E(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 14
    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku(Ljava/lang/String;)V

    :cond_70
    if-eqz p2, :cond_75

    const/16 p2, 0x10

    goto :goto_77

    :cond_75
    const/16 p2, 0xa

    :goto_77
    const/4 v1, -0x1

    .line 15
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

    .line 16
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/WL;->Eg:[I

    array-length v2, v1

    add-int/2addr v2, v0

    if-ge p2, v2, :cond_a7

    const-string v0, "character is not a valid unicode code point"

    .line 17
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x80

    .line 18
    aget p2, v1, p2

    .line 19
    :cond_a7
    aput p2, p1, v4

    goto :goto_b4

    :cond_aa
    :goto_aa
    const-string p2, "character outside of valid range"

    .line 20
    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku(Ljava/lang/String;)V

    const p2, 0xfffd

    .line 21
    aput p2, p1, v4

    :goto_b4
    return-object p1

    .line 22
    :cond_b5
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->nN()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v5, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lcom/github/catvod/spider/merge1/aQ/sJ;->ey(C)Z

    move-result v5

    .line 24
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/Y5;->i(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_d5

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/Y5;->y(Ljava/lang/String;)Z

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

    .line 25
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->RV()V

    if-eqz v5, :cond_e4

    const-string p1, "invalid named reference"

    .line 26
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku(Ljava/lang/String;)V

    :cond_e4
    return-object v1

    :cond_e5
    if-eqz p2, :cond_10b

    .line 27
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->nK()Z

    move-result p2

    if-nez p2, :cond_105

    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Wa()Z

    move-result p2

    if-nez p2, :cond_105

    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    const/4 v5, 0x3

    new-array v5, v5, [C

    fill-array-data v5, :array_148

    invoke-virtual {p2, v5}, Lcom/github/catvod/spider/merge1/aQ/sJ;->z0([C)Z

    move-result p2

    if-eqz p2, :cond_10b

    .line 28
    :cond_105
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->RV()V

    return-object v1

    .line 29
    :cond_10b
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->K()V

    .line 30
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge1/aQ/sJ;->E(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_11b

    .line 31
    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku(Ljava/lang/String;)V

    .line 32
    :cond_11b
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Vp:[I

    invoke-static {v0, p2}, Lcom/github/catvod/spider/merge1/aQ/Y5;->jl(Ljava/lang/String;[I)I

    move-result p2

    if-ne p2, v7, :cond_12a

    .line 33
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Vp:[I

    aget p2, p2, v4

    aput p2, p1, v4

    return-object p1

    :cond_12a
    const/4 p1, 0x2

    if-ne p2, p1, :cond_130

    .line 34
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Vp:[I

    return-object p1

    .line 35
    :cond_130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected characters returned for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->W(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Vp:[I

    return-object p1

    nop

    :array_148
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method lB()Lcom/github/catvod/spider/merge1/aQ/lK;
    .registers 6

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->y:Z

    if-nez v0, :cond_c

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->X:Lcom/github/catvod/spider/merge1/aQ/n6;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v0, p0, v1}, Lcom/github/catvod/spider/merge1/aQ/n6;->cG(Lcom/github/catvod/spider/merge1/aQ/WL;Lcom/github/catvod/spider/merge1/aQ/sJ;)V

    goto :goto_0

    .line 3
    :cond_c
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->cG:Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 7
    iput-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->A:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->P:Lcom/github/catvod/spider/merge1/aQ/lK$c;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/lK$c;->f(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object v0

    return-object v0

    .line 9
    :cond_2a
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->A:Ljava/lang/String;

    if-eqz v0, :cond_37

    .line 10
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->P:Lcom/github/catvod/spider/merge1/aQ/lK$c;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$c;->f(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object v0

    .line 11
    iput-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->A:Ljava/lang/String;

    return-object v0

    .line 12
    :cond_37
    iput-boolean v3, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->y:Z

    .line 13
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->i:Lcom/github/catvod/spider/merge1/aQ/lK;

    return-object v0
.end method

.method mw()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->E()V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/WL;->o(Lcom/github/catvod/spider/merge1/aQ/lK;)V

    return-void
.end method

.method nN(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->A:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->A:Ljava/lang/String;

    goto :goto_1b

    .line 3
    :cond_7
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->cG:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_16

    .line 4
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->cG:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_16
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->cG:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1b
    return-void
.end method

.method o(Lcom/github/catvod/spider/merge1/aQ/lK;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->y:Z

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->Eg(Z)V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->i:Lcom/github/catvod/spider/merge1/aQ/lK;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->y:Z

    .line 4
    iget-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/lK;->W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->Eg:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    if-ne v0, v1, :cond_17

    .line 5
    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/lK$G;

    .line 6
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Eg:Ljava/lang/String;

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->mw:Ljava/lang/String;

    goto :goto_28

    .line 7
    :cond_17
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->Ku:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    if-ne v0, v1, :cond_28

    .line 8
    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    .line 9
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->ey()Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "Attributes incorrectly present on end tag"

    .line 10
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->Vp(Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method

.method r(Lcom/github/catvod/spider/merge1/aQ/n6;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->jl:Lcom/github/catvod/spider/merge1/aQ/d1;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/d1;->W()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->jl:Lcom/github/catvod/spider/merge1/aQ/d1;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/KX;

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->UO()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->Ku:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge1/aQ/sJ;->r()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lcom/github/catvod/spider/merge1/aQ/KX;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    return-void
.end method

.method y()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$I;->o()Lcom/github/catvod/spider/merge1/aQ/lK;

    return-void
.end method
