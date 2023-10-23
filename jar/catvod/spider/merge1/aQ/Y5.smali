.class public Lcom/github/catvod/spider/merge1/aQ/Y5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/catvod/spider/merge1/aQ/Y5$c;,
        Lcom/github/catvod/spider/merge1/aQ/Y5$K;
    }
.end annotation


# static fields
.field private static final Eg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Ku:Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

.field private static final W:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_18

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/Y5;->W:[C

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/Y5;->Eg:Ljava/util/HashMap;

    .line 3
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/Y5;->Ku:Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    return-void

    nop

    :array_18
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method private static A(Lcom/github/catvod/spider/merge1/aQ/Y5$c;Ljava/lang/String;I)V
    .registers 13

    .line 1
    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->Eg(Lcom/github/catvod/spider/merge1/aQ/Y5$c;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    new-array v0, p2, [I

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->jl(Lcom/github/catvod/spider/merge1/aQ/Y5$c;[I)[I

    .line 3
    new-array v0, p2, [I

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->i(Lcom/github/catvod/spider/merge1/aQ/Y5$c;[I)[I

    .line 4
    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->A(Lcom/github/catvod/spider/merge1/aQ/Y5$c;[Ljava/lang/String;)[Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/sJ;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_1b
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->cs()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_8d

    const/16 v2, 0x3d

    .line 7
    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->P(C)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->W()V

    .line 9
    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/Y5;->W:[C

    invoke-virtual {v0, v4}, Lcom/github/catvod/spider/merge1/aQ/sJ;->f([C)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 10
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->r()C

    move-result v6

    .line 11
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->W()V

    const/16 v7, 0x2c

    const/4 v8, -0x1

    if-ne v6, v7, :cond_51

    const/16 v6, 0x3b

    .line 12
    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge1/aQ/sJ;->P(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 13
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->W()V

    goto :goto_52

    :cond_51
    const/4 v6, -0x1

    :goto_52
    const/16 v7, 0x26

    .line 14
    invoke-virtual {v0, v7}, Lcom/github/catvod/spider/merge1/aQ/sJ;->P(C)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 16
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->W()V

    .line 17
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->W(Lcom/github/catvod/spider/merge1/aQ/Y5$c;)[Ljava/lang/String;

    move-result-object v7

    aput-object v2, v7, v1

    .line 18
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->Ku(Lcom/github/catvod/spider/merge1/aQ/Y5$c;)[I

    move-result-object v7

    aput v4, v7, v1

    .line 19
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->X(Lcom/github/catvod/spider/merge1/aQ/Y5$c;)[I

    move-result-object v7

    aput v4, v7, v5

    .line 20
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->y(Lcom/github/catvod/spider/merge1/aQ/Y5$c;)[Ljava/lang/String;

    move-result-object v7

    aput-object v2, v7, v5

    if-eq v6, v8, :cond_8a

    .line 21
    sget-object v5, Lcom/github/catvod/spider/merge1/aQ/Y5;->Eg:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v4, v9, p1

    aput v6, v9, v3

    invoke-direct {v7, v9, p1, v8}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v5, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_8d
    if-ne v1, p2, :cond_90

    const/4 p1, 0x1

    :cond_90
    const-string p0, "Unexpected count of entities loaded"

    .line 22
    invoke-static {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/QL;->jl(ZLjava/lang/String;)V

    return-void
.end method

.method private static Eg(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/aQ/Y5$c;I)V
    .registers 5

    .line 1
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->O2(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3b

    if-nez v0, :cond_1c

    const/16 p2, 0x26

    .line 3
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2d

    :cond_1c
    const-string p1, "&#x"

    .line 4
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_2d
    return-void
.end method

.method private static Ku(Lcom/github/catvod/spider/merge1/aQ/Y5$K;CLjava/nio/charset/CharsetEncoder;)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Y5$DK;->W:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v1, 0x2

    if-eq p0, v1, :cond_13

    .line 2
    invoke-virtual {p2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result p0

    return p0

    :cond_13
    return v0

    :cond_14
    const/16 p0, 0x80

    if-ge p1, p0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method static synthetic W(Lcom/github/catvod/spider/merge1/aQ/Y5$c;Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/Y5;->A(Lcom/github/catvod/spider/merge1/aQ/Y5$c;Ljava/lang/String;I)V

    return-void
.end method

.method static X(Ljava/lang/Appendable;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;ZZZ)V
    .registers 21

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->X()Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    move-result-object v1

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->jl()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    move-object/from16 v3, p2

    .line 3
    iget-object v4, v3, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->jl:Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_13
    if-ge v7, v5, :cond_c1

    move-object/from16 v10, p1

    .line 5
    invoke-virtual {v10, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    if-eqz p4, :cond_35

    .line 6
    invoke-static {v11}, Lcom/github/catvod/spider/merge1/aQ/gx;->cG(I)Z

    move-result v13

    if-eqz v13, :cond_33

    if-eqz p5, :cond_27

    if-eqz v8, :cond_ba

    :cond_27
    if-eqz v9, :cond_2b

    goto/16 :goto_ba

    :cond_2b
    const/16 v9, 0x20

    .line 7
    invoke-interface {p0, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v9, 0x1

    goto/16 :goto_ba

    :cond_33
    const/4 v8, 0x1

    const/4 v9, 0x0

    :cond_35
    const/high16 v12, 0x10000

    if-ge v11, v12, :cond_a4

    int-to-char v12, v11

    const/16 v13, 0x22

    if-eq v12, v13, :cond_98

    const/16 v13, 0x26

    if-eq v12, v13, :cond_92

    const/16 v13, 0x3c

    if-eq v12, v13, :cond_79

    const/16 v13, 0x3e

    if-eq v12, v13, :cond_6d

    const/16 v13, 0xa0

    if-eq v12, v13, :cond_5d

    .line 8
    invoke-static {v4, v12, v2}, Lcom/github/catvod/spider/merge1/aQ/Y5;->Ku(Lcom/github/catvod/spider/merge1/aQ/Y5$K;CLjava/nio/charset/CharsetEncoder;)Z

    move-result v13

    if-eqz v13, :cond_59

    .line 9
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/16 :goto_ba

    .line 10
    :cond_59
    invoke-static {p0, v1, v11}, Lcom/github/catvod/spider/merge1/aQ/Y5;->Eg(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/aQ/Y5$c;I)V

    goto :goto_ba

    .line 11
    :cond_5d
    sget-object v12, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->W:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    if-eq v1, v12, :cond_67

    const-string v12, "&nbsp;"

    .line 12
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_ba

    :cond_67
    const-string v12, "&#xa0;"

    .line 13
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_ba

    :cond_6d
    if-nez p3, :cond_75

    const-string v12, "&gt;"

    .line 14
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_ba

    .line 15
    :cond_75
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_ba

    :cond_79
    if-eqz p3, :cond_8c

    .line 16
    sget-object v13, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->W:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    if-eq v1, v13, :cond_8c

    invoke-virtual/range {p2 .. p2}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->O2()Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    move-result-object v13

    sget-object v14, Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    if-ne v13, v14, :cond_88

    goto :goto_8c

    .line 17
    :cond_88
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_ba

    :cond_8c
    :goto_8c
    const-string v12, "&lt;"

    .line 18
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_ba

    :cond_92
    const-string v12, "&amp;"

    .line 19
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_ba

    :cond_98
    if-eqz p3, :cond_a0

    const-string v12, "&quot;"

    .line 20
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_ba

    .line 21
    :cond_a0
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_ba

    .line 22
    :cond_a4
    new-instance v12, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([C)V

    .line 23
    invoke-virtual {v2, v12}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b7

    .line 24
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_ba

    .line 25
    :cond_b7
    invoke-static {p0, v1, v11}, Lcom/github/catvod/spider/merge1/aQ/Y5;->Eg(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/aQ/Y5$c;I)V

    .line 26
    :cond_ba
    :goto_ba
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v7, v11

    goto/16 :goto_13

    :cond_c1
    return-void
.end method

.method public static i(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->Eg:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->cG(Ljava/lang/String;)I

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

.method public static jl(Ljava/lang/String;[I)I
    .registers 5

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Y5;->Eg:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v2

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v1

    const/4 p0, 0x2

    return p0

    .line 4
    :cond_1a
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->Ku:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->cG(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_26

    .line 5
    aput p0, p1, v2

    return v1

    :cond_26
    return v2
.end method

.method public static y(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->Ku:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->cG(Ljava/lang/String;)I

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
