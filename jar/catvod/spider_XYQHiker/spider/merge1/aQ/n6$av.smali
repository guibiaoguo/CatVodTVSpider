.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$av;
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

    const/16 v0, 0x9

    if-eq p2, v0, :cond_41

    const/16 v0, 0xa

    if-eq p2, v0, :cond_41

    const/16 v0, 0xc

    if-eq p2, v0, :cond_41

    const/16 v0, 0xd

    if-eq p2, v0, :cond_41

    const/16 v0, 0x20

    if-eq p2, v0, :cond_41

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_2d

    const v0, 0xffff

    if-eq p2, v0, :cond_2a

    .line 2
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 3
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->Gv:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_46

    .line 4
    :cond_2a
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 5
    :cond_2d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 6
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->y()V

    .line 7
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/github/catvod/spider/merge1/aQ/lK$I;->i:Z

    .line 8
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->f()V

    .line 9
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_46

    .line 10
    :cond_41
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->Gv:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :goto_46
    return-void
.end method
