.class public final Lcom/github/catvod/spider/merge1/aQ/u5$n;
.super Lcom/github/catvod/spider/merge1/aQ/u5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
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
    .registers 7

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    .line 2
    instance-of v1, p1, Lcom/github/catvod/spider/merge1/aQ/Yw;

    if-eqz v1, :cond_c

    goto :goto_36

    .line 3
    :cond_c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->mW()Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 5
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/li;->db()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v2

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->db()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge1/aQ/n8;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_32
    const/4 p1, 0x1

    if-ne v1, p1, :cond_36

    const/4 v0, 0x1

    :cond_36
    :goto_36
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ":only-of-type"

    return-object v0
.end method
