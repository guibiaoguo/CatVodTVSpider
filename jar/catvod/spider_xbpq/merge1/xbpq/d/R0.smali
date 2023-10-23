.class final enum Lcom/github/catvod/spider/merge1/xbpq/d/R0;
.super Lcom/github/catvod/spider/merge1/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "DoctypePublicIdentifier_doubleQuoted"

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge1/xbpq/d/Q;Lcom/github/catvod/spider/merge1/xbpq/d/a;)V
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge1/xbpq/d/c0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->e()C

    move-result p2

    if-eqz p2, :cond_33

    const/16 v1, 0x22

    if-eq p2, v1, :cond_2d

    const/16 v1, 0x3e

    const/4 v2, 0x1

    if-eq p2, v1, :cond_1f

    const v1, 0xffff

    if-eq p2, v1, :cond_1b

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->m:Lcom/github/catvod/spider/merge1/xbpq/d/J;

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/xbpq/d/J;->d:Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_1b
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->p(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_22

    :cond_1f
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    :goto_22
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->m:Lcom/github/catvod/spider/merge1/xbpq/d/J;

    iput-boolean v2, p2, Lcom/github/catvod/spider/merge1/xbpq/d/J;->f:Z

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->n()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_40

    :cond_2d
    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->i0:Lcom/github/catvod/spider/merge1/xbpq/d/T0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_40

    :cond_33
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->m:Lcom/github/catvod/spider/merge1/xbpq/d/J;

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/xbpq/d/J;->d:Ljava/lang/StringBuilder;

    const p2, 0xfffd

    :goto_3d
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_40
    return-void
.end method
