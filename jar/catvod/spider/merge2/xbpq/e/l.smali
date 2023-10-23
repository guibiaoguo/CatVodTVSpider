.class public final Lcom/github/catvod/spider/merge2/xbpq/e/l;
.super Lcom/github/catvod/spider/merge2/xbpq/e/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/j;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 4

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/j;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/j;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/j;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/j;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/j;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[%s=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
