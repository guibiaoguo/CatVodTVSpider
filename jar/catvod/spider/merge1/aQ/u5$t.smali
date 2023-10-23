.class public Lcom/github/catvod/spider/merge1/aQ/u5$t;
.super Lcom/github/catvod/spider/merge1/aQ/u5$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/u5$f;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected Eg(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)I
    .registers 7

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 2
    :cond_8
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->mW()Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 4
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/li;->db()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v2

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->db()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge1/aQ/n8;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    add-int/lit8 v0, v0, 0x1

    :cond_30
    if-ne v1, p2, :cond_14

    :cond_32
    return v0
.end method

.method protected Ku()Ljava/lang/String;
    .registers 2

    const-string v0, "nth-of-type"

    return-object v0
.end method
