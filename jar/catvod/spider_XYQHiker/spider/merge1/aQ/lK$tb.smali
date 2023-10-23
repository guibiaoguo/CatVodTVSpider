.class final Lcom/github/catvod/spider/merge1/aQ/lK$tb;
.super Lcom/github/catvod/spider/merge1/aQ/lK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/lK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "tb"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/lK;-><init>(Lcom/github/catvod/spider/merge1/aQ/lK$DK;)V

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->i:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK;->W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    return-void
.end method


# virtual methods
.method o()Lcom/github/catvod/spider/merge1/aQ/lK;
    .registers 1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method
