.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/u;
.super Lcom/github/catvod/spider/merge2/xbpq/d/AB;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InHeadNoscript"

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 7

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->f:Lcom/github/catvod/spider/merge2/xbpq/d/t;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    goto :goto_40

    :cond_d
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->f()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 2
    iget-object v1, v1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    const-string v3, "html"

    .line 3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->i:Lcom/github/catvod/spider/merge2/xbpq/d/w;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    return p1

    :cond_27
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->e()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 4
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 5
    iget-object v1, v1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    const-string v3, "noscript"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->U()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :goto_40
    return v2

    :cond_41
    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->a(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result v1

    if-nez v1, :cond_ae

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->b()Z

    move-result v1

    if-nez v1, :cond_ae

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->f()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 7
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 8
    iget-object v1, v1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 9
    sget-object v3, Lcom/github/catvod/spider/merge2/xbpq/d/z;->f:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_ae

    :cond_61
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->e()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 10
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 11
    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    const-string v1, "br"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 13
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/HI;-><init>()V

    :goto_7c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/HI;->i(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->E(Lcom/github/catvod/spider/merge2/xbpq/d/HI;)V

    return v2

    .line 14
    :cond_87
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->f()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 15
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 16
    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 17
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/z;->K:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a0

    :cond_9a
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->e()Z

    move-result v0

    if-eqz v0, :cond_a5

    :cond_a0
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_a5
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/HI;-><init>()V

    goto :goto_7c

    .line 19
    :cond_ae
    :goto_ae
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    return p1
.end method
