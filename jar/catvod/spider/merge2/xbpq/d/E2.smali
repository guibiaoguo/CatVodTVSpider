.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/E2;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "CommentStart"

    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 7

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->W:Lcom/github/catvod/spider/merge2/xbpq/d/G2;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->e()C

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_29

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_1f

    const v3, 0xffff

    if-eq v2, v3, :cond_1b

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->G()V

    goto :goto_3a

    :cond_1b
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->p(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_22

    :cond_1f
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :goto_22
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->m()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_3d

    :cond_29
    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->V:Lcom/github/catvod/spider/merge2/xbpq/d/F2;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_3d

    :cond_2f
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->n:Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->i(C)Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    :goto_3a
    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :goto_3d
    return-void
.end method
