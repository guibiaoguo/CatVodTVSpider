.class public abstract Lcom/github/catvod/spider/merge1/aQ/u5$f;
.super Lcom/github/catvod/spider/merge1/aQ/u5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# instance fields
.field protected final Eg:I

.field protected final W:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/u5;-><init>()V

    .line 2
    iput p1, p0, Lcom/github/catvod/spider/merge1/aQ/u5$f;->W:I

    .line 3
    iput p2, p0, Lcom/github/catvod/spider/merge1/aQ/u5$f;->Eg:I

    return-void
.end method


# virtual methods
.method protected abstract Eg(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)I
.end method

.method protected abstract Ku()Ljava/lang/String;
.end method

.method public W(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 7

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 2
    instance-of v0, v0, Lcom/github/catvod/spider/merge1/aQ/Yw;

    if-eqz v0, :cond_c

    goto :goto_28

    .line 3
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/u5$f;->Eg(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)I

    move-result p1

    .line 4
    iget p2, p0, Lcom/github/catvod/spider/merge1/aQ/u5$f;->W:I

    const/4 v0, 0x1

    if-nez p2, :cond_1b

    iget p2, p0, Lcom/github/catvod/spider/merge1/aQ/u5$f;->Eg:I

    if-ne p1, p2, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 5
    :cond_1b
    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/u5$f;->Eg:I

    sub-int v3, p1, v2

    mul-int v3, v3, p2

    if-ltz v3, :cond_28

    sub-int/2addr p1, v2

    rem-int/2addr p1, p2

    if-nez p1, :cond_28

    const/4 v1, 0x1

    :cond_28
    :goto_28
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/u5$f;->W:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_1e

    new-array v0, v3, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/u5$f;->Ku()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/u5$f;->Eg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ":%s(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1e
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/u5$f;->Eg:I

    if-nez v0, :cond_39

    new-array v0, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/u5$f;->Ku()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/u5$f;->W:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ":%s(%dn)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/u5$f;->Ku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    iget v2, p0, Lcom/github/catvod/spider/merge1/aQ/u5$f;->W:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/u5$f;->Eg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ":%s(%dn%+d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
