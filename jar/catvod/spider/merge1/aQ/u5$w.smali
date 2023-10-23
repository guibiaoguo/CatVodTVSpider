.class public final Lcom/github/catvod/spider/merge1/aQ/u5$w;
.super Lcom/github/catvod/spider/merge1/aQ/u5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "w"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public W(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 8

    .line 1
    instance-of p1, p2, Lcom/github/catvod/spider/merge1/aQ/Vl;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_6
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->iJ()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/Gn;

    .line 4
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/Vl;

    .line 5
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->oT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/github/catvod/spider/merge1/aQ/n8;->P(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v2

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/github/catvod/spider/merge1/aQ/Vl;-><init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->V(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_e

    :cond_36
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ":matchText"

    return-object v0
.end method
