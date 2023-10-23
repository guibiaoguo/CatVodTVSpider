.class final enum Lcom/github/catvod/spider/merge1/aQ/rx$qz;
.super Lcom/github/catvod/spider/merge1/aQ/rx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/rx;
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
    invoke-direct {p0, p1, p2, v0}, Lcom/github/catvod/spider/merge1/aQ/rx;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/aQ/rx$P;)V

    return-void
.end method


# virtual methods
.method O2(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 10

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/rx;->W(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->W()Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->z(Lcom/github/catvod/spider/merge1/aQ/lK$c;)V

    goto/16 :goto_e6

    .line 3
    :cond_10
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->A()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->Eg()Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->c(Lcom/github/catvod/spider/merge1/aQ/lK$AA;)V

    goto/16 :goto_e6

    .line 5
    :cond_1f
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->cG()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    .line 6
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v2

    .line 7
    :cond_2a
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->Gq()Z

    move-result v0

    const-string v3, "html"

    const-string v4, "frameset"

    if-eqz v0, :cond_8c

    .line 8
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->X()Lcom/github/catvod/spider/merge1/aQ/lK$G;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_ec

    goto :goto_6f

    :sswitch_48
    const-string v3, "noframes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_6f

    :cond_51
    const/4 v5, 0x3

    goto :goto_6f

    :sswitch_53
    const-string v3, "frame"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_6f

    :cond_5c
    const/4 v5, 0x2

    goto :goto_6f

    :sswitch_5e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_6f

    :cond_65
    const/4 v5, 0x1

    goto :goto_6f

    :sswitch_67
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 v5, 0x0

    :goto_6f
    packed-switch v5, :pswitch_data_fe

    .line 10
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v2

    .line 11
    :pswitch_76  #0x3
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->jl:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->zK(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/rx;)Z

    move-result p1

    return p1

    .line 12
    :pswitch_7d  #0x2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->s(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_e6

    .line 13
    :pswitch_81  #0x1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->zK(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/rx;)Z

    move-result p1

    return p1

    .line 14
    :pswitch_88  #0x0
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_e6

    .line 15
    :cond_8c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->nN()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->jl()Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 16
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 17
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v2

    .line 18
    :cond_b2
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->l()Lcom/github/catvod/spider/merge1/aQ/li;

    .line 19
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->Bs()Z

    move-result p1

    if-nez p1, :cond_e6

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e6

    .line 20
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/rx;->r:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_e6

    .line 21
    :cond_cf
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->O2()Z

    move-result p1

    if-eqz p1, :cond_e7

    .line 22
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e6

    .line 23
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    :cond_e6
    :goto_e6
    return v1

    .line 24
    :cond_e7
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v2

    nop

    :sswitch_data_ec
    .sparse-switch
        -0x620c002b -> :sswitch_67
        0x3107ab -> :sswitch_5e
        0x5d2a96d -> :sswitch_53
        0x47177da7 -> :sswitch_48
    .end sparse-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_88  #00000000
        :pswitch_81  #00000001
        :pswitch_7d  #00000002
        :pswitch_76  #00000003
    .end packed-switch
.end method
