.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$SS;
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
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->nK()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->O2()Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/lK$I;->Eg:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 4
    :cond_12
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->X()C

    move-result p2

    if-eqz p2, :cond_5d

    const/16 v0, 0x20

    if-eq p2, v0, :cond_57

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_4e

    const v0, 0xffff

    if-eq p2, v0, :cond_3d

    const/16 v0, 0x9

    if-eq p2, v0, :cond_57

    const/16 v0, 0xa

    if-eq p2, v0, :cond_57

    const/16 v0, 0xc

    if-eq p2, v0, :cond_57

    const/16 v0, 0xd

    if-eq p2, v0, :cond_57

    .line 5
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/lK$I;->Eg:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 6
    :cond_3d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 7
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/github/catvod/spider/merge1/aQ/lK$I;->i:Z

    .line 8
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->f()V

    .line 9
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_6a

    .line 10
    :cond_4e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->f()V

    .line 11
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_6a

    .line 12
    :cond_57
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->Bs:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_6a

    .line 13
    :cond_5d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 14
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/lK$I;->Eg:Ljava/lang/StringBuilder;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_6a
    return-void
.end method
