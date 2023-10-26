.class public Lcom/github/catvod/spider/merge1/aQ/qx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final W:[Ljava/lang/String;


# instance fields
.field private Eg:Ljava/lang/String;

.field private Ku:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field jl:Lcom/github/catvod/spider/merge1/aQ/dH;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "allowfullscreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "async"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "autofocus"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "checked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "defer"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "disabled"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "formnovalidate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hidden"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "inert"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ismap"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "itemscope"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "multiple"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "muted"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "novalidate"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "open"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "required"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "reversed"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "seamless"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "selected"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "sortable"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "truespeed"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "typemustmatch"

    aput-object v2, v0, v1

    .line 1
    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/qx;->W:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)V
    .registers 4
    .param p2  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Lcom/github/catvod/spider/merge1/aQ/dH;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->y(Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Ku:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->jl:Lcom/github/catvod/spider/merge1/aQ/dH;

    return-void
.end method

.method protected static cG(Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)Z
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->O2()Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    move-result-object p2

    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;->W:Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    if-ne p2, v0, :cond_1e

    if-eqz p1, :cond_1c

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_16

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    :cond_16
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/qx;->y(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method protected static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    .registers 10
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2
    invoke-static {p0, p1, p3}, Lcom/github/catvod/spider/merge1/aQ/qx;->cG(Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)Z

    move-result p0

    if-nez p0, :cond_1f

    const-string p0, "=\""

    .line 3
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 4
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/github/catvod/spider/merge1/aQ/Y5;->X(Ljava/lang/Appendable;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;ZZZ)V

    const/16 p0, 0x22

    .line 5
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1f
    return-void
.end method

.method protected static y(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/qx;->W:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Ku:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->jl:Lcom/github/catvod/spider/merge1/aQ/dH;

    if-eqz v1, :cond_1d

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->nN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->jl:Lcom/github/catvod/spider/merge1/aQ/dH;

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/dH;->mw(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    .line 5
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->jl:Lcom/github/catvod/spider/merge1/aQ/dH;

    iget-object v2, v2, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    aput-object p1, v2, v1

    .line 6
    :cond_1d
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Ku:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Eg()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg:Ljava/lang/String;

    return-object v0
.end method

.method public Ku()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Ku:Ljava/lang/String;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public W()Lcom/github/catvod/spider/merge1/aQ/qx;
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/qx;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected X(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Ku:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/qx;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/qx;->W()Lcom/github/catvod/spider/merge1/aQ/qx;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    .line 1
    const-class v2, Lcom/github/catvod/spider/merge1/aQ/qx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_34

    .line 2
    :cond_10
    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/qx;

    .line 3
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v3, p1, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_23

    :cond_1f
    iget-object v2, p1, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg:Ljava/lang/String;

    if-eqz v2, :cond_24

    :goto_23
    return v1

    .line 4
    :cond_24
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Ku:Ljava/lang/String;

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/qx;->Ku:Ljava/lang/String;

    if-eqz v2, :cond_2f

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_33

    :cond_2f
    if-nez p1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0

    :cond_34
    :goto_34
    return v1
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/qx;->Ku()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/qx;->Ku:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public jl()Ljava/lang/String;
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

    invoke-virtual {p0, v0, v1}, Lcom/github/catvod/spider/merge1/aQ/qx;->X(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
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

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/qx;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/qx;->jl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
