.class public abstract Lcom/github/catvod/spider/merge2/xbpq/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/a/n;->d(II)I

    :goto_7
    if-ge p2, v0, :cond_17

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/a/h;->b(C)Z

    move-result v1

    if-eqz v1, :cond_14

    return p2

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_17
    const/4 p1, -0x1

    return p1
.end method

.method public abstract b(C)Z
.end method
