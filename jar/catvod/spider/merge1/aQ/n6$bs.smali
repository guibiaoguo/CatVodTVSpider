.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$bs;
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
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/n6;->m:[C

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->mw([C)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->mw(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->X()C

    move-result p2

    if-eqz p2, :cond_6c

    const/16 v0, 0x20

    if-eq p2, v0, :cond_66

    const/16 v0, 0x22

    if-eq p2, v0, :cond_5d

    const/16 v0, 0x27

    if-eq p2, v0, :cond_5d

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_57

    const v0, 0xffff

    if-eq p2, v0, :cond_4e

    const/16 v0, 0x9

    if-eq p2, v0, :cond_66

    const/16 v0, 0xa

    if-eq p2, v0, :cond_66

    const/16 v0, 0xc

    if-eq p2, v0, :cond_66

    const/16 v0, 0xd

    if-eq p2, v0, :cond_66

    packed-switch p2, :pswitch_data_78

    .line 4
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->f(C)V

    goto :goto_77

    .line 5
    :pswitch_3f  #0x3e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->mw()V

    .line 6
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_77

    .line 7
    :pswitch_48  #0x3d
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->RV:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_77

    .line 8
    :cond_4e
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 9
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_77

    .line 10
    :cond_57
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->Cv:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_77

    .line 11
    :cond_5d
    :pswitch_5d  #0x3c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 12
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->f(C)V

    goto :goto_77

    .line 13
    :cond_66
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->V:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_77

    .line 14
    :cond_6c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 15
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->f(C)V

    :goto_77
    return-void

    :pswitch_data_78
    .packed-switch 0x3c
        :pswitch_5d  #0000003c
        :pswitch_48  #0000003d
        :pswitch_3f  #0000003e
    .end packed-switch
.end method
