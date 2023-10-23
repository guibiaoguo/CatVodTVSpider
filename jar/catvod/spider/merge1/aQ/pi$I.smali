.class Lcom/github/catvod/spider/merge1/aQ/pi$I;
.super Lcom/github/catvod/spider/merge1/aQ/pi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/pi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "I"
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge1/aQ/u5;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/pi;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/pi;->W:Lcom/github/catvod/spider/merge1/aQ/u5;

    return-void
.end method


# virtual methods
.method public W(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p2

    :goto_8
    if-eqz p2, :cond_1c

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/pi;->W:Lcom/github/catvod/spider/merge1/aQ/u5;

    invoke-virtual {v1, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/u5;->W(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    if-ne p2, p1, :cond_17

    goto :goto_1c

    .line 3
    :cond_17
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p2

    goto :goto_8

    :cond_1c
    :goto_1c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/pi;->W:Lcom/github/catvod/spider/merge1/aQ/u5;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
