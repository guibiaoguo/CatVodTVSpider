.class public final Lcom/github/catvod/spider/merge1/xbpq/c/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_16

    sput-object v0, Lcom/github/catvod/spider/merge1/xbpq/c/n;->a:[C

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge1/xbpq/c/n;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/github/catvod/spider/merge1/xbpq/c/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/xbpq/c/g;-><init>()V

    return-void

    nop

    :array_16
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method static a(Lcom/github/catvod/spider/merge1/xbpq/c/m;Ljava/lang/String;I)V
    .registers 13

    .line 1
    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/c/m;->b(Lcom/github/catvod/spider/merge1/xbpq/c/m;[Ljava/lang/String;)[Ljava/lang/String;

    new-array v0, p2, [I

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/c/m;->d(Lcom/github/catvod/spider/merge1/xbpq/c/m;[I)[I

    new-array v0, p2, [I

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/c/m;->f(Lcom/github/catvod/spider/merge1/xbpq/c/m;[I)[I

    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/c/m;->h(Lcom/github/catvod/spider/merge1/xbpq/c/m;[Ljava/lang/String;)[Ljava/lang/String;

    new-instance v0, Lcom/github/catvod/spider/merge1/xbpq/d/a;

    .line 2
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/github/catvod/spider/merge1/xbpq/d/a;-><init>(Ljava/io/Reader;I)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_24
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->t()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_96

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->o(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->a()V

    sget-object v4, Lcom/github/catvod/spider/merge1/xbpq/c/n;->a:[C

    invoke-virtual {v0, v4}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->p([C)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->s()C

    move-result v6

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->a()V

    const/16 v7, 0x2c

    const/4 v8, -0x1

    if-ne v6, v7, :cond_5a

    const/16 v6, 0x3b

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->o(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->a()V

    goto :goto_5b

    :cond_5a
    const/4 v6, -0x1

    :goto_5b
    const/16 v7, 0x26

    invoke-virtual {v0, v7}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->o(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->a()V

    invoke-static {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/m;->a(Lcom/github/catvod/spider/merge1/xbpq/c/m;)[Ljava/lang/String;

    move-result-object v7

    aput-object v2, v7, v1

    invoke-static {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/m;->c(Lcom/github/catvod/spider/merge1/xbpq/c/m;)[I

    move-result-object v7

    aput v4, v7, v1

    invoke-static {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/m;->e(Lcom/github/catvod/spider/merge1/xbpq/c/m;)[I

    move-result-object v7

    aput v4, v7, v5

    invoke-static {p0}, Lcom/github/catvod/spider/merge1/xbpq/c/m;->g(Lcom/github/catvod/spider/merge1/xbpq/c/m;)[Ljava/lang/String;

    move-result-object v7

    aput-object v2, v7, v5

    if-eq v6, v8, :cond_93

    sget-object v5, Lcom/github/catvod/spider/merge1/xbpq/c/n;->b:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v4, v9, p1

    aput v6, v9, v3

    invoke-direct {v7, v9, p1, v8}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v5, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_96
    if-ne v1, p2, :cond_99

    const/4 p1, 0x1

    :cond_99
    if-eqz p1, :cond_9c

    return-void

    .line 4
    :cond_9c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected count of entities loaded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a5

    :goto_a4
    throw p0

    :goto_a5
    goto :goto_a4
.end method

.method private static b(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/xbpq/c/m;I)V
    .registers 5

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/c/m;->j(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3b

    if-nez v0, :cond_15

    const/16 p2, 0x26

    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    goto :goto_1f

    :cond_15
    const-string p1, "&#x"

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1f
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public static c(Ljava/lang/String;[I)I
    .registers 5

    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/c/n;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v1

    const/4 p0, 0x2

    return p0

    :cond_1a
    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/c/m;->i:Lcom/github/catvod/spider/merge1/xbpq/c/m;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge1/xbpq/c/m;->i(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_26

    aput p0, p1, v2

    return v1

    :cond_26
    return v2
.end method

.method static d(Ljava/lang/Appendable;Ljava/lang/String;Lcom/github/catvod/spider/merge1/xbpq/c/g;ZZZ)V
    .registers 21

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/xbpq/c/g;->c()Lcom/github/catvod/spider/merge1/xbpq/c/m;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/xbpq/c/g;->b()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    move-object/from16 v3, p2

    iget v4, v3, Lcom/github/catvod/spider/merge1/xbpq/c/g;->f:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_13
    if-ge v7, v5, :cond_ad

    move-object/from16 v10, p1

    invoke-virtual {v10, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    const/4 v12, 0x1

    if-eqz p4, :cond_36

    invoke-static {v11}, Lcom/github/catvod/spider/merge1/xbpq/b/j;->d(I)Z

    move-result v13

    if-eqz v13, :cond_34

    if-eqz p5, :cond_28

    if-eqz v8, :cond_a6

    :cond_28
    if-eqz v9, :cond_2c

    goto/16 :goto_a6

    :cond_2c
    const/16 v9, 0x20

    invoke-interface {p0, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v9, 0x1

    goto/16 :goto_a6

    :cond_34
    const/4 v8, 0x1

    const/4 v9, 0x0

    :cond_36
    const/high16 v13, 0x10000

    if-ge v11, v13, :cond_90

    int-to-char v13, v11

    const/16 v14, 0x22

    if-eq v13, v14, :cond_87

    const/16 v14, 0x26

    if-eq v13, v14, :cond_84

    const/16 v14, 0x3c

    if-eq v13, v14, :cond_74

    const/16 v14, 0x3e

    if-eq v13, v14, :cond_6f

    const/16 v14, 0xa0

    if-eq v13, v14, :cond_65

    .line 1
    invoke-static {v4}, Lcom/github/catvod/spider/merge1/xbpq/a/a;->a(I)I

    move-result v14

    if-eqz v14, :cond_5c

    if-eq v14, v12, :cond_62

    invoke-virtual {v2, v13}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v12

    goto :goto_62

    :cond_5c
    const/16 v14, 0x80

    if-ge v13, v14, :cond_61

    goto :goto_62

    :cond_61
    const/4 v12, 0x0

    :cond_62
    :goto_62
    if-eqz v12, :cond_a3

    goto :goto_8c

    .line 2
    :cond_65
    sget-object v12, Lcom/github/catvod/spider/merge1/xbpq/c/m;->g:Lcom/github/catvod/spider/merge1/xbpq/c/m;

    if-eq v1, v12, :cond_6c

    const-string v12, "&nbsp;"

    goto :goto_9f

    :cond_6c
    const-string v12, "&#xa0;"

    goto :goto_9f

    :cond_6f
    if-nez p3, :cond_8c

    const-string v12, "&gt;"

    goto :goto_9f

    :cond_74
    if-eqz p3, :cond_81

    sget-object v12, Lcom/github/catvod/spider/merge1/xbpq/c/m;->g:Lcom/github/catvod/spider/merge1/xbpq/c/m;

    if-eq v1, v12, :cond_81

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/xbpq/c/g;->g()I

    move-result v12

    const/4 v14, 0x2

    if-ne v12, v14, :cond_8c

    :cond_81
    const-string v12, "&lt;"

    goto :goto_9f

    :cond_84
    const-string v12, "&amp;"

    goto :goto_9f

    :cond_87
    if-eqz p3, :cond_8c

    const-string v12, "&quot;"

    goto :goto_9f

    :cond_8c
    :goto_8c
    invoke-interface {p0, v13}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_a6

    :cond_90
    new-instance v12, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v12}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a3

    :goto_9f
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_a6

    :cond_a3
    invoke-static {p0, v1, v11}, Lcom/github/catvod/spider/merge1/xbpq/c/n;->b(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/xbpq/c/m;I)V

    :cond_a6
    :goto_a6
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v7, v11

    goto/16 :goto_13

    :cond_ad
    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/c/m;->h:Lcom/github/catvod/spider/merge1/xbpq/c/m;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge1/xbpq/c/m;->i(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/c/m;->i:Lcom/github/catvod/spider/merge1/xbpq/c/m;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge1/xbpq/c/m;->i(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method
