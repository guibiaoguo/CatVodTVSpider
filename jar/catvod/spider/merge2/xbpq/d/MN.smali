.class final Lcom/github/catvod/spider/merge2/xbpq/d/MN;
.super Lcom/github/catvod/spider/merge2/xbpq/d/NO;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->a:I

    return-void
.end method


# virtual methods
.method final bridge synthetic g()Lcom/github/catvod/spider/merge2/xbpq/d/OP;
    .registers 1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/MN;->v()Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->r()Z

    move-result v0

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 1
    invoke-static {v2}, Lcom/github/catvod/spider/merge2/xbpq/g/d;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    .line 3
    :cond_29
    invoke-static {v2}, Lcom/github/catvod/spider/merge2/xbpq/g/d;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->x()Ljava/lang/String;

    move-result-object v2

    .line 5
    :goto_31
    invoke-static {v0, v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/f;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final v()Lcom/github/catvod/spider/merge2/xbpq/d/NO;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->v()Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    return-object p0
.end method
