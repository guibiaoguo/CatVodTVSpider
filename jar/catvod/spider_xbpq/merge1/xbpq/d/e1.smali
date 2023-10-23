.class final enum Lcom/github/catvod/spider/merge1/xbpq/d/e1;
.super Lcom/github/catvod/spider/merge1/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "PLAINTEXT"

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge1/xbpq/d/Q;Lcom/github/catvod/spider/merge1/xbpq/d/a;)V
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->s()C

    move-result v0

    if-eqz v0, :cond_1d

    const v1, 0xffff

    if-eq v0, v1, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->o(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->k(Ljava/lang/String;)V

    goto :goto_29

    :cond_14
    new-instance p2, Lcom/github/catvod/spider/merge1/xbpq/d/K;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/K;-><init>()V

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->j(Lcom/github/catvod/spider/merge1/xbpq/d/O;)V

    goto :goto_29

    :cond_1d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->a()V

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->i(C)V

    :goto_29
    return-void
.end method
