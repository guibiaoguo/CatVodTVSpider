.class public final Lcom/github/catvod/spider/merge1/aQ/u5$g6;
.super Lcom/github/catvod/spider/merge1/aQ/u5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g6"
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
    instance-of v0, p1, Lcom/github/catvod/spider/merge1/aQ/Yw;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge1/aQ/li;->b0(I)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    :cond_9
    if-ne p2, p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ":root"

    return-object v0
.end method
