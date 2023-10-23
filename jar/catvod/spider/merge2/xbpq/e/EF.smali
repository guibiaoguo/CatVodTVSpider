.class public final Lcom/github/catvod/spider/merge2/xbpq/e/EF;
.super Lcom/github/catvod/spider/merge2/xbpq/e/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/e/t;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final b(Lcom/github/catvod/spider/merge2/xbpq/c/l;)I
    .registers 2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->U()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected final c()Ljava/lang/String;
    .registers 2

    const-string v0, "nth-child"

    return-object v0
.end method
