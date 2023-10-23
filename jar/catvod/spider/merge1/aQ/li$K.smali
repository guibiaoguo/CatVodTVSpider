.class final Lcom/github/catvod/spider/merge1/aQ/li$K;
.super Lcom/github/catvod/spider/merge1/aQ/JF;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/li;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "K"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/catvod/spider/merge1/aQ/JF<",
        "Lcom/github/catvod/spider/merge1/aQ/iV;",
        ">;"
    }
.end annotation


# instance fields
.field private final W:Lcom/github/catvod/spider/merge1/aQ/li;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge1/aQ/li;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge1/aQ/JF;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/li$K;->W:Lcom/github/catvod/spider/merge1/aQ/li;

    return-void
.end method


# virtual methods
.method public W()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li$K;->W:Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->lB()V

    return-void
.end method
