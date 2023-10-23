.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$U;
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
    .registers 4

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->X()C

    move-result p2

    if-eqz p2, :cond_3c

    const/16 v0, 0x2d

    if-eq p2, v0, :cond_36

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_2a

    const v0, 0xffff

    if-eq p2, v0, :cond_1e

    .line 2
    iget-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->f:Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    invoke-virtual {v0, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->f(C)Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    .line 3
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->dM:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4c

    .line 4
    :cond_1e
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 5
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->T()V

    .line 6
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4c

    .line 7
    :cond_2a
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 8
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->T()V

    .line 9
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4c

    .line 10
    :cond_36
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->JM:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4c

    .line 11
    :cond_3c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 12
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->f:Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->f(C)Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    .line 13
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->dM:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :goto_4c
    return-void
.end method
