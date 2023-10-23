.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$P;
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

    if-eqz v0, :cond_30

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2a

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_24

    const v1, 0xffff

    if-eq v0, v1, :cond_1b

    .line 2
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->y()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->nN(Ljava/lang/String;)V

    goto :goto_3a

    .line 4
    :cond_1b
    new-instance p2, Lcom/github/catvod/spider/merge1/aQ/lK$tb;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge1/aQ/lK$tb;-><init>()V

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->o(Lcom/github/catvod/spider/merge1/aQ/lK;)V

    goto :goto_3a

    .line 5
    :cond_24
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->A:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_3a

    .line 6
    :cond_2a
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->Eg:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_3a

    .line 7
    :cond_30
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 8
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->X()C

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    :goto_3a
    return-void
.end method
