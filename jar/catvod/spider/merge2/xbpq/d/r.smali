.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/r;
.super Lcom/github/catvod/spider/merge2/xbpq/d/AB;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "BeforeHtml"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 8

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->e:Lcom/github/catvod/spider/merge2/xbpq/d/s;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v2

    :cond_d
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->b()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->F(Lcom/github/catvod/spider/merge2/xbpq/d/IJ;)V

    goto :goto_3e

    :cond_19
    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->a(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    .line 4
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->E(Lcom/github/catvod/spider/merge2/xbpq/d/HI;)V

    goto :goto_3e

    :cond_25
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->f()Z

    move-result v1

    const-string v3, "html"

    if-eqz v1, :cond_40

    .line 5
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 6
    iget-object v4, v1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :goto_3e
    const/4 p1, 0x1

    return p1

    :cond_40
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->e()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 8
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 9
    iget-object v1, v1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 10
    sget-object v4, Lcom/github/catvod/spider/merge2/xbpq/d/z;->e:[Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 11
    :cond_53
    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->L(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1

    .line 12
    :cond_5e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->e()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v2
.end method
