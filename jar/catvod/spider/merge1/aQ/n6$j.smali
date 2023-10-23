.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$j;
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
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->r()C

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_33

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2a

    const v1, 0xffff

    if-eq v0, v1, :cond_21

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 2
    fill-array-data v0, :array_4a

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->f([C)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->nN(Ljava/lang/String;)V

    goto :goto_48

    .line 4
    :cond_21
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 5
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_48

    .line 6
    :cond_2a
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    .line 7
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->nK:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_48

    .line 8
    :cond_33
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    .line 9
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->Wa:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_48

    .line 10
    :cond_3c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 11
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->W()V

    const p2, 0xfffd

    .line 12
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    :goto_48
    return-void

    nop

    :array_4a
    .array-data 2
        0x2ds
        0x3cs
        0x0s
    .end array-data
.end method
