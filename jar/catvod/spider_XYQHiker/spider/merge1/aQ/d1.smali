.class public Lcom/github/catvod/spider/merge1/aQ/d1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/github/catvod/spider/merge1/aQ/KX;",
        ">;"
    }
.end annotation


# instance fields
.field private final Eg:I

.field private final W:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iput p1, p0, Lcom/github/catvod/spider/merge1/aQ/d1;->W:I

    .line 3
    iput p2, p0, Lcom/github/catvod/spider/merge1/aQ/d1;->Eg:I

    return-void
.end method

.method public static Eg()Lcom/github/catvod/spider/merge1/aQ/d1;
    .registers 2

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/d1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/github/catvod/spider/merge1/aQ/d1;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method W()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/d1;->Eg:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
