.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$US;
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
    .registers 6

    .line 1
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->cs()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 2
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 3
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iput-boolean v1, p2, Lcom/github/catvod/spider/merge1/aQ/lK$I;->i:Z

    .line 4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->f()V

    .line 5
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    return-void

    :cond_17
    const/4 v0, 0x5

    new-array v0, v0, [C

    .line 6
    fill-array-data v0, :array_6a

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->z0([C)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 7
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->W()V

    goto :goto_68

    :cond_27
    const/16 v0, 0x3e

    .line 8
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->ey(C)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 9
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->f()V

    .line 10
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_68

    :cond_38
    const-string v0, "PUBLIC"

    .line 11
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->kc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 12
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iput-object v0, p2, Lcom/github/catvod/spider/merge1/aQ/lK$I;->Ku:Ljava/lang/String;

    .line 13
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->mW:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_68

    :cond_4a
    const-string v0, "SYSTEM"

    .line 14
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->kc(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 15
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iput-object v0, p2, Lcom/github/catvod/spider/merge1/aQ/lK$I;->Ku:Ljava/lang/String;

    .line 16
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->k:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_68

    .line 17
    :cond_5c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 18
    iget-object p2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->T:Lcom/github/catvod/spider/merge1/aQ/lK$I;

    iput-boolean v1, p2, Lcom/github/catvod/spider/merge1/aQ/lK$I;->i:Z

    .line 19
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->ZT:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :goto_68
    return-void

    nop

    :array_6a
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
