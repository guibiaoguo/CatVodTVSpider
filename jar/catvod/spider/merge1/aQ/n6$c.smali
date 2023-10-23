.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$c;
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

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/WL;->A(Z)Lcom/github/catvod/spider/merge1/aQ/lK$l;

    .line 3
    iget-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->r()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->cs(C)V

    .line 4
    iget-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->O2:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->r()C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->o:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_2c

    :cond_22
    const-string p2, "</"

    .line 6
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->nN(Ljava/lang/String;)V

    .line 7
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->Ku:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :goto_2c
    return-void
.end method
