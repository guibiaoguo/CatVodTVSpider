.class public abstract Lcom/github/catvod/spider/merge1/xbpq/c/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/xbpq/c/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

.field d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->e:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private B(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->n()Ljava/util/List;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_15

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/xbpq/c/r;

    iput p1, v1, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_15
    return-void
.end method


# virtual methods
.method public final A()Lcom/github/catvod/spider/merge1/xbpq/c/r;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    return-object v0
.end method

.method public final C()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->l(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->D(Lcom/github/catvod/spider/merge1/xbpq/c/r;)V

    return-void
.end method

.method protected D(Lcom/github/catvod/spider/merge1/xbpq/c/r;)V
    .registers 4

    iget-object v0, p1, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->e(Z)V

    iget v0, p1, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d:I

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->B(I)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    return-void
.end method

.method public final E(Lcom/github/catvod/spider/merge1/xbpq/c/r;)V
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->l(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    if-ne v1, v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-static {v1}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->e(Z)V

    iget-object v1, p1, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    if-eqz v1, :cond_1b

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->D(Lcom/github/catvod/spider/merge1/xbpq/c/r;)V

    :cond_1b
    iget v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d:I

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->n()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p1, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    .line 2
    iput v1, p1, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    return-void
.end method

.method public F()Lcom/github/catvod/spider/merge1/xbpq/c/r;
    .registers 3

    move-object v0, p0

    :goto_1
    iget-object v1, v0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method public final G(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final H()I
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d:I

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->p()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d()Lcom/github/catvod/spider/merge1/xbpq/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_3b

    :cond_16
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d()Lcom/github/catvod/spider/merge1/xbpq/c/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v2, Lcom/github/catvod/spider/merge1/xbpq/b/j;->d:I

    :try_start_24
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/net/MalformedURLException; {:try_start_24 .. :try_end_29} :catch_32

    :try_start_29
    invoke-static {v2, p1}, Lcom/github/catvod/spider/merge1/xbpq/b/j;->h(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :catch_32
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1
    :try_end_3b
    .catch Ljava/net/MalformedURLException; {:try_start_29 .. :try_end_3b} :catch_3b

    :catch_3b
    :cond_3b
    :goto_3b
    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/xbpq/c/r;
    .registers 4

    invoke-static {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/s;->a(Lcom/github/catvod/spider/merge1/xbpq/c/r;)Lcom/github/catvod/spider/merge1/xbpq/d/E;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/d/D;->c:Lcom/github/catvod/spider/merge1/xbpq/d/D;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/xbpq/d/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d()Lcom/github/catvod/spider/merge1/xbpq/c/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->l(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->p()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d()Lcom/github/catvod/spider/merge1/xbpq/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    return-object v0

    :cond_1b
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2d
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->j()Lcom/github/catvod/spider/merge1/xbpq/c/r;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Lcom/github/catvod/spider/merge1/xbpq/c/c;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public final f(Lcom/github/catvod/spider/merge1/xbpq/c/r;)Lcom/github/catvod/spider/merge1/xbpq/c/r;
    .registers 12

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->l(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    iget v1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d:I

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/github/catvod/spider/merge1/xbpq/c/r;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->n()Ljava/util/List;

    move-result-object p1

    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->z()Lcom/github/catvod/spider/merge1/xbpq/c/r;

    move-result-object v5

    if-eqz v5, :cond_50

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->h()I

    move-result v6

    if-ne v6, v2, :cond_50

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->n()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    :goto_29
    add-int/lit8 v8, v7, -0x1

    if-lez v7, :cond_39

    aget-object v7, v3, v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eq v7, v9, :cond_37

    const/4 v6, 0x0

    goto :goto_3a

    :cond_37
    move v7, v8

    goto :goto_29

    :cond_39
    const/4 v6, 0x1

    :goto_3a
    if-eqz v6, :cond_50

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->m()Lcom/github/catvod/spider/merge1/xbpq/c/r;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p1, v1, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_46
    add-int/lit8 p1, v2, -0x1

    if-lez v2, :cond_7c

    aget-object v2, v3, p1

    iput-object v0, v2, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    move v2, p1

    goto :goto_46

    :cond_50
    const/4 v5, 0x0

    :goto_51
    if-ge v5, v2, :cond_62

    .line 2
    aget-object v6, v3, v5

    if-eqz v6, :cond_5a

    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    :cond_5a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array must not contain any null objects"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_62
    :goto_62
    if-ge v4, v2, :cond_75

    .line 3
    aget-object v5, v3, v4

    .line 4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget-object v6, v5, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    if-eqz v6, :cond_70

    invoke-virtual {v6, v5}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->D(Lcom/github/catvod/spider/merge1/xbpq/c/r;)V

    :cond_70
    iput-object v0, v5, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 6
    :cond_75
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :cond_7c
    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->B(I)V

    return-object p0
.end method

.method public final g(I)Lcom/github/catvod/spider/merge1/xbpq/c/r;
    .registers 3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge1/xbpq/c/r;

    return-object p1
.end method

.method public abstract h()I
.end method

.method public final i()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/xbpq/c/r;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->h()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->e:Ljava/util/List;

    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->n()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/github/catvod/spider/merge1/xbpq/c/r;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->k(Lcom/github/catvod/spider/merge1/xbpq/c/r;)Lcom/github/catvod/spider/merge1/xbpq/c/r;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/xbpq/c/r;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->h()I

    move-result v3

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_d

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->n()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge1/xbpq/c/r;

    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->k(Lcom/github/catvod/spider/merge1/xbpq/c/r;)Lcom/github/catvod/spider/merge1/xbpq/c/r;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_37
    return-object v0
.end method

.method protected k(Lcom/github/catvod/spider/merge1/xbpq/c/r;)Lcom/github/catvod/spider/merge1/xbpq/c/r;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/xbpq/c/r;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_11

    iput-object p1, v0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_e

    :cond_c
    iget p1, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d:I

    :goto_e
    iput p1, v0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d:I

    return-object v0

    :catch_11
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected abstract l(Ljava/lang/String;)V
.end method

.method public abstract m()Lcom/github/catvod/spider/merge1/xbpq/c/r;
.end method

.method protected abstract n()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/xbpq/c/r;",
            ">;"
        }
    .end annotation
.end method

.method public final o(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/xbpq/h/a;->l(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->p()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d()Lcom/github/catvod/spider/merge1/xbpq/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 p1, 0x1

    return p1

    :cond_2e
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d()Lcom/github/catvod/spider/merge1/xbpq/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->m(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract p()Z
.end method

.method public final q()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected final r(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/xbpq/c/g;)V
    .registers 5

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge1/xbpq/c/g;->d()I

    move-result p3

    mul-int p3, p3, p2

    invoke-static {p3}, Lcom/github/catvod/spider/merge1/xbpq/b/j;->f(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public final s()Lcom/github/catvod/spider/merge1/xbpq/c/r;
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->n()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/xbpq/c/r;

    return-object v0

    :cond_1b
    return-object v1
.end method

.method public abstract t()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/github/catvod/spider/merge1/xbpq/b/j;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->v(Ljava/lang/Appendable;)V

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/xbpq/b/j;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final v(Ljava/lang/Appendable;)V
    .registers 4

    new-instance v0, Lcom/github/catvod/spider/merge1/xbpq/c/q;

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->y()Lcom/github/catvod/spider/merge1/xbpq/c/h;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_e

    :cond_9
    new-instance v1, Lcom/github/catvod/spider/merge1/xbpq/c/h;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/xbpq/c/h;-><init>()V

    :goto_e
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/xbpq/c/h;->s0()Lcom/github/catvod/spider/merge1/xbpq/c/g;

    move-result-object v1

    .line 2
    invoke-direct {v0, p1, v1}, Lcom/github/catvod/spider/merge1/xbpq/c/q;-><init>(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/xbpq/c/g;)V

    invoke-static {v0, p0}, Lcom/github/catvod/spider/merge1/xbpq/a/u;->c(Lcom/github/catvod/spider/merge1/xbpq/e/O;Lcom/github/catvod/spider/merge1/xbpq/c/r;)V

    return-void
.end method

.method abstract w(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/xbpq/c/g;)V
.end method

.method abstract x(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/xbpq/c/g;)V
.end method

.method public final y()Lcom/github/catvod/spider/merge1/xbpq/c/h;
    .registers 3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/r;->F()Lcom/github/catvod/spider/merge1/xbpq/c/r;

    move-result-object v0

    instance-of v1, v0, Lcom/github/catvod/spider/merge1/xbpq/c/h;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/github/catvod/spider/merge1/xbpq/c/h;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public z()Lcom/github/catvod/spider/merge1/xbpq/c/r;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/c/r;->c:Lcom/github/catvod/spider/merge1/xbpq/c/r;

    return-object v0
.end method
