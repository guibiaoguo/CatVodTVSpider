.class final Lcom/github/catvod/spider/merge2/xbpq/e/ST;
.super Lcom/github/catvod/spider/merge2/xbpq/e/ZZ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/ZZ;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/ZZ;->a:Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->V()Lcom/github/catvod/spider/merge2/xbpq/e/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eq v0, p2, :cond_8

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/ZZ;->a:Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    invoke-virtual {v1, p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/NO;->a(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/ZZ;->a:Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":has(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
