.class public final Lcom/github/catvod/spider/merge1/xbpq/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/github/catvod/spider/merge1/xbpq/e/g;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge1/xbpq/e/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/xbpq/i/a;->a:Lcom/github/catvod/spider/merge1/xbpq/e/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/xbpq/i/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge1/xbpq/O/f;->b(I)Lcom/github/catvod/spider/merge1/xbpq/O/e;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/O/e;->a(Ljava/nio/CharBuffer;)V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/xbpq/O/e;->d()Lcom/github/catvod/spider/merge1/xbpq/O/f;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/xbpq/O/j;->k(Lcom/github/catvod/spider/merge1/xbpq/O/f;)Lcom/github/catvod/spider/merge1/xbpq/O/j;

    move-result-object p1

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge1/xbpq/f0/a;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge1/xbpq/f0/a;-><init>(Lcom/github/catvod/spider/merge1/xbpq/O/d;)V

    new-instance p1, Lcom/github/catvod/spider/merge1/xbpq/O/m;

    invoke-direct {p1, v1}, Lcom/github/catvod/spider/merge1/xbpq/O/m;-><init>(Lcom/github/catvod/spider/merge1/xbpq/O/F;)V

    new-instance v1, Lcom/github/catvod/spider/merge1/xbpq/f0/D;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge1/xbpq/f0/D;-><init>(Lcom/github/catvod/spider/merge1/xbpq/O/G;)V

    new-instance p1, Lcom/github/catvod/spider/merge1/xbpq/k0/a;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge1/xbpq/k0/a;-><init>()V

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge1/xbpq/O/w;->v(Lcom/github/catvod/spider/merge1/xbpq/O/o;)V

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/xbpq/f0/D;->H()Lcom/github/catvod/spider/merge1/xbpq/f0/n;

    move-result-object p1

    new-instance v1, Lcom/github/catvod/spider/merge1/xbpq/g0/f;

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/xbpq/i/a;->a:Lcom/github/catvod/spider/merge1/xbpq/e/g;

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/g0/f;-><init>(Lcom/github/catvod/spider/merge1/xbpq/e/g;)V

    .line 3
    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge1/xbpq/f0/n;->b(Lcom/github/catvod/spider/merge1/xbpq/S/d;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/github/catvod/spider/merge1/xbpq/g0/e;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/g0/e;->n()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/g0/e;->d()Lcom/github/catvod/spider/merge1/xbpq/e/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/xbpq/c/l;

    .line 5
    new-instance v2, Lcom/github/catvod/spider/merge1/xbpq/i/b;

    invoke-direct {v2, v1}, Lcom/github/catvod/spider/merge1/xbpq/i/b;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_71
    return-object v0

    :cond_72
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/g0/e;->p()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/g0/e;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    new-instance v2, Lcom/github/catvod/spider/merge1/xbpq/i/b;

    invoke-direct {v2, v1}, Lcom/github/catvod/spider/merge1/xbpq/i/b;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_95
    return-object v0

    :cond_96
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/g0/e;->r()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/g0/e;->g()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v1, Lcom/github/catvod/spider/merge1/xbpq/i/b;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge1/xbpq/i/b;-><init>(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_a9
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/g0/e;->q()Z

    move-result v1

    if-eqz v1, :cond_bc

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/g0/e;->c()Ljava/lang/Double;

    move-result-object p1

    .line 11
    new-instance v1, Lcom/github/catvod/spider/merge1/xbpq/i/b;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge1/xbpq/i/b;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_bc
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/g0/e;->l()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/g0/e;->a()Ljava/lang/Boolean;

    move-result-object p1

    .line 13
    new-instance v1, Lcom/github/catvod/spider/merge1/xbpq/i/b;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge1/xbpq/i/b;-><init>(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_cf
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/g0/e;->m()Z

    move-result v1

    if-eqz v1, :cond_e2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/g0/e;->b()Ljava/util/Date;

    move-result-object p1

    .line 15
    new-instance v1, Lcom/github/catvod/spider/merge1/xbpq/i/b;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge1/xbpq/i/b;-><init>(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_e2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/g0/e;->g()Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v1, Lcom/github/catvod/spider/merge1/xbpq/i/b;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge1/xbpq/i/b;-><init>(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_ee} :catch_ef

    return-object v0

    :catch_ef
    move-exception p1

    new-instance v0, Lcom/github/catvod/spider/merge1/xbpq/a/v;

    const-string v1, "Please check the syntax of your xpath expr or commit a "

    .line 19
    invoke-static {v1}, Lcom/github/catvod/spider/merge1/xbpq/g/d;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 20
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/xbpq/V/a;->h(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/github/catvod/spider/merge1/xbpq/a/v;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_108

    :goto_107
    throw v0

    :goto_108
    goto :goto_107
.end method
