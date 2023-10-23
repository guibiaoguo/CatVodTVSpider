.class public Lcom/github/catvod/spider/merge1/aQ/Lc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/catvod/spider/merge1/aQ/Lc$DK;,
        Lcom/github/catvod/spider/merge1/aQ/Lc$K;
    }
.end annotation


# direct methods
.method public static Eg(Lcom/github/catvod/spider/merge1/aQ/u5;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/Lc$K;

    invoke-direct {v0, p1, p0}, Lcom/github/catvod/spider/merge1/aQ/Lc$K;-><init>(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/u5;)V

    .line 2
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/A3;->W(Lcom/github/catvod/spider/merge1/aQ/se;Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/se$DK;

    .line 3
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/Lc$K;->Ku(Lcom/github/catvod/spider/merge1/aQ/Lc$K;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p0

    return-object p0
.end method

.method public static W(Lcom/github/catvod/spider/merge1/aQ/u5;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/nM;
    .registers 4

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/nM;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/nM;-><init>()V

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/Lc$DK;

    invoke-direct {v1, p1, v0, p0}, Lcom/github/catvod/spider/merge1/aQ/Lc$DK;-><init>(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/nM;Lcom/github/catvod/spider/merge1/aQ/u5;)V

    invoke-static {v1, p1}, Lcom/github/catvod/spider/merge1/aQ/A3;->Eg(Lcom/github/catvod/spider/merge1/aQ/lj;Lcom/github/catvod/spider/merge1/aQ/iV;)V

    return-object v0
.end method
