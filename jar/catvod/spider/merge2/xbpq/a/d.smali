.class final Lcom/github/catvod/spider/merge2/xbpq/a/d;
.super Lcom/github/catvod/spider/merge2/xbpq/a/c;
.source "SourceFile"


# instance fields
.field private final a:C


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/a/c;-><init>()V

    const/16 v0, 0x2c

    iput-char v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/d;->a:C

    return-void
.end method


# virtual methods
.method public final b(C)Z
    .registers 3

    iget-char v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/d;->a:C

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    iget-char v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/d;->a:C

    const/4 v1, 0x6

    new-array v1, v1, [C

    .line 1
    fill-array-data v1, :array_42

    const/4 v2, 0x0

    :goto_9
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1d

    rsub-int/lit8 v4, v2, 0x5

    and-int/lit8 v5, v0, 0xf

    const-string v6, "0123456789ABCDEF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v4

    shr-int/2addr v0, v3

    int-to-char v0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1d
    invoke-static {v1}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CharMatcher.is(\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_42
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method
