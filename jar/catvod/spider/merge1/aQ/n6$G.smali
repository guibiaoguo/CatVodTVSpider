.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$G;
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
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->X()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_34

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2b

    const v1, 0xffff

    const-string v2, "<"

    if-eq v0, v1, :cond_1f

    .line 2
    invoke-virtual {p1, v2}, Lcom/github/catvod/spider/merge1/aQ/WL;->nN(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->JW()V

    .line 4
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->i:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_3e

    .line 5
    :cond_1f
    invoke-virtual {p1, v2}, Lcom/github/catvod/spider/merge1/aQ/WL;->nN(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 7
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_3e

    .line 8
    :cond_2b
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->cG()V

    .line 9
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->d:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_3e

    :cond_34
    const-string p2, "<!"

    .line 10
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->nN(Ljava/lang/String;)V

    .line 11
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->r:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :goto_3e
    return-void
.end method
