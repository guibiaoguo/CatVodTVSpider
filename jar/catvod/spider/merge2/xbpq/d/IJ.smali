.class final Lcom/github/catvod/spider/merge2/xbpq/d/IJ;
.super Lcom/github/catvod/spider/merge2/xbpq/d/OP;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/StringBuilder;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->b:Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->a:I

    return-void
.end method


# virtual methods
.method final g()Lcom/github/catvod/spider/merge2/xbpq/d/OP;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->b:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->h(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->c:Ljava/lang/String;

    return-object p0
.end method

.method final i(C)Lcom/github/catvod/spider/merge2/xbpq/d/IJ;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->c:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->c:Ljava/lang/String;

    .line 2
    :cond_c
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method final j(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/d/IJ;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->c:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->c:Ljava/lang/String;

    .line 2
    :cond_c
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_17

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->c:Ljava/lang/String;

    goto :goto_1c

    :cond_17
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    return-object p0
.end method

.method final k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const-string v0, "<!--"

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/d;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->c:Ljava/lang/String;

    if-eqz v1, :cond_b

    goto :goto_11

    :cond_b
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_11
    const-string v2, "-->"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/b/f;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
