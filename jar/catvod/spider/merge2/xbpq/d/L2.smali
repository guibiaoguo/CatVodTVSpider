.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/L2;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "Doctype"

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 5

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->b0:Lcom/github/catvod/spider/merge2/xbpq/d/M2;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->e()C

    move-result p2

    const/16 v1, 0x9

    if-eq p2, v1, :cond_3e

    const/16 v1, 0xa

    if-eq p2, v1, :cond_3e

    const/16 v1, 0xc

    if-eq p2, v1, :cond_3e

    const/16 v1, 0xd

    if-eq p2, v1, :cond_3e

    const/16 v1, 0x20

    if-eq p2, v1, :cond_3e

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_2a

    const v1, 0xffff

    if-eq p2, v1, :cond_27

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_3e

    :cond_27
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->p(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :cond_2a
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->f()V

    iget-object p2, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->m:Lcom/github/catvod/spider/merge2/xbpq/d/JK;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->f:Z

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->n()V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_41

    :cond_3e
    :goto_3e
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :goto_41
    return-void
.end method
