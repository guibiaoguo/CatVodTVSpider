.class public Lcom/github/catvod/spider/merge1/aQ/wb;
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


# virtual methods
.method public JM()Lcom/github/catvod/spider/merge1/aQ/wb;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->nN()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/wb;

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
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wb;->JM()Lcom/github/catvod/spider/merge1/aQ/wb;

    move-result-object v0

    return-object v0
.end method

.method public cs()Ljava/lang/String;
    .registers 2

    const-string v0, "#comment"

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
    .registers 6

    .line 1
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->cG()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->gK()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    instance-of v1, v0, Lcom/github/catvod/spider/merge1/aQ/li;

    if-eqz v1, :cond_1e

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->db()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->Eg()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_1e
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->y()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2
    :cond_24
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge1/aQ/iV;->Vp(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V

    :cond_27
    const-string p2, "<!--"

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wb;->dM()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "-->"

    .line 5
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public bridge synthetic nN()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/wb;->JM()Lcom/github/catvod/spider/merge1/aQ/wb;

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
