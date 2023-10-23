.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$bE;
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
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->X()C

    move-result p2

    if-eqz p2, :cond_42

    const/16 v0, 0x22

    if-eq p2, v0, :cond_3c

    const/16 v0, 0x3e

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2c

    const v0, 0xffff

    if-eq p2, v0, :cond_1c

    .line 2
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/lK$I;->X:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 3
    :cond_1c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 4
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iput-boolean v1, p2, Lcom/github/catvod/spider/merge1/aQ/lK$I;->i:Z

    .line 5
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->f()V

    .line 6
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4f

    .line 7
    :cond_2c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 8
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iput-boolean v1, p2, Lcom/github/catvod/spider/merge1/aQ/lK$I;->i:Z

    .line 9
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->f()V

    .line 10
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4f

    .line 11
    :cond_3c
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->Bu:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_4f

    .line 12
    :cond_42
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 13
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/lK$I;->X:Ljava/lang/StringBuilder;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4f
    return-void
.end method
