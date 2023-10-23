.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/m;
.super Lcom/github/catvod/spider/merge2/xbpq/d/AB;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "Initial"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 9

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->d:Lcom/github/catvod/spider/merge2/xbpq/d/r;

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->a(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->b()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->F(Lcom/github/catvod/spider/merge2/xbpq/d/IJ;)V

    goto :goto_51

    :cond_16
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->c()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/JK;

    .line 4
    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/c/i;

    iget-object v3, p2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->h:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    .line 5
    iget-object v4, p1, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, p1, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object v5, p1, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-direct {v1, v3, v4, v5}, Lcom/github/catvod/spider/merge2/xbpq/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, p1, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge2/xbpq/c/i;->L(Ljava/lang/String;)V

    .line 12
    iget-object v3, p2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d:Lcom/github/catvod/spider/merge2/xbpq/c/h;

    .line 13
    invoke-virtual {v3, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->L(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    .line 14
    iget-boolean p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->f:Z

    if-eqz p1, :cond_4e

    .line 15
    iget-object p1, p2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d:Lcom/github/catvod/spider/merge2/xbpq/c/h;

    .line 16
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/h;->v0()Lcom/github/catvod/spider/merge2/xbpq/c/h;

    :cond_4e
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :goto_51
    return v2

    :cond_52
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1
.end method
