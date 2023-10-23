.class final enum Lcom/github/catvod/spider/merge1/xbpq/d/O0;
.super Lcom/github/catvod/spider/merge1/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "AfterDoctypeName"

    const/16 v1, 0x35

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge1/xbpq/d/Q;Lcom/github/catvod/spider/merge1/xbpq/d/a;)V
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge1/xbpq/d/c0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->t()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->p(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->m:Lcom/github/catvod/spider/merge1/xbpq/d/J;

    iput-boolean v2, p2, Lcom/github/catvod/spider/merge1/xbpq/d/J;->f:Z

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->n()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    return-void

    :cond_17
    const/4 v1, 0x5

    new-array v1, v1, [C

    fill-array-data v1, :array_64

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->z([C)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->a()V

    goto :goto_63

    :cond_27
    const/16 v1, 0x3e

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->y(C)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->n()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->a(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_63

    :cond_36
    const-string v0, "PUBLIC"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->x(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object p2, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->m:Lcom/github/catvod/spider/merge1/xbpq/d/J;

    iput-object v0, p2, Lcom/github/catvod/spider/merge1/xbpq/d/J;->c:Ljava/lang/String;

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->e0:Lcom/github/catvod/spider/merge1/xbpq/d/P0;

    goto :goto_53

    :cond_45
    const-string v0, "SYSTEM"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->x(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_57

    iget-object p2, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->m:Lcom/github/catvod/spider/merge1/xbpq/d/J;

    iput-object v0, p2, Lcom/github/catvod/spider/merge1/xbpq/d/J;->c:Ljava/lang/String;

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->k0:Lcom/github/catvod/spider/merge1/xbpq/d/W0;

    :goto_53
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_63

    :cond_57
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->m:Lcom/github/catvod/spider/merge1/xbpq/d/J;

    iput-boolean v2, p2, Lcom/github/catvod/spider/merge1/xbpq/d/J;->f:Z

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->p0:Lcom/github/catvod/spider/merge1/xbpq/d/b1;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->a(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    :goto_63
    return-void

    :array_64
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
