.class final Lcom/github/catvod/spider/merge1/xbpq/d/M;
.super Lcom/github/catvod/spider/merge1/xbpq/d/N;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/xbpq/d/N;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/github/catvod/spider/merge1/xbpq/d/O;->a:I

    return-void
.end method


# virtual methods
.method final bridge synthetic g()Lcom/github/catvod/spider/merge1/xbpq/d/O;
    .registers 1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/d/M;->v()Lcom/github/catvod/spider/merge1/xbpq/d/N;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/d/N;->r()Z

    move-result v0

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/d/N;->j:Lcom/github/catvod/spider/merge1/xbpq/c/c;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 1
    invoke-static {v2}, Lcom/github/catvod/spider/merge1/xbpq/g/d;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/d/N;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/xbpq/d/N;->j:Lcom/github/catvod/spider/merge1/xbpq/c/c;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/xbpq/c/c;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    .line 3
    :cond_29
    invoke-static {v2}, Lcom/github/catvod/spider/merge1/xbpq/g/d;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/d/N;->x()Ljava/lang/String;

    move-result-object v2

    .line 5
    :goto_31
    invoke-static {v0, v2, v1}, Lcom/github/catvod/spider/merge1/xbpq/b/f;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final v()Lcom/github/catvod/spider/merge1/xbpq/d/N;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge1/xbpq/d/N;->v()Lcom/github/catvod/spider/merge1/xbpq/d/N;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/d/N;->j:Lcom/github/catvod/spider/merge1/xbpq/c/c;

    return-object p0
.end method
