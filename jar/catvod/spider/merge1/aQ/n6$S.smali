.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$S;
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

    if-eqz p2, :cond_3f

    const/16 v0, 0x2d

    if-eq p2, v0, :cond_3b

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_32

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_29

    const v0, 0xffff

    if-eq p2, v0, :cond_20

    .line 2
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    .line 3
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->et:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4d

    .line 4
    :cond_20
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 5
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4d

    .line 6
    :cond_29
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    .line 7
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->i:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4d

    .line 8
    :cond_32
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    .line 9
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->nK:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4d

    .line 10
    :cond_3b
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    goto :goto_4d

    .line 11
    :cond_3f
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    const p2, 0xfffd

    .line 12
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    .line 13
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->et:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :goto_4d
    return-void
.end method
