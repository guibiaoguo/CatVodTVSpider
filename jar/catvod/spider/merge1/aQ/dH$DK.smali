.class Lcom/github/catvod/spider/merge1/aQ/dH$DK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/catvod/spider/merge1/aQ/dH;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/github/catvod/spider/merge1/aQ/qx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Eg:Lcom/github/catvod/spider/merge1/aQ/dH;

.field W:I


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge1/aQ/dH;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->W:I

    return-void
.end method


# virtual methods
.method public W()Lcom/github/catvod/spider/merge1/aQ/qx;
    .registers 6

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/qx;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/dH;

    iget-object v2, v1, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    iget v3, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->W:I

    aget-object v2, v2, v3

    iget-object v4, v1, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-direct {v0, v2, v3, v1}, Lcom/github/catvod/spider/merge1/aQ/qx;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)V

    .line 2
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->W:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->W:I

    return-object v0
.end method

.method public hasNext()Z
    .registers 5

    .line 1
    :goto_0
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->W:I

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-static {v1}, Lcom/github/catvod/spider/merge1/aQ/dH;->W(Lcom/github/catvod/spider/merge1/aQ/dH;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1f

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/dH;

    iget-object v1, v0, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg:[Ljava/lang/String;

    iget v3, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->W:I

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/dH;->Eg(Lcom/github/catvod/spider/merge1/aQ/dH;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->W:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->W:I

    goto :goto_0

    .line 4
    :cond_1f
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->W:I

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-static {v1}, Lcom/github/catvod/spider/merge1/aQ/dH;->W(Lcom/github/catvod/spider/merge1/aQ/dH;)I

    move-result v1

    if-ge v0, v1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    return v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->W()Lcom/github/catvod/spider/merge1/aQ/qx;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/dH;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->W:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/github/catvod/spider/merge1/aQ/dH$DK;->W:I

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/dH;->Ku(Lcom/github/catvod/spider/merge1/aQ/dH;I)V

    return-void
.end method
