.class public Lcom/github/catvod/spider/merge1/aQ/f1;
.super Lcom/github/catvod/spider/merge1/aQ/dl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 4
    invoke-static {p3}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    const-string v0, "name"

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/github/catvod/spider/merge1/aQ/f1;->jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/iV;

    const-string p1, "publicId"

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/f1;->jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/iV;

    const-string p1, "systemId"

    .line 7
    invoke-virtual {p0, p1, p3}, Lcom/github/catvod/spider/merge1/aQ/f1;->jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/iV;

    .line 8
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/f1;->GV()V

    return-void
.end method

.method private GV()V
    .registers 3

    const-string v0, "publicId"

    .line 1
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/f1;->JM(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "pubSysKey"

    if-eqz v0, :cond_10

    const-string v0, "PUBLIC"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/github/catvod/spider/merge1/aQ/f1;->jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/iV;

    goto :goto_1d

    :cond_10
    const-string v0, "systemId"

    .line 3
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/f1;->JM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "SYSTEM"

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/github/catvod/spider/merge1/aQ/f1;->jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/iV;

    :cond_1d
    :goto_1d
    return-void
.end method

.method private JM(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/f1;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/gx;->i(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public bridge synthetic Ku(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/dl;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;->P()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic W(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/dl;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cG()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;->cG()I

    move-result v0

    return v0
.end method

.method public cs()Ljava/lang/String;
    .registers 2

    const-string v0, "#doctype"

    return-object v0
.end method

.method public dM(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "pubSysKey"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/github/catvod/spider/merge1/aQ/f1;->jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/iV;

    :cond_7
    return-void
.end method

.method ey(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    .registers 4

    return-void
.end method

.method public bridge synthetic i()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/dl;->jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object p1

    return-object p1
.end method

.method kc(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    .registers 7

    .line 1
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->O2()Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    move-result-object p2

    sget-object p3, Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;->W:Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    const-string v0, "systemId"

    const-string v1, "publicId"

    if-ne p2, p3, :cond_1e

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/f1;->JM(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1e

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/f1;->JM(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1e

    const-string p2, "<!doctype"

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_23

    :cond_1e
    const-string p2, "<!DOCTYPE"

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_23
    const-string p2, "name"

    .line 4
    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge1/aQ/f1;->JM(Ljava/lang/String;)Z

    move-result p3

    const-string v2, " "

    if-eqz p3, :cond_38

    .line 5
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/github/catvod/spider/merge1/aQ/f1;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_38
    const-string p2, "pubSysKey"

    .line 6
    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge1/aQ/f1;->JM(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4b

    .line 7
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/github/catvod/spider/merge1/aQ/f1;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 8
    :cond_4b
    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/f1;->JM(Ljava/lang/String;)Z

    move-result p2

    const/16 p3, 0x22

    const-string v2, " \""

    if-eqz p2, :cond_64

    .line 9
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/f1;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 10
    :cond_64
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/f1;->JM(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_79

    .line 11
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/f1;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_79
    const/16 p2, 0x3e

    .line 12
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method
