.class public final Lcom/github/catvod/spider/merge1/aQ/u5$AA;
.super Lcom/github/catvod/spider/merge1/aQ/u5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AA"
.end annotation


# instance fields
.field private final W:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/u5;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->y(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/KC;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/u5$AA;->W:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public W(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 4

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->i()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/catvod/spider/merge1/aQ/qx;

    .line 3
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/github/catvod/spider/merge1/aQ/KC;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/u5$AA;->W:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_2a
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/u5$AA;->W:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[^%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
