.class public final Lcom/github/catvod/spider/merge1/aQ/u5$S;
.super Lcom/github/catvod/spider/merge1/aQ/u5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "S"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public W(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 5

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    .line 2
    instance-of v1, p1, Lcom/github/catvod/spider/merge1/aQ/Yw;

    if-nez v1, :cond_1b

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->fI()I

    move-result p2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->mW()Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ":last-child"

    return-object v0
.end method
