.class abstract Lcom/github/catvod/spider/merge2/xbpq/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/String;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/CharSequence;

.field final d:Lcom/github/catvod/spider/merge2/xbpq/a/h;

.field final e:Z

.field f:I

.field g:I


# direct methods
.method protected constructor <init>(Lcom/github/catvod/spider/merge2/xbpq/a/s;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->a:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->f:I

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/a/s;->b(Lcom/github/catvod/spider/merge2/xbpq/a/s;)Lcom/github/catvod/spider/merge2/xbpq/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->d:Lcom/github/catvod/spider/merge2/xbpq/a/h;

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/a/s;->c(Lcom/github/catvod/spider/merge2/xbpq/a/s;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->e:Z

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/a/s;->d(Lcom/github/catvod/spider/merge2/xbpq/a/s;)I

    move-result p1

    iput p1, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->g:I

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->c:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 10

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/a/n;->f(Z)V

    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->a:I

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/a/a;->a(I)I

    move-result v0

    if-eqz v0, :cond_ba

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b9

    const/4 v0, 0x3

    .line 2
    iput v3, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->a:I

    .line 3
    :goto_1b
    iget v3, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->f:I

    :cond_1d
    :goto_1d
    iget v4, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->f:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_ad

    move-object v6, p0

    check-cast v6, Lcom/github/catvod/spider/merge2/xbpq/a/o;

    .line 4
    iget-object v7, v6, Lcom/github/catvod/spider/merge2/xbpq/a/o;->h:Lcom/github/catvod/spider/merge2/xbpq/a/p;

    iget-object v7, v7, Lcom/github/catvod/spider/merge2/xbpq/a/p;->a:Lcom/github/catvod/spider/merge2/xbpq/a/h;

    iget-object v6, v6, Lcom/github/catvod/spider/merge2/xbpq/a/r;->c:Ljava/lang/CharSequence;

    invoke-virtual {v7, v6, v4}, Lcom/github/catvod/spider/merge2/xbpq/a/h;->a(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ne v4, v5, :cond_3a

    .line 5
    iget-object v4, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->c:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v5, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->f:I

    goto :goto_3e

    :cond_3a
    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->f:I

    :goto_3e
    iget v6, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->f:I

    if-ne v6, v3, :cond_51

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->f:I

    iget-object v4, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->c:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v6, v4, :cond_1d

    iput v5, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->f:I

    goto :goto_1d

    :cond_51
    :goto_51
    if-ge v3, v4, :cond_64

    iget-object v6, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->d:Lcom/github/catvod/spider/merge2/xbpq/a/h;

    iget-object v7, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->c:Ljava/lang/CharSequence;

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/a/h;->b(C)Z

    move-result v6

    if-eqz v6, :cond_64

    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_64
    :goto_64
    if-le v4, v3, :cond_78

    iget-object v6, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->d:Lcom/github/catvod/spider/merge2/xbpq/a/h;

    iget-object v7, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->c:Ljava/lang/CharSequence;

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/a/h;->b(C)Z

    move-result v6

    if-eqz v6, :cond_78

    move v4, v8

    goto :goto_64

    :cond_78
    iget-boolean v6, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->e:Z

    if-eqz v6, :cond_7f

    if-ne v3, v4, :cond_7f

    goto :goto_1b

    :cond_7f
    iget v6, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->g:I

    if-ne v6, v2, :cond_9f

    iget-object v4, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->c:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v5, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->f:I

    :goto_8b
    if-le v4, v3, :cond_a2

    iget-object v5, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->d:Lcom/github/catvod/spider/merge2/xbpq/a/h;

    iget-object v6, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->c:Ljava/lang/CharSequence;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/github/catvod/spider/merge2/xbpq/a/h;->b(C)Z

    move-result v5

    if-eqz v5, :cond_a2

    move v4, v7

    goto :goto_8b

    :cond_9f
    sub-int/2addr v6, v2

    iput v6, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->g:I

    :cond_a2
    iget-object v5, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->c:Ljava/lang/CharSequence;

    invoke-interface {v5, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b0

    .line 6
    :cond_ad
    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->a:I

    const/4 v3, 0x0

    .line 7
    :goto_b0
    iput-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->b:Ljava/lang/String;

    iget v3, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->a:I

    if-eq v3, v0, :cond_b9

    iput v2, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->a:I

    const/4 v1, 0x1

    :cond_b9
    move v2, v1

    :cond_ba
    return v2
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/a/r;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->a:I

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/a/r;->b:Ljava/lang/String;

    return-object v0

    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
