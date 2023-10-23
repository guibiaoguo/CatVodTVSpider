.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$DK;
.super Lcom/github/catvod/spider/merge1/aQ/n6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/n6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/github/catvod/spider/merge1/aQ/n6;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/aQ/n6$P;)V

    return-void
.end method


# virtual methods
.method cG(Lcom/github/catvod/spider/merge1/aQ/WL;Lcom/github/catvod/spider/merge1/aQ/sJ;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->o()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->lB(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->X()C

    move-result v0

    if-eqz v0, :cond_5e

    const/16 v1, 0x20

    if-eq v0, v1, :cond_58

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_52

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_43

    const/16 p2, 0x3e

    if-eq v0, p2, :cond_49

    const p2, 0xffff

    if-eq v0, p2, :cond_3a

    const/16 p2, 0x9

    if-eq v0, p2, :cond_58

    const/16 p2, 0xa

    if-eq v0, p2, :cond_58

    const/16 p2, 0xc

    if-eq v0, p2, :cond_58

    const/16 p2, 0xd

    if-eq v0, p2, :cond_58

    .line 4
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->cs(C)V

    goto :goto_67

    .line 5
    :cond_3a
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 6
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_67

    .line 7
    :cond_43
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->JW()V

    .line 8
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 9
    :cond_49
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->mw()V

    .line 10
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_67

    .line 11
    :cond_52
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->Cv:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_67

    .line 12
    :cond_58
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->j:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_67

    .line 13
    :cond_5e
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/n6;->Ku()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->lB(Ljava/lang/String;)V

    :goto_67
    return-void
.end method
