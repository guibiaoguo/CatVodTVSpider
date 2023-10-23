.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/l;
.super Lcom/github/catvod/spider/merge2/xbpq/d/AB;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InFrameset"

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 10

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->a(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    .line 2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->E(Lcom/github/catvod/spider/merge2/xbpq/d/HI;)V

    goto/16 :goto_d1

    :cond_e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->b()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    .line 4
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->F(Lcom/github/catvod/spider/merge2/xbpq/d/IJ;)V

    goto/16 :goto_d1

    :cond_1b
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v2

    :cond_26
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->f()Z

    move-result v0

    const-string v3, "frameset"

    const-string v4, "html"

    if-eqz v0, :cond_80

    .line 5
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 6
    iget-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d6

    goto :goto_67

    :sswitch_40
    const-string v3, "noframes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_67

    :cond_49
    const/4 v5, 0x3

    goto :goto_67

    :sswitch_4b
    const-string v3, "frame"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_67

    :cond_54
    const/4 v5, 0x2

    goto :goto_67

    :sswitch_56
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_67

    :cond_5d
    const/4 v5, 0x1

    goto :goto_67

    :sswitch_5f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_67

    :cond_66
    const/4 v5, 0x0

    :goto_67
    packed-switch v5, :pswitch_data_e8

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v2

    :pswitch_6e  #0x3
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->f:Lcom/github/catvod/spider/merge2/xbpq/d/t;

    goto :goto_77

    :pswitch_71  #0x2
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->G(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_d1

    :pswitch_75  #0x1
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->i:Lcom/github/catvod/spider/merge2/xbpq/d/w;

    :goto_77
    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result p1

    return p1

    :pswitch_7c  #0x0
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_d1

    :cond_80
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->e()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 9
    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a3

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v2

    :cond_a3
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->U()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d1

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->v:Lcom/github/catvod/spider/merge2/xbpq/d/n;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    goto :goto_d1

    :cond_ba
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->d()Z

    move-result p1

    if-eqz p1, :cond_d2

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d1

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :cond_d1
    :goto_d1
    return v1

    :cond_d2
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    return v2

    :sswitch_data_d6
    .sparse-switch
        -0x620c002b -> :sswitch_5f
        0x3107ab -> :sswitch_56
        0x5d2a96d -> :sswitch_4b
        0x47177da7 -> :sswitch_40
    .end sparse-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_7c  #00000000
        :pswitch_75  #00000001
        :pswitch_71  #00000002
        :pswitch_6e  #00000003
    .end packed-switch
.end method
