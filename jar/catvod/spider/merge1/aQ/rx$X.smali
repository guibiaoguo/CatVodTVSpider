.class final enum Lcom/github/catvod/spider/merge1/aQ/rx$X;
.super Lcom/github/catvod/spider/merge1/aQ/rx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/rx;
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
    invoke-direct {p0, p1, p2, v0}, Lcom/github/catvod/spider/merge1/aQ/rx;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/aQ/rx$P;)V

    return-void
.end method


# virtual methods
.method O2(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->y()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->W()Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->z(Lcom/github/catvod/spider/merge1/aQ/lK$c;)V

    goto :goto_36

    .line 3
    :cond_e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->O2()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 5
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->l()Lcom/github/catvod/spider/merge1/aQ/li;

    .line 6
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->n7()Lcom/github/catvod/spider/merge1/aQ/rx;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 7
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1

    .line 8
    :cond_26
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->nN()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 9
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->l()Lcom/github/catvod/spider/merge1/aQ/li;

    .line 10
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->n7()Lcom/github/catvod/spider/merge1/aQ/rx;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    :cond_36
    :goto_36
    const/4 p1, 0x1

    return p1
.end method
