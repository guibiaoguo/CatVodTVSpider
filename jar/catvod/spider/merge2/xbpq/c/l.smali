.class public Lcom/github/catvod/spider/merge2/xbpq/c/l;
.super Lcom/github/catvod/spider/merge2/xbpq/c/r;
.source "SourceFile"


# static fields
.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge2/xbpq/c/l;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/lang/String;


# instance fields
.field private f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge2/xbpq/c/l;",
            ">;>;"
        }
    .end annotation
.end field

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge2/xbpq/c/r;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/github/catvod/spider/merge2/xbpq/c/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->j:Ljava/util/List;

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "/baseUri"

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge2/xbpq/d/FG;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V
    .registers 5

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;-><init>()V

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    iput-object p3, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->i:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    if-eqz p2, :cond_13

    .line 1
    invoke-virtual {p0, p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->l(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->d:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/d/DE;)Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/FG;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    return-void
.end method

.method static synthetic I(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge2/xbpq/c/u;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->N(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge2/xbpq/c/u;)V

    return-void
.end method

.method static synthetic J(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Lcom/github/catvod/spider/merge2/xbpq/d/FG;
    .registers 1

    iget-object p0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    return-object p0
.end method

.method private static K(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/e/g;)V
    .registers 4

    .line 1
    iget-object p0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    check-cast p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz p0, :cond_18

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->n0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->K(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/e/g;)V

    :cond_18
    return-void
.end method

.method private static N(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge2/xbpq/c/u;)V
    .registers 12

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->I()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    invoke-static {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h0(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Z

    move-result v1

    if-nez v1, :cond_69

    instance-of p1, p1, Lcom/github/catvod/spider/merge2/xbpq/c/d;

    if-eqz p1, :cond_11

    goto :goto_69

    :cond_11
    invoke-static {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/u;->M(Ljava/lang/StringBuilder;)Z

    move-result p1

    sget v1, Lcom/github/catvod/spider/merge2/xbpq/b/j;->d:I

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1f
    if-ge v3, v1, :cond_6c

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    const/16 v7, 0x20

    const/4 v8, 0x1

    if-eq v6, v7, :cond_41

    const/16 v9, 0x9

    if-eq v6, v9, :cond_41

    const/16 v9, 0xa

    if-eq v6, v9, :cond_41

    const/16 v9, 0xc

    if-eq v6, v9, :cond_41

    const/16 v9, 0xd

    if-eq v6, v9, :cond_41

    const/16 v9, 0xa0

    if-ne v6, v9, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v9, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v9, 0x1

    :goto_42
    if-eqz v9, :cond_50

    if-eqz p1, :cond_48

    if-eqz v4, :cond_63

    :cond_48
    if-eqz v5, :cond_4b

    goto :goto_63

    :cond_4b
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    goto :goto_63

    :cond_50
    const/16 v7, 0x200b

    if-eq v6, v7, :cond_5b

    const/16 v7, 0xad

    if-ne v6, v7, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v7, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v7, 0x1

    :goto_5c
    if-nez v7, :cond_63

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    :cond_63
    :goto_63
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_1f

    .line 4
    :cond_69
    :goto_69
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6c
    return-void
.end method

.method private static Z(Lcom/github/catvod/spider/merge2/xbpq/c/l;Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/github/catvod/spider/merge2/xbpq/c/l;",
            ">(",
            "Lcom/github/catvod/spider/merge2/xbpq/c/l;",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_12

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_f

    return v2

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return v1
.end method

.method static h0(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Z
    .registers 5

    instance-of v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    check-cast p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    const/4 v0, 0x0

    :cond_8
    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->j()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    return v3

    :cond_12
    iget-object p0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    check-cast p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    add-int/2addr v0, v3

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1c

    if-nez p0, :cond_8

    :cond_1c
    return v1
.end method


# virtual methods
.method public final F()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 3

    move-object v0, p0

    .line 1
    :goto_1
    iget-object v1, v0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    .line 2
    :cond_7
    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object v0
.end method

.method public final L(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 3

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    .line 1
    iget-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->D(Lcom/github/catvod/spider/merge2/xbpq/c/r;)V

    :cond_a
    iput-object p0, p1, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->n()Ljava/util/List;

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3
    iput v0, p1, Lcom/github/catvod/spider/merge2/xbpq/c/r;->d:I

    return-object p0
.end method

.method public final M(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 5

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-static {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/s;->a(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->c:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    invoke-static {p1, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/d/DE;)Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, p1, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/FG;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->L(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object v0
.end method

.method public final O(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 3

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/u;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/u;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->L(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object p0
.end method

.method public final P()Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->Q()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object v0
.end method

.method final Q()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge2/xbpq/c/l;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->j:Ljava/util/List;

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3f

    :cond_15
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_37

    iget-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/c/r;

    instance-of v4, v3, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz v4, :cond_34

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->g:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_3f
    return-object v0
.end method

.method public final R()Lcom/github/catvod/spider/merge2/xbpq/e/g;
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/e/g;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->Q()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/g;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public S()Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->j()Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object v0
.end method

.method public final T()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/r;

    instance-of v3, v2, Lcom/github/catvod/spider/merge2/xbpq/c/f;

    if-eqz v3, :cond_21

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/f;

    .line 1
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->I()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    .line 2
    :cond_21
    instance-of v3, v2, Lcom/github/catvod/spider/merge2/xbpq/c/e;

    if-eqz v3, :cond_2c

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/e;

    .line 3
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->I()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    .line 4
    :cond_2c
    instance-of v3, v2, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz v3, :cond_37

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->T()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    :cond_37
    instance-of v3, v2, Lcom/github/catvod/spider/merge2/xbpq/c/d;

    if-eqz v3, :cond_a

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/d;

    .line 5
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->I()Ljava/lang/String;

    move-result-object v2

    .line 6
    :goto_41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_45
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final U()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-object v1, v0

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-nez v1, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->Q()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->Z(Lcom/github/catvod/spider/merge2/xbpq/c/l;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final V()Lcom/github/catvod/spider/merge2/xbpq/e/g;
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/e/h;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/e/h;-><init>()V

    invoke-static {v0, p0}, Lcom/github/catvod/spider/merge2/xbpq/e/c;->a(Lcom/github/catvod/spider/merge2/xbpq/e/NO;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Lcom/github/catvod/spider/merge2/xbpq/e/g;

    move-result-object v0

    return-object v0
.end method

.method public final W(Ljava/lang/String;)Z
    .registers 15

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->i:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v2, "class"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v2, :cond_5c

    if-ge v2, v9, :cond_19

    goto :goto_5c

    :cond_19
    if-ne v2, v9, :cond_20

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_20
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_23
    if-ge v11, v2, :cond_4c

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    const/4 v12, 0x1

    if-eqz v4, :cond_45

    if-eqz v3, :cond_49

    sub-int v3, v11, v10

    if-ne v3, v9, :cond_43

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_43

    return v12

    :cond_43
    const/4 v3, 0x0

    goto :goto_49

    :cond_45
    if-nez v3, :cond_49

    move v10, v11

    const/4 v3, 0x1

    :cond_49
    :goto_49
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    :cond_4c
    if-eqz v3, :cond_5c

    sub-int/2addr v2, v10

    if-ne v2, v9, :cond_5c

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_5c
    :goto_5c
    return v1
.end method

.method public final X()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1b

    iget-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/c/r;

    invoke-virtual {v3, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->v(Ljava/lang/Appendable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2
    :cond_1b
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->y()Lcom/github/catvod/spider/merge2/xbpq/c/h;

    move-result-object v1

    if-eqz v1, :cond_26

    goto :goto_2b

    :cond_26
    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/c/h;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/h;-><init>()V

    :goto_2b
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/h;->s0()Lcom/github/catvod/spider/merge2/xbpq/c/g;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/g;->f()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_39
    return-object v0
.end method

.method public final Y()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->i:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    if-eqz v0, :cond_b

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public final a0()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->c()Z

    move-result v0

    return v0
.end method

.method public final b0()Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1
    :cond_6
    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->Q()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->Z(Lcom/github/catvod/spider/merge2/xbpq/c/l;Ljava/util/List;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    if-le v3, v2, :cond_1f

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object v0

    :cond_1f
    return-object v1
.end method

.method final c0()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->S()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/github/catvod/spider/merge2/xbpq/c/c;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->i:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/c;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->i:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->i:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    return-object v0
.end method

.method public final d0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->k:Ljava/lang/String;

    move-object v1, p0

    :goto_3
    if-eqz v1, :cond_21

    .line 1
    iget-object v2, v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;->i:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    if-eqz v2, :cond_1c

    .line 2
    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->o(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_1c

    .line 3
    iget-object v1, v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;->i:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 4
    :cond_1c
    iget-object v1, v1, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_3

    :cond_21
    const-string v0, ""

    :goto_23
    return-object v0
.end method

.method public final e0()Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/r;

    instance-of v3, v2, Lcom/github/catvod/spider/merge2/xbpq/c/u;

    if-eqz v3, :cond_20

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/u;

    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->N(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge2/xbpq/c/u;)V

    goto :goto_a

    :cond_20
    instance-of v3, v2, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz v3, :cond_a

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    .line 2
    iget-object v2, v2, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/u;->M(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 3
    :cond_40
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object v0
.end method

.method public final g0()Lcom/github/catvod/spider/merge2/xbpq/e/g;
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/e/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/e/g;-><init>()V

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->K(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/e/g;)V

    return-object v0
.end method

.method public final h()I
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final i0()Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1
    :cond_6
    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->Q()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->Z(Lcom/github/catvod/spider/merge2/xbpq/c/l;Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_1b

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object v0

    :cond_1b
    return-object v1
.end method

.method public bridge synthetic j()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->S()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final j0(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/e/g;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->j(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->h(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/e/c;->a(Lcom/github/catvod/spider/merge2/xbpq/e/NO;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Lcom/github/catvod/spider/merge2/xbpq/e/g;

    move-result-object p1

    return-object p1
.end method

.method protected final k(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 4

    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->k(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->i:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->h()Lcom/github/catvod/spider/merge2/xbpq/c/c;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/c/l;->i:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/k;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/k;-><init>(Lcom/github/catvod/spider/merge2/xbpq/c/l;I)V

    iput-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/i/c;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public final k0(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 2

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->j(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->h(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/e/c;->b(Lcom/github/catvod/spider/merge2/xbpq/e/NO;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p1

    return-object p1
.end method

.method protected final l(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d()Lcom/github/catvod/spider/merge2/xbpq/c/c;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/c;

    return-void
.end method

.method public final l0()Lcom/github/catvod/spider/merge2/xbpq/e/g;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    if-nez v0, :cond_b

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/e/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/g;-><init>(I)V

    return-object v0

    .line 1
    :cond_b
    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->Q()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/e/g;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eq v2, p0, :cond_20

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_32
    return-object v1
.end method

.method public final m()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public final m0()Lcom/github/catvod/spider/merge2/xbpq/d/FG;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    return-object v0
.end method

.method protected final n()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge2/xbpq/c/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/c/r;->e:Ljava/util/List;

    if-ne v0, v1, :cond_e

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/k;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/k;-><init>(Lcom/github/catvod/spider/merge2/xbpq/c/l;I)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    :cond_e
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    return-object v0
.end method

.method public final n0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 4

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->y()Lcom/github/catvod/spider/merge2/xbpq/c/h;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/h;->u0()Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/EF;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/f;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/f;-><init>(Ljava/lang/String;)V

    goto :goto_27

    :cond_22
    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/u;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/u;-><init>(Ljava/lang/String;)V

    :goto_27
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->L(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object p0
.end method

.method protected final p()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->i:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final p0()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/c/j;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/j;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lcom/github/catvod/spider/merge2/xbpq/a/u;->c(Lcom/github/catvod/spider/merge2/xbpq/e/OP;Lcom/github/catvod/spider/merge2/xbpq/c/r;)V

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q0()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge2/xbpq/c/u;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/r;

    instance-of v3, v2, Lcom/github/catvod/spider/merge2/xbpq/c/u;

    if-eqz v3, :cond_b

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/u;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method w(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    .registers 9

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge2/xbpq/c/g;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6d

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->a()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_20

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz v0, :cond_1e

    .line 3
    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    .line 4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->a()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    const/4 v0, 0x1

    :goto_21
    if-eqz v0, :cond_6d

    .line 5
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    .line 6
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->f()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 7
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    .line 8
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->d()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 9
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz v0, :cond_3f

    .line 10
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->a0()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 11
    :cond_3f
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    const/4 v3, 0x0

    if-nez v0, :cond_45

    goto :goto_58

    :cond_45
    iget v4, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->d:I

    if-lez v4, :cond_58

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->n()Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->d:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/c/r;

    :cond_58
    :goto_58
    if-eqz v3, :cond_5b

    const/4 v2, 0x1

    :cond_5b
    if-nez v2, :cond_6d

    .line 12
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6a

    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6d

    :cond_6a
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->r(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V

    :cond_6d
    const/16 p2, 0x3c

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->n0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->i:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    if-eqz p2, :cond_81

    invoke-virtual {p2, p1, p3}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->n(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge2/xbpq/c/g;)V

    :cond_81
    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/16 v0, 0x3e

    if-eqz p2, :cond_a8

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->h()Z

    move-result p2

    if-eqz p2, :cond_a8

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge2/xbpq/c/g;->g()I

    move-result p2

    if-ne p2, v1, :cond_a2

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->d()Z

    move-result p2

    if-eqz p2, :cond_a2

    goto :goto_a8

    :cond_a2
    const-string p2, " />"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_ab

    :cond_a8
    :goto_a8
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_ab
    return-void
.end method

.method x(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->h()Z

    move-result v0

    if-nez v0, :cond_3d

    :cond_10
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge2/xbpq/c/g;->f()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f:Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->a()Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_2a

    :cond_27
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->r(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V

    :cond_2a
    :goto_2a
    const-string p2, "</"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->n0()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_3d
    return-void
.end method

.method public final z()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object v0
.end method
