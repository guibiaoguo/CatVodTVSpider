.class abstract Lcom/github/catvod/spider/merge2/xbpq/e/f;
.super Lcom/github/catvod/spider/merge2/xbpq/e/NO;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/catvod/spider/merge2/xbpq/e/NO;",
            ">;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/NO;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/f;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/f;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method final b()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/f;->b:I

    return-void
.end method
