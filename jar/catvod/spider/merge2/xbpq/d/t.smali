.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/t;
.super Lcom/github/catvod/spider/merge2/xbpq/d/AB;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InHead"

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 10

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->j:Lcom/github/catvod/spider/merge2/xbpq/d/x;

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->a(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->E(Lcom/github/catvod/spider/merge2/xbpq/d/HI;)V

    return v2

    :cond_f
    iget v1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->a:I

    invoke-static {v1}, Lcom/github/catvod/spider/merge2/xbpq/a/a;->a(I)I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_f9

    const-string v4, "head"

    if-eq v1, v2, :cond_5a

    const/4 v0, 0x2

    if-eq v1, v0, :cond_31

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2a

    .line 3
    invoke-virtual {p2, v4}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1

    .line 4
    :cond_2a
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    .line 5
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->F(Lcom/github/catvod/spider/merge2/xbpq/d/IJ;)V

    goto/16 :goto_e6

    .line 6
    :cond_31
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 7
    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->U()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->h:Lcom/github/catvod/spider/merge2/xbpq/d/v;

    :goto_41
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    goto/16 :goto_e6

    :cond_46
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/z;->c:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 9
    invoke-virtual {p2, v4}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1

    .line 10
    :cond_56
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v3

    .line 11
    :cond_5a
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 12
    iget-object v5, v1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    const-string v6, "html"

    .line 13
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->i:Lcom/github/catvod/spider/merge2/xbpq/d/w;

    invoke-virtual {v0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/w;->d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z

    move-result p1

    return p1

    :cond_6e
    sget-object v6, Lcom/github/catvod/spider/merge2/xbpq/d/z;->a:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8e

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->G(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p1

    const-string v0, "base"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    const-string v0, "href"

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->Q(Lcom/github/catvod/spider/merge2/xbpq/c/l;)V

    goto :goto_e6

    :cond_8e
    const-string v6, "meta"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->G(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_e6

    :cond_9a
    const-string v6, "title"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 14
    iget-object p1, p2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/QR;

    sget-object v3, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->e:Lcom/github/catvod/spider/merge2/xbpq/d/y0;

    invoke-virtual {p1, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->P()V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_e6

    .line 15
    :cond_b3
    sget-object v6, Lcom/github/catvod/spider/merge2/xbpq/d/z;->b:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_bf

    invoke-static {v1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->b(Lcom/github/catvod/spider/merge2/xbpq/d/MN;Lcom/github/catvod/spider/merge2/xbpq/d/b;)V

    goto :goto_e6

    :cond_bf
    const-string v6, "noscript"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ce

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->g:Lcom/github/catvod/spider/merge2/xbpq/d/u;

    goto/16 :goto_41

    :cond_ce
    const-string v6, "script"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e7

    iget-object p1, p2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/QR;

    sget-object v3, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->h:Lcom/github/catvod/spider/merge2/xbpq/d/d1;

    invoke-virtual {p1, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->P()V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    :cond_e6
    :goto_e6
    return v2

    :cond_e7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v3

    .line 16
    :cond_f1
    invoke-virtual {p2, v4}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1

    .line 17
    :cond_f9
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v3
.end method
