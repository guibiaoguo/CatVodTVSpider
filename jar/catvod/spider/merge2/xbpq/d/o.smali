.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/o;
.super Lcom/github/catvod/spider/merge2/xbpq/d/AB;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "AfterAfterBody"

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->i:Lcom/github/catvod/spider/merge2/xbpq/d/w;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->F(Lcom/github/catvod/spider/merge2/xbpq/d/IJ;)V

    goto :goto_4e

    :cond_e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->c()Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->f()Z

    move-result v1

    const-string v2, "html"

    if-eqz v1, :cond_28

    .line 3
    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 4
    iget-object v1, v1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_5b

    :cond_28
    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->a(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->V(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    .line 6
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    .line 7
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->E(Lcom/github/catvod/spider/merge2/xbpq/d/HI;)V

    iget-object p1, p2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    const-string p2, "body"

    invoke-virtual {v0, p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->k0(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_48
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->d()Z

    move-result v1

    if-eqz v1, :cond_50

    :goto_4e
    const/4 p1, 0x1

    return p1

    :cond_50
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1

    :cond_5b
    :goto_5b
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    return p1
.end method
