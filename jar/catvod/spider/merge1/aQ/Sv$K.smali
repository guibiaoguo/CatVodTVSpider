.class final Lcom/github/catvod/spider/merge1/aQ/Sv$K;
.super Lcom/github/catvod/spider/merge1/aQ/Sv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/Sv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "K"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/Sv;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/github/catvod/spider/merge1/aQ/u5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/Sv;-><init>()V

    .line 2
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->Eg:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_13

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->W:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 4
    :cond_13
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->W:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    :goto_18
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Sv;->jl()V

    return-void
.end method

.method varargs constructor <init>([Lcom/github/catvod/spider/merge1/aQ/u5;)V
    .registers 2

    .line 6
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/Sv$K;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public W(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->Eg:I

    if-ge v1, v2, :cond_19

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->W:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/u5;

    .line 3
    invoke-virtual {v2, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/u5;->W(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return v0
.end method

.method public X(Lcom/github/catvod/spider/merge1/aQ/u5;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->W:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Sv;->jl()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->W:Ljava/util/ArrayList;

    const-string v1, ", "

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/gx;->O2(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
