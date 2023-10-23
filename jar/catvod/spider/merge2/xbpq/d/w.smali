.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/w;
.super Lcom/github/catvod/spider/merge2/xbpq/d/AB;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "InBody"

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/m;)V

    return-void
.end method


# virtual methods
.method final d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v1, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->a:I

    invoke-static {v3}, Lcom/github/catvod/spider/merge2/xbpq/a/a;->a(I)I

    move-result v3

    if-eqz v3, :cond_ade

    const-string v5, "p"

    const-string v6, "span"

    const-string v7, "html"

    const-string v8, "h6"

    const-string v9, "h5"

    const-string v10, "h4"

    const-string v11, "h3"

    const-string v12, "h2"

    const-string v13, "h1"

    const-string v14, "dt"

    const-string v15, "dd"

    const-string v4, "li"

    move-object/from16 v17, v13

    const-string v13, "body"

    move-object/from16 v18, v12

    const-string v12, "form"

    move-object/from16 v19, v11

    const-string v11, "name"

    const/16 v29, 0x5

    move-object/from16 v30, v11

    const/4 v11, 0x1

    if-eq v3, v11, :cond_3f3

    const/4 v11, 0x2

    if-eq v3, v11, :cond_7d

    const/4 v11, 0x3

    if-eq v3, v11, :cond_76

    const/4 v11, 0x4

    if-eq v3, v11, :cond_43

    goto :goto_7b

    .line 1
    :cond_43
    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    .line 2
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/HI;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    const/4 v1, 0x0

    return v1

    :cond_58
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-static {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->a(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->a0()V

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->E(Lcom/github/catvod/spider/merge2/xbpq/d/HI;)V

    goto :goto_7b

    :cond_6b
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->a0()V

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->E(Lcom/github/catvod/spider/merge2/xbpq/d/HI;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o(Z)V

    goto :goto_7b

    .line 3
    :cond_76
    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;

    .line 4
    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->F(Lcom/github/catvod/spider/merge2/xbpq/d/IJ;)V

    :goto_7b
    const/4 v1, 0x1

    return v1

    .line 5
    :cond_7d
    move-object v3, v1

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 6
    iget-object v11, v3, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v32

    const-string v1, "br"

    sparse-switch v32, :sswitch_data_ae6

    packed-switch v32, :pswitch_data_b10

    goto/16 :goto_148

    :sswitch_93
    const-string v4, "sarcasm"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9d

    goto/16 :goto_148

    :cond_9d
    const/16 v29, 0xf

    goto/16 :goto_14a

    :sswitch_a1
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a9

    goto/16 :goto_148

    :cond_a9
    const/16 v29, 0xe

    goto/16 :goto_14a

    :sswitch_ad
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b5

    goto/16 :goto_148

    :cond_b5
    const/16 v29, 0xd

    goto/16 :goto_14a

    :sswitch_b9
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c1

    goto/16 :goto_148

    :cond_c1
    const/16 v29, 0xc

    goto/16 :goto_14a

    :sswitch_c5
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cd

    goto/16 :goto_148

    :cond_cd
    const/16 v29, 0xb

    goto/16 :goto_14a

    :sswitch_d1
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d9

    goto/16 :goto_148

    :cond_d9
    const/16 v29, 0xa

    goto/16 :goto_14a

    :sswitch_dd
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e5

    goto/16 :goto_148

    :cond_e5
    const/16 v29, 0x3

    goto/16 :goto_14a

    :sswitch_e9
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f1

    goto/16 :goto_148

    :cond_f1
    const/16 v29, 0x2

    goto/16 :goto_14a

    :sswitch_f5
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fc

    goto :goto_148

    :cond_fc
    const/16 v29, 0x1

    goto :goto_14a

    :sswitch_ff
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_106

    goto :goto_148

    :cond_106
    const/16 v29, 0x0

    goto :goto_14a

    :pswitch_109  #0xcce
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_110

    goto :goto_148

    :cond_110
    const/16 v29, 0x9

    goto :goto_14a

    :pswitch_113  #0xccd
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11a

    goto :goto_148

    :cond_11a
    const/16 v29, 0x8

    goto :goto_14a

    :pswitch_11d  #0xccc
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_124

    goto :goto_148

    :cond_124
    const/16 v29, 0x7

    goto :goto_14a

    :pswitch_127  #0xccb
    move-object/from16 v4, v19

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_130

    goto :goto_148

    :cond_130
    const/16 v29, 0x6

    goto :goto_14a

    :pswitch_133  #0xcca
    move-object/from16 v4, v18

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14a

    goto :goto_148

    :pswitch_13c  #0xcc9
    move-object/from16 v4, v17

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_145

    goto :goto_148

    :cond_145
    const/16 v29, 0x4

    goto :goto_14a

    :goto_148
    const/16 v29, -0x1

    :cond_14a
    :goto_14a
    packed-switch v29, :pswitch_data_b20

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/z;->s:[Ljava/lang/String;

    invoke-static {v11, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39b

    .line 8
    iget-object v1, v3, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 9
    iget-object v3, v2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_15a
    const/16 v11, 0x8

    goto/16 :goto_24f

    .line 10
    :cond_15e
    :pswitch_15e  #0xe, 0xf
    invoke-virtual/range {p0 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/w;->e(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z

    move-result v4

    goto/16 :goto_3f2

    :pswitch_164  #0xd
    invoke-virtual {v2, v13}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f1

    goto/16 :goto_236

    :pswitch_16c  #0xc
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->s()Lcom/github/catvod/spider/merge2/xbpq/c/o;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->f0()V

    if-eqz v1, :cond_20a

    const/4 v3, 0x0

    .line 11
    invoke-virtual {v2, v11, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17e

    goto/16 :goto_20a

    .line 12
    :cond_17e
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18f

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :cond_18f
    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c0(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    goto/16 :goto_3f1

    :pswitch_194  #0xb
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v2, v13, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19d

    goto/16 :goto_20a

    .line 14
    :cond_19d
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->t:Lcom/github/catvod/spider/merge2/xbpq/d/k;

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    goto/16 :goto_3f1

    .line 15
    :pswitch_1a4  #0xa
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w:[Ljava/lang/String;

    invoke-virtual {v2, v11, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1ad

    goto :goto_20a

    .line 16
    :cond_1ad
    invoke-virtual {v2, v11}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->q(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3bd

    goto/16 :goto_3ba

    :pswitch_1c0  #0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/z;->i:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->y([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c9

    goto :goto_20a

    :cond_1c9
    invoke-virtual {v2, v11}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->q(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1dd

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    .line 17
    :cond_1dd
    iget-object v3, v2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v3, v4

    :goto_1e5
    if-ltz v3, :cond_3f1

    iget-object v4, v2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iget-object v5, v2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_200

    goto/16 :goto_3f1

    :cond_200
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e5

    :pswitch_203  #0x2, 0x3
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v2, v11, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20e

    .line 19
    :cond_20a
    :goto_20a
    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    goto :goto_227

    :cond_20e
    invoke-virtual {v2, v11}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->q(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3bd

    goto/16 :goto_3ba

    :pswitch_221  #0x1
    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->f(Ljava/lang/String;)Z

    :goto_227
    const/4 v4, 0x0

    goto/16 :goto_3f2

    :pswitch_22a  #0x0
    invoke-virtual {v2, v11}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23c

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {v2, v11}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->f(Ljava/lang/String;)Z

    :goto_236
    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result v4

    goto/16 :goto_3f2

    :cond_23c
    invoke-virtual {v2, v11}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->q(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3bd

    goto/16 :goto_3ba

    :goto_24f
    if-ge v4, v11, :cond_3f1

    .line 20
    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->r(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v5

    if-nez v5, :cond_25d

    invoke-virtual/range {p0 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/w;->e(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z

    move-result v4

    goto/16 :goto_3f2

    :cond_25d
    invoke-virtual {v2, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->S(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result v6

    if-nez v6, :cond_267

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    goto :goto_2bb

    :cond_267
    invoke-virtual {v5}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 21
    invoke-virtual {v2, v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_276

    .line 22
    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    goto :goto_227

    :cond_276
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v6

    if-eq v6, v5, :cond_27f

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :cond_27f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    :goto_287
    if-ge v7, v6, :cond_2b1

    const/16 v12, 0x40

    if-ge v7, v12, :cond_2b1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-ne v12, v5, :cond_2a5

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v2, v12}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->W(Lcom/github/catvod/spider/merge2/xbpq/c/l;)I

    move-result v9

    move v10, v9

    move-object v9, v8

    const/4 v8, 0x1

    goto :goto_2ae

    :cond_2a5
    if-eqz v8, :cond_2ae

    invoke-virtual {v2, v12}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->O(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result v13

    if-eqz v13, :cond_2ae

    goto :goto_2b2

    :cond_2ae
    :goto_2ae
    add-int/lit8 v7, v7, 0x1

    goto :goto_287

    :cond_2b1
    const/4 v12, 0x0

    :goto_2b2
    if-nez v12, :cond_2c0

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->V(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    :goto_2bb
    invoke-virtual {v2, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->b0(Lcom/github/catvod/spider/merge2/xbpq/c/l;)V

    goto/16 :goto_3f1

    :cond_2c0
    move-object v7, v12

    move-object v8, v7

    const/4 v6, 0x0

    :goto_2c3
    const/4 v13, 0x3

    if-ge v6, v13, :cond_31e

    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->S(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result v14

    if-eqz v14, :cond_2d0

    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->g(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v7

    :cond_2d0
    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->N(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result v14

    if-nez v14, :cond_2da

    invoke-virtual {v2, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c0(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    goto :goto_31b

    :cond_2da
    if-ne v7, v5, :cond_2dd

    goto :goto_31e

    :cond_2dd
    new-instance v14, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->t()Ljava/lang/String;

    move-result-object v15

    sget-object v11, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->d:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    invoke-static {v15, v11}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/d/DE;)Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v11

    .line 23
    iget-object v15, v2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->f:Ljava/lang/String;

    const/4 v13, 0x0

    .line 24
    invoke-direct {v14, v11, v15, v13}, Lcom/github/catvod/spider/merge2/xbpq/c/l;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/FG;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    .line 25
    invoke-virtual {v2, v7, v14}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->d0(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)V

    .line 26
    iget-object v11, v2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v7

    const/4 v13, -0x1

    if-eq v7, v13, :cond_2fd

    const/4 v13, 0x1

    goto :goto_2fe

    :cond_2fd
    const/4 v13, 0x0

    :goto_2fe
    invoke-static {v13}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->e(Z)V

    invoke-virtual {v11, v7, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v8, v12, :cond_30d

    .line 28
    invoke-virtual {v2, v14}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->W(Lcom/github/catvod/spider/merge2/xbpq/c/l;)I

    move-result v7

    const/4 v10, 0x1

    add-int/2addr v7, v10

    move v10, v7

    :cond_30d
    invoke-virtual {v8}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v7

    if-eqz v7, :cond_316

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->C()V

    :cond_316
    invoke-virtual {v14, v8}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->L(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-object v7, v14

    move-object v8, v7

    :goto_31b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c3

    :cond_31e
    :goto_31e
    if-eqz v9, :cond_345

    invoke-virtual {v9}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/github/catvod/spider/merge2/xbpq/d/z;->t:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_339

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v6

    if-eqz v6, :cond_335

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->C()V

    :cond_335
    invoke-virtual {v2, v8}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->I(Lcom/github/catvod/spider/merge2/xbpq/c/r;)V

    goto :goto_345

    :cond_339
    invoke-virtual {v8}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v6

    if-eqz v6, :cond_342

    invoke-virtual {v8}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->C()V

    :cond_342
    invoke-virtual {v9, v8}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->L(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    :cond_345
    :goto_345
    new-instance v6, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->m0()Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v7

    .line 29
    iget-object v8, v2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->f:Ljava/lang/String;

    const/4 v9, 0x0

    .line 30
    invoke-direct {v6, v7, v8, v9}, Lcom/github/catvod/spider/merge2/xbpq/c/l;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/FG;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    .line 31
    invoke-virtual {v6}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d()Lcom/github/catvod/spider/merge2/xbpq/c/c;

    move-result-object v7

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d()Lcom/github/catvod/spider/merge2/xbpq/c/c;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->e(Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    invoke-virtual {v12}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->i()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    new-array v9, v8, [Lcom/github/catvod/spider/merge2/xbpq/c/r;

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/github/catvod/spider/merge2/xbpq/c/r;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_36b
    if-ge v9, v8, :cond_375

    aget-object v11, v7, v9

    invoke-virtual {v6, v11}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->L(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    add-int/lit8 v9, v9, 0x1

    goto :goto_36b

    :cond_375
    invoke-virtual {v12, v6}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->L(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v2, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->b0(Lcom/github/catvod/spider/merge2/xbpq/c/l;)V

    invoke-virtual {v2, v6, v10}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->Z(Lcom/github/catvod/spider/merge2/xbpq/c/l;I)V

    invoke-virtual {v2, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c0(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    .line 32
    iget-object v5, v2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_38c

    const/4 v7, 0x1

    goto :goto_38d

    :cond_38c
    const/4 v7, 0x0

    :goto_38d
    invoke-static {v7}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->e(Z)V

    iget-object v7, v2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15a

    .line 33
    :cond_39b
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/z;->r:[Ljava/lang/String;

    invoke-static {v11, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c1

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v2, v11, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3ac

    goto/16 :goto_20a

    .line 35
    :cond_3ac
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3bd

    :goto_3ba
    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :cond_3bd
    invoke-virtual {v2, v11}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->V(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_3f1

    :cond_3c1
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/z;->m:[Ljava/lang/String;

    invoke-static {v11, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15e

    move-object/from16 v1, v30

    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, v1, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f1

    invoke-virtual {v2, v11, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3da

    goto/16 :goto_20a

    .line 37
    :cond_3da
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3eb

    invoke-virtual {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :cond_3eb
    invoke-virtual {v2, v11}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->V(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->i()V

    :cond_3f1
    :goto_3f1
    const/4 v4, 0x1

    :goto_3f2
    return v4

    :cond_3f3
    move-object/from16 v11, v18

    move-object/from16 v3, v19

    move-object/from16 v38, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v38

    .line 38
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->k:Lcom/github/catvod/spider/merge2/xbpq/d/y;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    .line 39
    move-object v0, v1

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/MN;

    .line 40
    iget-object v1, v0, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v31

    move-object/from16 v32, v0

    const-string v0, "isindex"

    const-string v2, "svg"

    move-object/from16 v33, v5

    const-string v5, "nobr"

    move-object/from16 v34, v11

    const-string v11, "hr"

    move-object/from16 v35, v3

    const-string v3, "option"

    move-object/from16 v36, v10

    const-string v10, "button"

    move-object/from16 v37, v9

    const-string v9, "a"

    sparse-switch v31, :sswitch_data_b44

    packed-switch v31, :pswitch_data_bbe

    goto/16 :goto_5f4

    :sswitch_431
    const-string v6, "noembed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43b

    goto/16 :goto_5f4

    :cond_43b
    const/16 v6, 0x23

    goto/16 :goto_5f5

    :sswitch_43f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_447

    goto/16 :goto_5f4

    :cond_447
    const/16 v6, 0x22

    goto/16 :goto_5f5

    :sswitch_44b
    const-string v6, "plaintext"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_455

    goto/16 :goto_5f4

    :cond_455
    const/16 v6, 0x21

    goto/16 :goto_5f5

    :sswitch_459
    const-string v6, "listing"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_463

    goto/16 :goto_5f4

    :cond_463
    const/16 v6, 0x20

    goto/16 :goto_5f5

    :sswitch_467
    const-string v6, "table"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_471

    goto/16 :goto_5f4

    :cond_471
    const/16 v6, 0x1f

    goto/16 :goto_5f5

    :sswitch_475
    const-string v6, "input"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47f

    goto/16 :goto_5f4

    :cond_47f
    const/16 v6, 0x1e

    goto/16 :goto_5f5

    :sswitch_483
    const-string v6, "image"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48d

    goto/16 :goto_5f4

    :cond_48d
    const/16 v6, 0x1d

    goto/16 :goto_5f5

    :sswitch_491
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_499

    goto/16 :goto_5f4

    :cond_499
    const/16 v6, 0x1c

    goto/16 :goto_5f5

    :sswitch_49d
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4a5

    goto/16 :goto_5f4

    :cond_4a5
    const/16 v6, 0x1b

    goto/16 :goto_5f5

    :sswitch_4a9
    const-string v6, "math"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b3

    goto/16 :goto_5f4

    :cond_4b3
    const/16 v6, 0x1a

    goto/16 :goto_5f5

    :sswitch_4b7
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4bf

    goto/16 :goto_5f4

    :cond_4bf
    const/16 v6, 0x19

    goto/16 :goto_5f5

    :sswitch_4c3
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4cb

    goto/16 :goto_5f4

    :cond_4cb
    const/16 v6, 0x18

    goto/16 :goto_5f5

    :sswitch_4cf
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d7

    goto/16 :goto_5f4

    :cond_4d7
    const/16 v6, 0x17

    goto/16 :goto_5f5

    :sswitch_4db
    const-string v6, "xmp"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e5

    goto/16 :goto_5f4

    :cond_4e5
    const/16 v6, 0x16

    goto/16 :goto_5f5

    :sswitch_4e9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f1

    goto/16 :goto_5f4

    :cond_4f1
    const/16 v6, 0x15

    goto/16 :goto_5f5

    :sswitch_4f5
    const-string v6, "pre"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4ff

    goto/16 :goto_5f4

    :cond_4ff
    const/16 v6, 0x14

    goto/16 :goto_5f5

    :sswitch_503
    const-string v6, "rt"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50d

    goto/16 :goto_5f4

    :cond_50d
    const/16 v6, 0x13

    goto/16 :goto_5f5

    :sswitch_511
    const-string v6, "rp"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51b

    goto/16 :goto_5f4

    :cond_51b
    const/16 v6, 0x12

    goto/16 :goto_5f5

    :sswitch_51f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_527

    goto/16 :goto_5f4

    :cond_527
    const/16 v6, 0x11

    goto/16 :goto_5f5

    :sswitch_52b
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_533

    goto/16 :goto_5f4

    :cond_533
    const/16 v6, 0x10

    goto/16 :goto_5f5

    :sswitch_537
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53f

    goto/16 :goto_5f4

    :cond_53f
    const/16 v6, 0x9

    goto/16 :goto_5f5

    :sswitch_543
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54b

    goto/16 :goto_5f4

    :cond_54b
    const/16 v6, 0x8

    goto/16 :goto_5f5

    :sswitch_54f
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_557

    goto/16 :goto_5f4

    :cond_557
    const/4 v6, 0x7

    goto/16 :goto_5f5

    :sswitch_55a
    const-string v6, "optgroup"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_564

    goto/16 :goto_5f4

    :cond_564
    const/4 v6, 0x6

    goto/16 :goto_5f5

    :sswitch_567
    const-string v6, "select"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_571

    goto/16 :goto_5f4

    :cond_571
    const/4 v6, 0x5

    goto/16 :goto_5f5

    :sswitch_574
    const-string v6, "textarea"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57e

    goto/16 :goto_5f4

    :cond_57e
    const/4 v6, 0x4

    goto/16 :goto_5f5

    :sswitch_581
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_589

    goto/16 :goto_5f4

    :cond_589
    const/4 v6, 0x3

    goto/16 :goto_5f5

    :sswitch_58c
    const-string v6, "iframe"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_596

    goto/16 :goto_5f4

    :cond_596
    const/4 v6, 0x2

    goto/16 :goto_5f5

    :sswitch_599
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5a1

    goto/16 :goto_5f4

    :cond_5a1
    const/4 v6, 0x1

    goto :goto_5f5

    :sswitch_5a3
    const-string v6, "frameset"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5ac

    goto :goto_5f4

    :cond_5ac
    const/4 v6, 0x0

    goto :goto_5f5

    :pswitch_5ae  #0xcce
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b5

    goto :goto_5f4

    :cond_5b5
    const/16 v6, 0xf

    goto :goto_5f5

    :pswitch_5b8  #0xccd
    move-object/from16 v6, v37

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c1

    goto :goto_5f4

    :cond_5c1
    const/16 v6, 0xe

    goto :goto_5f5

    :pswitch_5c4  #0xccc
    move-object/from16 v6, v36

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5cd

    goto :goto_5f4

    :cond_5cd
    const/16 v6, 0xd

    goto :goto_5f5

    :pswitch_5d0  #0xccb
    move-object/from16 v6, v35

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d9

    goto :goto_5f4

    :cond_5d9
    const/16 v6, 0xc

    goto :goto_5f5

    :pswitch_5dc  #0xcca
    move-object/from16 v6, v34

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5e5

    goto :goto_5f4

    :cond_5e5
    const/16 v6, 0xb

    goto :goto_5f5

    :pswitch_5e8  #0xcc9
    move-object/from16 v6, v33

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5f1

    goto :goto_5f4

    :cond_5f1
    const/16 v6, 0xa

    goto :goto_5f5

    :goto_5f4
    const/4 v6, -0x1

    :goto_5f5
    packed-switch v6, :pswitch_data_bce

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v0, v17

    move-object/from16 v7, v32

    sget-object v4, Lcom/github/catvod/spider/merge2/xbpq/d/z;->n:[Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a76

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->a0()V

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->G(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    :goto_60e
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o(Z)V

    goto/16 :goto_adc

    :pswitch_614  #0x23
    move-object/from16 v6, p2

    move-object/from16 v7, v32

    goto/16 :goto_9f5

    :pswitch_61a  #0x22
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, v32

    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->s()Lcom/github/catvod/spider/merge2/xbpq/c/o;

    move-result-object v1

    if-eqz v1, :cond_62b

    goto/16 :goto_a74

    :cond_62b
    invoke-virtual {v6, v12}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->f(Ljava/lang/String;)Z

    .line 42
    iget-object v1, v7, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    const-string v3, "action"

    if-eqz v1, :cond_63c

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63c

    const/4 v1, 0x1

    goto :goto_63d

    :cond_63c
    const/4 v1, 0x0

    :goto_63d
    if-eqz v1, :cond_64c

    .line 43
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->s()Lcom/github/catvod/spider/merge2/xbpq/c/o;

    move-result-object v1

    iget-object v4, v7, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v4, v3}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {v1, v3, v4}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/r;

    .line 45
    :cond_64c
    invoke-virtual {v6, v11}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->f(Ljava/lang/String;)Z

    const-string v1, "label"

    invoke-virtual {v6, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->f(Ljava/lang/String;)Z

    .line 46
    iget-object v3, v7, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    const-string v4, "prompt"

    if-eqz v3, :cond_663

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->l(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_663

    const/16 v16, 0x1

    goto :goto_665

    :cond_663
    const/16 v16, 0x0

    :goto_665
    if-eqz v16, :cond_66e

    .line 47
    iget-object v3, v7, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_670

    :cond_66e
    const-string v3, "This is a searchable index. Enter search keywords: "

    :goto_670
    new-instance v4, Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    invoke-direct {v4}, Lcom/github/catvod/spider/merge2/xbpq/d/HI;-><init>()V

    invoke-virtual {v4, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/HI;->i(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    invoke-virtual {v6, v4}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    new-instance v3, Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-direct {v3}, Lcom/github/catvod/spider/merge2/xbpq/c/c;-><init>()V

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->r()Z

    move-result v4

    if-eqz v4, :cond_6a8

    iget-object v4, v7, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_68c
    :goto_68c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge2/xbpq/c/a;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge2/xbpq/c/a;->a()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/github/catvod/spider/merge2/xbpq/d/z;->p:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_68c

    invoke-virtual {v3, v5}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->s(Lcom/github/catvod/spider/merge2/xbpq/c/a;)Lcom/github/catvod/spider/merge2/xbpq/c/c;

    goto :goto_68c

    :cond_6a8
    move-object/from16 v4, v30

    invoke-virtual {v3, v4, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v6, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->e(Lcom/github/catvod/spider/merge2/xbpq/c/c;)Z

    invoke-virtual {v6, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    invoke-virtual {v6, v11}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->f(Ljava/lang/String;)Z

    invoke-virtual {v6, v12}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    goto/16 :goto_a0e

    :pswitch_6bb  #0x21
    move-object/from16 v6, p2

    move-object/from16 v0, v17

    move-object/from16 v7, v32

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6ca

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    :cond_6ca
    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iget-object v0, v6, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/QR;

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->i:Lcom/github/catvod/spider/merge2/xbpq/d/e1;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto/16 :goto_a0e

    :pswitch_6d6  #0x1f
    move-object/from16 v6, p2

    move-object/from16 v0, v17

    move-object/from16 v7, v32

    .line 48
    iget-object v1, v6, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d:Lcom/github/catvod/spider/merge2/xbpq/c/h;

    .line 49
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/h;->w0()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6ee

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6ee

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    :cond_6ee
    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o(Z)V

    move-object/from16 v1, v19

    goto/16 :goto_9d4

    :pswitch_6f9  #0x1e
    move-object/from16 v6, p2

    move-object/from16 v7, v32

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->a0()V

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->G(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a0e

    goto/16 :goto_a16

    :pswitch_714  #0x1d
    move-object/from16 v6, p2

    move-object v0, v2

    move-object/from16 v7, v32

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->t(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    if-nez v0, :cond_72a

    const-string v0, "img"

    invoke-virtual {v7, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->s(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    move-result v4

    goto/16 :goto_add

    :cond_72a
    :goto_72a
    goto/16 :goto_ad9

    :pswitch_72c  #0x1b
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, v32

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->a0()V

    const/4 v0, 0x0

    .line 50
    invoke-virtual {v6, v5, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96f

    .line 51
    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {v6, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    goto/16 :goto_96c

    :pswitch_744  #0x19
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, v32

    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    .line 52
    iget-object v0, v6, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->r()Z

    move-result v1

    if-eqz v1, :cond_a0e

    iget-object v1, v7, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_762
    :goto_762
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/c/a;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/c/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->o(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_762

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d()Lcom/github/catvod/spider/merge2/xbpq/c/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->s(Lcom/github/catvod/spider/merge2/xbpq/c/a;)Lcom/github/catvod/spider/merge2/xbpq/c/c;

    goto :goto_762

    :pswitch_780  #0x18
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v0, v17

    move-object/from16 v7, v32

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->s()Lcom/github/catvod/spider/merge2/xbpq/c/o;

    move-result-object v1

    if-eqz v1, :cond_793

    :goto_78e
    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    goto/16 :goto_a74

    :cond_793
    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79c

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    :cond_79c
    const/4 v0, 0x1

    invoke-virtual {v6, v7, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->H(Lcom/github/catvod/spider/merge2/xbpq/d/MN;Z)Lcom/github/catvod/spider/merge2/xbpq/c/o;

    goto/16 :goto_a0e

    :pswitch_7a2  #0x17
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, v32

    const/4 v0, 0x1

    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    .line 54
    iget-object v1, v6, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v0, :cond_a74

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_7cd

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7cd

    goto/16 :goto_a74

    :cond_7cd
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o(Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->r()Z

    move-result v0

    if-eqz v0, :cond_a0e

    iget-object v0, v7, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7e3
    :goto_7e3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a0e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/c/a;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/c/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->o(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7e3

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d()Lcom/github/catvod/spider/merge2/xbpq/c/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->s(Lcom/github/catvod/spider/merge2/xbpq/c/a;)Lcom/github/catvod/spider/merge2/xbpq/c/c;

    goto :goto_7e3

    :pswitch_801  #0x16
    move-object/from16 v6, p2

    move-object/from16 v0, v17

    move-object/from16 v7, v32

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_810

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    :cond_810
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->a0()V

    goto/16 :goto_9f1

    :pswitch_815  #0x15, 0x1a, 0x1c
    move-object/from16 v6, p2

    move-object/from16 v7, v32

    :cond_819
    :goto_819
    goto/16 :goto_ad6

    :pswitch_81b  #0x14, 0x20
    move-object/from16 v6, p2

    move-object/from16 v0, v17

    move-object/from16 v7, v32

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82a

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    :cond_82a
    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iget-object v0, v6, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->b:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->w(Ljava/lang/String;)Z

    goto/16 :goto_a16

    :pswitch_836  #0x12, 0x13
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, v32

    const-string v0, "ruby"

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v6, v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0e

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72a

    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    .line 58
    iget-object v1, v6, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, -0x1

    add-int/2addr v1, v3

    :goto_85e
    if-ltz v1, :cond_72a

    iget-object v3, v6, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_874

    goto/16 :goto_72a

    :cond_874
    iget-object v3, v6, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_85e

    :pswitch_87c  #0x11
    move-object/from16 v6, p2

    move-object/from16 v0, v17

    move-object/from16 v7, v32

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v6, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o(Z)V

    .line 60
    iget-object v1, v6, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_88e
    if-lez v3, :cond_8ba

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8a4

    invoke-virtual {v6, v4}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    goto :goto_8ba

    :cond_8a4
    invoke-virtual {v6, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->O(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result v8

    if-eqz v8, :cond_8b7

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/github/catvod/spider/merge2/xbpq/d/z;->j:[Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8b7

    goto :goto_8ba

    :cond_8b7
    add-int/lit8 v3, v3, -0x1

    goto :goto_88e

    :cond_8ba
    :goto_8ba
    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72a

    goto/16 :goto_949

    :pswitch_8c2  #0x10
    move-object/from16 v6, p2

    move-object/from16 v0, v17

    move-object/from16 v7, v32

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d1

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    :cond_8d1
    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->G(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto/16 :goto_a16

    :pswitch_8d6  #0xa, 0xb, 0xc, 0xd, 0xe, 0xf
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v0, v17

    move-object/from16 v7, v32

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e7

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    :cond_8e7
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/z;->i:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72a

    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->U()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto/16 :goto_72a

    :pswitch_8ff  #0x8, 0x9
    move-object/from16 v6, p2

    move-object/from16 v0, v17

    move-object/from16 v7, v32

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o(Z)V

    .line 62
    iget-object v1, v6, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_911
    if-lez v3, :cond_943

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/github/catvod/spider/merge2/xbpq/d/z;->k:[Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92d

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    goto :goto_943

    :cond_92d
    invoke-virtual {v6, v4}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->O(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result v5

    if-eqz v5, :cond_940

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/d/z;->j:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_940

    goto :goto_943

    :cond_940
    add-int/lit8 v3, v3, -0x1

    goto :goto_911

    :cond_943
    :goto_943
    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72a

    :goto_949
    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    goto/16 :goto_72a

    :pswitch_94e  #0x7
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, v32

    invoke-virtual {v6, v9}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->r(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    if-eqz v0, :cond_96c

    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {v6, v9}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    invoke-virtual {v6, v9}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->t(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    if-eqz v0, :cond_96c

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->b0(Lcom/github/catvod/spider/merge2/xbpq/c/l;)V

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c0(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    :cond_96c
    :goto_96c
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->a0()V

    :cond_96f
    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->Y(Lcom/github/catvod/spider/merge2/xbpq/c/l;)V

    goto/16 :goto_a0e

    :pswitch_978  #0x5
    move-object/from16 v6, p2

    move-object/from16 v7, v32

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->a0()V

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->i0()Lcom/github/catvod/spider/merge2/xbpq/d/AB;

    move-result-object v0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b6

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->m:Lcom/github/catvod/spider/merge2/xbpq/d/d;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b6

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->o:Lcom/github/catvod/spider/merge2/xbpq/d/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b6

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->p:Lcom/github/catvod/spider/merge2/xbpq/d/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b6

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->q:Lcom/github/catvod/spider/merge2/xbpq/d/h;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b3

    goto :goto_9b6

    :cond_9b3
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->r:Lcom/github/catvod/spider/merge2/xbpq/d/i;

    goto :goto_9d4

    :cond_9b6
    :goto_9b6
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->s:Lcom/github/catvod/spider/merge2/xbpq/d/j;

    goto :goto_9d4

    :pswitch_9b9  #0x4
    move-object/from16 v6, p2

    move-object/from16 v7, v32

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    .line 64
    iget-boolean v0, v7, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->i:Z

    if-nez v0, :cond_a0e

    .line 65
    iget-object v0, v6, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/QR;

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->e:Lcom/github/catvod/spider/merge2/xbpq/d/y0;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->P()V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o(Z)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->j:Lcom/github/catvod/spider/merge2/xbpq/d/x;

    :goto_9d4
    goto/16 :goto_a6f

    :pswitch_9d6  #0x3, 0x6
    move-object/from16 v6, p2

    move-object/from16 v7, v32

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_819

    invoke-virtual {v6, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    goto/16 :goto_819

    :pswitch_9ed  #0x2
    move-object/from16 v6, p2

    move-object/from16 v7, v32

    :goto_9f1
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o(Z)V

    :goto_9f5
    invoke-static {v7, v6}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->b(Lcom/github/catvod/spider/merge2/xbpq/d/MN;Lcom/github/catvod/spider/merge2/xbpq/d/b;)V

    goto :goto_a0e

    :pswitch_9f9  #0x1
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, v32

    invoke-virtual {v6, v10}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a10

    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    invoke-virtual {v6, v10}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    :cond_a0e
    :goto_a0e
    goto/16 :goto_adc

    :cond_a10
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->a0()V

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    :goto_a16
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o(Z)V

    goto :goto_a0e

    :pswitch_a1b  #0x0
    move-object/from16 v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, v32

    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    .line 66
    iget-object v0, v6, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_a74

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x2

    if-le v1, v4, :cond_a45

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a45

    goto :goto_a74

    :cond_a45
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p()Z

    move-result v1

    if-nez v1, :cond_a4c

    goto :goto_a74

    :cond_a4c
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v4

    if-eqz v4, :cond_a5b

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->C()V

    :cond_a5b
    :goto_a5b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_a6a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a5b

    :cond_a6a
    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->u:Lcom/github/catvod/spider/merge2/xbpq/d/l;

    :goto_a6f
    invoke-virtual {v6, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    goto/16 :goto_adc

    :cond_a74
    :goto_a74
    const/4 v4, 0x0

    goto :goto_add

    :cond_a76
    sget-object v4, Lcom/github/catvod/spider/merge2/xbpq/d/z;->h:[Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a88

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad9

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d(Ljava/lang/String;)Z

    goto :goto_ad9

    :cond_a88
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/z;->g:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a99

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->f:Lcom/github/catvod/spider/merge2/xbpq/d/t;

    move-object/from16 v1, p1

    invoke-virtual {v6, v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z

    move-result v4

    goto :goto_add

    :cond_a99
    move-object v0, v1

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/z;->l:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aad

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->a0()V

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->Y(Lcom/github/catvod/spider/merge2/xbpq/c/l;)V

    goto :goto_adc

    :cond_aad
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/z;->m:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ac0

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->a0()V

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->J()V

    goto/16 :goto_60e

    :cond_ac0
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/z;->o:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_acc

    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->G(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_adc

    :cond_acc
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/z;->q:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad6

    goto/16 :goto_78e

    :cond_ad6
    :goto_ad6
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->a0()V

    :cond_ad9
    :goto_ad9
    invoke-virtual {v6, v7}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    :goto_adc
    const/4 v4, 0x1

    :goto_add
    return v4

    :cond_ade
    move-object v6, v2

    move-object v2, v0

    .line 68
    invoke-virtual {v6, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_ae6
    .sparse-switch
        0x70 -> :sswitch_ff
        0xc50 -> :sswitch_f5
        0xc80 -> :sswitch_e9
        0xc90 -> :sswitch_dd
        0xd7d -> :sswitch_d1
        0x2e39a2 -> :sswitch_c5
        0x300cc4 -> :sswitch_b9
        0x3107ab -> :sswitch_ad
        0x35f74a -> :sswitch_a1
        0x6f67a51c -> :sswitch_93
    .end sparse-switch

    :pswitch_data_b10
    .packed-switch 0xcc9
        :pswitch_13c  #00000cc9
        :pswitch_133  #00000cca
        :pswitch_127  #00000ccb
        :pswitch_11d  #00000ccc
        :pswitch_113  #00000ccd
        :pswitch_109  #00000cce
    .end packed-switch

    :pswitch_data_b20
    .packed-switch 0x0
        :pswitch_22a  #00000000
        :pswitch_221  #00000001
        :pswitch_203  #00000002
        :pswitch_203  #00000003
        :pswitch_1c0  #00000004
        :pswitch_1c0  #00000005
        :pswitch_1c0  #00000006
        :pswitch_1c0  #00000007
        :pswitch_1c0  #00000008
        :pswitch_1c0  #00000009
        :pswitch_1a4  #0000000a
        :pswitch_194  #0000000b
        :pswitch_16c  #0000000c
        :pswitch_164  #0000000d
        :pswitch_15e  #0000000e
        :pswitch_15e  #0000000f
    .end packed-switch

    :sswitch_data_b44
    .sparse-switch
        -0x620c002b -> :sswitch_5a3
        -0x521dd8ce -> :sswitch_599
        -0x47007d5c -> :sswitch_58c
        -0x3c35778b -> :sswitch_581
        -0x3bcc48c6 -> :sswitch_574
        -0x3600cb04 -> :sswitch_567
        -0x4d08054 -> :sswitch_55a
        0x61 -> :sswitch_54f
        0xc80 -> :sswitch_543
        0xc90 -> :sswitch_537
        0xd0a -> :sswitch_52b
        0xd7d -> :sswitch_51f
        0xe3e -> :sswitch_511
        0xe42 -> :sswitch_503
        0x1b2a3 -> :sswitch_4f5
        0x1be64 -> :sswitch_4e9
        0x1d01b -> :sswitch_4db
        0x2e39a2 -> :sswitch_4cf
        0x300cc4 -> :sswitch_4c3
        0x3107ab -> :sswitch_4b7
        0x330708 -> :sswitch_4a9
        0x33add1 -> :sswitch_49d
        0x35f74a -> :sswitch_491
        0x5faa95b -> :sswitch_483
        0x5fb57ca -> :sswitch_475
        0x6903bce -> :sswitch_467
        0xad8ba84 -> :sswitch_459
        0x759d29f7 -> :sswitch_44b
        0x7ca6c5e8 -> :sswitch_43f
        0x7e19b1b8 -> :sswitch_431
    .end sparse-switch

    :pswitch_data_bbe
    .packed-switch 0xcc9
        :pswitch_5e8  #00000cc9
        :pswitch_5dc  #00000cca
        :pswitch_5d0  #00000ccb
        :pswitch_5c4  #00000ccc
        :pswitch_5b8  #00000ccd
        :pswitch_5ae  #00000cce
    .end packed-switch

    :pswitch_data_bce
    .packed-switch 0x0
        :pswitch_a1b  #00000000
        :pswitch_9f9  #00000001
        :pswitch_9ed  #00000002
        :pswitch_9d6  #00000003
        :pswitch_9b9  #00000004
        :pswitch_978  #00000005
        :pswitch_9d6  #00000006
        :pswitch_94e  #00000007
        :pswitch_8ff  #00000008
        :pswitch_8ff  #00000009
        :pswitch_8d6  #0000000a
        :pswitch_8d6  #0000000b
        :pswitch_8d6  #0000000c
        :pswitch_8d6  #0000000d
        :pswitch_8d6  #0000000e
        :pswitch_8d6  #0000000f
        :pswitch_8c2  #00000010
        :pswitch_87c  #00000011
        :pswitch_836  #00000012
        :pswitch_836  #00000013
        :pswitch_81b  #00000014
        :pswitch_815  #00000015
        :pswitch_801  #00000016
        :pswitch_7a2  #00000017
        :pswitch_780  #00000018
        :pswitch_744  #00000019
        :pswitch_815  #0000001a
        :pswitch_72c  #0000001b
        :pswitch_815  #0000001c
        :pswitch_714  #0000001d
        :pswitch_6f9  #0000001e
        :pswitch_6d6  #0000001f
        :pswitch_81b  #00000020
        :pswitch_6bb  #00000021
        :pswitch_61a  #00000022
        :pswitch_614  #00000023
    .end packed-switch
.end method

.method final e(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z
    .registers 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    .line 2
    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->c:Ljava/lang/String;

    .line 3
    iget-object v0, p2, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_f
    if-ltz v1, :cond_47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->q(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    :cond_35
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->V(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_47

    :cond_39
    invoke-virtual {p2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->O(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V

    const/4 p1, 0x0

    return p1

    :cond_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_47
    :goto_47
    return v2
.end method
