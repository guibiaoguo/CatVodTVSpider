.class abstract Lcom/github/catvod/spider/merge1/xbpq/d/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/github/catvod/spider/merge1/xbpq/d/E;

.field b:Lcom/github/catvod/spider/merge1/xbpq/d/a;

.field c:Lcom/github/catvod/spider/merge1/xbpq/d/Q;

.field protected d:Lcom/github/catvod/spider/merge1/xbpq/c/h;

.field protected e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/catvod/spider/merge1/xbpq/c/l;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/lang/String;

.field protected g:Lcom/github/catvod/spider/merge1/xbpq/d/O;

.field protected h:Lcom/github/catvod/spider/merge1/xbpq/d/D;

.field private i:Lcom/github/catvod/spider/merge1/xbpq/d/M;

.field private j:Lcom/github/catvod/spider/merge1/xbpq/d/L;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/github/catvod/spider/merge1/xbpq/d/M;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/M;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->i:Lcom/github/catvod/spider/merge1/xbpq/d/M;

    new-instance v0, Lcom/github/catvod/spider/merge1/xbpq/d/L;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/L;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->j:Lcom/github/catvod/spider/merge1/xbpq/d/L;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/github/catvod/spider/merge1/xbpq/c/l;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/xbpq/c/l;

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method protected abstract b(Ljava/lang/String;)Z
.end method

.method protected abstract c(Lcom/github/catvod/spider/merge1/xbpq/d/O;)Z
.end method

.method protected final d(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->g:Lcom/github/catvod/spider/merge1/xbpq/d/O;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->j:Lcom/github/catvod/spider/merge1/xbpq/d/L;

    if-ne v0, v1, :cond_13

    new-instance v0, Lcom/github/catvod/spider/merge1/xbpq/d/L;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/L;-><init>()V

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/xbpq/d/N;->s(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/xbpq/d/N;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->c(Lcom/github/catvod/spider/merge1/xbpq/d/O;)Z

    move-result p1

    return p1

    :cond_13
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/xbpq/d/N;->v()Lcom/github/catvod/spider/merge1/xbpq/d/N;

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge1/xbpq/d/N;->s(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/xbpq/d/N;

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->c(Lcom/github/catvod/spider/merge1/xbpq/d/O;)Z

    move-result p1

    return p1
.end method

.method public e(Lcom/github/catvod/spider/merge1/xbpq/c/c;)Z
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->i:Lcom/github/catvod/spider/merge1/xbpq/d/M;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->g:Lcom/github/catvod/spider/merge1/xbpq/d/O;

    const-string v2, "input"

    if-ne v1, v0, :cond_1a

    new-instance v0, Lcom/github/catvod/spider/merge1/xbpq/d/M;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/M;-><init>()V

    .line 1
    :goto_d
    iput-object v2, v0, Lcom/github/catvod/spider/merge1/xbpq/d/N;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/github/catvod/spider/merge1/xbpq/d/N;->j:Lcom/github/catvod/spider/merge1/xbpq/c/c;

    const-string p1, "input"

    iput-object p1, v0, Lcom/github/catvod/spider/merge1/xbpq/d/N;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->c(Lcom/github/catvod/spider/merge1/xbpq/d/O;)Z

    move-result p1

    return p1

    :cond_1a
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/M;->v()Lcom/github/catvod/spider/merge1/xbpq/d/N;

    goto :goto_d
.end method

.method protected final f(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->i:Lcom/github/catvod/spider/merge1/xbpq/d/M;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->g:Lcom/github/catvod/spider/merge1/xbpq/d/O;

    if-ne v1, v0, :cond_c

    new-instance v0, Lcom/github/catvod/spider/merge1/xbpq/d/M;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/M;-><init>()V

    goto :goto_f

    :cond_c
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/M;->v()Lcom/github/catvod/spider/merge1/xbpq/d/N;

    :goto_f
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/xbpq/d/N;->s(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/xbpq/d/N;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->c(Lcom/github/catvod/spider/merge1/xbpq/d/O;)Z

    move-result p1

    return p1
.end method
