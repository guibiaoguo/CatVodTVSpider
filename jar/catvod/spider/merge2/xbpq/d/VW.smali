.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/VW;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "RCDATAEndTagName"

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method

.method private h(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 4

    const-string v0, "</"

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->k(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->l(Ljava/lang/StringBuilder;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->G()V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->e:Lcom/github/catvod/spider/merge2/xbpq/d/y0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->C()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->j()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {v0, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->o(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_15
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->e()C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4b

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4b

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4b

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4b

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_42

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_36

    goto :goto_57

    :cond_36
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->s()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->o()V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    goto :goto_53

    :cond_42
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->s()Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->R:Lcom/github/catvod/spider/merge2/xbpq/d/B2;

    goto :goto_53

    :cond_4b
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->s()Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->J:Lcom/github/catvod/spider/merge2/xbpq/d/s0;

    :goto_53
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_5a

    :cond_57
    :goto_57
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/VW;->h(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V

    :goto_5a
    return-void
.end method
