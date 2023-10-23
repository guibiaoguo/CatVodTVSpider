.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/ST;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "TagName"

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->o(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->e()C

    move-result v1

    if-eqz v1, :cond_56

    const/16 v2, 0x20

    if-eq v1, v2, :cond_50

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_4d

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_40

    const/16 p2, 0x3e

    if-eq v1, p2, :cond_46

    const p2, 0xffff

    if-eq v1, p2, :cond_3c

    const/16 p2, 0x9

    if-eq v1, p2, :cond_50

    const/16 p2, 0xa

    if-eq v1, p2, :cond_50

    const/16 p2, 0xc

    if-eq v1, p2, :cond_50

    const/16 p2, 0xd

    if-eq v1, p2, :cond_50

    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->n(C)V

    goto :goto_5f

    :cond_3c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->p(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_49

    :cond_40
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->G()V

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :cond_46
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->o()V

    :goto_49
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_5f

    :cond_4d
    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->R:Lcom/github/catvod/spider/merge2/xbpq/d/B2;

    goto :goto_52

    :cond_50
    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->J:Lcom/github/catvod/spider/merge2/xbpq/d/s0;

    :goto_52
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_5f

    :cond_56
    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->o(Ljava/lang/String;)V

    :goto_5f
    return-void
.end method
