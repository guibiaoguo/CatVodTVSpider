.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/c1;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "CdataSection"

    const/16 v1, 0x42

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]]>"

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->t()Z

    move-result p2

    if-eqz p2, :cond_2a

    :cond_17
    new-instance p2, Lcom/github/catvod/spider/merge2/xbpq/d/GH;

    iget-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/GH;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->j(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :cond_2a
    return-void
.end method
