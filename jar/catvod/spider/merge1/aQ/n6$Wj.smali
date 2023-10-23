.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$Wj;
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
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->X()C

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_34

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_28

    const v1, 0xffff

    if-eq v0, v1, :cond_1c

    .line 2
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->JW()V

    .line 3
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->dM:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4a

    .line 4
    :cond_1c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 5
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->T()V

    .line 6
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4a

    .line 7
    :cond_28
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 8
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->T()V

    .line 9
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4a

    .line 10
    :cond_34
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->JM:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4a

    .line 11
    :cond_3a
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 12
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->f:Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->f(C)Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    .line 13
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->dM:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :goto_4a
    return-void
.end method
