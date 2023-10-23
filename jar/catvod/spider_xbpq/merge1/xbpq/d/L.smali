.class final Lcom/github/catvod/spider/merge1/xbpq/d/L;
.super Lcom/github/catvod/spider/merge1/xbpq/d/N;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/xbpq/d/N;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/github/catvod/spider/merge1/xbpq/d/O;->a:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    const-string v0, "</"

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/xbpq/g/d;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/d/N;->x()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/b/f;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
