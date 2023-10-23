.class abstract Lcom/github/catvod/spider/merge2/xbpq/c/p;
.super Lcom/github/catvod/spider/merge2/xbpq/c/r;
.source "SourceFile"


# instance fields
.field f:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;-><init>()V

    return-void
.end method

.method private J()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/p;->f:Ljava/lang/Object;

    instance-of v1, v0, Lcom/github/catvod/spider/merge2/xbpq/c/c;

    if-nez v1, :cond_18

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;-><init>()V

    iput-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/p;->f:Ljava/lang/Object;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->t()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/c;

    :cond_18
    return-void
.end method


# virtual methods
.method final I()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->J()V

    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/p;->f:Ljava/lang/Object;

    instance-of v0, v0, Lcom/github/catvod/spider/merge2/xbpq/c/c;

    if-nez v0, :cond_11

    const-string v0, "#doctype"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/c/p;->f:Ljava/lang/Object;

    goto :goto_17

    :cond_11
    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->J()V

    invoke-super {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/r;

    :goto_17
    return-object p0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/p;->f:Ljava/lang/Object;

    instance-of v0, v0, Lcom/github/catvod/spider/merge2/xbpq/c/c;

    if-nez v0, :cond_1b

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/p;->f:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_1a

    :cond_18
    const-string p1, ""

    :goto_1a
    return-object p1

    :cond_1b
    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/github/catvod/spider/merge2/xbpq/c/c;
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->J()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/p;->f:Ljava/lang/Object;

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/c;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_e

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_e
    const-string v0, ""

    :goto_10
    return-object v0
.end method

.method public h()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final k(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->k(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/c/p;

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/p;->f:Ljava/lang/Object;

    instance-of v1, v0, Lcom/github/catvod/spider/merge2/xbpq/c/c;

    if-eqz v1, :cond_14

    .line 3
    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->h()Lcom/github/catvod/spider/merge2/xbpq/c/c;

    move-result-object v0

    iput-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/c/p;->f:Ljava/lang/Object;

    :cond_14
    return-object p1
.end method

.method protected final l(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public m()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 1

    return-object p0
.end method

.method protected final n()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge2/xbpq/c/r;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->e:Ljava/util/List;

    return-object v0
.end method

.method protected final p()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/p;->f:Ljava/lang/Object;

    instance-of v0, v0, Lcom/github/catvod/spider/merge2/xbpq/c/c;

    return v0
.end method
