.class final enum Lcom/github/catvod/spider/merge1/xbpq/d/I0;
.super Lcom/github/catvod/spider/merge1/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "CommentEnd"

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge1/xbpq/d/Q;Lcom/github/catvod/spider/merge1/xbpq/d/a;)V
    .registers 7

    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge1/xbpq/d/c0;

    sget-object v1, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->W:Lcom/github/catvod/spider/merge1/xbpq/d/G0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->e()C

    move-result p2

    const-string v2, "--"

    if-eqz p2, :cond_45

    const/16 v3, 0x21

    if-eq p2, v3, :cond_3c

    const/16 v3, 0x2d

    if-eq p2, v3, :cond_33

    const/16 v3, 0x3e

    if-eq p2, v3, :cond_2c

    const v3, 0xffff

    if-eq p2, v3, :cond_29

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    iget-object v0, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->n:Lcom/github/catvod/spider/merge1/xbpq/d/I;

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/I;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/xbpq/d/I;

    invoke-virtual {v0, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/I;->i(C)Lcom/github/catvod/spider/merge1/xbpq/d/I;

    goto :goto_53

    :cond_29
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->p(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    :cond_2c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->m()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_56

    :cond_33
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->n:Lcom/github/catvod/spider/merge1/xbpq/d/I;

    invoke-virtual {p1, v3}, Lcom/github/catvod/spider/merge1/xbpq/d/I;->i(C)Lcom/github/catvod/spider/merge1/xbpq/d/I;

    goto :goto_56

    :cond_3c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->Z:Lcom/github/catvod/spider/merge1/xbpq/d/K0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_56

    :cond_45
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->n:Lcom/github/catvod/spider/merge1/xbpq/d/I;

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/I;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/xbpq/d/I;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/I;->i(C)Lcom/github/catvod/spider/merge1/xbpq/d/I;

    :goto_53
    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    :goto_56
    return-void
.end method
