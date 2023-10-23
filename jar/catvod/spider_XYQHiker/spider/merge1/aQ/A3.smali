.class public Lcom/github/catvod/spider/merge1/aQ/A3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static Eg(Lcom/github/catvod/spider/merge1/aQ/lj;Lcom/github/catvod/spider/merge1/aQ/iV;)V
    .registers 7

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_3
    if-eqz v1, :cond_47

    .line 1
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->et()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v3

    .line 2
    invoke-interface {p0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/lj;->Eg(Lcom/github/catvod/spider/merge1/aQ/iV;I)V

    if-eqz v3, :cond_1c

    .line 3
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->d()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 4
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->gK()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->A(I)Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v1

    .line 5
    :cond_1c
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->cG()I

    move-result v3

    if-lez v3, :cond_29

    .line 6
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->A(I)Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 7
    :cond_29
    :goto_29
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->r()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v3

    if-nez v3, :cond_3c

    if-gtz v2, :cond_32

    goto :goto_3c

    .line 8
    :cond_32
    invoke-interface {p0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/lj;->W(Lcom/github/catvod/spider/merge1/aQ/iV;I)V

    .line 9
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->et()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    .line 10
    :cond_3c
    :goto_3c
    invoke-interface {p0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/lj;->W(Lcom/github/catvod/spider/merge1/aQ/iV;I)V

    if-ne v1, p1, :cond_42

    goto :goto_47

    .line 11
    :cond_42
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->r()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v1

    goto :goto_3

    :cond_47
    :goto_47
    return-void
.end method

.method public static W(Lcom/github/catvod/spider/merge1/aQ/se;Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/se$DK;
    .registers 9

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_3
    if-eqz v1, :cond_6a

    .line 1
    invoke-interface {p0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/se;->Eg(Lcom/github/catvod/spider/merge1/aQ/iV;I)Lcom/github/catvod/spider/merge1/aQ/se$DK;

    move-result-object v3

    .line 2
    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/se$DK;->X:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    if-ne v3, v4, :cond_e

    return-object v3

    .line 3
    :cond_e
    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/se$DK;->W:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    if-ne v3, v4, :cond_1f

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->cG()I

    move-result v4

    if-lez v4, :cond_1f

    .line 4
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->A(I)Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5
    :cond_1f
    :goto_1f
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->r()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v4

    if-nez v4, :cond_49

    if-gtz v2, :cond_28

    goto :goto_49

    .line 6
    :cond_28
    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/se$DK;->W:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    if-eq v3, v4, :cond_30

    sget-object v5, Lcom/github/catvod/spider/merge1/aQ/se$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    if-ne v3, v5, :cond_39

    .line 7
    :cond_30
    invoke-interface {p0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/se;->W(Lcom/github/catvod/spider/merge1/aQ/iV;I)Lcom/github/catvod/spider/merge1/aQ/se$DK;

    move-result-object v3

    .line 8
    sget-object v5, Lcom/github/catvod/spider/merge1/aQ/se$DK;->X:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    if-ne v3, v5, :cond_39

    return-object v3

    .line 9
    :cond_39
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->et()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    .line 10
    sget-object v6, Lcom/github/catvod/spider/merge1/aQ/se$DK;->jl:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    if-ne v3, v6, :cond_46

    .line 11
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->nK()V

    :cond_46
    move-object v3, v4

    move-object v1, v5

    goto :goto_1f

    .line 12
    :cond_49
    :goto_49
    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/se$DK;->W:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    if-eq v3, v4, :cond_51

    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/se$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    if-ne v3, v4, :cond_5a

    .line 13
    :cond_51
    invoke-interface {p0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/se;->W(Lcom/github/catvod/spider/merge1/aQ/iV;I)Lcom/github/catvod/spider/merge1/aQ/se$DK;

    move-result-object v3

    .line 14
    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/se$DK;->X:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    if-ne v3, v4, :cond_5a

    return-object v3

    :cond_5a
    if-ne v1, p1, :cond_5d

    return-object v3

    .line 15
    :cond_5d
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->r()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v4

    .line 16
    sget-object v5, Lcom/github/catvod/spider/merge1/aQ/se$DK;->jl:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    if-ne v3, v5, :cond_68

    .line 17
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->nK()V

    :cond_68
    move-object v1, v4

    goto :goto_3

    .line 18
    :cond_6a
    sget-object p0, Lcom/github/catvod/spider/merge1/aQ/se$DK;->W:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    return-object p0
.end method
