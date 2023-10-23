.class public final Lcom/github/catvod/spider/merge2/xbpq/c/e;
.super Lcom/github/catvod/spider/merge2/xbpq/c/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/p;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->j()Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/e;

    return-object v0
.end method

.method public final bridge synthetic h()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->j()Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/e;

    return-object v0
.end method

.method public final m()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 1

    return-object p0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    const-string v0, "#comment"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final w(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    .registers 6

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge2/xbpq/c/g;->f()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->d:I

    if-nez v0, :cond_20

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    instance-of v1, v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz v1, :cond_20

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->m0()Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->a()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_20

    :cond_1d
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->r(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V

    :cond_20
    :goto_20
    const-string p2, "<!--"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->I()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "-->"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method final x(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    .registers 4

    return-void
.end method
