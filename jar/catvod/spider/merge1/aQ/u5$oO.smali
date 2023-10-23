.class public final Lcom/github/catvod/spider/merge1/aQ/u5$oO;
.super Lcom/github/catvod/spider/merge1/aQ/u5$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "oO"
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
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_8
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->mW()Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->fI()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method protected Ku()Ljava/lang/String;
    .registers 2

    const-string v0, "nth-last-child"

    return-object v0
.end method
