.class final enum Lcom/github/catvod/spider/merge1/xbpq/d/f0;
.super Lcom/github/catvod/spider/merge1/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "ScriptDataEscaped"

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge1/xbpq/d/Q;Lcom/github/catvod/spider/merge1/xbpq/d/a;)V
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->t()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->p(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge1/xbpq/d/c0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    return-void

    :cond_f
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->s()C

    move-result v0

    if-eqz v0, :cond_37

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2b

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_44

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->p([C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->k(Ljava/lang/String;)V

    goto :goto_43

    :cond_2b
    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->A:Lcom/github/catvod/spider/merge1/xbpq/d/i0;

    goto :goto_33

    :cond_2e
    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->i(C)V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->y:Lcom/github/catvod/spider/merge1/xbpq/d/g0;

    :goto_33
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->a(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_43

    :cond_37
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->a()V

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->i(C)V

    :goto_43
    return-void

    :array_44
    .array-data 2
        0x2ds
        0x3cs
        0x0s
    .end array-data
.end method
