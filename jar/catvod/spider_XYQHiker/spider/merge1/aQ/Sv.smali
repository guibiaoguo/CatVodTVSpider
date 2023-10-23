.class abstract Lcom/github/catvod/spider/merge1/aQ/Sv;
.super Lcom/github/catvod/spider/merge1/aQ/u5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/catvod/spider/merge1/aQ/Sv$K;,
        Lcom/github/catvod/spider/merge1/aQ/Sv$DK;
    }
.end annotation


# instance fields
.field Eg:I

.field final W:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/catvod/spider/merge1/aQ/u5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/u5;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->Eg:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->W:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/github/catvod/spider/merge1/aQ/u5;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/Sv;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->W:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Sv;->jl()V

    return-void
.end method


# virtual methods
.method Eg(Lcom/github/catvod/spider/merge1/aQ/u5;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->W:Ljava/util/ArrayList;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->Eg:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method Ku()Lcom/github/catvod/spider/merge1/aQ/u5;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->Eg:I

    if-lez v0, :cond_f

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->W:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/u5;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method jl()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->W:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->Eg:I

    return-void
.end method
