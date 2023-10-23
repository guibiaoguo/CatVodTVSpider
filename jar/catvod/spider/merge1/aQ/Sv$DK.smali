.class final Lcom/github/catvod/spider/merge1/aQ/Sv$DK;
.super Lcom/github/catvod/spider/merge1/aQ/Sv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/Sv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DK"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/github/catvod/spider/merge1/aQ/u5;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/Sv;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method varargs constructor <init>([Lcom/github/catvod/spider/merge1/aQ/u5;)V
    .registers 2

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public W(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 6

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->Eg:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_4
    if-ltz v0, :cond_19

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->W:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/u5;

    .line 3
    invoke-virtual {v2, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/u5;->W(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 p1, 0x0

    return p1

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_19
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Sv;->W:Ljava/util/ArrayList;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/gx;->O2(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
