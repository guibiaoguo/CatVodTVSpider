.class public final Lcom/github/catvod/spider/merge1/aQ/u5$K;
.super Lcom/github/catvod/spider/merge1/aQ/u5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/u5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "K"
.end annotation


# instance fields
.field private final W:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/u5;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/u5$K;->W:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public W(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/u5$K;->W:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->f(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/u5$K;->W:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
