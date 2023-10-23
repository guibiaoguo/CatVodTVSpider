.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/g;
.super Lcom/github/catvod/spider/merge2/xbpq/d/AB;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InRow"

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 9

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->o:Lcom/github/catvod/spider/merge2/xbpq/d/f;

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->k:Lcom/github/catvod/spider/merge2/xbpq/d/y;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->f()Z

    move-result v2

    const-string v3, "tr"

    const/4 v4, 0x0

    if-eqz v2, :cond_4e

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 2
    iget-object v2, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    const-string v5, "template"

    .line 3
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto/16 :goto_9a

    :cond_1f
    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/d/z;->x:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->m()V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->q:Lcom/github/catvod/spider/merge2/xbpq/d/h;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->J()V

    goto :goto_9a

    :cond_36
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/z;->F:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 4
    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result v4

    :cond_48
    return v4

    .line 5
    :cond_49
    invoke-virtual {p2, p1, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    return p1

    .line 6
    :cond_4e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->e()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 7
    move-object v2, p1

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 8
    iget-object v2, v2, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->B(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_91

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v4

    :cond_69
    const-string v5, "table"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 10
    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result v4

    :cond_7b
    return v4

    .line 11
    :cond_7c
    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/d/z;->u:[Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->B(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9c

    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->B(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_91

    goto :goto_9c

    :cond_91
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->m()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->U()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :goto_9a
    const/4 p1, 0x1

    return p1

    :cond_9c
    :goto_9c
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v4

    :cond_a0
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/z;->G:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v4

    .line 12
    :cond_ac
    invoke-virtual {p2, p1, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    return p1

    :cond_b1
    invoke-virtual {p2, p1, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    return p1
.end method
