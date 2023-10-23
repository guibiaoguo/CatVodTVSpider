.class public final Lcom/github/catvod/spider/merge2/xbpq/e/FG;
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
    .registers 3

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->R()Lcom/github/catvod/spider/merge2/xbpq/e/g;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->U()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method protected final c()Ljava/lang/String;
    .registers 2

    const-string v0, "nth-last-child"

    return-object v0
.end method
