.class public abstract Lcom/github/catvod/spider/merge2/xbpq/e/t;
.super Lcom/github/catvod/spider/merge2/xbpq/e/NO;
.source "SourceFile"


# instance fields
.field protected final a:I

.field protected final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/NO;-><init>()V

    iput p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/t;->a:I

    iput p2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/t;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 6

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_27

    instance-of p1, p1, Lcom/github/catvod/spider/merge2/xbpq/c/h;

    if-eqz p1, :cond_d

    goto :goto_27

    :cond_d
    invoke-virtual {p0, p2}, Lcom/github/catvod/spider/merge2/xbpq/e/t;->b(Lcom/github/catvod/spider/merge2/xbpq/c/l;)I

    move-result p1

    iget p2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/t;->a:I

    if-nez p2, :cond_1c

    iget p2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/t;->b:I

    if-ne p1, p2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    iget v2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/t;->b:I

    sub-int/2addr p1, v2

    mul-int v2, p1, p2

    if-ltz v2, :cond_27

    rem-int/2addr p1, p2

    if-nez p1, :cond_27

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method protected abstract b(Lcom/github/catvod/spider/merge2/xbpq/c/l;)I
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/t;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_1e

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/t;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/t;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ":%s(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/t;->b:I

    if-nez v0, :cond_39

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/t;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/t;->a:I

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

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/t;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    iget v2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/t;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/t;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ":%s(%dn%+d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
