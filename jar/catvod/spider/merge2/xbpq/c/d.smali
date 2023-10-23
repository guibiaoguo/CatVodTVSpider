.class public final Lcom/github/catvod/spider/merge2/xbpq/c/d;
.super Lcom/github/catvod/spider/merge2/xbpq/c/u;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/u;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic K()Lcom/github/catvod/spider/merge2/xbpq/c/u;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/d;->N()Lcom/github/catvod/spider/merge2/xbpq/c/d;

    move-result-object v0

    return-object v0
.end method

.method public final N()Lcom/github/catvod/spider/merge2/xbpq/c/d;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/u;->K()Lcom/github/catvod/spider/merge2/xbpq/c/u;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/d;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/d;->N()Lcom/github/catvod/spider/merge2/xbpq/c/d;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/d;->N()Lcom/github/catvod/spider/merge2/xbpq/c/d;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    const-string v0, "#cdata"

    return-object v0
.end method

.method final w(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    .registers 4

    const-string p2, "<![CDATA["

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->I()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method final x(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    .registers 4

    :try_start_0
    const-string p2, "]]>"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance p2, Lcom/github/catvod/spider/merge2/xbpq/Y/b;

    invoke-direct {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/Y/b;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
