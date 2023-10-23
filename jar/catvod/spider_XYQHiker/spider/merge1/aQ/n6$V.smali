.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$V;
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
    .registers 4

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->nK()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->y()V

    .line 3
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->b0:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    return-void

    .line 4
    :cond_f
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->X()C

    move-result p2

    if-eqz p2, :cond_52

    const/16 v0, 0x20

    if-eq p2, v0, :cond_67

    const v0, 0xffff

    if-eq p2, v0, :cond_3e

    const/16 v0, 0x9

    if-eq p2, v0, :cond_67

    const/16 v0, 0xa

    if-eq p2, v0, :cond_67

    const/16 v0, 0xc

    if-eq p2, v0, :cond_67

    const/16 v0, 0xd

    if-eq p2, v0, :cond_67

    .line 5
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->y()V

    .line 6
    iget-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iget-object v0, v0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->Eg:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->b0:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_67

    .line 8
    :cond_3e
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 9
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->y()V

    .line 10
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/github/catvod/spider/merge1/aQ/lK$I;->i:Z

    .line 11
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->f()V

    .line 12
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_67

    .line 13
    :cond_52
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 14
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->y()V

    .line 15
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iget-object p2, p2, Lcom/github/catvod/spider/merge1/aQ/lK$I;->Eg:Ljava/lang/StringBuilder;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->b0:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :cond_67
    :goto_67
    return-void
.end method
