.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/G2;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "Comment"

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->s()C

    move-result v0

    if-eqz v0, :cond_31

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2b

    const v1, 0xffff

    if-eq v0, v1, :cond_1f

    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->n:Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_40

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->p([C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->j(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    goto :goto_3f

    :cond_1f
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->p(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->m()V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_3f

    :cond_2b
    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->X:Lcom/github/catvod/spider/merge2/xbpq/d/H2;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_3f

    :cond_31
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->a()V

    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->n:Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->i(C)Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    :goto_3f
    return-void

    :array_40
    .array-data 2
        0x2ds
        0x0s
    .end array-data
.end method
