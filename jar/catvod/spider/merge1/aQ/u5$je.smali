.class public final Lcom/github/catvod/spider/merge1/aQ/u5$je;
.super Lcom/github/catvod/spider/merge1/aQ/u5$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "je"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/u5$f;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected Eg(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)I
    .registers 3

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->fI()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected Ku()Ljava/lang/String;
    .registers 2

    const-string v0, "nth-child"

    return-object v0
.end method
