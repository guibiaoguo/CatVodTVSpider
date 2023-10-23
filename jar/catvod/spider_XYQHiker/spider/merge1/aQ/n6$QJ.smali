.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$QJ;
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
    .registers 6

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->JW()V

    .line 2
    iget-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->f:Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    const/16 v1, 0x3e

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/sJ;->P(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->mw(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    .line 3
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->X()C

    move-result p2

    if-eq p2, v1, :cond_19

    const v0, 0xffff

    if-ne p2, v0, :cond_21

    .line 4
    :cond_19
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->T()V

    .line 5
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :cond_21
    return-void
.end method
