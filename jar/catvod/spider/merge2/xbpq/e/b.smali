.class final Lcom/github/catvod/spider/merge2/xbpq/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/github/catvod/spider/merge2/xbpq/c/l;

.field private b:Lcom/github/catvod/spider/merge2/xbpq/c/l;

.field private final c:Lcom/github/catvod/spider/merge2/xbpq/e/NO;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/b;->b:Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/b;->a:Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/b;->c:Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    return-void
.end method

.method static synthetic a(Lcom/github/catvod/spider/merge2/xbpq/e/b;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 1

    iget-object p0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/b;->b:Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object p0
.end method


# virtual methods
.method public final b(Lcom/github/catvod/spider/merge2/xbpq/c/r;)I
    .registers 4

    instance-of v0, p1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/b;->c:Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/b;->a:Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v0, v1, p1}, Lcom/github/catvod/spider/merge2/xbpq/e/NO;->a(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result v0

    if-eqz v0, :cond_14

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/b;->b:Lcom/github/catvod/spider/merge2/xbpq/c/l;

    const/4 p1, 0x5

    return p1

    :cond_14
    const/4 p1, 0x1

    return p1
.end method
