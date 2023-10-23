.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/n;
.super Lcom/github/catvod/spider/merge2/xbpq/d/AB;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "AfterFrameset"

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 6

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->a(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->E(Lcom/github/catvod/spider/merge2/xbpq/d/HI;)V

    goto :goto_70

    :cond_c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    .line 4
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->F(Lcom/github/catvod/spider/merge2/xbpq/d/IJ;)V

    goto :goto_70

    :cond_18
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v1

    :cond_23
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->f()Z

    move-result v0

    const-string v2, "html"

    if-eqz v0, :cond_39

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 6
    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->i:Lcom/github/catvod/spider/merge2/xbpq/d/w;

    goto :goto_65

    :cond_39
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->e()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 9
    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->x:Lcom/github/catvod/spider/merge2/xbpq/d/p;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    goto :goto_70

    :cond_50
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->f()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 12
    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    const-string v2, "noframes"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->f:Lcom/github/catvod/spider/merge2/xbpq/d/t;

    :goto_65
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    return p1

    :cond_6a
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->d()Z

    move-result p1

    if-eqz p1, :cond_72

    :goto_70
    const/4 p1, 0x1

    return p1

    :cond_72
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v1
.end method
