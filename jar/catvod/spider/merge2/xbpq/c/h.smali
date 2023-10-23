.class public final Lcom/github/catvod/spider/merge2/xbpq/c/h;
.super Lcom/github/catvod/spider/merge2/xbpq/c/l;
.source "SourceFile"


# instance fields
.field private l:Lcom/github/catvod/spider/merge2/xbpq/c/g;

.field private m:Lcom/github/catvod/spider/merge2/xbpq/d/EF;

.field private n:I


# direct methods
.method public constructor <init>()V
    .registers 4

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->c:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    const-string v1, "#root"

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/d/DE;)Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/FG;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/g;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/h;->l:Lcom/github/catvod/spider/merge2/xbpq/c/g;

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/h;->n:I

    .line 3
    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/d/b;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;-><init>()V

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/EF;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/i1;)V

    .line 4
    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/h;->m:Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    return-void
.end method


# virtual methods
.method public final bridge synthetic S()Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/h;->r0()Lcom/github/catvod/spider/merge2/xbpq/c/h;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/h;->r0()Lcom/github/catvod/spider/merge2/xbpq/c/h;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/h;->r0()Lcom/github/catvod/spider/merge2/xbpq/c/h;

    move-result-object v0

    return-object v0
.end method

.method public final o0(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->Q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "html"

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_25

    :cond_21
    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->M(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v1

    .line 2
    :goto_25
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->Q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "body"

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "frameset"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_56

    :cond_52
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->M(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v2

    .line 3
    :cond_56
    :goto_56
    invoke-virtual {v2, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->o0(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object p0
.end method

.method public final r0()Lcom/github/catvod/spider/merge2/xbpq/c/h;
    .registers 3

    invoke-super {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->S()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/h;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/h;->l:Lcom/github/catvod/spider/merge2/xbpq/c/g;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/g;->a()Lcom/github/catvod/spider/merge2/xbpq/c/g;

    move-result-object v1

    iput-object v1, v0, Lcom/github/catvod/spider/merge2/xbpq/c/h;->l:Lcom/github/catvod/spider/merge2/xbpq/c/g;

    return-object v0
.end method

.method public final s0()Lcom/github/catvod/spider/merge2/xbpq/c/g;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/h;->l:Lcom/github/catvod/spider/merge2/xbpq/c/g;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    const-string v0, "#document"

    return-object v0
.end method

.method public final t0(Lcom/github/catvod/spider/merge2/xbpq/d/EF;)Lcom/github/catvod/spider/merge2/xbpq/c/h;
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/h;->m:Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    return-object p0
.end method

.method public final u()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->X()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u0()Lcom/github/catvod/spider/merge2/xbpq/d/EF;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/h;->m:Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    return-object v0
.end method

.method public final v0()Lcom/github/catvod/spider/merge2/xbpq/c/h;
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/h;->n:I

    return-object p0
.end method

.method public final w0()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/h;->n:I

    return v0
.end method
