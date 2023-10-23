.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/x;
.super Lcom/github/catvod/spider/merge2/xbpq/d/AB;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "Text"

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->E(Lcom/github/catvod/spider/merge2/xbpq/d/HI;)V

    goto :goto_34

    :cond_c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->d()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->U()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->T()Lcom/github/catvod/spider/merge2/xbpq/d/AB;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result p1

    return p1

    :cond_24
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->e()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->U()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->T()Lcom/github/catvod/spider/merge2/xbpq/d/AB;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :cond_34
    :goto_34
    const/4 p1, 0x1

    return p1
.end method
