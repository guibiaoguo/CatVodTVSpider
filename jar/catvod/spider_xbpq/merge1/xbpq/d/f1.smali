.class final enum Lcom/github/catvod/spider/merge1/xbpq/d/f1;
.super Lcom/github/catvod/spider/merge1/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "TagOpen"

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge1/xbpq/d/Q;Lcom/github/catvod/spider/merge1/xbpq/d/a;)V
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->s()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_34

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_31

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_2b

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->C()Z

    move-result p2

    if-eqz p2, :cond_1d

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->g(Z)Lcom/github/catvod/spider/merge1/xbpq/d/N;

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->l:Lcom/github/catvod/spider/merge1/xbpq/d/S;

    goto :goto_27

    :cond_1d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->q(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->i(C)V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge1/xbpq/d/c0;

    :goto_27
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_39

    :cond_2b
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->e()V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->S:Lcom/github/catvod/spider/merge1/xbpq/d/C0;

    goto :goto_36

    :cond_31
    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->k:Lcom/github/catvod/spider/merge1/xbpq/d/g1;

    goto :goto_36

    :cond_34
    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->T:Lcom/github/catvod/spider/merge1/xbpq/d/D0;

    :goto_36
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->a(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    :goto_39
    return-void
.end method
