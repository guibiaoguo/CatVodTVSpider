.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/y;
.super Lcom/github/catvod/spider/merge2/xbpq/d/AB;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InTable"

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 10

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->R()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->P()V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->l:Lcom/github/catvod/spider/merge2/xbpq/d/c;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1

    :cond_16
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->F(Lcom/github/catvod/spider/merge2/xbpq/d/IJ;)V

    return v1

    :cond_23
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v2

    :cond_2e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->f()Z

    move-result v0

    const-string v3, "table"

    if-eqz v0, :cond_fd

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 4
    iget-object v4, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    const-string v5, "caption"

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->l()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->J()V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->m:Lcom/github/catvod/spider/merge2/xbpq/d/d;

    goto :goto_80

    :cond_4f
    const-string v5, "colgroup"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->l()V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->n:Lcom/github/catvod/spider/merge2/xbpq/d/e;

    goto :goto_80

    :cond_60
    const-string v6, "col"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-virtual {p2, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->f(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1

    :cond_70
    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/d/z;->u:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->l()V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->o:Lcom/github/catvod/spider/merge2/xbpq/d/f;

    :goto_80
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    goto/16 :goto_f7

    :cond_85
    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/d/z;->v:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_97

    const-string v0, "tbody"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->f(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1

    :cond_97
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1

    :cond_ab
    sget-object v3, Lcom/github/catvod/spider/merge2/xbpq/d/z;->w:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ba

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->f:Lcom/github/catvod/spider/merge2/xbpq/d/t;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    return p1

    :cond_ba
    const-string v3, "input"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e2

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->r()Z

    move-result v2

    if-eqz v2, :cond_dd

    iget-object v2, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d9

    goto :goto_dd

    :cond_d9
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->G(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_f7

    :cond_dd
    :goto_dd
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/y;->e(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z

    move-result p1

    return p1

    :cond_e2
    const-string v3, "form"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f8

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->s()Lcom/github/catvod/spider/merge2/xbpq/c/o;

    move-result-object p1

    if-eqz p1, :cond_f4

    return v2

    :cond_f4
    invoke-virtual {p2, v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->H(Lcom/github/catvod/spider/merge2/xbpq/d/MN;Z)Lcom/github/catvod/spider/merge2/xbpq/c/o;

    :cond_f7
    :goto_f7
    return v1

    :cond_f8
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/y;->e(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z

    move-result p1

    return p1

    :cond_fd
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->e()Z

    move-result v0

    if-eqz v0, :cond_130

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 7
    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11f

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->B(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_118

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v2

    :cond_118
    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->V(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->e0()V

    return v1

    :cond_11f
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/z;->B:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12b

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v2

    :cond_12b
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/y;->e(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z

    move-result p1

    return p1

    :cond_130
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->d()Z

    move-result v0

    if-eqz v0, :cond_14a

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object p1

    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_149

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :cond_149
    return v1

    :cond_14a
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/y;->e(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z

    move-result p1

    return p1
.end method

.method final e(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->i:Lcom/github/catvod/spider/merge2/xbpq/d/w;

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/github/catvod/spider/merge2/xbpq/d/z;->C:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->g0(Z)V

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->g0(Z)V

    goto :goto_26

    :cond_22
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    :goto_26
    return p1
.end method
