.class final Lcom/github/catvod/spider/merge2/xbpq/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/CharSequence;

.field final synthetic d:Lcom/github/catvod/spider/merge2/xbpq/a/s;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge2/xbpq/a/s;Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/a/q;->d:Lcom/github/catvod/spider/merge2/xbpq/a/s;

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/a/q;->c:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/q;->d:Lcom/github/catvod/spider/merge2/xbpq/a/s;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/a/q;->c:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/a/s;->a(Lcom/github/catvod/spider/merge2/xbpq/a/s;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/a/i;->b()Lcom/github/catvod/spider/merge2/xbpq/a/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p0}, Lcom/github/catvod/spider/merge2/xbpq/a/i;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
