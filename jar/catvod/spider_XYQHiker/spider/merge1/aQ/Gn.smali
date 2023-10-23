.class public Lcom/github/catvod/spider/merge1/aQ/Gn;
.super Lcom/github/catvod/spider/merge1/aQ/dl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/dl;->jl:Ljava/lang/Object;

    return-void
.end method

.method static Bn(Ljava/lang/StringBuilder;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method


# virtual methods
.method public GV()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public JM()Lcom/github/catvod/spider/merge1/aQ/Gn;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->nN()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/Gn;

    return-object v0
.end method

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

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Gn;->JM()Lcom/github/catvod/spider/merge1/aQ/Gn;

    move-result-object v0

    return-object v0
.end method

.method public cs()Ljava/lang/String;
    .registers 2

    const-string v0, "#text"

    return-object v0
.end method

.method public dM()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

.method kc(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    .registers 13

    .line 1
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->cG()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->gK()I

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    instance-of v2, v1, Lcom/github/catvod/spider/merge1/aQ/li;

    if-eqz v2, :cond_24

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/li;->db()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/n8;->Eg()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Gn;->GV()Z

    move-result v1

    if-eqz v1, :cond_3a

    :cond_24
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->y()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->Cv()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3d

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Gn;->GV()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 3
    :cond_3a
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge1/aQ/iV;->Vp(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V

    :cond_3d
    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    .line 4
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    invoke-static {v2}, Lcom/github/catvod/spider/merge1/aQ/li;->t(Lcom/github/catvod/spider/merge1/aQ/iV;)Z

    move-result v2

    if-nez v2, :cond_4b

    const/4 v7, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v7, 0x0

    :goto_4c
    if-eqz v0, :cond_56

    .line 5
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    instance-of v0, v0, Lcom/github/catvod/spider/merge1/aQ/Yw;

    if-eqz v0, :cond_56

    const/4 v8, 0x1

    goto :goto_57

    :cond_56
    const/4 v8, 0x0

    .line 6
    :goto_57
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/dl;->z()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lcom/github/catvod/spider/merge1/aQ/Y5;->X(Ljava/lang/Appendable;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;ZZZ)V

    return-void
.end method

.method public bridge synthetic nN()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Gn;->JM()Lcom/github/catvod/spider/merge1/aQ/Gn;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
