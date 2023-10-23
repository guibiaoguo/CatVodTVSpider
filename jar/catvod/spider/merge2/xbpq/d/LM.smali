.class final Lcom/github/catvod/spider/merge2/xbpq/d/LM;
.super Lcom/github/catvod/spider/merge2/xbpq/d/NO;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->a:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    const-string v0, "</"

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/d;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->x()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/b/f;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
