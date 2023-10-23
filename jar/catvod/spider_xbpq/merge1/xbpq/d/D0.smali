.class final enum Lcom/github/catvod/spider/merge1/xbpq/d/D0;
.super Lcom/github/catvod/spider/merge1/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "MarkupDeclarationOpen"

    const/16 v1, 0x2b

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge1/xbpq/d/Q;Lcom/github/catvod/spider/merge1/xbpq/d/a;)V
    .registers 4

    const-string v0, "--"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->n:Lcom/github/catvod/spider/merge1/xbpq/d/I;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/I;->g()Lcom/github/catvod/spider/merge1/xbpq/d/O;

    .line 2
    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->U:Lcom/github/catvod/spider/merge1/xbpq/d/E0;

    goto :goto_28

    :cond_10
    const-string v0, "DOCTYPE"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->a0:Lcom/github/catvod/spider/merge1/xbpq/d/L0;

    goto :goto_28

    :cond_1b
    const-string v0, "[CDATA["

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->w(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2c

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->h()V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->q0:Lcom/github/catvod/spider/merge1/xbpq/d/c1;

    :goto_28
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_37

    :cond_2c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->e()V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->S:Lcom/github/catvod/spider/merge1/xbpq/d/C0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->a(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    :goto_37
    return-void
.end method
