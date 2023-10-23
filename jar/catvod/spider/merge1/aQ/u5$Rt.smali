.class public final Lcom/github/catvod/spider/merge1/aQ/u5$Rt;
.super Lcom/github/catvod/spider/merge1/aQ/u5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rt"
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
    .registers 3

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 2
    instance-of p1, p1, Lcom/github/catvod/spider/merge1/aQ/Yw;

    if-nez p1, :cond_16

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->B8()Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ":only-child"

    return-object v0
.end method
