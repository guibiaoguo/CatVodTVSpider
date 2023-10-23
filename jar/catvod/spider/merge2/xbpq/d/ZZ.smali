.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/ZZ;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "ScriptDataLessthanSign"

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 6

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->e()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_28

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_22

    const v1, 0xffff

    const-string v2, "<"

    invoke-virtual {p1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->k(Ljava/lang/String;)V

    if-eq v0, v1, :cond_1c

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->G()V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->h:Lcom/github/catvod/spider/merge2/xbpq/d/d1;

    goto :goto_2f

    :cond_1c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->p(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    goto :goto_2f

    :cond_22
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->h()V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->t:Lcom/github/catvod/spider/merge2/xbpq/d/a0;

    goto :goto_2f

    :cond_28
    const-string p2, "<!"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->k(Ljava/lang/String;)V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->v:Lcom/github/catvod/spider/merge2/xbpq/d/d0;

    :goto_2f
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    return-void
.end method
