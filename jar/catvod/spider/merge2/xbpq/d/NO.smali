.class abstract Lcom/github/catvod/spider/merge2/xbpq/d/NO;
.super Lcom/github/catvod/spider/merge2/xbpq/d/OP;
.source "SourceFile"


# instance fields
.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/StringBuilder;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field i:Z

.field j:Lcom/github/catvod/spider/merge2/xbpq/c/c;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->e:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->g:Z

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->h:Z

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->i:Z

    return-void
.end method

.method private p()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->h:Z

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->f:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->f:Ljava/lang/String;

    :cond_f
    return-void
.end method


# virtual methods
.method bridge synthetic g()Lcom/github/catvod/spider/merge2/xbpq/d/OP;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->v()Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    move-result-object v0

    return-object v0
.end method

.method final i(C)V
    .registers 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->d:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_d

    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_d
    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->d:Ljava/lang/String;

    return-void
.end method

.method final j(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->d:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->d:Ljava/lang/String;

    return-void
.end method

.method final k(C)V
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->p()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final l(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->p()V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_e

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->f:Ljava/lang/String;

    goto :goto_13

    :cond_e
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    return-void
.end method

.method final m([I)V
    .registers 6

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->p()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    aget v2, p1, v1

    iget-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method final n(C)V
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->o(Ljava/lang/String;)V

    return-void
.end method

.method final o(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->b:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    return-void
.end method

.method final q()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->d:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->u()V

    :cond_7
    return-void
.end method

.method final r()Z
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method final s(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/d/NO;
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    return-object p0
.end method

.method final t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->b:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->d(Z)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->b:Ljava/lang/String;

    return-object v0
.end method

.method final u()V
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/c;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_41

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->h:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2f

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_2f
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->f:Ljava/lang/String;

    goto :goto_3a

    :cond_32
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->g:Z

    if-eqz v0, :cond_39

    const-string v0, ""

    goto :goto_3a

    :cond_39
    move-object v0, v1

    :goto_3a
    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    iget-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/c;

    :cond_41
    iput-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->g:Z

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->h:Z

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->e:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->h(Ljava/lang/StringBuilder;)V

    iput-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->f:Ljava/lang/String;

    return-void
.end method

.method v()Lcom/github/catvod/spider/merge2/xbpq/d/NO;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->e:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->h(Ljava/lang/StringBuilder;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->g:Z

    iput-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->h:Z

    iput-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->i:Z

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    return-object p0
.end method

.method final w()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->g:Z

    return-void
.end method

.method final x()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, "[unset]"

    :goto_7
    return-object v0
.end method
