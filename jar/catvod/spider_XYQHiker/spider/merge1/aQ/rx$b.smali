.class final enum Lcom/github/catvod/spider/merge1/aQ/rx$b;
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

.method private Gq(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 11

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->jl()Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "br"

    const-string v5, "body"

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_23c

    goto/16 :goto_dd

    :sswitch_1b
    const-string v2, "sarcasm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_dd

    :cond_25
    const/16 v7, 0xf

    goto/16 :goto_dd

    :sswitch_29
    const-string v2, "span"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto/16 :goto_dd

    :cond_33
    const/16 v7, 0xe

    goto/16 :goto_dd

    :sswitch_37
    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto/16 :goto_dd

    :cond_41
    const/16 v7, 0xd

    goto/16 :goto_dd

    :sswitch_45
    const-string v2, "form"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    goto/16 :goto_dd

    :cond_4f
    const/16 v7, 0xc

    goto/16 :goto_dd

    :sswitch_53
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    goto/16 :goto_dd

    :cond_5b
    const/16 v7, 0xb

    goto/16 :goto_dd

    :sswitch_5f
    const-string v2, "li"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    goto/16 :goto_dd

    :cond_69
    const/16 v7, 0xa

    goto/16 :goto_dd

    :sswitch_6d
    const-string v2, "h6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    goto/16 :goto_dd

    :cond_77
    const/16 v7, 0x9

    goto/16 :goto_dd

    :sswitch_7b
    const-string v2, "h5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    goto/16 :goto_dd

    :cond_85
    const/16 v7, 0x8

    goto :goto_dd

    :sswitch_88
    const-string v2, "h4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    goto :goto_dd

    :cond_91
    const/4 v7, 0x7

    goto :goto_dd

    :sswitch_93
    const-string v2, "h3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9c

    goto :goto_dd

    :cond_9c
    const/4 v7, 0x6

    goto :goto_dd

    :sswitch_9e
    const-string v2, "h2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    goto :goto_dd

    :cond_a7
    const/4 v7, 0x5

    goto :goto_dd

    :sswitch_a9
    const-string v2, "h1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b2

    goto :goto_dd

    :cond_b2
    const/4 v7, 0x4

    goto :goto_dd

    :sswitch_b4
    const-string v2, "dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    goto :goto_dd

    :cond_bd
    const/4 v7, 0x3

    goto :goto_dd

    :sswitch_bf
    const-string v2, "dd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c8

    goto :goto_dd

    :cond_c8
    const/4 v7, 0x2

    goto :goto_dd

    :sswitch_ca
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d1

    goto :goto_dd

    :cond_d1
    const/4 v7, 0x1

    goto :goto_dd

    :sswitch_d3
    const-string v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dc

    goto :goto_dd

    :cond_dc
    const/4 v7, 0x0

    :goto_dd
    packed-switch v7, :pswitch_data_27e

    .line 4
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx$R;->Vp:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$b;->o(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result p1

    return p1

    .line 6
    :cond_ed
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx$R;->d:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 7
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->j(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_ff

    .line 8
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v6

    .line 9
    :cond_ff
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->lB()V

    .line 10
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_113

    .line 11
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 12
    :cond_113
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->ZT(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto/16 :goto_23a

    .line 13
    :cond_118
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx$R;->o:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14e

    const-string p1, "name"

    .line 14
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->j(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23a

    .line 15
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->j(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_132

    .line 16
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v6

    .line 17
    :cond_132
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->lB()V

    .line 18
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_146

    .line 19
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 20
    :cond_146
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->ZT(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 21
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->P()V

    goto/16 :goto_23a

    .line 22
    :cond_14e
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$b;->nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result p1

    return p1

    .line 23
    :pswitch_153  #0xe, 0xf
    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$b;->nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result p1

    return p1

    .line 24
    :pswitch_158  #0xd
    invoke-virtual {p2, v5}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23a

    .line 25
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1

    .line 26
    :pswitch_163  #0xc
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->GL()Lcom/github/catvod/spider/merge1/aQ/WO;

    move-result-object p1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->FX(Lcom/github/catvod/spider/merge1/aQ/WO;)V

    if-eqz p1, :cond_18d

    .line 28
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_174

    goto :goto_18d

    .line 29
    :cond_174
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->lB()V

    .line 30
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_188

    .line 31
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 32
    :cond_188
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->B2(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    goto/16 :goto_23a

    .line 33
    :cond_18d
    :goto_18d
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v6

    .line 34
    :pswitch_191  #0xb
    invoke-virtual {p2, v5}, Lcom/github/catvod/spider/merge1/aQ/iL;->j(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_19b

    .line 35
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v6

    .line 36
    :cond_19b
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/rx;->d:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto/16 :goto_23a

    .line 37
    :pswitch_1a2  #0xa
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->x(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1ac

    .line 38
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v6

    .line 39
    :cond_1ac
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->Tr(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c0

    .line 41
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 42
    :cond_1c0
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->ZT(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto/16 :goto_23a

    .line 43
    :pswitch_1c5  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/rx$R;->cG:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->V([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d1

    .line 44
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v6

    .line 45
    :cond_1d1
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->Tr(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e5

    .line 47
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 48
    :cond_1e5
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->OF([Ljava/lang/String;)V

    goto :goto_23a

    .line 49
    :pswitch_1e9  #0x2, 0x3
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->j(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1f3

    .line 50
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v6

    .line 51
    :cond_1f3
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->Tr(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_207

    .line 53
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 54
    :cond_207
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->ZT(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_23a

    .line 55
    :pswitch_20b  #0x1
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 56
    invoke-virtual {p2, v4}, Lcom/github/catvod/spider/merge1/aQ/HW;->cG(Ljava/lang/String;)Z

    return v6

    .line 57
    :pswitch_212  #0x0
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->nK(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_223

    .line 58
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 59
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/HW;->cG(Ljava/lang/String;)Z

    .line 60
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1

    .line 61
    :cond_223
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->Tr(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_237

    .line 63
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 64
    :cond_237
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->ZT(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    :cond_23a
    :goto_23a
    return v3

    nop

    :sswitch_data_23c
    .sparse-switch
        0x70 -> :sswitch_d3
        0xc50 -> :sswitch_ca
        0xc80 -> :sswitch_bf
        0xc90 -> :sswitch_b4
        0xcc9 -> :sswitch_a9
        0xcca -> :sswitch_9e
        0xccb -> :sswitch_93
        0xccc -> :sswitch_88
        0xccd -> :sswitch_7b
        0xcce -> :sswitch_6d
        0xd7d -> :sswitch_5f
        0x2e39a2 -> :sswitch_53
        0x300cc4 -> :sswitch_45
        0x3107ab -> :sswitch_37
        0x35f74a -> :sswitch_29
        0x6f67a51c -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_27e
    .packed-switch 0x0
        :pswitch_212  #00000000
        :pswitch_20b  #00000001
        :pswitch_1e9  #00000002
        :pswitch_1e9  #00000003
        :pswitch_1c5  #00000004
        :pswitch_1c5  #00000005
        :pswitch_1c5  #00000006
        :pswitch_1c5  #00000007
        :pswitch_1c5  #00000008
        :pswitch_1c5  #00000009
        :pswitch_1a2  #0000000a
        :pswitch_191  #0000000b
        :pswitch_163  #0000000c
        :pswitch_158  #0000000d
        :pswitch_153  #0000000e
        :pswitch_153  #0000000f
    .end packed-switch
.end method

.method private P(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 20

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->X()Lcom/github/catvod/spider/merge1/aQ/lK$G;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "isindex"

    const-string v6, "input"

    const-string v7, "svg"

    const-string v8, "nobr"

    const-string v9, "form"

    const-string v10, "body"

    const-string v11, "li"

    const-string v12, "hr"

    const-string v13, "option"

    const-string v15, "button"

    const/16 v16, -0x1

    const-string v14, "a"

    const/4 v0, 0x0

    sparse-switch v4, :sswitch_data_696

    goto/16 :goto_200

    :sswitch_2f
    const-string v4, "noembed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto/16 :goto_200

    :cond_39
    const/16 v16, 0x23

    goto/16 :goto_200

    :sswitch_3d
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    goto/16 :goto_200

    :cond_45
    const/16 v16, 0x22

    goto/16 :goto_200

    :sswitch_49
    const-string v4, "plaintext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    goto/16 :goto_200

    :cond_53
    const/16 v16, 0x21

    goto/16 :goto_200

    :sswitch_57
    const-string v4, "listing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    goto/16 :goto_200

    :cond_61
    const/16 v16, 0x20

    goto/16 :goto_200

    :sswitch_65
    const-string v4, "table"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6f

    goto/16 :goto_200

    :cond_6f
    const/16 v16, 0x1f

    goto/16 :goto_200

    :sswitch_73
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    goto/16 :goto_200

    :cond_7b
    const/16 v16, 0x1e

    goto/16 :goto_200

    :sswitch_7f
    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    goto/16 :goto_200

    :cond_89
    const/16 v16, 0x1d

    goto/16 :goto_200

    :sswitch_8d
    const-string v4, "span"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_97

    goto/16 :goto_200

    :cond_97
    const/16 v16, 0x1c

    goto/16 :goto_200

    :sswitch_9b
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    goto/16 :goto_200

    :cond_a3
    const/16 v16, 0x1b

    goto/16 :goto_200

    :sswitch_a7
    const-string v4, "math"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    goto/16 :goto_200

    :cond_b1
    const/16 v16, 0x1a

    goto/16 :goto_200

    :sswitch_b5
    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bf

    goto/16 :goto_200

    :cond_bf
    const/16 v16, 0x19

    goto/16 :goto_200

    :sswitch_c3
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cb

    goto/16 :goto_200

    :cond_cb
    const/16 v16, 0x18

    goto/16 :goto_200

    :sswitch_cf
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d7

    goto/16 :goto_200

    :cond_d7
    const/16 v16, 0x17

    goto/16 :goto_200

    :sswitch_db
    const-string v4, "xmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e5

    goto/16 :goto_200

    :cond_e5
    const/16 v16, 0x16

    goto/16 :goto_200

    :sswitch_e9
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f1

    goto/16 :goto_200

    :cond_f1
    const/16 v16, 0x15

    goto/16 :goto_200

    :sswitch_f5
    const-string v4, "pre"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ff

    goto/16 :goto_200

    :cond_ff
    const/16 v16, 0x14

    goto/16 :goto_200

    :sswitch_103
    const-string v4, "rt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10d

    goto/16 :goto_200

    :cond_10d
    const/16 v16, 0x13

    goto/16 :goto_200

    :sswitch_111
    const-string v4, "rp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11b

    goto/16 :goto_200

    :cond_11b
    const/16 v16, 0x12

    goto/16 :goto_200

    :sswitch_11f
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_127

    goto/16 :goto_200

    :cond_127
    const/16 v16, 0x11

    goto/16 :goto_200

    :sswitch_12b
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_133

    goto/16 :goto_200

    :cond_133
    const/16 v16, 0x10

    goto/16 :goto_200

    :sswitch_137
    const-string v4, "h6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_141

    goto/16 :goto_200

    :cond_141
    const/16 v16, 0xf

    goto/16 :goto_200

    :sswitch_145
    const-string v4, "h5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14f

    goto/16 :goto_200

    :cond_14f
    const/16 v16, 0xe

    goto/16 :goto_200

    :sswitch_153
    const-string v4, "h4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15d

    goto/16 :goto_200

    :cond_15d
    const/16 v16, 0xd

    goto/16 :goto_200

    :sswitch_161
    const-string v4, "h3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16b

    goto/16 :goto_200

    :cond_16b
    const/16 v16, 0xc

    goto/16 :goto_200

    :sswitch_16f
    const-string v4, "h2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_179

    goto/16 :goto_200

    :cond_179
    const/16 v16, 0xb

    goto/16 :goto_200

    :sswitch_17d
    const-string v4, "h1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_187

    goto/16 :goto_200

    :cond_187
    const/16 v16, 0xa

    goto/16 :goto_200

    :sswitch_18b
    const-string v4, "dt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_195

    goto/16 :goto_200

    :cond_195
    const/16 v16, 0x9

    goto/16 :goto_200

    :sswitch_199
    const-string v4, "dd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a3

    goto/16 :goto_200

    :cond_1a3
    const/16 v16, 0x8

    goto/16 :goto_200

    :sswitch_1a7
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ae

    goto :goto_200

    :cond_1ae
    const/16 v16, 0x7

    goto :goto_200

    :sswitch_1b1
    const-string v4, "optgroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1ba

    goto :goto_200

    :cond_1ba
    const/16 v16, 0x6

    goto :goto_200

    :sswitch_1bd
    const-string v4, "select"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c6

    goto :goto_200

    :cond_1c6
    const/16 v16, 0x5

    goto :goto_200

    :sswitch_1c9
    const-string v4, "textarea"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d2

    goto :goto_200

    :cond_1d2
    const/16 v16, 0x4

    goto :goto_200

    :sswitch_1d5
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1dc

    goto :goto_200

    :cond_1dc
    const/16 v16, 0x3

    goto :goto_200

    :sswitch_1df
    const-string v4, "iframe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e8

    goto :goto_200

    :cond_1e8
    const/16 v16, 0x2

    goto :goto_200

    :sswitch_1eb
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f2

    goto :goto_200

    :cond_1f2
    const/16 v16, 0x1

    goto :goto_200

    :sswitch_1f5
    const-string v4, "frameset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1fe

    goto :goto_200

    :cond_1fe
    const/16 v16, 0x0

    :goto_200
    const-string v4, "p"

    packed-switch v16, :pswitch_data_728

    .line 4
    sget-object v5, Lcom/github/catvod/spider/merge1/aQ/rx$R;->P:[Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_218

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 6
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->s(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 7
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    :goto_216
    goto/16 :goto_37f

    .line 8
    :cond_218
    sget-object v5, Lcom/github/catvod/spider/merge1/aQ/rx$R;->A:[Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22d

    .line 9
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->nK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_229

    .line 10
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 11
    :cond_229
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_216

    .line 12
    :cond_22d
    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/rx$R;->y:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23e

    .line 13
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->jl:Lcom/github/catvod/spider/merge1/aQ/rx;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->zK(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/rx;)Z

    move-result v0

    return v0

    .line 14
    :cond_23e
    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/rx$R;->Gq:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_251

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 16
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->N(Lcom/github/catvod/spider/merge1/aQ/li;)V

    goto :goto_216

    .line 18
    :cond_251
    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/rx$R;->o:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_266

    .line 19
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 20
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->GV()V

    .line 22
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    goto :goto_216

    .line 23
    :cond_266
    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/rx$R;->T:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_272

    .line 24
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->s(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_216

    .line 25
    :cond_272
    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/rx$R;->mw:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_280

    move-object/from16 v3, p0

    .line 26
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v0

    .line 27
    :cond_280
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 28
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto/16 :goto_37f

    .line 29
    :pswitch_288  #0x23
    invoke-static {v2, v1}, Lcom/github/catvod/spider/merge1/aQ/rx;->Ku(Lcom/github/catvod/spider/merge1/aQ/lK$G;Lcom/github/catvod/spider/merge1/aQ/iL;)V

    goto/16 :goto_37f

    :pswitch_28d  #0x22
    move-object/from16 v3, p0

    .line 30
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->GL()Lcom/github/catvod/spider/merge1/aQ/WO;

    move-result-object v4

    if-eqz v4, :cond_299

    return v0

    .line 32
    :cond_299
    invoke-virtual {v1, v9}, Lcom/github/catvod/spider/merge1/aQ/HW;->cG(Ljava/lang/String;)Z

    const-string v0, "action"

    .line 33
    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->kc(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b1

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->GL()Lcom/github/catvod/spider/merge1/aQ/WO;

    move-result-object v4

    .line 35
    iget-object v7, v2, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {v7, v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->nN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Lcom/github/catvod/spider/merge1/aQ/li;->Yl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 36
    :cond_2b1
    invoke-virtual {v1, v12}, Lcom/github/catvod/spider/merge1/aQ/HW;->cG(Ljava/lang/String;)Z

    const-string v0, "label"

    .line 37
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/HW;->cG(Ljava/lang/String;)Z

    const-string v4, "prompt"

    .line 38
    invoke-virtual {v2, v4}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->kc(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c8

    .line 39
    iget-object v7, v2, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {v7, v4}, Lcom/github/catvod/spider/merge1/aQ/dH;->nN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2ca

    :cond_2c8
    const-string v4, "This is a searchable index. Enter search keywords: "

    .line 40
    :goto_2ca
    new-instance v7, Lcom/github/catvod/spider/merge1/aQ/lK$c;

    invoke-direct {v7}, Lcom/github/catvod/spider/merge1/aQ/lK$c;-><init>()V

    invoke-virtual {v7, v4}, Lcom/github/catvod/spider/merge1/aQ/lK$c;->f(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    .line 41
    new-instance v4, Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-direct {v4}, Lcom/github/catvod/spider/merge1/aQ/dH;-><init>()V

    .line 42
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->ey()Z

    move-result v7

    if-eqz v7, :cond_303

    .line 43
    iget-object v2, v2, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/dH;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e7
    :goto_2e7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_303

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/catvod/spider/merge1/aQ/qx;

    .line 44
    invoke-virtual {v7}, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/github/catvod/spider/merge1/aQ/rx$R;->f:[Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2e7

    .line 45
    invoke-virtual {v4, v7}, Lcom/github/catvod/spider/merge1/aQ/dH;->Tr(Lcom/github/catvod/spider/merge1/aQ/qx;)Lcom/github/catvod/spider/merge1/aQ/dH;

    goto :goto_2e7

    :cond_303
    const-string v2, "name"

    .line 46
    invoke-virtual {v4, v2, v5}, Lcom/github/catvod/spider/merge1/aQ/dH;->lB(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/dH;

    .line 47
    invoke-virtual {v1, v6, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->O2(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)Z

    .line 48
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 49
    invoke-virtual {v1, v12}, Lcom/github/catvod/spider/merge1/aQ/HW;->cG(Ljava/lang/String;)Z

    .line 50
    invoke-virtual {v1, v9}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    goto/16 :goto_37f

    .line 51
    :pswitch_316  #0x21
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->nK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31f

    .line 52
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 53
    :cond_31f
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 54
    iget-object v0, v1, Lcom/github/catvod/spider/merge1/aQ/HW;->Ku:Lcom/github/catvod/spider/merge1/aQ/WL;

    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/n6;->y:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_37f

    .line 55
    :pswitch_32a  #0x1f
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->ey()Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge1/aQ/Yw;->tK()Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    move-result-object v5

    sget-object v6, Lcom/github/catvod/spider/merge1/aQ/Yw$K;->Eg:Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    if-eq v5, v6, :cond_33f

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->nK(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33f

    .line 56
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 57
    :cond_33f
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 58
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    .line 59
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->cG:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_37f

    .line 60
    :pswitch_34b  #0x1e
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 61
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->s(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v2

    const-string v4, "type"

    .line 62
    invoke-virtual {v2, v4}, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "hidden"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37f

    .line 63
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    goto :goto_37f

    .line 64
    :pswitch_364  #0x1d
    invoke-virtual {v1, v7}, Lcom/github/catvod/spider/merge1/aQ/iL;->z0(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    if-nez v0, :cond_375

    const-string v0, "img"

    .line 65
    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->et(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result v0

    return v0

    .line 66
    :cond_375
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_37f

    .line 67
    :pswitch_379  #0x1c
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 68
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    :cond_37f
    :goto_37f
    const/4 v4, 0x1

    goto/16 :goto_693

    :pswitch_382  #0x1b
    move-object/from16 v3, p0

    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 70
    invoke-virtual {v1, v8}, Lcom/github/catvod/spider/merge1/aQ/iL;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_396

    .line 71
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 72
    invoke-virtual {v1, v8}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 73
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 74
    :cond_396
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    .line 75
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->N(Lcom/github/catvod/spider/merge1/aQ/li;)V

    goto :goto_37f

    .line 76
    :pswitch_39e  #0x1a
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 77
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_37f

    :pswitch_3a5  #0x19
    move-object/from16 v3, p0

    .line 78
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->bq()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 80
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->ey()Z

    move-result v1

    if-eqz v1, :cond_37f

    .line 81
    iget-object v1, v2, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/dH;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c0
    :goto_3c0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/qx;

    .line 82
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/catvod/spider/merge1/aQ/iV;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c0

    .line 83
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/github/catvod/spider/merge1/aQ/dH;->Tr(Lcom/github/catvod/spider/merge1/aQ/qx;)Lcom/github/catvod/spider/merge1/aQ/dH;

    goto :goto_3c0

    :pswitch_3de  #0x18
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->GL()Lcom/github/catvod/spider/merge1/aQ/WO;

    move-result-object v5

    if-eqz v5, :cond_3eb

    .line 85
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v0

    .line 86
    :cond_3eb
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->nK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f4

    .line 87
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 88
    :cond_3f4
    invoke-virtual {v1, v2, v15}, Lcom/github/catvod/spider/merge1/aQ/iL;->JM(Lcom/github/catvod/spider/merge1/aQ/lK$G;Z)Lcom/github/catvod/spider/merge1/aQ/WO;

    goto :goto_37f

    :pswitch_3f8  #0x17
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 89
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->bq()Ljava/util/ArrayList;

    move-result-object v4

    .line 91
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v15, :cond_453

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_420

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_420

    goto :goto_453

    .line 92
    :cond_420
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    .line 93
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 94
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->ey()Z

    move-result v1

    if-eqz v1, :cond_37f

    .line 95
    iget-object v1, v2, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/dH;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_435
    :goto_435
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/qx;

    .line 96
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/qx;->Eg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/catvod/spider/merge1/aQ/iV;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_435

    .line 97
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/github/catvod/spider/merge1/aQ/dH;->Tr(Lcom/github/catvod/spider/merge1/aQ/qx;)Lcom/github/catvod/spider/merge1/aQ/dH;

    goto :goto_435

    :cond_453
    :goto_453
    return v0

    .line 98
    :pswitch_454  #0x16
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->nK(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45d

    .line 99
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 100
    :cond_45d
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 101
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    .line 102
    invoke-static {v2, v1}, Lcom/github/catvod/spider/merge1/aQ/rx;->Ku(Lcom/github/catvod/spider/merge1/aQ/lK$G;Lcom/github/catvod/spider/merge1/aQ/iL;)V

    goto/16 :goto_37f

    .line 103
    :pswitch_468  #0x15
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 104
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto/16 :goto_37f

    .line 105
    :pswitch_470  #0x14, 0x20
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->nK(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_479

    .line 106
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 107
    :cond_479
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 108
    iget-object v2, v1, Lcom/github/catvod/spider/merge1/aQ/HW;->Eg:Lcom/github/catvod/spider/merge1/aQ/sJ;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Lcom/github/catvod/spider/merge1/aQ/sJ;->E(Ljava/lang/String;)Z

    .line 109
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    goto/16 :goto_37f

    :pswitch_488  #0x12, 0x13
    move-object/from16 v3, p0

    const-string v0, "ruby"

    .line 110
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->j(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37f

    .line 111
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->lB()V

    .line 112
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a9

    .line 113
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 114
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Bu(Ljava/lang/String;)V

    .line 115
    :cond_4a9
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto/16 :goto_37f

    :pswitch_4ae  #0x11
    const/4 v15, 0x1

    .line 116
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->bq()Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v15

    :goto_4bb
    if-lez v5, :cond_4e7

    .line 119
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 120
    invoke-virtual {v6}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d1

    .line 121
    invoke-virtual {v1, v11}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    goto :goto_4e7

    .line 122
    :cond_4d1
    invoke-virtual {v1, v6}, Lcom/github/catvod/spider/merge1/aQ/iL;->Y(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result v7

    if-eqz v7, :cond_4e4

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/github/catvod/spider/merge1/aQ/rx$R;->O2:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4e4

    goto :goto_4e7

    :cond_4e4
    add-int/lit8 v5, v5, -0x1

    goto :goto_4bb

    .line 123
    :cond_4e7
    :goto_4e7
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->nK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f0

    .line 124
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 125
    :cond_4f0
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto/16 :goto_37f

    .line 126
    :pswitch_4f5  #0x10
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->nK(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4fe

    .line 127
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 128
    :cond_4fe
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->s(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 129
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    goto/16 :goto_37f

    :pswitch_506  #0xa, 0xb, 0xc, 0xd, 0xe, 0xf
    move-object/from16 v3, p0

    .line 130
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->nK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_511

    .line 131
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 132
    :cond_511
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/rx$R;->cG:[Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_527

    .line 133
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->l()Lcom/github/catvod/spider/merge1/aQ/li;

    .line 135
    :cond_527
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto/16 :goto_37f

    :pswitch_52c  #0x8, 0x9
    const/4 v15, 0x1

    .line 136
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->bq()Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v15

    :goto_539
    if-lez v5, :cond_56b

    .line 139
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 140
    invoke-virtual {v6}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/github/catvod/spider/merge1/aQ/rx$R;->nN:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_555

    .line 141
    invoke-virtual {v6}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    goto :goto_56b

    .line 142
    :cond_555
    invoke-virtual {v1, v6}, Lcom/github/catvod/spider/merge1/aQ/iL;->Y(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result v7

    if-eqz v7, :cond_568

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/github/catvod/spider/merge1/aQ/rx$R;->O2:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_568

    goto :goto_56b

    :cond_568
    add-int/lit8 v5, v5, -0x1

    goto :goto_539

    .line 143
    :cond_56b
    :goto_56b
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->nK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_574

    .line 144
    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 145
    :cond_574
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto/16 :goto_37f

    :pswitch_579  #0x7
    move-object/from16 v3, p0

    .line 146
    invoke-virtual {v1, v14}, Lcom/github/catvod/spider/merge1/aQ/iL;->E(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    if-eqz v0, :cond_593

    .line 147
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 148
    invoke-virtual {v1, v14}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 149
    invoke-virtual {v1, v14}, Lcom/github/catvod/spider/merge1/aQ/iL;->z0(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    if-eqz v0, :cond_593

    .line 150
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->C(Lcom/github/catvod/spider/merge1/aQ/li;)V

    .line 151
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->B2(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    .line 152
    :cond_593
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 153
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    .line 154
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->N(Lcom/github/catvod/spider/merge1/aQ/li;)V

    goto/16 :goto_37f

    .line 155
    :pswitch_59f  #0x5
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 156
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 157
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->db()Lcom/github/catvod/spider/merge1/aQ/rx;

    move-result-object v0

    .line 159
    sget-object v2, Lcom/github/catvod/spider/merge1/aQ/rx;->cG:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5dc

    sget-object v2, Lcom/github/catvod/spider/merge1/aQ/rx;->nN:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5dc

    sget-object v2, Lcom/github/catvod/spider/merge1/aQ/rx;->o:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5dc

    sget-object v2, Lcom/github/catvod/spider/merge1/aQ/rx;->P:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5dc

    sget-object v2, Lcom/github/catvod/spider/merge1/aQ/rx;->T:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d5

    goto :goto_5dc

    .line 160
    :cond_5d5
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->f:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto/16 :goto_37f

    .line 161
    :cond_5dc
    :goto_5dc
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->mw:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto/16 :goto_37f

    .line 162
    :pswitch_5e3  #0x4
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 163
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->GL()Z

    move-result v2

    if-nez v2, :cond_37f

    .line 164
    iget-object v2, v1, Lcom/github/catvod/spider/merge1/aQ/HW;->Ku:Lcom/github/catvod/spider/merge1/aQ/WL;

    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/n6;->Ku:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {v2, v4}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->fI()V

    .line 166
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    .line 167
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->A:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto/16 :goto_37f

    .line 168
    :pswitch_600  #0x3, 0x6
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_611

    .line 169
    invoke-virtual {v1, v13}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 170
    :cond_611
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 171
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto/16 :goto_37f

    .line 172
    :pswitch_619  #0x2
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    .line 173
    invoke-static {v2, v1}, Lcom/github/catvod/spider/merge1/aQ/rx;->Ku(Lcom/github/catvod/spider/merge1/aQ/lK$G;Lcom/github/catvod/spider/merge1/aQ/iL;)V

    goto/16 :goto_37f

    :pswitch_621  #0x1
    move-object/from16 v3, p0

    const/4 v4, 0x1

    .line 174
    invoke-virtual {v1, v15}, Lcom/github/catvod/spider/merge1/aQ/iL;->nK(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_634

    .line 175
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 176
    invoke-virtual {v1, v15}, Lcom/github/catvod/spider/merge1/aQ/HW;->A(Ljava/lang/String;)Z

    .line 177
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    goto :goto_693

    .line 178
    :cond_634
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 179
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 180
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    goto :goto_693

    :pswitch_63e  #0x0
    move-object/from16 v3, p0

    const/4 v4, 0x1

    .line 181
    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->bq()Ljava/util/ArrayList;

    move-result-object v5

    .line 183
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v4, :cond_694

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_666

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_666

    goto :goto_694

    .line 184
    :cond_666
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->cs()Z

    move-result v6

    if-nez v6, :cond_66d

    return v0

    .line 185
    :cond_66d
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 186
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v6

    if-eqz v6, :cond_67c

    .line 187
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->nK()V

    .line 188
    :cond_67c
    :goto_67c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_68b

    .line 189
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_67c

    .line 190
    :cond_68b
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 191
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->Vp:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    :goto_693
    return v4

    :cond_694
    :goto_694
    return v0

    nop

    :sswitch_data_696
    .sparse-switch
        -0x620c002b -> :sswitch_1f5
        -0x521dd8ce -> :sswitch_1eb
        -0x47007d5c -> :sswitch_1df
        -0x3c35778b -> :sswitch_1d5
        -0x3bcc48c6 -> :sswitch_1c9
        -0x3600cb04 -> :sswitch_1bd
        -0x4d08054 -> :sswitch_1b1
        0x61 -> :sswitch_1a7
        0xc80 -> :sswitch_199
        0xc90 -> :sswitch_18b
        0xcc9 -> :sswitch_17d
        0xcca -> :sswitch_16f
        0xccb -> :sswitch_161
        0xccc -> :sswitch_153
        0xccd -> :sswitch_145
        0xcce -> :sswitch_137
        0xd0a -> :sswitch_12b
        0xd7d -> :sswitch_11f
        0xe3e -> :sswitch_111
        0xe42 -> :sswitch_103
        0x1b2a3 -> :sswitch_f5
        0x1be64 -> :sswitch_e9
        0x1d01b -> :sswitch_db
        0x2e39a2 -> :sswitch_cf
        0x300cc4 -> :sswitch_c3
        0x3107ab -> :sswitch_b5
        0x330708 -> :sswitch_a7
        0x33add1 -> :sswitch_9b
        0x35f74a -> :sswitch_8d
        0x5faa95b -> :sswitch_7f
        0x5fb57ca -> :sswitch_73
        0x6903bce -> :sswitch_65
        0xad8ba84 -> :sswitch_57
        0x759d29f7 -> :sswitch_49
        0x7ca6c5e8 -> :sswitch_3d
        0x7e19b1b8 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_728
    .packed-switch 0x0
        :pswitch_63e  #00000000
        :pswitch_621  #00000001
        :pswitch_619  #00000002
        :pswitch_600  #00000003
        :pswitch_5e3  #00000004
        :pswitch_59f  #00000005
        :pswitch_600  #00000006
        :pswitch_579  #00000007
        :pswitch_52c  #00000008
        :pswitch_52c  #00000009
        :pswitch_506  #0000000a
        :pswitch_506  #0000000b
        :pswitch_506  #0000000c
        :pswitch_506  #0000000d
        :pswitch_506  #0000000e
        :pswitch_506  #0000000f
        :pswitch_4f5  #00000010
        :pswitch_4ae  #00000011
        :pswitch_488  #00000012
        :pswitch_488  #00000013
        :pswitch_470  #00000014
        :pswitch_468  #00000015
        :pswitch_454  #00000016
        :pswitch_3f8  #00000017
        :pswitch_3de  #00000018
        :pswitch_3a5  #00000019
        :pswitch_39e  #0000001a
        :pswitch_382  #0000001b
        :pswitch_379  #0000001c
        :pswitch_364  #0000001d
        :pswitch_34b  #0000001e
        :pswitch_32a  #0000001f
        :pswitch_470  #00000020
        :pswitch_316  #00000021
        :pswitch_28d  #00000022
        :pswitch_288  #00000023
    .end packed-switch
.end method

.method private o(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->jl()Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->bq()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ge v5, v6, :cond_142

    .line 4
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->E(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v6

    if-nez v6, :cond_22

    .line 5
    invoke-virtual/range {p0 .. p2}, Lcom/github/catvod/spider/merge1/aQ/rx$b;->nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result v1

    return v1

    .line 6
    :cond_22
    invoke-virtual {v1, v6}, Lcom/github/catvod/spider/merge1/aQ/iL;->Tu(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 7
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 8
    invoke-virtual {v1, v6}, Lcom/github/catvod/spider/merge1/aQ/iL;->C(Lcom/github/catvod/spider/merge1/aQ/li;)V

    return v7

    .line 9
    :cond_2f
    invoke-virtual {v6}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/github/catvod/spider/merge1/aQ/iL;->j(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3d

    .line 10
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v4

    .line 11
    :cond_3d
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v8

    if-eq v8, v6, :cond_46

    .line 12
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 13
    :cond_46
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v13, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4f
    if-ge v11, v8, :cond_79

    const/16 v14, 0x40

    if-ge v11, v14, :cond_79

    .line 14
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/catvod/spider/merge1/aQ/li;

    if-ne v14, v6, :cond_6c

    add-int/lit8 v9, v11, -0x1

    .line 15
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 16
    invoke-virtual {v1, v14}, Lcom/github/catvod/spider/merge1/aQ/iL;->m(Lcom/github/catvod/spider/merge1/aQ/li;)I

    move-result v9

    const/4 v12, 0x1

    goto :goto_76

    :cond_6c
    if-eqz v12, :cond_76

    .line 17
    invoke-virtual {v1, v14}, Lcom/github/catvod/spider/merge1/aQ/iL;->Y(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result v15

    if-eqz v15, :cond_76

    move-object v10, v14

    goto :goto_79

    :cond_76
    :goto_76
    add-int/lit8 v11, v11, 0x1

    goto :goto_4f

    :cond_79
    :goto_79
    if-nez v10, :cond_86

    .line 18
    invoke-virtual {v6}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->ZT(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 19
    invoke-virtual {v1, v6}, Lcom/github/catvod/spider/merge1/aQ/iL;->C(Lcom/github/catvod/spider/merge1/aQ/li;)V

    return v7

    :cond_86
    move-object v11, v10

    move-object v12, v11

    const/4 v8, 0x0

    :goto_89
    const/4 v14, 0x3

    if-ge v8, v14, :cond_d6

    .line 20
    invoke-virtual {v1, v11}, Lcom/github/catvod/spider/merge1/aQ/iL;->Tu(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result v14

    if-eqz v14, :cond_96

    .line 21
    invoke-virtual {v1, v11}, Lcom/github/catvod/spider/merge1/aQ/iL;->Gq(Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v11

    .line 22
    :cond_96
    invoke-virtual {v1, v11}, Lcom/github/catvod/spider/merge1/aQ/iL;->mW(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result v14

    if-nez v14, :cond_a0

    .line 23
    invoke-virtual {v1, v11}, Lcom/github/catvod/spider/merge1/aQ/iL;->B2(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    goto :goto_d2

    :cond_a0
    if-ne v11, v6, :cond_a3

    goto :goto_d6

    .line 24
    :cond_a3
    new-instance v14, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {v11}, Lcom/github/catvod/spider/merge1/aQ/li;->cs()Ljava/lang/String;

    move-result-object v15

    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/Vp;->Eg:Lcom/github/catvod/spider/merge1/aQ/Vp;

    invoke-static {v15, v4}, Lcom/github/catvod/spider/merge1/aQ/n8;->T(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Vp;)Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->kc()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v4, v15}, Lcom/github/catvod/spider/merge1/aQ/li;-><init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v11, v14}, Lcom/github/catvod/spider/merge1/aQ/iL;->t(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)V

    .line 26
    invoke-virtual {v1, v11, v14}, Lcom/github/catvod/spider/merge1/aQ/iL;->yx(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)V

    if-ne v12, v10, :cond_c4

    .line 27
    invoke-virtual {v1, v14}, Lcom/github/catvod/spider/merge1/aQ/iL;->m(Lcom/github/catvod/spider/merge1/aQ/li;)I

    move-result v4

    add-int/lit8 v9, v4, 0x1

    .line 28
    :cond_c4
    invoke-virtual {v12}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v4

    if-eqz v4, :cond_cd

    .line 29
    invoke-virtual {v12}, Lcom/github/catvod/spider/merge1/aQ/iV;->nK()V

    .line 30
    :cond_cd
    invoke-virtual {v14, v12}, Lcom/github/catvod/spider/merge1/aQ/li;->JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-object v11, v14

    move-object v12, v11

    :goto_d2
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_89

    :cond_d6
    :goto_d6
    if-eqz v13, :cond_fd

    .line 31
    invoke-virtual {v13}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/github/catvod/spider/merge1/aQ/rx$R;->r:[Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f1

    .line 32
    invoke-virtual {v12}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v4

    if-eqz v4, :cond_ed

    .line 33
    invoke-virtual {v12}, Lcom/github/catvod/spider/merge1/aQ/iV;->nK()V

    .line 34
    :cond_ed
    invoke-virtual {v1, v12}, Lcom/github/catvod/spider/merge1/aQ/iL;->dM(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    goto :goto_fd

    .line 35
    :cond_f1
    invoke-virtual {v12}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v4

    if-eqz v4, :cond_fa

    .line 36
    invoke-virtual {v12}, Lcom/github/catvod/spider/merge1/aQ/iV;->nK()V

    .line 37
    :cond_fa
    invoke-virtual {v13, v12}, Lcom/github/catvod/spider/merge1/aQ/li;->JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 38
    :cond_fd
    :goto_fd
    new-instance v4, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge1/aQ/li;->db()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->kc()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/github/catvod/spider/merge1/aQ/li;-><init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4}, Lcom/github/catvod/spider/merge1/aQ/li;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v7

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge1/aQ/li;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/github/catvod/spider/merge1/aQ/dH;->X(Lcom/github/catvod/spider/merge1/aQ/dH;)V

    .line 40
    invoke-virtual {v10}, Lcom/github/catvod/spider/merge1/aQ/iV;->O2()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    new-array v11, v8, [Lcom/github/catvod/spider/merge1/aQ/iV;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/github/catvod/spider/merge1/aQ/iV;

    .line 41
    array-length v11, v7

    const/4 v12, 0x0

    :goto_124
    if-ge v12, v11, :cond_12e

    aget-object v13, v7, v12

    .line 42
    invoke-virtual {v4, v13}, Lcom/github/catvod/spider/merge1/aQ/li;->JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    add-int/lit8 v12, v12, 0x1

    goto :goto_124

    .line 43
    :cond_12e
    invoke-virtual {v10, v4}, Lcom/github/catvod/spider/merge1/aQ/li;->JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 44
    invoke-virtual {v1, v6}, Lcom/github/catvod/spider/merge1/aQ/iL;->C(Lcom/github/catvod/spider/merge1/aQ/li;)V

    .line 45
    invoke-virtual {v1, v4, v9}, Lcom/github/catvod/spider/merge1/aQ/iL;->AM(Lcom/github/catvod/spider/merge1/aQ/li;I)V

    .line 46
    invoke-virtual {v1, v6}, Lcom/github/catvod/spider/merge1/aQ/iL;->B2(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    .line 47
    invoke-virtual {v1, v10, v4}, Lcom/github/catvod/spider/merge1/aQ/iL;->WF(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)V

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_142
    return v7
.end method


# virtual methods
.method O2(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 7

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx$d;->W:[I

    iget-object v1, p1, Lcom/github/catvod/spider/merge1/aQ/lK;->W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5c

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_58

    const/4 v2, 0x3

    if-eq v0, v2, :cond_53

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4e

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1b

    goto :goto_63

    .line 2
    :cond_1b
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->W()Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$c;->mw()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/rx;->jl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 4
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v3

    .line 5
    :cond_31
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->cs()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/rx;->W(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 6
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 7
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->z(Lcom/github/catvod/spider/merge1/aQ/lK$c;)V

    goto :goto_63

    .line 8
    :cond_44
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->L()V

    .line 9
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->z(Lcom/github/catvod/spider/merge1/aQ/lK$c;)V

    .line 10
    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->r(Z)V

    goto :goto_63

    .line 11
    :cond_4e
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$b;->Gq(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result p1

    return p1

    .line 12
    :cond_53
    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/rx$b;->P(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result p1

    return p1

    .line 13
    :cond_58
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v3

    .line 14
    :cond_5c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->Eg()Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->c(Lcom/github/catvod/spider/merge1/aQ/lK$AA;)V

    :goto_63
    return v1
.end method

.method nN(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->jl()Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    move-result-object p1

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Ku:Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->bq()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_10
    if-ltz v1, :cond_48

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 5
    invoke-virtual {v3}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 6
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->Tr(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 8
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 9
    :cond_36
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->ZT(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_48

    .line 10
    :cond_3a
    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge1/aQ/iL;->Y(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 11
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    const/4 p1, 0x0

    return p1

    :cond_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_48
    :goto_48
    return v2
.end method
