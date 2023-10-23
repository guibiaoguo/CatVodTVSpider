.class public final Lcom/github/catvod/spider/merge1/aQ/u5$j;
.super Lcom/github/catvod/spider/merge1/aQ/u5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
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
    .registers 4

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iV;->O2()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/catvod/spider/merge1/aQ/iV;

    .line 3
    instance-of v0, p2, Lcom/github/catvod/spider/merge1/aQ/wb;

    if-nez v0, :cond_8

    instance-of p2, p2, Lcom/github/catvod/spider/merge1/aQ/f1;

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_1e
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ":empty"

    return-object v0
.end method
