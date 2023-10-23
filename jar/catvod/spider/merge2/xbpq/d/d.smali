.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/d;
.super Lcom/github/catvod/spider/merge2/xbpq/d/AB;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InCaption"

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->e()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "caption"

    if-eqz v0, :cond_3d

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 2
    iget-object v3, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 4
    iget-object p1, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->B(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_20

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v1

    :cond_20
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :cond_31
    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->V(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->i()V

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->k:Lcom/github/catvod/spider/merge2/xbpq/d/y;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    goto :goto_71

    :cond_3d
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->f()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 7
    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 8
    sget-object v3, Lcom/github/catvod/spider/merge2/xbpq/d/z;->A:[Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    :cond_50
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->e()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 9
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 10
    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    const-string v3, "table"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    :cond_63
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1

    :cond_71
    :goto_71
    const/4 p1, 0x1

    return p1

    :cond_73
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->e()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 12
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 13
    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 14
    sget-object v2, Lcom/github/catvod/spider/merge2/xbpq/d/z;->L:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v1

    :cond_8a
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->i:Lcom/github/catvod/spider/merge2/xbpq/d/w;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    return p1
.end method
