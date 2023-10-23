.class final Lcom/github/catvod/spider/merge2/xbpq/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge2/xbpq/e/OP;


# instance fields
.field private final a:Lcom/github/catvod/spider/merge2/xbpq/c/l;

.field private final b:Lcom/github/catvod/spider/merge2/xbpq/e/g;

.field private final c:Lcom/github/catvod/spider/merge2/xbpq/e/NO;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/e/g;Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/a;->a:Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/a;->b:Lcom/github/catvod/spider/merge2/xbpq/e/g;

    iput-object p3, p0, Lcom/github/catvod/spider/merge2/xbpq/e/a;->c:Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge2/xbpq/c/r;I)V
    .registers 4

    instance-of p2, p1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz p2, :cond_15

    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/a;->c:Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/a;->a:Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p2, v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/e/NO;->a(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/a;->b:Lcom/github/catvod/spider/merge2/xbpq/e/g;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method public final b(Lcom/github/catvod/spider/merge2/xbpq/c/r;I)V
    .registers 3

    return-void
.end method
