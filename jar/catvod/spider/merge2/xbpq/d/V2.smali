.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/V2;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "BetweenDoctypePublicAndSystemIdentifiers"

    const/16 v1, 0x3b

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->e()C

    move-result p2

    const/16 v1, 0x9

    if-eq p2, v1, :cond_52

    const/16 v1, 0xa

    if-eq p2, v1, :cond_52

    const/16 v1, 0xc

    if-eq p2, v1, :cond_52

    const/16 v1, 0xd

    if-eq p2, v1, :cond_52

    const/16 v1, 0x20

    if-eq p2, v1, :cond_52

    const/16 v1, 0x22

    if-eq p2, v1, :cond_4a

    const/16 v1, 0x27

    if-eq p2, v1, :cond_44

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_3d

    const v1, 0xffff

    const/4 v2, 0x1

    if-eq p2, v1, :cond_36

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->m:Lcom/github/catvod/spider/merge2/xbpq/d/JK;

    iput-boolean v2, p2, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->f:Z

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->p0:Lcom/github/catvod/spider/merge2/xbpq/d/b1;

    goto :goto_4f

    :cond_36
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->p(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->m:Lcom/github/catvod/spider/merge2/xbpq/d/JK;

    iput-boolean v2, p2, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->f:Z

    :cond_3d
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->n()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_52

    :cond_44
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->n0:Lcom/github/catvod/spider/merge2/xbpq/d/Z2;

    goto :goto_4f

    :cond_4a
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->m0:Lcom/github/catvod/spider/merge2/xbpq/d/Y2;

    :goto_4f
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :cond_52
    :goto_52
    return-void
.end method
