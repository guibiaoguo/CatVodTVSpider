.class public final Lcom/github/catvod/spider/merge2/xbpq/e/y;
.super Lcom/github/catvod/spider/merge2/xbpq/e/w;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/e/w;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 3

    if-eq p1, p2, :cond_c

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->U()I

    move-result p1

    iget p2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/w;->a:I

    if-ge p1, p2, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/w;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":lt(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
