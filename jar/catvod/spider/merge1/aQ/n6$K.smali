.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$K;
.super Lcom/github/catvod/spider/merge1/aQ/n6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/n6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/github/catvod/spider/merge1/aQ/n6;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/aQ/n6$P;)V

    return-void
.end method


# virtual methods
.method cG(Lcom/github/catvod/spider/merge1/aQ/WL;Lcom/github/catvod/spider/merge1/aQ/sJ;)V
    .registers 5

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->ey(C)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->cG()V

    .line 3
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->Gq:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_5a

    .line 4
    :cond_11
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->nK()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->Eg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->Eg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->Vp(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_50

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->A(Z)Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->Eg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->et(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object p2

    iput-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    .line 6
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->mw()V

    .line 7
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->A:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_5a

    :cond_50
    const-string p2, "<"

    .line 8
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->nN(Ljava/lang/String;)V

    .line 9
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->Ku:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :goto_5a
    return-void
.end method
