.class final enum Lcom/github/catvod/spider/merge1/xbpq/d/M0;
.super Lcom/github/catvod/spider/merge1/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "BeforeDoctypeName"

    const/16 v1, 0x33

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge1/xbpq/d/Q;Lcom/github/catvod/spider/merge1/xbpq/d/a;)V
    .registers 5

    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->c0:Lcom/github/catvod/spider/merge1/xbpq/d/N0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->C()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->f()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    return-void

    :cond_f
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->e()C

    move-result p2

    if-eqz p2, :cond_4d

    const/16 v1, 0x20

    if-eq p2, v1, :cond_60

    const v1, 0xffff

    if-eq p2, v1, :cond_39

    const/16 v1, 0x9

    if-eq p2, v1, :cond_60

    const/16 v1, 0xa

    if-eq p2, v1, :cond_60

    const/16 v1, 0xc

    if-eq p2, v1, :cond_60

    const/16 v1, 0xd

    if-eq p2, v1, :cond_60

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->f()V

    iget-object v1, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->m:Lcom/github/catvod/spider/merge1/xbpq/d/J;

    iget-object v1, v1, Lcom/github/catvod/spider/merge1/xbpq/d/J;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5d

    :cond_39
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->p(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->f()V

    iget-object p2, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->m:Lcom/github/catvod/spider/merge1/xbpq/d/J;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/github/catvod/spider/merge1/xbpq/d/J;->f:Z

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->n()V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge1/xbpq/d/c0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_60

    :cond_4d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->f()V

    iget-object p2, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->m:Lcom/github/catvod/spider/merge1/xbpq/d/J;

    iget-object p2, p2, Lcom/github/catvod/spider/merge1/xbpq/d/J;->b:Ljava/lang/StringBuilder;

    const v1, 0xfffd

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5d
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    :cond_60
    :goto_60
    return-void
.end method
