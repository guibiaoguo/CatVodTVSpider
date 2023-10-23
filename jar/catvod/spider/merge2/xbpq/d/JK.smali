.class final Lcom/github/catvod/spider/merge2/xbpq/d/JK;
.super Lcom/github/catvod/spider/merge2/xbpq/d/OP;
.source "SourceFile"


# instance fields
.field final b:Ljava/lang/StringBuilder;

.field c:Ljava/lang/String;

.field final d:Ljava/lang/StringBuilder;

.field final e:Ljava/lang/StringBuilder;

.field f:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->b:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->d:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->e:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->f:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->a:I

    return-void
.end method


# virtual methods
.method final g()Lcom/github/catvod/spider/merge2/xbpq/d/OP;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->b:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->h(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->d:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->h(Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->e:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->h(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/JK;->f:Z

    return-object p0
.end method
