.class final enum Lcom/github/catvod/spider/merge1/xbpq/d/g0;
.super Lcom/github/catvod/spider/merge1/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "ScriptDataEscapedDash"

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge1/xbpq/d/Q;Lcom/github/catvod/spider/merge1/xbpq/d/a;)V
    .registers 5

    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->x:Lcom/github/catvod/spider/merge1/xbpq/d/f0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->t()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->p(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge1/xbpq/d/c0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    return-void

    :cond_11
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->e()C

    move-result p2

    if-eqz p2, :cond_2c

    const/16 v1, 0x2d

    if-eq p2, v1, :cond_23

    const/16 v1, 0x3c

    if-eq p2, v1, :cond_20

    goto :goto_32

    :cond_20
    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->A:Lcom/github/catvod/spider/merge1/xbpq/d/i0;

    goto :goto_28

    :cond_23
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->i(C)V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->z:Lcom/github/catvod/spider/merge1/xbpq/d/h0;

    :goto_28
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_38

    :cond_2c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    const p2, 0xfffd

    :goto_32
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->i(C)V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    :goto_38
    return-void
.end method
