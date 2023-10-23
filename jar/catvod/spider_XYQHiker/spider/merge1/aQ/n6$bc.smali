.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$bc;
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

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_61

    const/16 v0, 0xa

    if-eq p2, v0, :cond_61

    const/16 v0, 0xc

    if-eq p2, v0, :cond_61

    const/16 v0, 0xd

    if-eq p2, v0, :cond_61

    const/16 v0, 0x20

    if-eq p2, v0, :cond_61

    const/16 v0, 0x22

    if-eq p2, v0, :cond_59

    const/16 v0, 0x27

    if-eq p2, v0, :cond_50

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_47

    const v0, 0xffff

    const/4 v1, 0x1

    if-eq p2, v0, :cond_37

    .line 2
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 3
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iput-boolean v1, p2, Lcom/github/catvod/spider/merge1/aQ/lK$I;->i:Z

    .line 4
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->ZT:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_61

    .line 5
    :cond_37
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 6
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iput-boolean v1, p2, Lcom/github/catvod/spider/merge1/aQ/lK$I;->i:Z

    .line 7
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->f()V

    .line 8
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_61

    .line 9
    :cond_47
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->f()V

    .line 10
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_61

    .line 11
    :cond_50
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 12
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->l:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_61

    .line 13
    :cond_59
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 14
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->n7:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :cond_61
    :goto_61
    return-void
.end method
