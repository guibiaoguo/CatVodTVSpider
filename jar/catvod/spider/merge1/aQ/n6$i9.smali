.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$i9;
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

    const-string v0, "--"

    if-eqz p2, :cond_52

    const/16 v1, 0x21

    if-eq p2, v1, :cond_49

    const/16 v1, 0x2d

    if-eq p2, v1, :cond_40

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_37

    const v1, 0xffff

    if-eq p2, v1, :cond_2b

    .line 2
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 3
    iget-object v1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->f:Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->mw(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->f(C)Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    .line 4
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->dM:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_66

    .line 5
    :cond_2b
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 6
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->T()V

    .line 7
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_66

    .line 8
    :cond_37
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->T()V

    .line 9
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_66

    .line 10
    :cond_40
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 11
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->f:Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->f(C)Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    goto :goto_66

    .line 12
    :cond_49
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 13
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->WF:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_66

    .line 14
    :cond_52
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 15
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->f:Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->mw(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    move-result-object p2

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->f(C)Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    .line 16
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->dM:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :goto_66
    return-void
.end method
