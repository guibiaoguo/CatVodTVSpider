.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$tS;
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

    const/16 v1, 0x21

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_37

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_2e

    .line 2
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->nK()Z

    move-result p2

    if-eqz p2, :cond_20

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->A(Z)Lcom/github/catvod/spider/merge1/aQ/lK$l;

    .line 4
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->O2:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_42

    .line 5
    :cond_20
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    const/16 p2, 0x3c

    .line 6
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    .line 7
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_42

    .line 8
    :cond_2e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->X()V

    .line 9
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->z:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_42

    .line 10
    :cond_37
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->cG:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_42

    .line 11
    :cond_3d
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->c:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :goto_42
    return-void
.end method
