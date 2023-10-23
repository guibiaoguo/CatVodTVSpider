.class final enum Lcom/github/catvod/spider/merge1/xbpq/d/c0;
.super Lcom/github/catvod/spider/merge1/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "Data"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge1/xbpq/d/Q;Lcom/github/catvod/spider/merge1/xbpq/d/a;)V
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->s()C

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v1, 0x26

    if-eq v0, v1, :cond_27

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_24

    const v1, 0xffff

    if-eq v0, v1, :cond_1b

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->k(Ljava/lang/String;)V

    goto :goto_37

    :cond_1b
    new-instance p2, Lcom/github/catvod/spider/merge1/xbpq/d/K;

    invoke-direct {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/K;-><init>()V

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->j(Lcom/github/catvod/spider/merge1/xbpq/d/O;)V

    goto :goto_37

    :cond_24
    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->j:Lcom/github/catvod/spider/merge1/xbpq/d/f1;

    goto :goto_29

    :cond_27
    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->d:Lcom/github/catvod/spider/merge1/xbpq/d/n0;

    :goto_29
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->a(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_37

    :cond_2d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->e()C

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->i(C)V

    :goto_37
    return-void
.end method
