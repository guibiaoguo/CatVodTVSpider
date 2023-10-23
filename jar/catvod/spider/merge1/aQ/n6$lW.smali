.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$lW;
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

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->nK()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->cG()V

    .line 3
    iget-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->O2:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->r()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "<"

    .line 4
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/WL;->nN(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->r()C

    move-result p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    .line 6
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->z0:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_3f

    :cond_24
    const/16 v0, 0x2f

    .line 7
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->ey(C)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 8
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->cG()V

    .line 9
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->ey:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_3f

    :cond_35
    const/16 p2, 0x3c

    .line 10
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    .line 11
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->lB:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :goto_3f
    return-void
.end method
