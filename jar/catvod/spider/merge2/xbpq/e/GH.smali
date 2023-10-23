.class public Lcom/github/catvod/spider/merge2/xbpq/e/GH;
.super Lcom/github/catvod/spider/merge2/xbpq/e/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/e/t;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final b(Lcom/github/catvod/spider/merge2/xbpq/c/l;)I
    .registers 7

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->R()Lcom/github/catvod/spider/merge2/xbpq/e/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->U()I

    move-result v2

    :goto_14
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->m0()Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->m0()Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    add-int/lit8 v1, v1, 0x1

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_33
    return v1
.end method

.method protected final c()Ljava/lang/String;
    .registers 2

    const-string v0, "nth-last-of-type"

    return-object v0
.end method
