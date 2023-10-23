.class final enum Lcom/github/catvod/spider/merge1/xbpq/d/B0;
.super Lcom/github/catvod/spider/merge1/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "SelfClosingStartTag"

    const/16 v1, 0x29

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge1/xbpq/d/Q;Lcom/github/catvod/spider/merge1/xbpq/d/a;)V
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge1/xbpq/d/c0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->e()C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_1f

    const v2, 0xffff

    if-eq v1, v2, :cond_1b

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->G()V

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->J:Lcom/github/catvod/spider/merge1/xbpq/d/s0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_2a

    :cond_1b
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->p(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_27

    :cond_1f
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->i:Lcom/github/catvod/spider/merge1/xbpq/d/N;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/github/catvod/spider/merge1/xbpq/d/N;->i:Z

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->o()V

    :goto_27
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    :goto_2a
    return-void
.end method
