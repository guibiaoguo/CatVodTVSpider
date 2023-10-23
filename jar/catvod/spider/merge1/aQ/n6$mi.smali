.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$mi;
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
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/n6;->zK:[C

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->mw([C)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    .line 3
    iget-object v1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Vp(Ljava/lang/String;)V

    .line 4
    :cond_11
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->X()C

    move-result p2

    if-eqz p2, :cond_83

    const/16 v0, 0x20

    if-eq p2, v0, :cond_7d

    const/16 v0, 0x22

    if-eq p2, v0, :cond_74

    const/16 v0, 0x60

    if-eq p2, v0, :cond_74

    const v0, 0xffff

    if-eq p2, v0, :cond_6b

    const/16 v0, 0x9

    if-eq p2, v0, :cond_7d

    const/16 v0, 0xa

    if-eq p2, v0, :cond_7d

    const/16 v0, 0xc

    if-eq p2, v0, :cond_7d

    const/16 v0, 0xd

    if-eq p2, v0, :cond_7d

    const/16 v0, 0x26

    if-eq p2, v0, :cond_52

    const/16 v0, 0x27

    if-eq p2, v0, :cond_74

    packed-switch p2, :pswitch_data_90

    .line 5
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->d(C)V

    goto :goto_8e

    .line 6
    :pswitch_49  #0x3e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->mw()V

    .line 7
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_8e

    :cond_52
    const/16 p2, 0x3e

    .line 8
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/github/catvod/spider/merge1/aQ/WL;->jl(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-eqz p2, :cond_65

    .line 9
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->r([I)V

    goto :goto_8e

    .line 10
    :cond_65
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->d(C)V

    goto :goto_8e

    .line 11
    :cond_6b
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 12
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_8e

    .line 13
    :cond_74
    :pswitch_74  #0x3c, 0x3d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 14
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->d(C)V

    goto :goto_8e

    .line 15
    :cond_7d
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->j:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_8e

    .line 16
    :cond_83
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 17
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->d(C)V

    :goto_8e
    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x3c
        :pswitch_74  #0000003c
        :pswitch_74  #0000003d
        :pswitch_49  #0000003e
    .end packed-switch
.end method
