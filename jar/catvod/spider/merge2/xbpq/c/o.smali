.class public final Lcom/github/catvod/spider/merge2/xbpq/c/o;
.super Lcom/github/catvod/spider/merge2/xbpq/c/l;
.source "SourceFile"


# instance fields
.field private final l:Lcom/github/catvod/spider/merge2/xbpq/e/g;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge2/xbpq/d/FG;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/FG;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    new-instance p1, Lcom/github/catvod/spider/merge2/xbpq/e/g;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge2/xbpq/e/g;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/o;->l:Lcom/github/catvod/spider/merge2/xbpq/e/g;

    return-void
.end method


# virtual methods
.method protected final D(Lcom/github/catvod/spider/merge2/xbpq/c/r;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->D(Lcom/github/catvod/spider/merge2/xbpq/c/r;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/o;->l:Lcom/github/catvod/spider/merge2/xbpq/e/g;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bridge synthetic S()Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/o;->s0()Lcom/github/catvod/spider/merge2/xbpq/c/o;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/o;->s0()Lcom/github/catvod/spider/merge2/xbpq/c/o;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/o;->s0()Lcom/github/catvod/spider/merge2/xbpq/c/o;

    move-result-object v0

    return-object v0
.end method

.method public final r0(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Lcom/github/catvod/spider/merge2/xbpq/c/o;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/o;->l:Lcom/github/catvod/spider/merge2/xbpq/e/g;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final s0()Lcom/github/catvod/spider/merge2/xbpq/c/o;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->S()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/o;

    return-object v0
.end method
