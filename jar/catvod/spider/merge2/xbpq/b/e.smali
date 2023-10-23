.class public final synthetic Lcom/github/catvod/spider/merge2/xbpq/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/github/catvod/spider/merge2/xbpq/b/h;

.field public final synthetic d:Lcom/github/catvod/spider/merge2/xbpq/g/c;


# direct methods
.method public synthetic constructor <init>(Lcom/github/catvod/spider/merge2/xbpq/b/h;Lcom/github/catvod/spider/merge2/xbpq/g/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/e;->c:Lcom/github/catvod/spider/merge2/xbpq/b/h;

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/b/e;->d:Lcom/github/catvod/spider/merge2/xbpq/g/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/e;->c:Lcom/github/catvod/spider/merge2/xbpq/b/h;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/e;->d:Lcom/github/catvod/spider/merge2/xbpq/g/c;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->b(Lcom/github/catvod/spider/merge2/xbpq/b/h;Lcom/github/catvod/spider/merge2/xbpq/g/c;)V

    return-void
.end method
