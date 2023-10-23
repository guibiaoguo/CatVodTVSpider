.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$qT;
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
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->r()C

    move-result v0

    if-eqz v0, :cond_1d

    const v1, 0xffff

    if-eq v0, v1, :cond_14

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->P(C)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->nN(Ljava/lang/String;)V

    goto :goto_29

    .line 4
    :cond_14
    new-instance p2, Lcom/github/catvod/spider/merge1/aQ/lK$tb;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge1/aQ/lK$tb;-><init>()V

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->o(Lcom/github/catvod/spider/merge1/aQ/lK;)V

    goto :goto_29

    .line 5
    :cond_1d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 6
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->W()V

    const p2, 0xfffd

    .line 7
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    :goto_29
    return-void
.end method
