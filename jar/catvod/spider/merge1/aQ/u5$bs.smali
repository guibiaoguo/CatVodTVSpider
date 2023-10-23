.class public Lcom/github/catvod/spider/merge1/aQ/u5$bs;
.super Lcom/github/catvod/spider/merge1/aQ/u5$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bs"
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
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->fI()I

    move-result v1

    :goto_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/li;->db()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v2

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->db()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge1/aQ/n8;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    add-int/lit8 v0, v0, 0x1

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_33
    return v0
.end method

.method protected Ku()Ljava/lang/String;
    .registers 2

    const-string v0, "nth-last-of-type"

    return-object v0
.end method
