.class final Lcom/github/catvod/spider/merge2/xbpq/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/github/catvod/spider/merge2/xbpq/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/github/catvod/spider/merge2/xbpq/c/c;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge2/xbpq/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->b:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->a:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 5

    :goto_0
    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->a:I

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->b:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-static {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->a(Lcom/github/catvod/spider/merge2/xbpq/c/c;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1f

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->b:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    iget-object v1, v0, Lcom/github/catvod/spider/merge2/xbpq/c/c;->d:[Ljava/lang/String;

    iget v3, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->a:I

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->b(Lcom/github/catvod/spider/merge2/xbpq/c/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->a:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->a:I

    goto :goto_0

    :cond_1f
    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->a:I

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->b:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-static {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->a(Lcom/github/catvod/spider/merge2/xbpq/c/c;)I

    move-result v1

    if-ge v0, v1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    return v2
.end method

.method public final next()Ljava/lang/Object;
    .registers 6

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/a;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->b:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    iget-object v2, v1, Lcom/github/catvod/spider/merge2/xbpq/c/c;->d:[Ljava/lang/String;

    iget v3, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->a:I

    aget-object v2, v2, v3

    iget-object v4, v1, Lcom/github/catvod/spider/merge2/xbpq/c/c;->e:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-direct {v0, v2, v3, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->a:I

    return-object v0
.end method

.method public final remove()V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->b:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/b;->a:I

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->c(Lcom/github/catvod/spider/merge2/xbpq/c/c;I)V

    return-void
.end method
