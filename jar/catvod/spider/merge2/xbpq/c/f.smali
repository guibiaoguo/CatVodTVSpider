.class public final Lcom/github/catvod/spider/merge2/xbpq/c/f;
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

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/f;

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

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/f;

    return-object v0
.end method

.method public final m()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 1

    return-object p0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    const-string v0, "#data"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final w(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->I()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method final x(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    .registers 4

    return-void
.end method
