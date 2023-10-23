.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/C2;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "BogusComment"

    const/16 v1, 0x2a

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 6

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->G()V

    iget-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->n:Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    const/16 v1, 0x3e

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->o(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->e()C

    move-result p2

    if-eq p2, v1, :cond_19

    const v0, 0xffff

    if-ne p2, v0, :cond_21

    :cond_19
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->m()V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :cond_21
    return-void
.end method
