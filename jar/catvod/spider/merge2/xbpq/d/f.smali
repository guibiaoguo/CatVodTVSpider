.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/f;
.super Lcom/github/catvod/spider/merge2/xbpq/d/AB;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InTableBody"

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/m;)V

    return-void
.end method

.method private e(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 5

    const-string v0, "tbody"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->B(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "thead"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->B(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    const-string v1, "tfoot"

    .line 1
    invoke-virtual {p2, v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    const/4 p1, 0x0

    return p1

    :cond_1e
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->k()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 9

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->k:Lcom/github/catvod/spider/merge2/xbpq/d/y;

    iget v1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->a:I

    invoke-static {v1}, Lcom/github/catvod/spider/merge2/xbpq/a/a;->a(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_53

    const/4 v3, 0x2

    if-eq v1, v3, :cond_13

    .line 1
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    return p1

    .line 2
    :cond_13
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 3
    iget-object v1, v1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 4
    sget-object v3, Lcom/github/catvod/spider/merge2/xbpq/d/z;->J:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->B(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v4

    :cond_2b
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->k()V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->U()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    goto :goto_77

    :cond_35
    const-string v2, "table"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/f;->e(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z

    move-result p1

    return p1

    :cond_42
    sget-object v2, Lcom/github/catvod/spider/merge2/xbpq/d/z;->E:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v4

    .line 5
    :cond_4e
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    return p1

    .line 6
    :cond_53
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 7
    iget-object v3, v1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    const-string v4, "template"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_77

    :cond_64
    const-string v4, "tr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->k()V

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->p:Lcom/github/catvod/spider/merge2/xbpq/d/g;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :goto_77
    return v2

    :cond_78
    sget-object v2, Lcom/github/catvod/spider/merge2/xbpq/d/z;->x:[Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2, v4}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->f(Ljava/lang/String;)Z

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1

    :cond_8b
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/z;->D:[Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/f;->e(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z

    move-result p1

    return p1

    .line 9
    :cond_98
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    return p1
.end method
