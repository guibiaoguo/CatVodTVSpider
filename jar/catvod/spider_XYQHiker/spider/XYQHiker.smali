.class public Lcom/github/catvod/spider/XYQHiker;
.super Lcom/github/catvod/crawler/Spider;
.source "SourceFile"


# static fields
.field private static A:[Ljava/lang/String;

.field private static Eg:Z

.field public static Ku:Ljava/util/regex/Pattern;

.field private static W:Landroid/content/SharedPreferences;

.field public static X:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static jl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Gq:Ljava/lang/String;

.field private O2:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field protected T:Ljava/lang/String;

.field public cG:Lcom/github/catvod/spider/Push;

.field protected f:Lorg/json/JSONObject;

.field protected mw:Ljava/lang/String;

.field private nN:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "(https://www.aliyundrive.com/s/[^\"]+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/XYQHiker;->Ku:Ljava/util/regex/Pattern;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/XYQHiker;->jl:Ljava/util/Map;

    const-string v0, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57"

    .line 3
    sput-object v0, Lcom/github/catvod/spider/XYQHiker;->X:Ljava/lang/String;

    const-string v0, "Mozilla/5.0 (Linux; Android 12; Mi 11 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.5615.135 Mobile Safari/537.36"

    .line 4
    sput-object v0, Lcom/github/catvod/spider/XYQHiker;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/github/catvod/spider/XYQHiker;->y:Ljava/util/HashMap;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "href"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "src"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "class"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "alt"

    aput-object v2, v0, v1

    .line 6
    sput-object v0, Lcom/github/catvod/spider/XYQHiker;->A:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/crawler/Spider;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    const-string v0, "[\\W|\\S|.]*?MacPlayerConfig.player_list[\\W|\\S|.]*?=([\\W|\\S|.]*?),MacPlayerConfig.downer_list"

    .line 6
    iput-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->P:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->T:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->f:Lorg/json/JSONObject;

    .line 9
    iput-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->mw:Ljava/lang/String;

    return-void
.end method

.method private Eg(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Lorg/json/JSONObject;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const-string v3, "{catePg}"

    const-string v4, "分类链接"

    const-string v5, "分类起始页码"

    const-string v6, "网页编码格式"

    const-string v7, "md5("

    const-string v8, "0"

    const-string v9, "1"

    const/4 v10, 0x0

    .line 1
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/github/catvod/spider/XYQHiker;->A()V

    .line 2
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_21

    goto :goto_23

    :cond_21
    const-string v6, "Coding_format"

    .line 3
    :goto_23
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2e

    goto :goto_30

    :cond_2e
    const-string v5, "firstpage"

    :goto_30
    const-string v11, "UTF-8"

    .line 4
    invoke-direct {v1, v6, v11}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    .line 5
    invoke-direct {v1, v5, v9}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_55

    .line 7
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v5, v12

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_67

    .line 8
    :cond_55
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sub-int/2addr v11, v12

    invoke-direct {v1, v5, v9}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v11, v5

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    :goto_67
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_72

    goto :goto_74

    :cond_72
    const-string v4, "class_url"

    .line 10
    :goto_74
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_80

    move-object v11, v8

    goto :goto_81

    :cond_80
    move-object v11, v9

    .line 12
    :goto_81
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 13
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-lt v3, v13, :cond_98

    return-object v10

    .line 14
    :cond_98
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-le v3, v11, :cond_a9

    return-object v10

    :cond_a9
    const-string v3, "firstPage="

    .line 15
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_f0

    .line 16
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_b6} :catch_a52

    const-string v13, "\\[firstPage="

    if-eqz v3, :cond_cf

    :try_start_ba
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 17
    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v12

    const-string v4, "\\]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v11

    goto :goto_f0

    .line 18
    :cond_cf
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 19
    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v12

    const-string v4, "\\]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v11

    goto :goto_f0

    .line 20
    :cond_ea
    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v11
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_f0} :catch_a52

    :cond_f0
    :goto_f0
    const-string v3, "}"

    const-string v6, "{"

    if-eqz p3, :cond_135

    if-eqz v2, :cond_135

    .line 21
    :try_start_f8
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_135

    .line 22
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_106
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_135

    .line 23
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 24
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 25
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_134

    .line 26
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_134
    goto :goto_106

    :cond_135
    const-string v2, "\\{cateId\\}"

    move-object/from16 v10, p1

    .line 27
    invoke-virtual {v4, v2, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\{catePg\\}"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\{(.*?)\\}"

    .line 28
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 29
    :goto_14d
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_151} :catch_a52

    const-string v13, ""

    if-eqz v10, :cond_184

    .line 30
    :try_start_155
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 31
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_14d

    .line 32
    :cond_184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v17, 0x3e8

    div-long v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v14, "时间戳"

    .line 34
    invoke-virtual {v2, v14, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "时间标"

    .line 35
    invoke-virtual {v2, v4, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_1a8} :catch_a52

    const-string v10, ")"

    if-eqz v4, :cond_1d2

    .line 37
    :try_start_1ac
    invoke-static {v2, v7, v10}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 38
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v14, Lcom/github/catvod/spider/merge1/aQ/AA;->Ku:Ljava/nio/charset/Charset;

    invoke-static {v4, v14}, Lcom/github/catvod/spider/merge1/aQ/AA;->W(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_1d2
    const-string v4, "｛"

    .line 39
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "｝"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ";post"

    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_299

    const-string v4, "\\?"

    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v11

    const-string v7, "？？"

    const-string v14, "?"

    invoke-virtual {v4, v7, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v7, "\\?"

    .line 42
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v12

    const-string v14, ";"

    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v11

    const-string v14, "？？"

    const-string v15, "?"

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_28d

    .line 44
    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23d

    invoke-virtual {v7, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23d

    .line 45
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v1, v4, v3, v6, v7}, Lcom/github/catvod/spider/XYQHiker;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2e4

    .line 47
    :cond_23d
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, "&"

    .line 48
    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 49
    array-length v7, v6

    const/4 v14, 0x0

    :goto_24a
    if-ge v14, v7, :cond_268

    aget-object v15, v6, v14

    const-string v12, "="

    .line 50
    invoke-virtual {v15, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    move-object/from16 p1, v6

    .line 51
    invoke-virtual {v15, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v15, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v6, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, p1

    goto :goto_24a

    .line 52
    :cond_268
    iget-object v6, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v1, v4, v3, v6, v7}, Lcom/github/catvod/spider/XYQHiker;->y(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "输入验证码"

    .line 53
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_28b

    invoke-static {v6}, Lcom/github/catvod/spider/XYQHiker;->checkveriry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28b

    const-string v7, "show"

    .line 54
    invoke-static {v6}, Lcom/github/catvod/spider/XYQHiker;->vertype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v3, v7, v6}, Lcom/github/catvod/spider/XYQHiker;->cs(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2e4

    :cond_28b
    move-object v3, v6

    goto :goto_2e4

    .line 55
    :cond_28d
    iget-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v3, v6}, Lcom/github/catvod/spider/XYQHiker;->y(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2e4

    .line 56
    :cond_299
    iget-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "检测中"

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b7

    const-string v4, "btwaf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b7

    .line 58
    invoke-direct {v1, v2, v3}, Lcom/github/catvod/spider/XYQHiker;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2b7
    const-string v4, "/huadong_"

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c7

    const-string v4, "/renji_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2cb

    .line 60
    :cond_2c7
    invoke-direct {v1, v2, v3}, Lcom/github/catvod/spider/XYQHiker;->Vp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2cb
    const-string v4, "输入验证码"

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e4

    invoke-static {v3}, Lcom/github/catvod/spider/XYQHiker;->checkveriry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e4

    const-string v4, "show"

    .line 62
    invoke-static {v3}, Lcom/github/catvod/spider/XYQHiker;->vertype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6, v4, v3}, Lcom/github/catvod/spider/XYQHiker;->cs(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    :cond_2e4
    :goto_2e4
    invoke-static {v3}, Lcom/github/catvod/spider/XYQHiker;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "分类截取模式"

    .line 64
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2f7

    const-string v4, "分类截取模式"

    goto :goto_2f9

    :cond_2f7
    const-string v4, "cat_mode"

    :goto_2f9
    const-string v6, "分类片单是否Jsoup写法"

    .line 65
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_308

    const-string v6, "分类片单是否Jsoup写法"

    goto :goto_30a

    :cond_308
    const-string v6, "cat_is_jsoup"

    :goto_30a
    const-string v7, "分类Json数据二次截取"

    .line 66
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_319

    const-string v7, "分类Json数据二次截取"

    goto :goto_31b

    :cond_319
    const-string v7, "catjson_twice"

    :goto_31b
    const-string v12, "图片是否需要代理"

    .line 67
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_32a

    const-string v12, "图片是否需要代理"

    goto :goto_32c

    :cond_32a
    const-string v12, "PicNeedProxy"

    .line 68
    :goto_32c
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_345

    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "否"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_343

    goto :goto_345

    :cond_343
    const/4 v4, 0x0

    goto :goto_346

    :cond_345
    :goto_345
    const/4 v4, 0x1

    .line 69
    :goto_346
    invoke-direct {v1, v6, v9}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_34e
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_34e} :catch_a52

    const-string v14, "是"

    if-nez v8, :cond_35f

    :try_start_352
    invoke-direct {v1, v6, v14}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35d

    goto :goto_35f

    :cond_35d
    const/4 v6, 0x0

    goto :goto_360

    :cond_35f
    :goto_35f
    const/4 v6, 0x1

    .line 70
    :goto_360
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_377

    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_375

    goto :goto_377

    :cond_375
    const/4 v8, 0x0

    goto :goto_378

    :cond_377
    :goto_377
    const/4 v8, 0x1

    :goto_378
    const-string v12, "分类列表数组规则"

    .line 71
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_387

    const-string v12, "分类列表数组规则"

    goto :goto_389

    :cond_387
    const-string v12, "cat_arr_rule"

    :goto_389
    const-string v15, "分类片单标题"

    .line 72
    invoke-direct {v1, v15}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_398

    const-string v15, "分类片单标题"

    goto :goto_39a

    :cond_398
    const-string v15, "cat_title"

    :goto_39a
    const-string v11, "分类片单链接"

    .line 73
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3a9

    const-string v11, "分类片单链接"

    goto :goto_3ab

    :cond_3a9
    const-string v11, "cat_url"

    :goto_3ab
    move-object/from16 v18, v5

    const-string v5, "分类片单图片"

    .line 74
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3bc

    const-string v5, "分类片单图片"

    goto :goto_3be

    :cond_3bc
    const-string v5, "cat_pic"

    :goto_3be
    move-object/from16 p1, v10

    const-string v10, "分类片单副标题"

    .line 75
    invoke-direct {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3cf

    const-string v10, "分类片单副标题"

    goto :goto_3d1

    :cond_3cf
    const-string v10, "cat_subtitle"

    :goto_3d1
    move/from16 p3, v6

    const-string v6, "分类片单链接加前缀"

    .line 76
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3e2

    const-string v6, "分类片单链接加前缀"

    goto :goto_3e4

    :cond_3e2
    const-string v6, "cat_prefix"

    :goto_3e4
    move-object/from16 p4, v14

    const-string v14, "分类片单链接加后缀"

    .line 77
    invoke-direct {v1, v14}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3f5

    const-string v14, "分类片单链接加后缀"

    goto :goto_3f7

    :cond_3f5
    const-string v14, "cat_suffix"

    :goto_3f7
    move-object/from16 v19, v9

    .line 78
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v20, v9

    .line 79
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_405
    .catch Ljava/lang/Exception; {:try_start_352 .. :try_end_405} :catch_a52

    move-object/from16 v21, v9

    const-string v9, "$$$"

    move-object/from16 v22, v9

    const-string v9, "\'input\'"

    move-object/from16 v23, v10

    const-string v10, "&&"

    if-eqz v4, :cond_649

    .line 80
    :try_start_413
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_43e

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_43e

    .line 82
    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move/from16 v24, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x1

    aget-object v4, v4, v10

    invoke-static {v3, v7, v4}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_440

    :cond_43e
    move/from16 v24, v8

    .line 83
    :goto_440
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    .line 84
    invoke-direct {v1, v12, v3}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "\\."

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 85
    array-length v7, v3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_45d

    const/4 v7, 0x0

    .line 86
    aget-object v3, v3, v7

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_4aa

    .line 87
    :cond_45d
    array-length v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_470

    const/4 v7, 0x0

    .line 88
    aget-object v8, v3, v7

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_4aa

    .line 89
    :cond_470
    array-length v7, v3

    const/4 v10, 0x3

    if-ne v7, v10, :cond_489

    const/4 v7, 0x0

    .line 90
    aget-object v10, v3, v7

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v7, 0x1

    aget-object v10, v3, v7

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    aget-object v3, v3, v8

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_4aa

    .line 91
    :cond_489
    array-length v7, v3

    const/4 v10, 0x4

    if-ne v7, v10, :cond_4a9

    const/4 v7, 0x0

    .line 92
    aget-object v10, v3, v7

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v7, 0x1

    aget-object v10, v3, v7

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    aget-object v7, v3, v8

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v7, 0x3

    aget-object v3, v3, v7

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_4aa

    :cond_4a9
    const/4 v3, 0x0

    :goto_4aa
    move-object v7, v13

    move-object v8, v7

    const/4 v4, 0x0

    .line 93
    :goto_4ad
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10
    :try_end_4b1
    .catch Ljava/lang/Exception; {:try_start_413 .. :try_end_4b1} :catch_a52

    if-ge v4, v10, :cond_645

    .line 94
    :try_start_4b3
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 95
    invoke-direct {v1, v15}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12
    :try_end_4c3
    .catch Ljava/lang/Exception; {:try_start_4b3 .. :try_end_4c3} :catch_617

    move-object/from16 p1, v3

    .line 96
    :try_start_4c5
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_4d1
    .catch Ljava/lang/Exception; {:try_start_4c5 .. :try_end_4d1} :catch_615

    move-object/from16 p2, v7

    .line 97
    :try_start_4d3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4d8
    .catch Ljava/lang/Exception; {:try_start_4d3 .. :try_end_4d8} :catch_611

    move-object/from16 p3, v8

    :try_start_4da
    invoke-direct {v1, v6, v13}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v14, v13}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_4f3
    .catch Ljava/lang/Exception; {:try_start_4da .. :try_end_4f3} :catch_5fd

    if-eqz v8, :cond_50f

    .line 99
    :try_start_4f5
    invoke-virtual {v7, v9, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_4f9
    .catch Ljava/lang/Exception; {:try_start_4f5 .. :try_end_4f9} :catch_4fa

    goto :goto_50f

    :catch_4fa
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    move-object/from16 v27, v5

    move-object/from16 v7, v20

    move-object/from16 v5, v22

    move-object/from16 v25, v23

    move/from16 v26, v24

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    goto/16 :goto_62c

    .line 100
    :cond_50f
    :goto_50f
    :try_start_50f
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_517
    .catch Ljava/lang/Exception; {:try_start_50f .. :try_end_517} :catch_5fd

    if-nez v3, :cond_572

    .line 101
    :try_start_519
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "http"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_523
    .catch Ljava/lang/Exception; {:try_start_519 .. :try_end_523} :catch_554

    if-eqz v3, :cond_532

    .line 102
    :try_start_525
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_529
    .catch Ljava/lang/Exception; {:try_start_525 .. :try_end_529} :catch_52a

    goto :goto_542

    :catch_52a
    move-exception v0

    move-object/from16 v3, p2

    move-object/from16 v19, v0

    move/from16 v8, v24

    goto :goto_55b

    .line 103
    :cond_532
    :try_start_532
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3
    :try_end_53e
    .catch Ljava/lang/Exception; {:try_start_532 .. :try_end_53e} :catch_554

    .line 104
    :try_start_53e
    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_542
    .catch Ljava/lang/Exception; {:try_start_53e .. :try_end_542} :catch_550

    :goto_542
    if-eqz v24, :cond_54d

    move/from16 v8, v24

    .line 105
    :try_start_546
    invoke-virtual {v1, v3, v2, v8}, Lcom/github/catvod/spider/XYQHiker;->cG(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3
    :try_end_54a
    .catch Ljava/lang/Exception; {:try_start_546 .. :try_end_54a} :catch_54b

    goto :goto_576

    :catch_54b
    move-exception v0

    goto :goto_559

    :cond_54d
    move/from16 v8, v24

    goto :goto_576

    :catch_550
    move-exception v0

    move/from16 v8, v24

    goto :goto_559

    :catch_554
    move-exception v0

    move/from16 v8, v24

    move-object/from16 v3, p2

    :goto_559
    move-object/from16 v19, v0

    .line 106
    :goto_55b
    :try_start_55b
    invoke-static/range {v19 .. v19}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V
    :try_end_55e
    .catch Ljava/lang/Exception; {:try_start_55b .. :try_end_55e} :catch_55f

    goto :goto_576

    :catch_55f
    move-exception v0

    move-object/from16 v27, v5

    move/from16 v26, v8

    move-object/from16 v24, v11

    move-object/from16 v7, v20

    move-object/from16 v5, v22

    move-object/from16 v25, v23

    move-object/from16 v8, p3

    move-object/from16 v23, v9

    goto/16 :goto_62c

    :cond_572
    move/from16 v8, v24

    move-object/from16 v3, p2

    :goto_576
    move-object/from16 v24, v11

    move-object/from16 v34, v23

    move-object/from16 v23, v9

    move-object/from16 v9, v34

    .line 107
    :try_start_57e
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10
    :try_end_58a
    .catch Ljava/lang/Exception; {:try_start_57e .. :try_end_58a} :catch_58b

    goto :goto_592

    :catch_58b
    move-exception v0

    move-object v10, v0

    .line 108
    :try_start_58d
    invoke-static {v10}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V
    :try_end_590
    .catch Ljava/lang/Exception; {:try_start_58d .. :try_end_590} :catch_5f1

    move-object/from16 v10, p3

    .line 109
    :goto_592
    :try_start_592
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V
    :try_end_597
    .catch Ljava/lang/Exception; {:try_start_592 .. :try_end_597} :catch_5e3

    move-object/from16 v25, v9

    :try_start_599
    const-string v9, "vod_id"
    :try_end_59b
    .catch Ljava/lang/Exception; {:try_start_599 .. :try_end_59b} :catch_5dd

    move/from16 v26, v8

    .line 110
    :try_start_59d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5a5
    .catch Ljava/lang/Exception; {:try_start_59d .. :try_end_5a5} :catch_5d9

    move-object/from16 v27, v5

    move-object/from16 v5, v22

    :try_start_5a9
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "vod_name"

    .line 111
    invoke-virtual {v11, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "vod_pic"

    .line 112
    invoke-virtual {v11, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "vod_remarks"

    .line 113
    invoke-virtual {v11, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5cb
    .catch Ljava/lang/Exception; {:try_start_5a9 .. :try_end_5cb} :catch_5d5

    move-object/from16 v7, v20

    .line 114
    :try_start_5cd
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5d0
    .catch Ljava/lang/Exception; {:try_start_5cd .. :try_end_5d0} :catch_5d3

    move-object v8, v10

    goto/16 :goto_630

    :catch_5d3
    move-exception v0

    goto :goto_5ee

    :catch_5d5
    move-exception v0

    move-object/from16 v7, v20

    goto :goto_5ee

    :catch_5d9
    move-exception v0

    move-object/from16 v27, v5

    goto :goto_5ea

    :catch_5dd
    move-exception v0

    move-object/from16 v27, v5

    move/from16 v26, v8

    goto :goto_5ea

    :catch_5e3
    move-exception v0

    move-object/from16 v27, v5

    move/from16 v26, v8

    move-object/from16 v25, v9

    :goto_5ea
    move-object/from16 v7, v20

    move-object/from16 v5, v22

    :goto_5ee
    move-object v9, v0

    move-object v8, v10

    goto :goto_62d

    :catch_5f1
    move-exception v0

    move-object/from16 v27, v5

    move/from16 v26, v8

    move-object/from16 v25, v9

    move-object/from16 v7, v20

    move-object/from16 v5, v22

    goto :goto_60e

    :catch_5fd
    move-exception v0

    move-object/from16 v27, v5

    move-object/from16 v7, v20

    move-object/from16 v5, v22

    move-object/from16 v25, v23

    move/from16 v26, v24

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    move-object/from16 v3, p2

    :goto_60e
    move-object/from16 v8, p3

    goto :goto_62c

    :catch_611
    move-exception v0

    move-object/from16 v27, v5

    goto :goto_61e

    :catch_615
    move-exception v0

    goto :goto_61a

    :catch_617
    move-exception v0

    move-object/from16 p1, v3

    :goto_61a
    move-object/from16 v27, v5

    move-object/from16 p2, v7

    :goto_61e
    move-object/from16 v7, v20

    move-object/from16 v5, v22

    move-object/from16 v25, v23

    move/from16 v26, v24

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    move-object/from16 v3, p2

    :goto_62c
    move-object v9, v0

    .line 115
    :goto_62d
    :try_start_62d
    invoke-static {v9}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :goto_630
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v22, v5

    move-object/from16 v20, v7

    move-object/from16 v9, v23

    move-object/from16 v11, v24

    move-object/from16 v23, v25

    move/from16 v24, v26

    move-object/from16 v5, v27

    move-object v7, v3

    move-object/from16 v3, p1

    goto/16 :goto_4ad

    :cond_645
    move-object/from16 v2, v20

    goto/16 :goto_a21

    :cond_649
    move-object/from16 v27, v5

    move/from16 v26, v8

    move-object/from16 v24, v11

    move-object/from16 v7, v20

    move-object/from16 v5, v22

    move-object/from16 v25, v23

    move-object/from16 v23, v9

    const-string v4, "首页片单是否Jsoup写法"

    .line 116
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_666

    const-string v4, "首页片单是否Jsoup写法"

    goto :goto_668

    :cond_666
    const-string v4, "home_is_jsoup"

    :goto_668
    const-string v8, "首页片单标题"

    .line 117
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_677

    const-string v8, "首页片单标题"

    goto :goto_679

    :cond_677
    const-string v8, "home_title"

    :goto_679
    const-string v9, "首页片单链接"

    .line 118
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_688

    const-string v9, "首页片单链接"

    goto :goto_68a

    :cond_688
    const-string v9, "home_url"

    :goto_68a
    const-string v11, "首页片单图片"

    .line 119
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_699

    const-string v11, "首页片单图片"

    goto :goto_69b

    :cond_699
    const-string v11, "home_pic"

    :goto_69b
    move-object/from16 v20, v7

    const-string v7, "首页片单副标题"

    .line 120
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6ac

    const-string v7, "首页片单副标题"

    goto :goto_6ae

    :cond_6ac
    const-string v7, "home_subtitle"

    :goto_6ae
    move-object/from16 v22, v5

    const-string v5, "首页片单链接加前缀"

    .line 121
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6bf

    const-string v5, "首页片单链接加前缀"

    goto :goto_6c1

    :cond_6bf
    const-string v5, "home_prefix"

    :goto_6c1
    move-object/from16 v28, v9

    const-string v9, "首页片单链接加后缀"

    .line 122
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6d2

    const-string v9, "首页片单链接加后缀"

    goto :goto_6d4

    :cond_6d2
    const-string v9, "home_suffix"

    :goto_6d4
    move-object/from16 v29, v7

    move-object/from16 v7, v19

    move-object/from16 v19, v11

    .line 123
    invoke-direct {v1, v4, v7}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6f3

    move-object/from16 v7, p4

    invoke-direct {v1, v4, v7}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f1

    goto :goto_6f3

    :cond_6f1
    const/4 v4, 0x0

    goto :goto_6f4

    :cond_6f3
    :goto_6f3
    const/4 v4, 0x1

    .line 124
    :goto_6f4
    invoke-static {v3}, Lcom/github/catvod/spider/merge1/aQ/Db;->W(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object v3

    .line 125
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    move/from16 v11, p3

    if-eqz v7, :cond_70a

    if-ne v11, v4, :cond_70a

    .line 127
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    :cond_70a
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_70e
    .catch Ljava/lang/Exception; {:try_start_62d .. :try_end_70e} :catch_a52

    const-string v7, "PG_URL"

    if-eqz v5, :cond_71a

    .line 129
    :try_start_712
    invoke-static {v3, v6}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 130
    :cond_71a
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_72a

    .line 131
    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    :cond_72a
    invoke-direct {v1, v14}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_73a

    if-ne v11, v4, :cond_73a

    .line 134
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    :cond_73a
    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_744

    .line 136
    invoke-static {v3, v5}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    :cond_744
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    .line 138
    aget-object v12, v7, v9

    invoke-static {v12, v3}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v3

    const/4 v9, 0x1

    .line 139
    :goto_754
    array-length v12, v7

    const/4 v14, 0x1

    sub-int/2addr v12, v14

    if-ge v9, v12, :cond_762

    .line 140
    aget-object v12, v7, v9

    invoke-static {v12, v3}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_754

    .line 141
    :cond_762
    array-length v9, v7

    const/4 v12, 0x1

    sub-int/2addr v9, v12

    aget-object v7, v7, v9

    invoke-static {v3, v7}, Lcom/github/catvod/spider/XYQHiker;->selectElements(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v3

    move-object v9, v13

    move-object v12, v9

    const/4 v7, 0x0

    .line 142
    :goto_76e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14
    :try_end_772
    .catch Ljava/lang/Exception; {:try_start_712 .. :try_end_772} :catch_a52

    if-ge v7, v14, :cond_645

    .line 143
    :try_start_774
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 144
    invoke-direct {v1, v15}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 145
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v31
    :try_end_782
    .catchall {:try_start_774 .. :try_end_782} :catchall_a1a

    if-eqz v31, :cond_78a

    if-ne v11, v4, :cond_78a

    .line 146
    :try_start_786
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    :cond_78a
    move-object/from16 p3, v3

    move-object/from16 v3, v30

    if-eqz v11, :cond_7a3

    .line 147
    invoke-static {v14, v3}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_794
    .catchall {:try_start_786 .. :try_end_794} :catchall_79d

    move-object/from16 v30, v8

    move-object/from16 p4, v9

    move-object/from16 v32, v12

    :goto_79a
    move-object/from16 v8, v27

    goto :goto_7cb

    :catchall_79d
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v20

    goto/16 :goto_a1e

    :cond_7a3
    move-object/from16 v30, v8

    .line 148
    :try_start_7a5
    invoke-virtual {v14}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    move-object/from16 p4, v9

    move-object/from16 v32, v12

    const/4 v9, 0x0

    aget-object v12, v31, v9

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v17, 0x1

    aget-object v3, v3, v17

    invoke-static {v8, v12, v3}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/XYQHiker;->lB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_79a

    .line 149
    :goto_7cb
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 150
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12
    :try_end_7d3
    .catchall {:try_start_7a5 .. :try_end_7d3} :catchall_a1a

    if-eqz v12, :cond_7de

    if-ne v11, v4, :cond_7de

    move-object/from16 v12, v19

    .line 151
    :try_start_7d9
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_7dd
    .catchall {:try_start_7d9 .. :try_end_7dd} :catchall_79d

    goto :goto_7e0

    :cond_7de
    move-object/from16 v12, v19

    .line 152
    :goto_7e0
    :try_start_7e0
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v19
    :try_end_7e4
    .catchall {:try_start_7e0 .. :try_end_7e4} :catchall_a1a

    if-nez v19, :cond_8aa

    move-object/from16 v19, v12

    .line 153
    :try_start_7e8
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_7ec
    .catch Ljava/lang/Exception; {:try_start_7e8 .. :try_end_7ec} :catch_89a
    .catchall {:try_start_7e8 .. :try_end_7ec} :catchall_79d

    move-object/from16 v27, v8

    :try_start_7ee
    const-string v8, "http"

    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_7f4
    .catch Ljava/lang/Exception; {:try_start_7ee .. :try_end_7f4} :catch_898
    .catchall {:try_start_7ee .. :try_end_7f4} :catchall_79d

    if-eqz v8, :cond_7fc

    move-object/from16 v31, v15

    move-object/from16 v15, p1

    goto/16 :goto_87c

    :cond_7fc
    if-eqz v11, :cond_816

    .line 154
    :try_start_7fe
    invoke-static {v14, v9}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8
    :try_end_806
    .catch Ljava/lang/Exception; {:try_start_7fe .. :try_end_806} :catch_80a
    .catchall {:try_start_7fe .. :try_end_806} :catchall_79d

    move-object v9, v8

    move-object/from16 v31, v15

    goto :goto_836

    :catch_80a
    move-exception v0

    move-object/from16 v9, p4

    move-object v12, v0

    move-object/from16 v31, v15

    move/from16 v8, v26

    move-object/from16 v15, p1

    goto/16 :goto_8a6

    .line 155
    :cond_816
    :try_start_816
    invoke-virtual {v14}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12
    :try_end_81e
    .catch Ljava/lang/Exception; {:try_start_816 .. :try_end_81e} :catch_898
    .catchall {:try_start_816 .. :try_end_81e} :catchall_79d

    move-object/from16 v31, v15

    const/4 v15, 0x0

    :try_start_821
    aget-object v12, v12, v15

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x1

    aget-object v9, v9, v17

    invoke-static {v8, v12, v9}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_835
    .catch Ljava/lang/Exception; {:try_start_821 .. :try_end_835} :catch_892
    .catchall {:try_start_821 .. :try_end_835} :catchall_79d

    move-object v9, v8

    :goto_836
    :try_start_836
    const-string v8, "url("

    .line 156
    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_83c
    .catch Ljava/lang/Exception; {:try_start_836 .. :try_end_83c} :catch_88c
    .catchall {:try_start_836 .. :try_end_83c} :catchall_79d

    if-eqz v8, :cond_875

    :try_start_83e
    const-string v8, "\\&quot;"

    .line 157
    invoke-virtual {v9, v8, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "url\\("

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 158
    array-length v12, v8

    const/4 v15, 0x1

    if-le v12, v15, :cond_875

    aget-object v12, v8, v15
    :try_end_850
    .catch Ljava/lang/Exception; {:try_start_83e .. :try_end_850} :catch_86e
    .catchall {:try_start_83e .. :try_end_850} :catchall_79d

    move-object/from16 v15, p1

    :try_start_852
    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_877

    const/4 v12, 0x1

    .line 159
    aget-object v8, v8, v12

    const-string v12, "\\)"

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aget-object v8, v8, v12

    const-string v12, "[\'\"]"

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_86a
    .catch Ljava/lang/Exception; {:try_start_852 .. :try_end_86a} :catch_86c
    .catchall {:try_start_852 .. :try_end_86a} :catchall_79d

    move-object v9, v8

    goto :goto_877

    :catch_86c
    move-exception v0

    goto :goto_871

    :catch_86e
    move-exception v0

    move-object/from16 v15, p1

    :goto_871
    move-object v12, v0

    move/from16 v8, v26

    goto :goto_8a6

    :cond_875
    move-object/from16 v15, p1

    .line 160
    :cond_877
    :goto_877
    :try_start_877
    invoke-static {v2, v9}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_87b
    .catch Ljava/lang/Exception; {:try_start_877 .. :try_end_87b} :catch_88a
    .catchall {:try_start_877 .. :try_end_87b} :catchall_79d

    move-object v9, v8

    :goto_87c
    if-eqz v26, :cond_887

    move/from16 v8, v26

    .line 161
    :try_start_880
    invoke-virtual {v1, v9, v2, v8}, Lcom/github/catvod/spider/XYQHiker;->cG(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9
    :try_end_884
    .catch Ljava/lang/Exception; {:try_start_880 .. :try_end_884} :catch_885
    .catchall {:try_start_880 .. :try_end_884} :catchall_79d

    goto :goto_8b6

    :catch_885
    move-exception v0

    goto :goto_8a5

    :cond_887
    move/from16 v8, v26

    goto :goto_8b6

    :catch_88a
    move-exception v0

    goto :goto_88f

    :catch_88c
    move-exception v0

    move-object/from16 v15, p1

    :goto_88f
    move/from16 v8, v26

    goto :goto_8a5

    :catch_892
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v8, v26

    goto :goto_8a3

    :catch_898
    move-exception v0

    goto :goto_89d

    :catch_89a
    move-exception v0

    move-object/from16 v27, v8

    :goto_89d
    move-object/from16 v31, v15

    move/from16 v8, v26

    move-object/from16 v15, p1

    :goto_8a3
    move-object/from16 v9, p4

    :goto_8a5
    move-object v12, v0

    .line 162
    :goto_8a6
    :try_start_8a6
    invoke-static {v12}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V
    :try_end_8a9
    .catchall {:try_start_8a6 .. :try_end_8a9} :catchall_79d

    goto :goto_8b6

    :cond_8aa
    move-object/from16 v27, v8

    move-object/from16 v19, v12

    move-object/from16 v31, v15

    move/from16 v8, v26

    move-object/from16 v15, p1

    move-object/from16 v9, p4

    :goto_8b6
    move-object/from16 v12, v25

    .line 163
    :try_start_8b8
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 164
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v26
    :try_end_8c0
    .catchall {:try_start_8b8 .. :try_end_8c0} :catchall_a1a

    if-eqz v26, :cond_8cd

    if-ne v11, v4, :cond_8cd

    move-object/from16 p1, v2

    move-object/from16 v2, v29

    .line 165
    :try_start_8c8
    invoke-direct {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25
    :try_end_8cc
    .catchall {:try_start_8c8 .. :try_end_8cc} :catchall_79d

    goto :goto_8d1

    :cond_8cd
    move-object/from16 p1, v2

    move-object/from16 v2, v29

    :goto_8d1
    move-object/from16 p4, v25

    .line 166
    :try_start_8d3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v25
    :try_end_8d7
    .catchall {:try_start_8d3 .. :try_end_8d7} :catchall_a1a

    if-nez v25, :cond_92f

    if-eqz v11, :cond_8f4

    move-object/from16 v29, v2

    move-object/from16 v2, p4

    .line 167
    :try_start_8df
    invoke-static {v14, v2}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_8e3
    .catch Ljava/lang/Exception; {:try_start_8df .. :try_end_8e3} :catch_8eb
    .catchall {:try_start_8df .. :try_end_8e3} :catchall_79d

    move/from16 v26, v8

    move-object/from16 p4, v12

    move-object/from16 v33, v13

    :goto_8e9
    move-object v12, v2

    goto :goto_920

    :catch_8eb
    move-exception v0

    move-object v2, v0

    move/from16 v26, v8

    move-object/from16 p4, v12

    move-object/from16 v33, v13

    goto :goto_92b

    :cond_8f4
    move-object/from16 v29, v2

    move/from16 v26, v8

    move-object/from16 v2, p4

    .line 168
    :try_start_8fa
    invoke-virtual {v14}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25
    :try_end_902
    .catch Ljava/lang/Exception; {:try_start_8fa .. :try_end_902} :catch_925
    .catchall {:try_start_8fa .. :try_end_902} :catchall_79d

    move-object/from16 p4, v12

    move-object/from16 v33, v13

    const/4 v12, 0x0

    :try_start_907
    aget-object v13, v25, v12

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v17, 0x1

    aget-object v2, v2, v17

    invoke-static {v8, v13, v2}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->lB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_91f
    .catch Ljava/lang/Exception; {:try_start_907 .. :try_end_91f} :catch_923
    .catchall {:try_start_907 .. :try_end_91f} :catchall_79d

    goto :goto_8e9

    :goto_920
    move-object/from16 v2, v24

    goto :goto_93b

    :catch_923
    move-exception v0

    goto :goto_92a

    :catch_925
    move-exception v0

    move-object/from16 p4, v12

    move-object/from16 v33, v13

    :goto_92a
    move-object v2, v0

    .line 169
    :goto_92b
    :try_start_92b
    invoke-static {v2}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V
    :try_end_92e
    .catchall {:try_start_92b .. :try_end_92e} :catchall_79d

    goto :goto_937

    :cond_92f
    move-object/from16 v29, v2

    move/from16 v26, v8

    move-object/from16 p4, v12

    move-object/from16 v33, v13

    :goto_937
    move-object/from16 v2, v24

    move-object/from16 v12, v32

    .line 170
    :goto_93b
    :try_start_93b
    invoke-direct {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 171
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v13
    :try_end_943
    .catchall {:try_start_93b .. :try_end_943} :catchall_a1a

    if-eqz v13, :cond_94e

    if-ne v11, v4, :cond_94e

    move-object/from16 v13, v28

    .line 172
    :try_start_949
    invoke-direct {v1, v13}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_94d
    .catchall {:try_start_949 .. :try_end_94d} :catchall_79d

    goto :goto_950

    :cond_94e
    move-object/from16 v13, v28

    :goto_950
    const-string v1, "\\[替换:"

    if-eqz v11, :cond_965

    .line 173
    :try_start_954
    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x0

    aget-object v1, v1, v24

    invoke-static {v14, v1}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_960
    .catchall {:try_start_954 .. :try_end_960} :catchall_79d

    move-object/from16 v25, v2

    move/from16 v28, v4

    goto :goto_992

    .line 174
    :cond_965
    :try_start_965
    invoke-virtual {v14}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v25, v2

    move/from16 v28, v4

    const/4 v2, 0x0

    aget-object v4, v24, v2

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v17, 0x1

    aget-object v1, v1, v17

    invoke-static {v14, v4, v1}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_992
    const-string v4, "[替换"

    .line 175
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_998
    .catchall {:try_start_965 .. :try_end_998} :catchall_a1a

    if-eqz v4, :cond_99e

    .line 176
    :try_start_99a
    invoke-static {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->repl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_99e
    .catchall {:try_start_99a .. :try_end_99e} :catchall_79d

    .line 177
    :cond_99e
    :try_start_99e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v23

    .line 178
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_9b6
    .catchall {:try_start_99e .. :try_end_9b6} :catchall_a1a

    if-eqz v14, :cond_9bc

    .line 179
    :try_start_9b8
    invoke-virtual {v4, v8, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_9bc
    .catchall {:try_start_9b8 .. :try_end_9bc} :catchall_79d

    .line 180
    :cond_9bc
    :try_start_9bc
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "vod_id"

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v5

    move-object/from16 v5, v22

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vod_name"

    .line 182
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vod_pic"

    .line 183
    invoke-virtual {v1, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vod_remarks"

    .line 184
    invoke-virtual {v1, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9f1
    .catchall {:try_start_9bc .. :try_end_9f1} :catchall_a1a

    move-object/from16 v2, v20

    .line 185
    :try_start_9f3
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9f6
    .catchall {:try_start_9f3 .. :try_end_9f6} :catchall_a18

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v20, v2

    move-object/from16 v22, v5

    move-object/from16 v5, v23

    move-object/from16 v24, v25

    move/from16 v4, v28

    move-object/from16 v2, p1

    move-object/from16 v25, p4

    move-object/from16 v23, v8

    move-object/from16 v28, v13

    move-object/from16 p1, v15

    move-object/from16 v8, v30

    move-object/from16 v15, v31

    move-object/from16 v13, v33

    goto/16 :goto_76e

    :catchall_a18
    move-exception v0

    goto :goto_a1d

    :catchall_a1a
    move-exception v0

    move-object/from16 v2, v20

    :goto_a1d
    move-object v1, v0

    .line 186
    :goto_a1e
    :try_start_a1e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a21
    const-string v1, "page"

    move-object/from16 v5, v18

    move-object/from16 v3, v21

    .line 187
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pagecount"

    const v4, 0x7fffffff

    .line 188
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "limit"

    .line 189
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "total"

    const v4, 0x7fffffff

    .line 190
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "list"

    .line 191
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_a4c
    .catch Ljava/lang/Exception; {:try_start_a1e .. :try_end_a4c} :catch_a52

    const/4 v2, 0x1

    if-ge v1, v2, :cond_a51

    const/4 v1, 0x0

    return-object v1

    :cond_a51
    return-object v3

    :catch_a52
    move-exception v0

    move-object v1, v0

    .line 193
    invoke-static {v1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static Ku(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "(\\\\u(\\w{4}))"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3
    :goto_a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_37
    return-object p0
.end method

.method private static O2(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_4f

    aget-object v2, p1, v1

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    :cond_21
    const-string v3, "\""

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 7
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\n"

    const-string v4, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 8
    :cond_45
    invoke-static {p0, v2}, Lcom/github/catvod/spider/XYQHiker;->nN(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_4f
    const-string p0, ""

    .line 9
    invoke-static {p2, p0}, Lcom/github/catvod/spider/XYQHiker;->listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private P(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "空"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "&&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    return-object p1

    :cond_1e
    :goto_1e
    return-object p2
.end method

.method private static Tr(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;
    .registers 7

    const-string v0, ","

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_67

    .line 3
    aget-object p1, v0, v2

    const/4 v1, -0x1

    const-string v3, ":"

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 5
    :try_start_1c
    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_28

    :catch_23
    move-exception v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_27
    const/4 v3, 0x0

    .line 7
    :goto_28
    aget-object v4, p1, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 8
    :try_start_30
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_36} :catch_37

    goto :goto_3c

    :catch_37
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_3b
    const/4 p1, 0x0

    .line 10
    :goto_3c
    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->FX(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_4c

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_4c
    if-gtz p1, :cond_53

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    .line 14
    :cond_53
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/nM;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/nM;-><init>()V

    :goto_58
    if-ge v3, p1, :cond_66

    .line 15
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_66
    return-object v0

    .line 16
    :cond_67
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/li;->FX(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object p0

    return-object p0
.end method

.method private Vp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_ee

    const-string v2, "/huadong_"

    .line 1
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    const-string v4, "\r|\n"

    const-string v5, "验证</title>"

    const-string v6, "/renji_"

    if-nez v2, :cond_1b

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 2
    :cond_1b
    invoke-static {p2}, Lcom/github/catvod/spider/merge1/aQ/Db;->W(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object v2

    const-string v7, "body&&script&&src"

    invoke-static {v2, v7}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v7, p0, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {p0, v2, v7, v8}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "key=\""

    const-string v8, "\""

    .line 4
    invoke-static {v2, v7, v8}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "value=\""

    .line 5
    invoke-static {v2, v9, v8}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "c.get(\"/a20be899"

    .line 6
    invoke-static {v2, v10, v8}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/a20be899"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&value="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_77

    const-string p2, "djs"

    goto :goto_79

    :cond_77
    const-string p2, "hd"

    :goto_79
    invoke-static {v9, p2}, Lcom/github/catvod/spider/XYQHiker;->string2Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/github/catvod/spider/merge1/aQ/AA;->Ku:Ljava/nio/charset/Charset;

    invoke-static {p2, v2}, Lcom/github/catvod/spider/merge1/aQ/AA;->W(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {p2, v6, v2}, Lcom/github/catvod/spider/merge1/aQ/G;->Gq(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    .line 10
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "set-cookie"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 12
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    const-string v2, ";"

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    .line 13
    :cond_ca
    iget-object p2, p0, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_df

    .line 15
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 16
    :cond_df
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ea

    .line 17
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_ea
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_ee
    const/4 p1, 0x0

    return-object p1
.end method

.method protected static X()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, -0x14

    if-le v0, v1, :cond_1b

    move v4, v1

    move v1, v0

    move v0, v4

    :cond_1b
    const-string v2, ""

    :goto_1d
    if-lt v1, v0, :cond_50

    if-ne v1, v0, :cond_35

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4d

    .line 3
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    :cond_50
    return-object v2
.end method

.method public static checkstring(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "m3u8.pw/Cache"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "from=https://banyung.pw"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "getm3u8?url=http"

    aput-object v5, v1, v2

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_21

    .line 1
    aget-object v5, v1, v2

    .line 2
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    return v4

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_21
    return v3
.end method

.method public static checkveriry(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "ajax/verify_check"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "ajax.php?ac=code_check"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private cs(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "verify_check"

    const-string v1, "show"

    .line 1
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_13

    :cond_f
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    :goto_13
    const-string v3, "X-Requested-With"

    const-string v4, "XMLHttpRequest"

    .line 2
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    .line 3
    :cond_1d
    :try_start_1d
    new-instance v5, Lcom/github/catvod/spider/XYQHiker$4;

    invoke-direct {v5, p0}, Lcom/github/catvod/spider/XYQHiker$4;-><init>(Lcom/github/catvod/spider/XYQHiker;)V

    .line 4
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5e

    .line 5
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/G;->Ku()Lokhttp3/OkHttpClient;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/index.php/verify/index.html"

    invoke-static {p1, v9}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_56

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    goto :goto_5a

    :cond_56
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    :goto_5a
    invoke-static {v6, v8, v7, v9, v5}, Lcom/github/catvod/spider/merge1/aQ/G;->jl(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    goto :goto_a1

    .line 6
    :cond_5e
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/G;->Ku()Lokhttp3/OkHttpClient;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/inc/common/code.php?a="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&s="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9a

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    goto :goto_9e

    :cond_9a
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    :goto_9e
    invoke-static {v6, v8, v7, v9, v5}, Lcom/github/catvod/spider/merge1/aQ/G;->jl(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    .line 7
    :goto_a1
    invoke-virtual {v5}, Lcom/github/catvod/spider/merge1/aQ/tb;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/Response;

    .line 8
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v5

    const/4 v6, 0x2

    .line 9
    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 10
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v8, "User-Agent"

    const-string v9, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36"

    .line 11
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "Content-Type"

    const-string v9, "text/plain; charset=utf-8"

    .line 12
    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v8, p0, Lcom/github/catvod/spider/XYQHiker;->mw:Ljava/lang/String;

    iget-object v9, p0, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {p0, v8, v5, v9, v6}, Lcom/github/catvod/spider/XYQHiker;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f9

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/index.php/ajax/verify_check?type="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&verify="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {p1, v5}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {p0, v5, v7, v6, v2}, Lcom/github/catvod/spider/XYQHiker;->y(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    goto :goto_11c

    .line 17
    :cond_f9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/inc/ajax.php?ac=code_check&type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-static {p1, v5}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v2}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    .line 19
    :goto_11c
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "msg"

    .line 20
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ok"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16f

    if-nez p2, :cond_147

    .line 21
    iget-object v5, p0, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13e

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    goto :goto_142

    :cond_13e
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    :goto_142
    invoke-virtual {p0, p1, v5, v6}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    goto :goto_15c

    .line 22
    :cond_147
    iget-object v5, p0, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_154

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    goto :goto_158

    :cond_154
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    :goto_158
    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/github/catvod/spider/XYQHiker;->y(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    :goto_15c
    const-string v5, "输入验证码"

    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16f

    invoke-static {v4}, Lcom/github/catvod/spider/XYQHiker;->checkveriry(Ljava/lang/String;)Z

    move-result v5
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_168} :catch_16b

    if-nez v5, :cond_16f

    return-object v4

    :catch_16b
    move-exception v5

    .line 24
    invoke-static {v5}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_16f
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x4

    if-lt v3, v5, :cond_1d

    return-object v4
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_b1

    const-string v2, "检测中"

    .line 1
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    const-string v4, "\r|\n"

    const-string v5, "<title>检测中</title>"

    if-eqz v2, :cond_a2

    const-string v2, "btwaf"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const-string v2, "btwaf="

    const-string v6, "\""

    .line 2
    invoke-static {p2, v2, v6}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v2, "?"

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&btwaf="

    goto :goto_46

    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?btwaf="

    :goto_46
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {p2, v6, v2}, Lcom/github/catvod/spider/merge1/aQ/G;->Gq(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "set-cookie"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    const-string v6, ";"

    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    .line 9
    :cond_8d
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 10
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_98
    iget-object p2, p0, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 12
    :cond_a2
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 13
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_ad
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_b1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static escapeExprSpecialWord(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    const/16 v0, 0xf

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "-"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v4, "$"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "("

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, ")"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "*"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "+"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "."

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "["

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v4, "]"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "?"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v4, "^"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v4, "{"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v4, "}"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string v4, "|"

    aput-object v4, v1, v2

    :goto_5c
    if-ge v3, v0, :cond_7e

    .line 2
    aget-object v2, v1, v3

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_7e
    return-object p0
.end method

.method public static getText(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "*"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "null"

    return-object p0

    :cond_b
    const-string v0, "\\|\\|"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2f

    const/4 v1, 0x0

    .line 4
    :goto_16
    array-length v2, v0

    if-ge v1, v2, :cond_2f

    const/4 v2, 0x0

    .line 5
    :try_start_1a
    aget-object v3, v0, v1

    invoke-static {p0, v3}, Lcom/github/catvod/spider/XYQHiker;->mw(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    return-object v2

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 8
    :cond_2f
    invoke-static {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->mw(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_32

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_32

    :cond_11
    const-string v0, ".js:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "＋"

    if-eqz v0, :cond_20

    .line 3
    invoke-static {p0, p1, v1}, Lcom/github/catvod/spider/XYQHiker;->O2(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_20
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 5
    invoke-static {p0, p1, v1}, Lcom/github/catvod/spider/XYQHiker;->O2(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    const-string v0, "\\+"

    .line 6
    invoke-static {p0, p1, v0}, Lcom/github/catvod/spider/XYQHiker;->O2(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    :goto_32
    const-string p0, ""

    return-object p0
.end method

.method public static getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 8

    const-string v0, "Text"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ac

    const-string v0, "Attr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_ac

    .line 2
    :cond_12
    sget-object v0, Lcom/github/catvod/spider/XYQHiker;->A:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v1, :cond_25

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    return-object p1

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_25
    const-string v0, "--"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v3, 0x1

    if-le v1, v3, :cond_54

    .line 6
    aget-object p0, v0, v2

    invoke-static {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_39
    array-length v1, v0

    if-ge v3, v1, :cond_53

    .line 9
    aget-object v1, v0, v3

    invoke-static {v1, p0}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    .line 10
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/Db;->W(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_53
    return-object p0

    :cond_54
    const-string v0, "\\|\\|"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 13
    array-length v1, v0

    if-le v1, v3, :cond_73

    const/4 v1, 0x0

    .line 14
    :goto_5e
    array-length v4, v0

    if-ge v1, v4, :cond_73

    const/4 v4, 0x0

    .line 15
    :try_start_62
    aget-object v5, v0, v1

    invoke-static {v5, p1}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v4
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception v5

    .line 16
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6d
    if-eqz v4, :cond_70

    return-object v4

    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_73
    const-string v0, ","

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    array-length v1, v0

    if-le v1, v3, :cond_a3

    .line 19
    aget-object p0, v0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 20
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge1/aQ/li;->FX(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v1

    if-gez p0, :cond_96

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/catvod/spider/merge1/aQ/li;

    return-object p0

    .line 22
    :cond_96
    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->FX(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/catvod/spider/merge1/aQ/li;

    return-object p0

    .line 23
    :cond_a3
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/li;->FX(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/nM;->Ku()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p0

    return-object p0

    :cond_ac
    :goto_ac
    return-object p1
.end method

.method private jl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 34

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    const-string v0, "&"

    .line 1
    :try_start_c
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v11, p1

    .line 3
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 5
    array-length v13, v11

    const/4 v15, 0x0

    :goto_23
    if-ge v15, v13, :cond_37

    aget-object v14, v11, v15

    move-object/from16 v16, v9

    const-string v9, "＆＆"

    .line 6
    invoke-virtual {v14, v9, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v16

    goto :goto_23

    :cond_37
    move-object/from16 v16, v9

    move-object/from16 v9, p4

    move-object/from16 v11, p6

    move-object/from16 v13, p8

    move-object/from16 v14, p10

    move-object/from16 v15, p12

    move-object/from16 p1, p14

    const/4 v8, 0x0

    move-object/from16 v18, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v18

    .line 7
    :goto_4c
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_50} :catch_3eb

    if-ge v8, v0, :cond_3e8

    .line 8
    :try_start_52
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_3c4

    move-object/from16 v17, v12

    const-string v12, "空"

    const-string v7, "*"

    move-object/from16 p4, v15

    const-string v15, "\\|\\|"

    const-string v6, "||"

    if-nez v0, :cond_d0

    :try_start_64
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "{cateId}"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 9
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    move-object v9, v3

    .line 10
    :cond_79
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7d} :catch_be

    move-object/from16 p6, v14

    const-string v14, "分类"

    const-string v5, "cateId"

    if-eqz v0, :cond_b2

    :try_start_85
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 11
    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8f} :catch_ae

    move-object/from16 p8, v13

    .line 12
    :try_start_91
    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object/from16 p10, v15

    .line 13
    array-length v15, v13

    if-ge v8, v15, :cond_d6

    aget-object v15, v13, v8

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d6

    .line 14
    aget-object v0, v0, v8

    aget-object v13, v13, v8

    invoke-direct {v1, v5, v14, v0, v13}, Lcom/github/catvod/spider/XYQHiker;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d6

    :catch_ae
    move-exception v0

    move-object/from16 p8, v13

    goto :goto_c3

    :cond_b2
    move-object/from16 p8, v13

    move-object/from16 p10, v15

    .line 15
    invoke-direct {v1, v5, v14, v3, v9}, Lcom/github/catvod/spider/XYQHiker;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_bd} :catch_12c

    goto :goto_d6

    :catch_be
    move-exception v0

    move-object/from16 p8, v13

    move-object/from16 p6, v14

    :goto_c3
    move-object/from16 v6, p1

    move-object/from16 v5, p4

    move-object/from16 v4, p6

    move-object/from16 v15, p7

    move-object/from16 v3, p8

    :goto_cd
    move v13, v8

    goto/16 :goto_3bf

    :cond_d0
    move-object/from16 p8, v13

    move-object/from16 p6, v14

    move-object/from16 p10, v15

    .line 16
    :cond_d6
    :goto_d6
    :try_start_d6
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_da} :catch_3b1

    if-nez v0, :cond_12e

    :try_start_dc
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12e

    const-string v0, "{class}"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 17
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    move-object v11, v4

    .line 18
    :cond_f1
    invoke-virtual {v11, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_f5} :catch_12c

    const-string v5, "类型"

    const-string v13, "class"

    if-eqz v0, :cond_122

    :try_start_fb
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_122

    move-object/from16 v0, p10

    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 20
    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 21
    array-length v3, v15

    if-ge v8, v3, :cond_130

    aget-object v3, v15, v8

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_130

    .line 22
    aget-object v3, v14, v8

    aget-object v14, v15, v8

    invoke-direct {v1, v13, v5, v3, v14}, Lcom/github/catvod/spider/XYQHiker;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_130

    :cond_122
    move-object/from16 v0, p10

    .line 23
    invoke-direct {v1, v13, v5, v4, v11}, Lcom/github/catvod/spider/XYQHiker;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_12b} :catch_12c

    goto :goto_130

    :catch_12c
    move-exception v0

    goto :goto_c3

    :cond_12e
    move-object/from16 v0, p10

    .line 24
    :cond_130
    :goto_130
    :try_start_130
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_134} :catch_3a2

    if-nez v3, :cond_1bf

    :try_start_136
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1bf

    const-string v3, "{area}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_142} :catch_1b0

    if-eqz v3, :cond_1bf

    move-object/from16 v3, p8

    .line 25
    :try_start_146
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_14a} :catch_1ac

    if-eqz v5, :cond_14f

    move-object/from16 v13, p7

    goto :goto_150

    :cond_14f
    move-object v13, v3

    .line 26
    :goto_150
    :try_start_150
    invoke-virtual {v13, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_154} :catch_199

    const-string v5, "地区"

    const-string v14, "area"

    move-object/from16 v15, p7

    if-eqz v3, :cond_185

    :try_start_15c
    invoke-virtual {v15, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_185

    .line 27
    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_16a} :catch_183

    move-object/from16 p8, v9

    .line 29
    :try_start_16c
    array-length v9, v4

    if-ge v8, v9, :cond_1c6

    aget-object v9, v4, v8

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c6

    .line 30
    aget-object v3, v3, v8

    aget-object v4, v4, v8

    invoke-direct {v1, v14, v5, v3, v4}, Lcom/github/catvod/spider/XYQHiker;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1c6

    :catch_183
    move-exception v0

    goto :goto_19c

    :cond_185
    move-object/from16 p8, v9

    .line 31
    invoke-direct {v1, v14, v5, v15, v13}, Lcom/github/catvod/spider/XYQHiker;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_18e} :catch_18f

    goto :goto_1c6

    :catch_18f
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v5, p4

    move-object/from16 v4, p6

    move-object/from16 v9, p8

    goto :goto_1a4

    :catch_199
    move-exception v0

    move-object/from16 v15, p7

    :goto_19c
    move-object/from16 p8, v9

    move-object/from16 v6, p1

    move-object/from16 v5, p4

    move-object/from16 v4, p6

    :goto_1a4
    move-object v3, v13

    move-object/from16 v14, v16

    move-object/from16 v12, v17

    move v13, v8

    goto/16 :goto_3c3

    :catch_1ac
    move-exception v0

    move-object/from16 v15, p7

    goto :goto_1b5

    :catch_1b0
    move-exception v0

    move-object/from16 v15, p7

    move-object/from16 v3, p8

    :goto_1b5
    move-object/from16 p8, v9

    move-object/from16 v6, p1

    move-object/from16 v5, p4

    move-object/from16 v4, p6

    goto/16 :goto_cd

    :cond_1bf
    move-object/from16 v15, p7

    move-object/from16 v3, p8

    move-object/from16 p8, v9

    move-object v13, v3

    .line 32
    :cond_1c6
    :goto_1c6
    :try_start_1c6
    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1ca} :catch_38f

    if-nez v3, :cond_25f

    :try_start_1cc
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25f

    const-string v3, "{year}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1d8} :catch_250

    if-eqz v3, :cond_25f

    move-object/from16 v4, p6

    .line 33
    :try_start_1dc
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_1e0} :catch_24e

    if-eqz v3, :cond_1e5

    move-object/from16 v14, p9

    goto :goto_1e6

    :cond_1e5
    move-object v14, v4

    .line 34
    :goto_1e6
    :try_start_1e6
    invoke-virtual {v14, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_1ea} :catch_23f

    const-string v4, "年份"

    const-string v5, "year"

    if-eqz v3, :cond_228

    move-object v3, v6

    move-object/from16 v6, p9

    :try_start_1f3
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_221

    .line 35
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_1fd} :catch_226

    move-object/from16 p6, v11

    .line 36
    :try_start_1ff
    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11
    :try_end_203
    .catch Ljava/lang/Exception; {:try_start_1ff .. :try_end_203} :catch_21d

    move-object/from16 p10, v13

    .line 37
    :try_start_205
    array-length v13, v11

    if-ge v8, v13, :cond_267

    aget-object v13, v11, v8

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_267

    .line 38
    aget-object v9, v9, v8

    aget-object v11, v11, v8

    invoke-direct {v1, v5, v4, v9, v11}, Lcom/github/catvod/spider/XYQHiker;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_267

    :catch_21d
    move-exception v0

    move-object/from16 p10, v13

    goto :goto_238

    :cond_221
    move-object/from16 p6, v11

    move-object/from16 p10, v13

    goto :goto_22f

    :catch_226
    move-exception v0

    goto :goto_240

    :cond_228
    move-object v3, v6

    move-object/from16 p6, v11

    move-object/from16 p10, v13

    move-object/from16 v6, p9

    .line 39
    :goto_22f
    invoke-direct {v1, v5, v4, v6, v14}, Lcom/github/catvod/spider/XYQHiker;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_236} :catch_237

    goto :goto_267

    :catch_237
    move-exception v0

    :goto_238
    move-object/from16 v6, p1

    move-object/from16 v5, p4

    move-object/from16 v11, p6

    goto :goto_246

    :catch_23f
    move-exception v0

    :goto_240
    move-object/from16 p10, v13

    move-object/from16 v6, p1

    move-object/from16 v5, p4

    :goto_246
    move-object/from16 v9, p8

    move-object/from16 v3, p10

    move v13, v8

    move-object v4, v14

    goto/16 :goto_3bf

    :catch_24e
    move-exception v0

    goto :goto_253

    :catch_250
    move-exception v0

    move-object/from16 v4, p6

    :goto_253
    move-object/from16 p10, v13

    move-object/from16 v6, p1

    move-object/from16 v5, p4

    move-object/from16 v9, p8

    move-object/from16 v3, p10

    goto/16 :goto_cd

    :cond_25f
    move-object/from16 v4, p6

    move-object v3, v6

    move-object/from16 p6, v11

    move-object/from16 p10, v13

    move-object v14, v4

    .line 40
    :cond_267
    :goto_267
    :try_start_267
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_26b
    .catch Ljava/lang/Exception; {:try_start_267 .. :try_end_26b} :catch_37e

    if-nez v4, :cond_2e0

    :try_start_26d
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2e0

    const-string v4, "{lang}"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_279
    .catch Ljava/lang/Exception; {:try_start_26d .. :try_end_279} :catch_2cf

    if-eqz v4, :cond_2e0

    move-object/from16 v5, p4

    .line 41
    :try_start_27d
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_285

    move-object/from16 v5, p11

    .line 42
    :cond_285
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_27d .. :try_end_289} :catch_2cd

    const-string v9, "语言"

    const-string v11, "lang"

    if-eqz v4, :cond_2be

    move-object v4, v7

    move-object/from16 v7, p11

    :try_start_292
    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2b9

    .line 43
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 44
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6
    :try_end_2a0
    .catch Ljava/lang/Exception; {:try_start_292 .. :try_end_2a0} :catch_2bc

    move-object/from16 p4, v14

    .line 45
    :try_start_2a2
    array-length v14, v6

    if-ge v8, v14, :cond_2e5

    aget-object v14, v6, v8

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2e5

    .line 46
    aget-object v13, v13, v8

    aget-object v6, v6, v8

    invoke-direct {v1, v11, v9, v13, v6}, Lcom/github/catvod/spider/XYQHiker;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2e5

    :cond_2b9
    move-object/from16 p4, v14

    goto :goto_2c3

    :catch_2bc
    move-exception v0

    goto :goto_2d2

    :cond_2be
    move-object v4, v7

    move-object/from16 p4, v14

    move-object/from16 v7, p11

    .line 47
    :goto_2c3
    invoke-direct {v1, v11, v9, v7, v5}, Lcom/github/catvod/spider/XYQHiker;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2ca
    .catch Ljava/lang/Exception; {:try_start_2a2 .. :try_end_2ca} :catch_2cb

    goto :goto_2e5

    :catch_2cb
    move-exception v0

    goto :goto_2d4

    :catch_2cd
    move-exception v0

    goto :goto_2d2

    :catch_2cf
    move-exception v0

    move-object/from16 v5, p4

    :goto_2d2
    move-object/from16 p4, v14

    :goto_2d4
    move-object/from16 v6, p1

    move-object/from16 v4, p4

    move-object/from16 v11, p6

    move-object/from16 v9, p8

    move-object/from16 v3, p10

    goto/16 :goto_cd

    :cond_2e0
    move-object/from16 v5, p4

    move-object v4, v7

    move-object/from16 p4, v14

    .line 48
    :cond_2e5
    :goto_2e5
    :try_start_2e5
    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_2e9
    .catch Ljava/lang/Exception; {:try_start_2e5 .. :try_end_2e9} :catch_379

    if-nez v6, :cond_353

    :try_start_2eb
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_353

    const-string v6, "{by}"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2f7
    .catch Ljava/lang/Exception; {:try_start_2eb .. :try_end_2f7} :catch_341

    if-eqz v6, :cond_353

    move-object/from16 v6, p1

    .line 49
    :try_start_2fb
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_303

    move-object/from16 v6, p13

    .line 50
    :cond_303
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_307
    .catch Ljava/lang/Exception; {:try_start_2fb .. :try_end_307} :catch_33f

    const-string v9, "排序"

    const-string v11, "by"

    move v13, v8

    move-object/from16 v8, p13

    if-eqz v4, :cond_337

    :try_start_310
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_337

    .line 51
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 53
    array-length v4, v0

    if-ge v13, v4, :cond_356

    aget-object v4, v0, v13

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_356

    .line 54
    aget-object v3, v3, v13

    aget-object v0, v0, v13

    invoke-direct {v1, v11, v9, v3, v0}, Lcom/github/catvod/spider/XYQHiker;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_356

    :catch_335
    move-exception v0

    goto :goto_345

    .line 55
    :cond_337
    invoke-direct {v1, v11, v9, v8, v6}, Lcom/github/catvod/spider/XYQHiker;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_33e
    .catch Ljava/lang/Exception; {:try_start_310 .. :try_end_33e} :catch_335

    goto :goto_356

    :catch_33f
    move-exception v0

    goto :goto_344

    :catch_341
    move-exception v0

    move-object/from16 v6, p1

    :goto_344
    move v13, v8

    :goto_345
    move-object/from16 v4, p4

    move-object/from16 v11, p6

    move-object/from16 v9, p8

    move-object/from16 v3, p10

    move-object/from16 v14, v16

    move-object/from16 v12, v17

    goto/16 :goto_3d1

    :cond_353
    move-object/from16 v6, p1

    move v13, v8

    :cond_356
    :goto_356
    move-object/from16 v12, v17

    .line 56
    :try_start_358
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_35e
    .catch Ljava/lang/Exception; {:try_start_358 .. :try_end_35e} :catch_375

    move-object/from16 v14, v16

    :try_start_360
    invoke-virtual {v14, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_368
    .catch Ljava/lang/Exception; {:try_start_360 .. :try_end_368} :catch_373

    move-object/from16 v4, p4

    move-object/from16 v11, p6

    move-object/from16 v9, p8

    move-object/from16 v3, p10

    move-object v10, v0

    goto/16 :goto_3d4

    :catch_373
    move-exception v0

    goto :goto_38a

    :catch_375
    move-exception v0

    move-object/from16 v14, v16

    goto :goto_38a

    :catch_379
    move-exception v0

    move-object/from16 v6, p1

    move v13, v8

    goto :goto_386

    :catch_37e
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v5, p4

    move v13, v8

    move-object/from16 p4, v14

    :goto_386
    move-object/from16 v14, v16

    move-object/from16 v12, v17

    :goto_38a
    move-object/from16 v4, p4

    move-object/from16 v11, p6

    goto :goto_39d

    :catch_38f
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v5, p4

    move-object/from16 v4, p6

    move-object/from16 p10, v13

    move-object/from16 v14, v16

    move-object/from16 v12, v17

    move v13, v8

    :goto_39d
    move-object/from16 v9, p8

    move-object/from16 v3, p10

    goto :goto_3d1

    :catch_3a2
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v5, p4

    move-object/from16 v4, p6

    move-object/from16 v15, p7

    move-object/from16 v3, p8

    move v13, v8

    move-object/from16 p8, v9

    goto :goto_3bf

    :catch_3b1
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v5, p4

    move-object/from16 v4, p6

    move-object/from16 v15, p7

    move-object/from16 v3, p8

    move v13, v8

    move-object/from16 p8, v9

    :goto_3bf
    move-object/from16 v14, v16

    move-object/from16 v12, v17

    :goto_3c3
    goto :goto_3d1

    :catch_3c4
    move-exception v0

    move-object/from16 v6, p1

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v14, v16

    move v13, v8

    move-object/from16 v18, v15

    move-object v15, v5

    move-object/from16 v5, v18

    .line 58
    :goto_3d1
    :try_start_3d1
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V
    :try_end_3d4
    .catch Ljava/lang/Exception; {:try_start_3d1 .. :try_end_3d4} :catch_3eb

    :goto_3d4
    add-int/lit8 v0, v13, 0x1

    move v8, v0

    move-object v13, v3

    move-object/from16 p1, v6

    move-object/from16 v16, v14

    move-object/from16 v3, p3

    move-object v14, v4

    move-object/from16 v4, p5

    move-object/from16 v18, v15

    move-object v15, v5

    move-object/from16 v5, v18

    goto/16 :goto_4c

    :cond_3e8
    move-object/from16 v14, v16

    return-object v14

    :catch_3eb
    move-exception v0

    .line 59
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_40

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_e

    goto :goto_40

    .line 3
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1d

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 5
    :cond_1d
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_26
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3b

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 8
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_40
    :goto_40
    const-string p0, ""

    return-object p0
.end method

.method public static loadPic(Ljava/util/Map;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "site"

    .line 1
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pic"

    .line 2
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "neetproxy"

    .line 3
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    .line 4
    :goto_2e
    sget-object v5, Lcom/github/catvod/spider/XYQHiker;->y:Ljava/util/HashMap;

    if-nez v5, :cond_51

    .line 5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/github/catvod/spider/XYQHiker;->y:Ljava/util/HashMap;

    const-string v6, "User-Agent"

    .line 6
    sget-object v7, Lcom/github/catvod/spider/XYQHiker;->jl:Ljava/util/Map;

    const-string v8, "user-agent"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_51

    .line 7
    sget-object p0, Lcom/github/catvod/spider/XYQHiker;->y:Ljava/util/HashMap;

    const-string v5, "referer"

    invoke-virtual {p0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_51
    new-instance p0, Lcom/github/catvod/spider/XYQHiker$5;

    invoke-direct {p0}, Lcom/github/catvod/spider/XYQHiker$5;-><init>()V

    .line 9
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/G;->Ku()Lokhttp3/OkHttpClient;

    move-result-object v1

    sget-object v5, Lcom/github/catvod/spider/XYQHiker;->y:Ljava/util/HashMap;

    invoke-static {v1, v2, v0, v5, p0}, Lcom/github/catvod/spider/merge1/aQ/G;->jl(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    .line 10
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/tb;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v5, 0xc8

    if-ne v1, v5, :cond_ac

    .line 11
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/tb;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    const-string v6, "Content-Type"

    .line 12
    invoke-virtual {v1, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_81

    const-string v1, "application/octet-stream"

    :cond_81
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 13
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    aput-object v1, v6, v3

    .line 14
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 16
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/tb;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Response;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    aput-object p0, v6, v1
    :try_end_a7
    .catchall {:try_start_1 .. :try_end_a7} :catchall_a8

    return-object v6

    :catchall_a8
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_ac
    return-object v0
.end method

.method private static mw(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string v0, "\\.js:"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_d

    .line 3
    aget-object p1, v0, v3

    :cond_d
    const-string v0, "!"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v1, v0

    const-string v4, " "

    const-string v5, "\n"

    const-string v6, "Text"

    const-string v7, ""

    const-string v8, "Attr"

    const-string v9, "Html"

    if-le v1, v2, :cond_6b

    .line 6
    aget-object v1, v0, v3

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 7
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->n()Ljava/lang/String;

    move-result-object p0

    goto :goto_55

    .line 8
    :cond_2f
    aget-object v1, v0, v3

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 9
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->Bu()Ljava/lang/String;

    move-result-object p0

    goto :goto_55

    .line 10
    :cond_3c
    aget-object v1, v0, v3

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 11
    aget-object v1, v0, v3

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_55

    .line 12
    :cond_4f
    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    :goto_55
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    .line 14
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 15
    :cond_5f
    :goto_5f
    array-length p1, v0

    if-ge v2, p1, :cond_9e

    .line 16
    aget-object p1, v0, v2

    invoke-virtual {p0, p1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 17
    :cond_6b
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 18
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->n()Ljava/lang/String;

    move-result-object p0

    goto :goto_94

    .line 19
    :cond_76
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 20
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->Bu()Ljava/lang/String;

    move-result-object p0

    goto :goto_94

    .line 21
    :cond_81
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 22
    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_94

    .line 23
    :cond_90
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    :goto_94
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9e

    .line 25
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_9e
    return-object p0
.end method

.method private static nN(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "&&"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    goto :goto_12

    :cond_b
    const/4 v0, 0x0

    .line 3
    aget-object v0, p1, v0

    invoke-static {v0, p0}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p0

    :goto_12
    const/4 v0, 0x1

    .line 4
    :goto_13
    array-length v2, p1

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_20

    .line 5
    aget-object v2, p1, v0

    invoke-static {v2, p0}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 6
    :cond_20
    array-length v0, p1

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->getText(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 14

    const-string v0, "by"

    const-string v1, "&"

    .line 1
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_a6

    const-string v5, ""

    const-string v6, "v"

    const-string v7, "n"

    const-string v8, "空"

    if-nez v4, :cond_33

    :try_start_1c
    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    const-string v0, "全部"

    .line 4
    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_4f

    .line 8
    :cond_33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string v0, "默认"

    .line 9
    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 12
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 13
    :cond_4f
    :goto_4f
    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 14
    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-virtual {p4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    .line 16
    :goto_64
    array-length v4, p3

    if-ge v0, v4, :cond_91

    .line 17
    aget-object v4, p3, v0

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    aget-object v4, p4, v0

    const-string v5, "＆＆"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 20
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 21
    :cond_82
    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 22
    invoke-virtual {v2, v7, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v2, v6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 25
    :cond_91
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "key"

    .line 26
    invoke-virtual {p3, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "name"

    .line 27
    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "value"

    .line 28
    invoke-virtual {p3, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_a5} :catch_a6

    return-object p3

    :catch_a6
    move-exception p1

    .line 29
    invoke-static {p1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_b1

    const-string v2, "检测中"

    .line 1
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    const-string v4, "\r|\n"

    const-string v5, "<title>检测中</title>"

    if-eqz v2, :cond_a2

    const-string v2, "btwaf"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const-string v2, "btwaf="

    const-string v6, "\""

    .line 2
    invoke-static {p2, v2, v6}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v2, "?"

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&btwaf="

    goto :goto_46

    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?btwaf="

    :goto_46
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {p2, v6, v2}, Lcom/github/catvod/spider/merge1/aQ/G;->Gq(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "set-cookie"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    const-string v6, ";"

    invoke-static {v6, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    .line 9
    :cond_8d
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 10
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_98
    iget-object p2, p0, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 12
    :cond_a2
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ad

    .line 13
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_ad
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_b1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static repl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    const-string v0, "[替换:"

    const-string v1, "]"

    .line 2
    invoke-static {p1, v0, v1}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "\\|\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_52

    aget-object v3, p1, v2

    const-string v4, "=>"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_3e

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4f

    .line 7
    :cond_3e
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_52
    return-object p0
.end method

.method public static selectElements(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;
    .registers 5

    const-string v0, "\\|\\|"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/nM;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/nM;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 4
    :try_start_f
    aget-object v2, p1, v1

    invoke-static {p0, v2}, Lcom/github/catvod/spider/XYQHiker;->Tr(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_20
    return-object v0
.end method

.method public static string2Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2e

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "djs"

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    .line 7
    :cond_22
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 8
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "&"

    const-string v1, "＆＆"

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 4
    :cond_19
    :try_start_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/XYQHiker;->escapeExprSpecialWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(.*?)"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/XYQHiker;->escapeExprSpecialWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 6
    :goto_45
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_5c

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_57
    .catchall {:try_start_19 .. :try_end_57} :catchall_58

    goto :goto_45

    :catchall_58
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_5c
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_67

    const-string p0, ""

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    return-object v2
.end method

.method public static vertype(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "ajax/verify_check"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ajax.php?ac=code_check"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    :goto_d
    if-ge v3, v0, :cond_1b

    .line 1
    aget-object v2, v1, v3

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    return-object v2

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1b
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method protected A()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->f:Lorg/json/JSONObject;

    if-nez v0, :cond_32

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->T:Ljava/lang/String;

    if-eqz v0, :cond_32

    :try_start_8
    const-string v1, "http"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4
    iget-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->T:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/G;->nN(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/github/catvod/spider/XYQHiker;->f:Lorg/json/JSONObject;

    goto :goto_28

    .line 6
    :cond_1f
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/github/catvod/spider/XYQHiker;->T:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->f:Lorg/json/JSONObject;

    :goto_28
    const-string v0, "OCR_API"

    const-string v1, "https://ddddocr--miifly.repl.co/ocr/b64/text"

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/XYQHiker;->mw:Ljava/lang/String;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_32} :catch_32

    :catch_32
    :cond_32
    return-void
.end method

.method protected Gq(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "请求头参数"

    .line 2
    invoke-direct {v0, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_16

    :cond_14
    const-string v2, "Headers"

    :goto_16
    const-string v3, ""

    .line 3
    invoke-direct {v0, v2, v3}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "$"

    .line 4
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "Cookie"

    const-string v6, "手机"

    const-string v7, "MOBILE_UA"

    const-string v8, "电脑"

    const-string v9, "PC_UA"

    const-string v10, "user-agent"

    const-string v11, ";"

    if-eqz v4, :cond_171

    const-string v4, "#"

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 6
    :goto_3e
    array-length v15, v4

    if-ge v14, v15, :cond_103

    .line 7
    aget-object v15, v4, v14

    const-string v12, "\\$"

    invoke-virtual {v15, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 8
    aget-object v15, v12, v13

    const/16 v16, 0x1

    .line 9
    aget-object v12, v12, v16

    .line 10
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6b

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5c

    goto :goto_6b

    .line 11
    :cond_5c
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_68

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6d

    .line 12
    :cond_68
    sget-object v12, Lcom/github/catvod/spider/XYQHiker;->i:Ljava/lang/String;

    goto :goto_6d

    .line 13
    :cond_6b
    :goto_6b
    sget-object v12, Lcom/github/catvod/spider/XYQHiker;->X:Ljava/lang/String;

    .line 14
    :cond_6d
    :goto_6d
    iget-object v13, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7d

    iget-object v13, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d2

    :cond_7d
    const-string v13, "cookie"

    .line 15
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d2

    .line 16
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ab

    :cond_a9
    move-object/from16 v17, v3

    :goto_ab
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ca

    :cond_c8
    move-object/from16 v3, v17

    :goto_ca
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_d4

    :cond_d2
    move-object/from16 v17, v3

    .line 17
    :goto_d4
    invoke-virtual {v15, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 18
    sget-object v3, Lcom/github/catvod/spider/XYQHiker;->jl:Ljava/util/Map;

    invoke-interface {v3, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_df
    const-string v3, "referer"

    .line 19
    invoke-virtual {v15, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v13, "WebView"

    if-nez v3, :cond_f3

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f3

    .line 20
    invoke-virtual {v1, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fc

    .line 21
    :cond_f3
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_fc

    .line 22
    invoke-virtual {v1, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fc
    :goto_fc
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    const/4 v13, 0x0

    goto/16 :goto_3e

    .line 23
    :cond_103
    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_113

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1fe

    .line 24
    :cond_113
    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_124

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1fe

    :cond_124
    const-string v3, "Cookie$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1fe

    const-string v3, "cookie$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1fe

    .line 25
    iget-object v2, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13f

    iget-object v2, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    goto :goto_16c

    :cond_13f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_163

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_165

    :cond_163
    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    :goto_165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_16c
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1fe

    .line 26
    :cond_171
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17a

    const-string v2, "okhttp/3.12.11"

    goto :goto_198

    .line 27
    :cond_17a
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_196

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_187

    goto :goto_196

    .line 28
    :cond_187
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_193

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_198

    .line 29
    :cond_193
    sget-object v2, Lcom/github/catvod/spider/XYQHiker;->i:Ljava/lang/String;

    goto :goto_198

    .line 30
    :cond_196
    :goto_196
    sget-object v2, Lcom/github/catvod/spider/XYQHiker;->X:Ljava/lang/String;

    .line 31
    :cond_198
    :goto_198
    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a8

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f4

    .line 32
    :cond_1a8
    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1b9

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1f4

    .line 33
    :cond_1b9
    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c4

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    goto :goto_1f1

    :cond_1c4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1ea

    :cond_1e8
    iget-object v4, v0, Lcom/github/catvod/spider/XYQHiker;->Gq:Ljava/lang/String;

    :goto_1ea
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1f1
    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f4
    const-string v3, "User-Agent"

    .line 34
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v3, Lcom/github/catvod/spider/XYQHiker;->jl:Ljava/util/Map;

    invoke-interface {v3, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1fe
    :goto_1fe
    return-object v1
.end method

.method protected W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/github/catvod/spider/XYQHiker$3;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/XYQHiker$3;-><init>(Lcom/github/catvod/spider/XYQHiker;)V

    .line 3
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/G;->Ku()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-static {v1, p1, p2, p4, v0}, Lcom/github/catvod/spider/merge1/aQ/G;->cG(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    .line 4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/tb;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "\r|\n"

    const-string p3, ""

    .line 6
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-object p1

    :catchall_2b
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected cG(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/github/catvod/spider/Proxy;->localProxyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?do=XYQHiker&site="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&pic="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&neetproxy="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    return-object p1

    :catch_31
    move-exception p2

    .line 2
    invoke-static {p2}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public categoryContent(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/catvod/spider/XYQHiker;->Eg(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_b
    const-string p1, ""

    :goto_d
    return-object p1
.end method

.method public detailContent(Ljava/util/List;)Ljava/lang/String;
    .registers 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "选集链接加前缀"

    const-string v4, "?"

    const-string v5, "？？"

    const-string v6, "\\?"

    const-string v7, "是否反转选集序列"

    const-string v8, "选集列表数组规则"

    const-string v9, "播放列表数组规则"

    const-string v10, "链接是否直接播放"

    const-string v11, "网页编码格式"

    const-string v12, "1"

    const-string v13, ""

    const-string v14, "&&"

    .line 1
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/github/catvod/spider/XYQHiker;->A()V

    .line 2
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2a

    goto :goto_2c

    :cond_2a
    const-string v11, "Coding_format"

    :goto_2c
    const-string v15, "UTF-8"

    .line 3
    invoke-direct {v1, v11, v15}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    const/4 v11, 0x0

    .line 4
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v11, "\\$\\$\\$"

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_41} :catch_9a0

    const/4 v15, 0x2

    move-object/from16 v17, v13

    .line 5
    :try_start_44
    aget-object v13, v11, v15

    .line 6
    sget-object v15, Lcom/github/catvod/spider/XYQHiker;->Ku:Ljava/util/regex/Pattern;

    move-object/from16 v18, v14

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v14
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_56} :catch_99c

    const-string v15, "vod_id"

    move-object/from16 v19, v3

    const-string v3, "list"

    move-object/from16 v20, v4

    const/4 v4, 0x1

    if-eqz v14, :cond_9b

    .line 7
    :try_start_61
    sput-boolean v4, Lcom/github/catvod/spider/XYQHiker;->Eg:Z

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v5, v1, Lcom/github/catvod/spider/XYQHiker;->cG:Lcom/github/catvod/spider/Push;

    invoke-virtual {v5, v4}, Lcom/github/catvod/spider/Push;->detailContent(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_94

    .line 12
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_94} :catch_95

    :cond_94
    return-object v4

    :catch_95
    move-exception v0

    move-object v2, v0

    move-object/from16 v15, v17

    goto/16 :goto_9a3

    .line 15
    :cond_9b
    :try_start_9b
    aget-object v14, v11, v4

    const/16 v16, 0x0

    aget-object v4, v11, v16

    .line 16
    invoke-direct {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_ac

    goto :goto_ae

    :cond_ac
    const-string v10, "force_play"

    .line 17
    :goto_ae
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_b9

    goto :goto_bb

    :cond_b9
    const-string v9, "list_arr_rule"

    .line 18
    :goto_bb
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_c6

    goto :goto_c8

    :cond_c6
    const-string v8, "epi_arr_rule"

    .line 19
    :goto_c8
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_d3

    goto :goto_d5

    :cond_d3
    const-string v7, "epi_reverse"

    :goto_d5
    move-object/from16 v22, v3

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v4

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v15

    .line 22
    invoke-direct {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ed} :catch_99c

    const-string v2, "是"

    if-nez v15, :cond_fe

    :try_start_f1
    invoke-direct {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f9} :catch_95

    if-eqz v10, :cond_fc

    goto :goto_fe

    :cond_fc
    const/4 v10, 0x0

    goto :goto_ff

    :cond_fe
    :goto_fe
    const/4 v10, 0x1

    :goto_ff
    const-string v15, "magnet"

    move-object/from16 v25, v14

    const-string v14, "$"

    if-eqz v10, :cond_13b

    const/4 v10, 0x0

    .line 23
    :try_start_108
    aget-object v2, v11, v10

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v11, v10

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-object v6, v11, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    aget-object v2, v11, v5

    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_12c} :catch_95

    move-object/from16 v29, v3

    move-object/from16 v26, v4

    move-object/from16 v3, v17

    move-object v4, v3

    move-object v6, v4

    move-object v7, v6

    move-object v9, v7

    move-object v15, v9

    move-object/from16 v14, v25

    goto/16 :goto_929

    :cond_13b
    :try_start_13b
    const-string v10, ";post"

    .line 26
    invoke-virtual {v13, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_141} :catch_99c

    if-eqz v10, :cond_1f8

    .line 27
    :try_start_143
    invoke-virtual {v13, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x0

    aget-object v10, v10, v16

    move-object/from16 v26, v4

    move-object/from16 v4, v20

    invoke-virtual {v10, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 28
    invoke-virtual {v13, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v20, 0x1

    aget-object v6, v6, v20

    move-object/from16 v20, v11

    const-string v11, ";"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    aget-object v6, v6, v11

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1e8

    const-string v5, "{"

    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a1

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a1

    .line 31
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v1, v10, v4, v5, v6}, Lcom/github/catvod/spider/XYQHiker;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v29, v3

    move-object/from16 v30, v7

    goto/16 :goto_233

    .line 33
    :cond_1a1
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, "&"

    .line 34
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 35
    array-length v6, v4

    const/4 v11, 0x0

    :goto_1ae
    if-ge v11, v6, :cond_1d9

    move/from16 v27, v6

    aget-object v6, v4, v11

    move-object/from16 v28, v4

    const-string v4, "="

    .line 36
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v29, v3

    move-object/from16 v30, v7

    const/4 v3, 0x0

    .line 37
    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v27

    move-object/from16 v4, v28

    move-object/from16 v3, v29

    move-object/from16 v7, v30

    goto :goto_1ae

    :cond_1d9
    move-object/from16 v29, v3

    move-object/from16 v30, v7

    .line 38
    iget-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1, v10, v5, v3, v4}, Lcom/github/catvod/spider/XYQHiker;->y(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    goto :goto_233

    :cond_1e8
    move-object/from16 v29, v3

    move-object/from16 v30, v7

    const/4 v3, 0x0

    .line 39
    iget-object v4, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v1, v10, v3, v4, v5}, Lcom/github/catvod/spider/XYQHiker;->y(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_1f7} :catch_95

    goto :goto_233

    :cond_1f8
    move-object/from16 v29, v3

    move-object/from16 v26, v4

    move-object/from16 v30, v7

    move-object/from16 v20, v11

    .line 40
    :try_start_200
    iget-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v13}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1, v13, v3, v4}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "检测中"

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_210} :catch_99c

    if-eqz v4, :cond_21e

    :try_start_212
    const-string v4, "btwaf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21e

    .line 42
    invoke-direct {v1, v13, v3}, Lcom/github/catvod/spider/XYQHiker;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_21e
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_21e} :catch_95

    :cond_21e
    move-object v4, v3

    :try_start_21f
    const-string v3, "/huadong_"

    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_225} :catch_99c

    if-nez v3, :cond_22f

    :try_start_227
    const-string v3, "/renji_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_22d} :catch_95

    if-eqz v3, :cond_233

    .line 44
    :cond_22f
    :try_start_22f
    invoke-direct {v1, v13, v4}, Lcom/github/catvod/spider/XYQHiker;->Vp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    :cond_233
    :goto_233
    invoke-static {v4}, Lcom/github/catvod/spider/XYQHiker;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v3}, Lcom/github/catvod/spider/merge1/aQ/Db;->W(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object v4

    move-object/from16 v5, v19

    .line 47
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_248

    goto :goto_24a

    :cond_248
    const-string v5, "epiurl_prefix"

    :goto_24a
    const-string v6, "选集链接加后缀"

    .line 48
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_22f .. :try_end_254} :catch_99c

    if-nez v6, :cond_259

    :try_start_256
    const-string v6, "选集链接加后缀"
    :try_end_258
    .catch Ljava/lang/Exception; {:try_start_256 .. :try_end_258} :catch_95

    goto :goto_25b

    :cond_259
    :try_start_259
    const-string v6, "epiurl_suffix"

    :goto_25b
    const-string v7, "选集标题链接是否Jsoup写法"

    .line 49
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7
    :try_end_265
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_265} :catch_99c

    if-nez v7, :cond_26a

    :try_start_267
    const-string v7, "选集标题链接是否Jsoup写法"
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_267 .. :try_end_269} :catch_95

    goto :goto_26c

    :cond_26a
    :try_start_26a
    const-string v7, "epi_is_jsoup"

    :goto_26c
    const-string v10, "选集标题"

    .line 50
    invoke-direct {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_26a .. :try_end_276} :catch_99c

    if-nez v10, :cond_27b

    :try_start_278
    const-string v10, "选集标题"
    :try_end_27a
    .catch Ljava/lang/Exception; {:try_start_278 .. :try_end_27a} :catch_95

    goto :goto_27d

    :cond_27b
    :try_start_27b
    const-string v10, "epi_title"

    :goto_27d
    const-string v11, "选集链接"

    .line 51
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11
    :try_end_287
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_287} :catch_99c

    if-nez v11, :cond_28c

    :try_start_289
    const-string v11, "选集链接"
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_289 .. :try_end_28b} :catch_95

    goto :goto_28e

    :cond_28c
    :try_start_28c
    const-string v11, "epi_url"

    .line 52
    :goto_28e
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18
    :try_end_29a
    .catch Ljava/lang/Exception; {:try_start_28c .. :try_end_29a} :catch_99c

    move-object/from16 v27, v15

    const-string v15, "PG_URL"

    if-eqz v18, :cond_2a8

    .line 54
    :try_start_2a0
    invoke-static {v4, v5}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v15, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_2a0 .. :try_end_2a8} :catch_95

    .line 55
    :cond_2a8
    :try_start_2a8
    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18
    :try_end_2ac
    .catch Ljava/lang/Exception; {:try_start_2a8 .. :try_end_2ac} :catch_99c

    if-eqz v18, :cond_2bd

    .line 56
    :try_start_2ae
    invoke-virtual {v5, v15, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v15, "\'"
    :try_end_2b4
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_2b4} :catch_95

    move-object/from16 v18, v13

    move-object/from16 v13, v17

    :try_start_2b8
    invoke-virtual {v5, v15, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2bc
    .catch Ljava/lang/Exception; {:try_start_2b8 .. :try_end_2bc} :catch_2d0

    goto :goto_2c1

    :cond_2bd
    move-object/from16 v18, v13

    move-object/from16 v13, v17

    .line 57
    :goto_2c1
    :try_start_2c1
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_2c9
    .catch Ljava/lang/Exception; {:try_start_2c1 .. :try_end_2c9} :catch_9a0

    if-eqz v15, :cond_2d5

    .line 59
    :try_start_2cb
    invoke-static {v4, v6}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_2cf
    .catch Ljava/lang/Exception; {:try_start_2cb .. :try_end_2cf} :catch_2d0

    goto :goto_2d5

    :catch_2d0
    move-exception v0

    move-object v2, v0

    move-object v15, v13

    goto/16 :goto_9a3

    .line 60
    :cond_2d5
    :goto_2d5
    :try_start_2d5
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9
    :try_end_2dd
    .catch Ljava/lang/Exception; {:try_start_2d5 .. :try_end_2dd} :catch_9a0

    move-object/from16 v17, v13

    const/4 v15, 0x0

    .line 61
    :try_start_2e0
    aget-object v13, v9, v15

    invoke-static {v13, v4}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v13

    move-object/from16 v28, v4

    const/4 v15, 0x1

    .line 62
    :goto_2e9
    array-length v4, v9
    :try_end_2ea
    .catch Ljava/lang/Exception; {:try_start_2e0 .. :try_end_2ea} :catch_99c

    add-int/lit8 v4, v4, -0x1

    if-ge v15, v4, :cond_2f7

    .line 63
    :try_start_2ee
    aget-object v4, v9, v15

    invoke-static {v4, v13}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v13
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_2ee .. :try_end_2f4} :catch_95

    add-int/lit8 v15, v15, 0x1

    goto :goto_2e9

    .line 64
    :cond_2f7
    :try_start_2f7
    array-length v4, v9

    const/4 v15, 0x1

    sub-int/2addr v4, v15

    aget-object v4, v9, v4

    invoke-static {v13, v4}, Lcom/github/catvod/spider/XYQHiker;->selectElements(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 65
    :goto_302
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15
    :try_end_306
    .catch Ljava/lang/Exception; {:try_start_2f7 .. :try_end_306} :catch_99c

    move/from16 v31, v13

    const-string v13, "http"

    if-ge v9, v15, :cond_527

    .line 66
    :try_start_30c
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/catvod/spider/merge1/aQ/li;

    move-object/from16 v32, v4

    .line 67
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_347

    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v33, v8

    const/16 v16, 0x0

    .line 70
    aget-object v8, v4, v16

    invoke-static {v8, v15}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v8

    move/from16 v34, v9

    const/4 v15, 0x1

    .line 71
    :goto_32f
    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    if-ge v15, v9, :cond_33d

    .line 72
    aget-object v9, v4, v15

    invoke-static {v9, v8}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v8

    add-int/lit8 v15, v15, 0x1

    goto :goto_32f

    .line 73
    :cond_33d
    array-length v9, v4

    const/4 v15, 0x1

    sub-int/2addr v9, v15

    aget-object v4, v4, v9

    invoke-static {v8, v4}, Lcom/github/catvod/spider/XYQHiker;->selectElements(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v4

    goto :goto_34f

    :cond_347
    move-object/from16 v33, v8

    move/from16 v34, v9

    .line 74
    invoke-static {v15, v4}, Lcom/github/catvod/spider/XYQHiker;->selectElements(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v4

    .line 75
    :goto_34f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 76
    :goto_355
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v9, v15, :cond_4b3

    .line 77
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/catvod/spider/merge1/aQ/li;

    move-object/from16 v35, v4

    .line 78
    invoke-direct {v1, v7, v12}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37a

    invoke-direct {v1, v7, v2}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_378

    goto :goto_37a

    :cond_378
    const/4 v4, 0x0

    goto :goto_37b

    :cond_37a
    :goto_37a
    const/4 v4, 0x1

    :goto_37b
    move-object/from16 v36, v7

    .line 79
    invoke-direct {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_38e

    .line 80
    invoke-static {v15, v7}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v39, v2

    move-object/from16 v37, v10

    move-object/from16 v40, v12

    goto :goto_3b5

    :cond_38e
    move-object/from16 v37, v10

    .line 81
    invoke-virtual {v15}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v38
    :try_end_398
    .catchall {:try_start_30c .. :try_end_398} :catchall_51d

    move-object/from16 v39, v2

    move-object/from16 v40, v12

    const/4 v2, 0x0

    :try_start_39d
    aget-object v12, v38, v2

    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x1

    aget-object v7, v7, v16

    invoke-static {v10, v12, v7}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->lB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_3b5
    const-string v2, "$http"

    .line 82
    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d2

    const-string v2, "\\$"

    .line 83
    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 84
    array-length v10, v2

    const/4 v12, 0x1

    if-le v10, v12, :cond_3d2

    aget-object v10, v2, v12

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3d2

    const/4 v10, 0x0

    .line 85
    aget-object v7, v2, v10

    .line 86
    :cond_3d2
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "\\[保留页链\\]"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    aget-object v2, v2, v10

    const-string v12, "\\[替换:"

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v10

    if-eqz v4, :cond_3ee

    .line 87
    invoke-static {v15, v2}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_40a

    .line 88
    :cond_3ee
    invoke-virtual {v15}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aget-object v10, v10, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x1

    aget-object v2, v2, v15

    invoke-static {v4, v10, v2}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    :goto_40a
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "[替换"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_41e

    .line 90
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/github/catvod/spider/XYQHiker;->repl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_41e
    const-string v4, "$http"

    .line 91
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_43a

    const-string v4, "\\$"

    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 93
    array-length v10, v4

    const/4 v12, 0x1

    if-le v10, v12, :cond_43a

    aget-object v10, v4, v12

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_43a

    .line 94
    aget-object v2, v4, v12

    .line 95
    :cond_43a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "\'input\'"

    .line 96
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_45a

    const-string v10, "\'input\'"

    .line 97
    invoke-virtual {v4, v10, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    :cond_45a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v27

    .line 99
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_499

    const/4 v7, 0x0

    .line 100
    :goto_478
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_494

    if-ge v7, v9, :cond_491

    const-string v10, "www.aliyundrive.com/s/"

    .line 101
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_48e

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_491

    .line 102
    :cond_48e
    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_491
    .catchall {:try_start_39d .. :try_end_491} :catchall_4a9

    :cond_491
    add-int/lit8 v7, v7, 0x1

    goto :goto_478

    :cond_494
    move-object/from16 v7, v30

    const/16 v31, 0x1

    goto :goto_4bf

    :cond_499
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v27, v2

    move-object/from16 v4, v35

    move-object/from16 v7, v36

    move-object/from16 v10, v37

    move-object/from16 v2, v39

    move-object/from16 v12, v40

    goto/16 :goto_355

    :catchall_4a9
    move-exception v0

    move-object v2, v0

    move-object/from16 v8, v29

    move-object/from16 v10, v39

    move-object/from16 v9, v40

    goto/16 :goto_523

    :cond_4b3
    move-object/from16 v39, v2

    move-object/from16 v36, v7

    move-object/from16 v37, v10

    move-object/from16 v40, v12

    move-object/from16 v2, v27

    move-object/from16 v7, v30

    .line 103
    :goto_4bf
    :try_start_4bf
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_4c3
    .catchall {:try_start_4bf .. :try_end_4c3} :catchall_515

    move-object/from16 v9, v40

    :try_start_4c5
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_4c9
    .catchall {:try_start_4c5 .. :try_end_4c9} :catchall_50f

    if-nez v4, :cond_4e1

    :try_start_4cb
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_4cf
    .catchall {:try_start_4cb .. :try_end_4cf} :catchall_4da

    move-object/from16 v10, v39

    :try_start_4d1
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_4d5
    .catchall {:try_start_4d1 .. :try_end_4d5} :catchall_4d8

    if-eqz v4, :cond_4e6

    goto :goto_4e3

    :catchall_4d8
    move-exception v0

    goto :goto_4dd

    :catchall_4da
    move-exception v0

    move-object/from16 v10, v39

    :goto_4dd
    move-object v2, v0

    move-object/from16 v8, v29

    goto :goto_523

    :cond_4e1
    move-object/from16 v10, v39

    .line 104
    :goto_4e3
    :try_start_4e3
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_4e6
    const-string v4, "#"

    .line 105
    invoke-static {v4, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4
    :try_end_4ec
    .catchall {:try_start_4e3 .. :try_end_4ec} :catchall_50d

    move-object/from16 v8, v29

    :try_start_4ee
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4f1
    .catchall {:try_start_4ee .. :try_end_4f1} :catchall_50b

    if-eqz v31, :cond_4f4

    goto :goto_52b

    :cond_4f4
    add-int/lit8 v4, v34, 0x1

    move-object/from16 v27, v2

    move-object/from16 v30, v7

    move-object/from16 v29, v8

    move-object v12, v9

    move-object v2, v10

    move/from16 v13, v31

    move-object/from16 v8, v33

    move-object/from16 v7, v36

    move-object/from16 v10, v37

    move v9, v4

    move-object/from16 v4, v32

    goto/16 :goto_302

    :catchall_50b
    move-exception v0

    goto :goto_522

    :catchall_50d
    move-exception v0

    goto :goto_520

    :catchall_50f
    move-exception v0

    move-object/from16 v8, v29

    move-object/from16 v10, v39

    goto :goto_522

    :catchall_515
    move-exception v0

    move-object/from16 v8, v29

    move-object/from16 v10, v39

    move-object/from16 v9, v40

    goto :goto_522

    :catchall_51d
    move-exception v0

    move-object v10, v2

    move-object v9, v12

    :goto_520
    move-object/from16 v8, v29

    :goto_522
    move-object v2, v0

    .line 106
    :goto_523
    :try_start_523
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_526
    .catch Ljava/lang/Exception; {:try_start_523 .. :try_end_526} :catch_95

    goto :goto_52b

    :cond_527
    move-object v10, v2

    move-object v9, v12

    move-object/from16 v8, v29

    .line 107
    :goto_52b
    :try_start_52b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_52f
    .catch Ljava/lang/Exception; {:try_start_52b .. :try_end_52f} :catch_99c

    const/4 v4, 0x1

    if-lt v2, v4, :cond_555

    :try_start_532
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_573

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_573

    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "[保留页链]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_553
    .catch Ljava/lang/Exception; {:try_start_532 .. :try_end_553} :catch_95

    if-eqz v2, :cond_573

    .line 108
    :cond_555
    :try_start_555
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v5, v20, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-object v4, v20, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_573
    const-string v2, "线路列表数组规则"

    .line 110
    invoke-direct {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_57d
    .catch Ljava/lang/Exception; {:try_start_555 .. :try_end_57d} :catch_99c

    if-nez v2, :cond_582

    :try_start_57f
    const-string v2, "线路列表数组规则"
    :try_end_581
    .catch Ljava/lang/Exception; {:try_start_57f .. :try_end_581} :catch_95

    goto :goto_584

    :cond_582
    :try_start_582
    const-string v2, "tab_arr_rule"

    :goto_584
    const-string v4, "线路标题"

    .line 111
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_58e
    .catch Ljava/lang/Exception; {:try_start_582 .. :try_end_58e} :catch_99c

    if-nez v4, :cond_593

    :try_start_590
    const-string v4, "线路标题"
    :try_end_592
    .catch Ljava/lang/Exception; {:try_start_590 .. :try_end_592} :catch_95

    goto :goto_595

    :cond_593
    :try_start_593
    const-string v4, "tab_title"

    .line 112
    :goto_595
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_663

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_663

    .line 113
    invoke-direct {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 114
    aget-object v6, v2, v5

    move-object/from16 v5, v28

    invoke-static {v6, v5}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v6

    const/4 v7, 0x1

    .line 115
    :goto_5bb
    array-length v11, v2
    :try_end_5bc
    .catch Ljava/lang/Exception; {:try_start_593 .. :try_end_5bc} :catch_99c

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ge v7, v11, :cond_5c9

    .line 116
    :try_start_5c0
    aget-object v11, v2, v7

    invoke-static {v11, v6}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v6
    :try_end_5c6
    .catch Ljava/lang/Exception; {:try_start_5c0 .. :try_end_5c6} :catch_95

    add-int/lit8 v7, v7, 0x1

    goto :goto_5bb

    .line 117
    :cond_5c9
    :try_start_5c9
    array-length v7, v2

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    aget-object v2, v2, v7

    invoke-static {v6, v2}, Lcom/github/catvod/spider/XYQHiker;->selectElements(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v2

    const/4 v6, 0x0

    .line 118
    :goto_5d3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_5d7
    .catch Ljava/lang/Exception; {:try_start_5c9 .. :try_end_5d7} :catch_99c

    if-ge v6, v7, :cond_65e

    .line 119
    :try_start_5d9
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 120
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\[不包含:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const-string v14, "\\[替换:"

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v12

    .line 121
    invoke-static {v7, v11}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    .line 122
    :goto_5f9
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v12
    :try_end_5fd
    .catch Ljava/lang/Exception; {:try_start_5d9 .. :try_end_5fd} :catch_64d

    if-ge v11, v12, :cond_62f

    move-object/from16 v12, v26

    .line 123
    :try_start_601
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_622

    .line 124
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_613
    .catch Ljava/lang/Exception; {:try_start_601 .. :try_end_613} :catch_62b

    move-object/from16 v15, v17

    :try_start_615
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_624

    :cond_622
    move-object/from16 v15, v17

    :goto_624
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v26, v12

    move-object/from16 v17, v15

    goto :goto_5f9

    :catch_62b
    move-exception v0

    move-object/from16 v15, v17

    goto :goto_652

    :cond_62f
    move-object/from16 v15, v17

    move-object/from16 v12, v26

    .line 125
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "[替换"

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_647

    .line 126
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/github/catvod/spider/XYQHiker;->repl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 127
    :cond_647
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_64a
    .catch Ljava/lang/Exception; {:try_start_615 .. :try_end_64a} :catch_64b

    goto :goto_656

    :catch_64b
    move-exception v0

    goto :goto_652

    :catch_64d
    move-exception v0

    move-object/from16 v15, v17

    move-object/from16 v12, v26

    :goto_652
    move-object v7, v0

    .line 128
    :try_start_653
    invoke-static {v7}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :goto_656
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v26, v12

    move-object/from16 v17, v15

    goto/16 :goto_5d3

    :cond_65e
    move-object/from16 v15, v17

    move-object/from16 v12, v26

    goto :goto_687

    :cond_663
    move-object/from16 v15, v17

    move-object/from16 v12, v26

    move-object/from16 v5, v28

    const/4 v2, 0x0

    .line 129
    :goto_66a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_687

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "线路列表"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66a

    .line 131
    :cond_687
    :goto_687
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "[不包含:"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d4

    .line 132
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\[不包含:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    const-string v4, "\\]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const-string v4, ","

    .line 133
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 134
    :goto_6b0
    array-length v6, v2

    if-ge v4, v6, :cond_6d4

    const/4 v6, 0x0

    .line 135
    :goto_6b4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6d1

    .line 136
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aget-object v11, v2, v4

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6ce

    .line 137
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 138
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6ce
    add-int/lit8 v6, v6, 0x1

    goto :goto_6b4

    :cond_6d1
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b0

    :cond_6d4
    const-string v2, "封面详情"

    .line 139
    invoke-direct {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6e3

    const-string v2, "封面详情"

    goto :goto_6e5

    :cond_6e3
    const-string v2, "proj_cover"

    :goto_6e5
    const-string v4, "类型详情"

    .line 140
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6f4

    const-string v4, "类型详情"

    goto :goto_6f6

    :cond_6f4
    const-string v4, "proj_cate"

    :goto_6f6
    const-string v6, "年代详情"

    .line 141
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_705

    const-string v6, "年代详情"

    goto :goto_707

    :cond_705
    const-string v6, "proj_year"

    :goto_707
    const-string v7, "地区详情"

    .line 142
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_716

    const-string v7, "地区详情"

    goto :goto_718

    :cond_716
    const-string v7, "proj_area"

    :goto_718
    const-string v11, "演员详情"

    .line 143
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_727

    const-string v11, "演员详情"

    goto :goto_729

    :cond_727
    const-string v11, "proj_actor"

    :goto_729
    const-string v14, "简介详情"

    .line 144
    invoke-direct {v1, v14}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_738

    const-string v14, "简介详情"

    goto :goto_73a

    :cond_738
    const-string v14, "proj_plot"

    :goto_73a
    move-object/from16 v29, v8

    const-string v8, "详情是否Jsoup写法"

    .line 145
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_74b

    const-string v8, "详情是否Jsoup写法"

    goto :goto_74d

    :cond_74b
    const-string v8, "proj_is_jsoup"

    :goto_74d
    move-object/from16 v26, v12

    .line 146
    invoke-direct {v1, v8, v9}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_766

    invoke-direct {v1, v8, v10}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_764

    goto :goto_766

    :cond_764
    const/4 v8, 0x0

    goto :goto_767

    :cond_766
    :goto_766
    const/4 v8, 0x1

    .line 147
    :goto_767
    invoke-direct {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7f4

    move-object/from16 v9, v25

    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_777
    .catch Ljava/lang/Exception; {:try_start_653 .. :try_end_777} :catch_99a

    if-nez v10, :cond_7f1

    .line 148
    :try_start_779
    invoke-direct {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_77d
    .catch Ljava/lang/Exception; {:try_start_779 .. :try_end_77d} :catch_7e8

    if-eqz v8, :cond_78b

    .line 149
    :try_start_77f
    invoke-static {v5, v2}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_783
    .catch Ljava/lang/Exception; {:try_start_77f .. :try_end_783} :catch_786

    move-object/from16 v13, v19

    goto :goto_7a9

    :catch_786
    move-exception v0

    move-object v2, v9

    move-object/from16 v13, v19

    goto :goto_7ec

    .line 150
    :cond_78b
    :try_start_78b
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aget-object v10, v10, v12

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x1

    aget-object v2, v2, v13
    :try_end_799
    .catch Ljava/lang/Exception; {:try_start_78b .. :try_end_799} :catch_7e8

    move-object/from16 v13, v19

    :try_start_79b
    invoke-static {v13, v10, v2}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->lB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_7a9
    .catch Ljava/lang/Exception; {:try_start_79b .. :try_end_7a9} :catch_7e6

    :goto_7a9
    :try_start_7a9
    const-string v9, "url("

    .line 151
    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7dd

    const-string v9, "\\&quot;"

    .line 152
    invoke-virtual {v2, v9, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "url\\("

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 153
    array-length v10, v9

    const/4 v12, 0x1

    if-le v10, v12, :cond_7dd

    aget-object v10, v9, v12

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7dd

    const/4 v10, 0x1

    .line 154
    aget-object v9, v9, v10

    const-string v10, "\\)"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const-string v10, "[\'\"]"

    invoke-virtual {v9, v10, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7dd
    move-object/from16 v9, v18

    .line 155
    invoke-static {v9, v2}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_7e3
    .catch Ljava/lang/Exception; {:try_start_7a9 .. :try_end_7e3} :catch_7e4

    goto :goto_7f9

    :catch_7e4
    move-exception v0

    goto :goto_7ec

    :catch_7e6
    move-exception v0

    goto :goto_7eb

    :catch_7e8
    move-exception v0

    move-object/from16 v13, v19

    :goto_7eb
    move-object v2, v9

    :goto_7ec
    move-object v9, v0

    .line 156
    :try_start_7ed
    invoke-static {v9}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto :goto_7f9

    :cond_7f1
    move-object/from16 v13, v19

    goto :goto_7f8

    :cond_7f4
    move-object/from16 v13, v19

    move-object/from16 v9, v25

    :goto_7f8
    move-object v2, v9

    .line 157
    :goto_7f9
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9
    :try_end_801
    .catch Ljava/lang/Exception; {:try_start_7ed .. :try_end_801} :catch_99a

    if-nez v9, :cond_830

    .line 158
    :try_start_803
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v8, :cond_80e

    .line 159
    invoke-static {v5, v4}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_831

    .line 160
    :cond_80e
    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    aget-object v4, v4, v12

    invoke-static {v13, v9, v4}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->lB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_82a
    .catch Ljava/lang/Exception; {:try_start_803 .. :try_end_82a} :catch_82b

    goto :goto_831

    :catch_82b
    move-exception v0

    move-object v4, v0

    .line 161
    :try_start_82d
    invoke-static {v4}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_830
    move-object v4, v15

    .line 162
    :goto_831
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9
    :try_end_839
    .catch Ljava/lang/Exception; {:try_start_82d .. :try_end_839} :catch_99a

    if-nez v9, :cond_868

    .line 163
    :try_start_83b
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v8, :cond_846

    .line 164
    invoke-static {v5, v6}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_869

    .line 165
    :cond_846
    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    aget-object v6, v6, v12

    invoke-static {v13, v9, v6}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->lB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_862
    .catch Ljava/lang/Exception; {:try_start_83b .. :try_end_862} :catch_863

    goto :goto_869

    :catch_863
    move-exception v0

    move-object v6, v0

    .line 166
    :try_start_865
    invoke-static {v6}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_868
    move-object v6, v15

    .line 167
    :goto_869
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9
    :try_end_871
    .catch Ljava/lang/Exception; {:try_start_865 .. :try_end_871} :catch_99a

    if-nez v9, :cond_8a0

    .line 168
    :try_start_873
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_87e

    .line 169
    invoke-static {v5, v7}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_8a1

    .line 170
    :cond_87e
    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    aget-object v7, v7, v12

    invoke-static {v13, v9, v7}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->lB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_89a
    .catch Ljava/lang/Exception; {:try_start_873 .. :try_end_89a} :catch_89b

    goto :goto_8a1

    :catch_89b
    move-exception v0

    move-object v7, v0

    .line 171
    :try_start_89d
    invoke-static {v7}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_8a0
    move-object v7, v15

    .line 172
    :goto_8a1
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9
    :try_end_8a9
    .catch Ljava/lang/Exception; {:try_start_89d .. :try_end_8a9} :catch_99a

    if-nez v9, :cond_8ee

    .line 173
    :try_start_8ab
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_8b6

    .line 174
    invoke-static {v5, v9}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_8ef

    .line 175
    :cond_8b6
    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    aget-object v9, v9, v12

    invoke-static {v13, v10, v9}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "\\&nbsp;"

    const-string v11, " "

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\&[a-zA-Z]{1,10};"

    invoke-virtual {v9, v10, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "<[^>]*>"

    invoke-virtual {v9, v10, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\s{2,}"

    invoke-virtual {v9, v10, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_8e8
    .catch Ljava/lang/Exception; {:try_start_8ab .. :try_end_8e8} :catch_8e9

    goto :goto_8ef

    :catch_8e9
    move-exception v0

    move-object v9, v0

    .line 176
    :try_start_8eb
    invoke-static {v9}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_8ee
    move-object v9, v15

    .line 177
    :goto_8ef
    invoke-direct {v1, v14}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10
    :try_end_8f7
    .catch Ljava/lang/Exception; {:try_start_8eb .. :try_end_8f7} :catch_99a

    if-nez v10, :cond_927

    .line 178
    :try_start_8f9
    invoke-direct {v1, v14}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v8, :cond_904

    .line 179
    invoke-static {v5, v10}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_920

    .line 180
    :cond_904
    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v10, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    aget-object v3, v3, v10

    invoke-static {v13, v5, v3}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/github/catvod/spider/XYQHiker;->lB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_920
    .catch Ljava/lang/Exception; {:try_start_8f9 .. :try_end_920} :catch_922

    :goto_920
    move-object v14, v2

    goto :goto_929

    :catch_922
    move-exception v0

    move-object v3, v0

    .line 181
    :try_start_924
    invoke-static {v3}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_927
    move-object v14, v2

    move-object v3, v15

    .line 182
    :goto_929
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v5, p1

    const/4 v8, 0x0

    .line 183
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v8, v24

    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "vod_name"

    move-object/from16 v8, v23

    .line 184
    invoke-virtual {v2, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "vod_pic"

    .line 185
    invoke-virtual {v2, v5, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "type_name"

    .line 186
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "vod_year"

    .line 187
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "vod_area"

    .line 188
    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "vod_remarks"

    .line 189
    invoke-virtual {v2, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "vod_actor"

    .line 190
    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "vod_director"

    .line 191
    invoke-virtual {v2, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "vod_content"

    .line 192
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "$$$"

    move-object/from16 v4, v26

    .line 193
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$$$"

    move-object/from16 v5, v29

    .line 194
    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vod_play_from"

    .line 195
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "vod_play_url"

    .line 196
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 198
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 199
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v2, v22

    .line 200
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_999
    .catch Ljava/lang/Exception; {:try_start_924 .. :try_end_999} :catch_99a

    return-object v2

    :catch_99a
    move-exception v0

    goto :goto_9a2

    :catch_99c
    move-exception v0

    move-object/from16 v15, v17

    goto :goto_9a2

    :catch_9a0
    move-exception v0

    move-object v15, v13

    :goto_9a2
    move-object v2, v0

    .line 202
    :goto_9a3
    invoke-static {v2}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    return-object v15
.end method

.method protected f(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "搜索请求头参数"

    .line 2
    invoke-direct {v0, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_16

    :cond_14
    const-string v2, "SHeaders"

    :goto_16
    const-string v3, ""

    .line 3
    invoke-direct {v0, v2, v3}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "$"

    .line 4
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "Cookie"

    const-string v6, "手机"

    const-string v7, "MOBILE_UA"

    const-string v8, "电脑"

    const-string v9, "PC_UA"

    const-string v10, "user-agent"

    const-string v11, ";"

    if-eqz v4, :cond_171

    const-string v4, "#"

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 6
    :goto_3e
    array-length v15, v4

    if-ge v14, v15, :cond_103

    .line 7
    aget-object v15, v4, v14

    const-string v12, "\\$"

    invoke-virtual {v15, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 8
    aget-object v15, v12, v13

    const/16 v16, 0x1

    .line 9
    aget-object v12, v12, v16

    .line 10
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6b

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5c

    goto :goto_6b

    .line 11
    :cond_5c
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_68

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6d

    .line 12
    :cond_68
    sget-object v12, Lcom/github/catvod/spider/XYQHiker;->i:Ljava/lang/String;

    goto :goto_6d

    .line 13
    :cond_6b
    :goto_6b
    sget-object v12, Lcom/github/catvod/spider/XYQHiker;->X:Ljava/lang/String;

    .line 14
    :cond_6d
    :goto_6d
    iget-object v13, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7d

    iget-object v13, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d2

    :cond_7d
    const-string v13, "cookie"

    .line 15
    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d2

    .line 16
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ab

    :cond_a9
    move-object/from16 v17, v3

    :goto_ab
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ca

    :cond_c8
    move-object/from16 v3, v17

    :goto_ca
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_d4

    :cond_d2
    move-object/from16 v17, v3

    .line 17
    :goto_d4
    invoke-virtual {v15, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 18
    sget-object v3, Lcom/github/catvod/spider/XYQHiker;->jl:Ljava/util/Map;

    invoke-interface {v3, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_df
    const-string v3, "referer"

    .line 19
    invoke-virtual {v15, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v13, "WebView"

    if-nez v3, :cond_f3

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f3

    .line 20
    invoke-virtual {v1, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fc

    .line 21
    :cond_f3
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_fc

    .line 22
    invoke-virtual {v1, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fc
    :goto_fc
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    const/4 v13, 0x0

    goto/16 :goto_3e

    .line 23
    :cond_103
    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_113

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_200

    .line 24
    :cond_113
    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_124

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_200

    :cond_124
    const-string v3, "Cookie$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_200

    const-string v3, "cookie$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_200

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_144

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    goto :goto_146

    :cond_144
    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    :goto_146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_163

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_165

    :cond_163
    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    :goto_165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_200

    .line 26
    :cond_171
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17c

    .line 27
    invoke-virtual/range {p0 .. p1}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1

    .line 28
    :cond_17c
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_198

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_189

    goto :goto_198

    .line 29
    :cond_189
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_195

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19a

    .line 30
    :cond_195
    sget-object v2, Lcom/github/catvod/spider/XYQHiker;->i:Ljava/lang/String;

    goto :goto_19a

    .line 31
    :cond_198
    :goto_198
    sget-object v2, Lcom/github/catvod/spider/XYQHiker;->X:Ljava/lang/String;

    .line 32
    :cond_19a
    :goto_19a
    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1aa

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f6

    .line 33
    :cond_1aa
    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1bb

    iget-object v3, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1f6

    .line 34
    :cond_1bb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1cb

    iget-object v4, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    goto :goto_1cd

    :cond_1cb
    iget-object v4, v0, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    :goto_1cd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1ea

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1ec

    :cond_1ea
    iget-object v4, v0, Lcom/github/catvod/spider/XYQHiker;->o:Ljava/lang/String;

    :goto_1ec
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f6
    const-string v3, "User-Agent"

    .line 35
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v3, Lcom/github/catvod/spider/XYQHiker;->jl:Ljava/util/Map;

    invoke-interface {v3, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_200
    :goto_200
    return-object v1
.end method

.method public homeContent(Z)Ljava/lang/String;
    .registers 31

    move-object/from16 v15, p0

    const-string v0, "筛选数据"

    const-string v1, "筛选排序替换词"

    const-string v2, "筛选排序名称"

    const-string v3, "筛选语言替换词"

    const-string v4, "筛选语言名称"

    const-string v5, "筛选年份替换词"

    const-string v6, "筛选年份名称"

    const-string v7, "筛选地区替换词"

    const-string v8, "筛选地区名称"

    const-string v9, "筛选类型替换词"

    const-string v10, "筛选类型名称"

    const-string v11, "筛选子分类替换词"

    const-string v12, "筛选子分类名称"

    const-string v13, "分类链接"

    const-string v14, "分类名称替换词"

    move-object/from16 v16, v0

    const-string v0, "分类名称"

    move-object/from16 v17, v1

    const-string v1, "&"

    move-object/from16 v18, v1

    const-string v1, ""

    .line 1
    :try_start_2c
    invoke-virtual/range {p0 .. p0}, Lcom/github/catvod/spider/XYQHiker;->A()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_238

    move-object/from16 v19, v1

    .line 2
    :try_start_31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v20, v1

    .line 3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 4
    invoke-direct {v15, v0}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_48

    goto :goto_4a

    :cond_48
    const-string v0, "class_name"

    .line 5
    :goto_4a
    invoke-direct {v15, v14}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_55

    goto :goto_57

    :cond_55
    const-string v14, "class_value"

    .line 6
    :goto_57
    invoke-direct {v15, v13}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_62

    goto :goto_64

    :cond_62
    const-string v13, "class_url"

    .line 7
    :goto_64
    invoke-direct {v15, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_6f

    goto :goto_71

    :cond_6f
    const-string v12, "fclass_name"

    .line 8
    :goto_71
    invoke-direct {v15, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_7c

    goto :goto_7e

    :cond_7c
    const-string v11, "fclass_value"

    .line 9
    :goto_7e
    invoke-direct {v15, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_89

    goto :goto_8b

    :cond_89
    const-string v10, "fcatelog_name"

    .line 10
    :goto_8b
    invoke-direct {v15, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_96

    goto :goto_98

    :cond_96
    const-string v9, "fcatelog_value"

    .line 11
    :goto_98
    invoke-direct {v15, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_a3

    goto :goto_a5

    :cond_a3
    const-string v8, "farea_name"

    .line 12
    :goto_a5
    invoke-direct {v15, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_b0

    goto :goto_b2

    :cond_b0
    const-string v7, "farea_value"

    .line 13
    :goto_b2
    invoke-direct {v15, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_bd

    goto :goto_bf

    :cond_bd
    const-string v6, "fyear_name"

    .line 14
    :goto_bf
    invoke-direct {v15, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_ca

    goto :goto_cc

    :cond_ca
    const-string v5, "fyear_value"

    .line 15
    :goto_cc
    invoke-direct {v15, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_d7

    goto :goto_d9

    :cond_d7
    const-string v4, "flang_name"

    .line 16
    :goto_d9
    invoke-direct {v15, v3}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_e4

    goto :goto_e6

    :cond_e4
    const-string v3, "flang_value"

    .line 17
    :goto_e6
    invoke-direct {v15, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_f1

    goto :goto_f3

    :cond_f1
    const-string v2, "fsort_name"

    :goto_f3
    move-object/from16 v21, v1

    move-object/from16 v1, v17

    .line 18
    invoke-direct {v15, v1}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_102

    goto :goto_104

    :cond_102
    const-string v1, "fsort_value"

    .line 19
    :goto_104
    invoke-direct {v15, v14}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 20
    invoke-direct {v15, v13}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 21
    invoke-direct {v15, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 22
    invoke-direct {v15, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 23
    invoke-direct {v15, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 24
    invoke-direct {v15, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 25
    invoke-direct {v15, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 26
    invoke-direct {v15, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 27
    invoke-static {}, Lcom/github/catvod/spider/XYQHiker;->X()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v6, v7}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v6, "*"

    .line 28
    invoke-direct {v15, v5, v6}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 29
    invoke-direct {v15, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 30
    invoke-direct {v15, v3}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v3, "时间&人气&评分"

    .line 31
    invoke-direct {v15, v2, v3}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v2, "time&hits&score"

    .line 32
    invoke-direct {v15, v1, v2}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_146} :catch_234

    move-object/from16 v1, v19

    .line 33
    :try_start_148
    invoke-direct {v15, v0, v1}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 35
    :goto_157
    array-length v5, v0

    if-ge v4, v5, :cond_181

    .line 36
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "type_id"

    .line 37
    aget-object v7, v3, v4

    move-object/from16 v18, v3

    const-string v3, "＆＆"

    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type_name"

    .line 38
    aget-object v6, v0, v4

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v3, v21

    .line 39
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v21, v3

    move-object/from16 v3, v18

    goto :goto_157

    :cond_181
    move-object/from16 v3, v21

    const-string v0, "class"

    move-object/from16 v2, v20

    .line 40
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_18a} :catch_238

    move-object/from16 v0, v16

    .line 41
    :try_start_18c
    invoke-direct {v15, v0}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_197

    goto :goto_199

    :cond_197
    const-string v0, "filterdata"

    .line 42
    :goto_199
    invoke-direct {v15, v0, v1}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    const-string v4, "clan://"

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1f1

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f1

    const-string v4, "./"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ba

    goto :goto_1f1

    :cond_1ba
    const-string v4, "EXT"

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1c0} :catch_227

    if-eqz v3, :cond_1e5

    move-object/from16 v16, v1

    move-object v7, v2

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v13

    move-object v4, v12

    move-object v5, v11

    move-object v6, v10

    move-object v14, v7

    move-object v7, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move-object/from16 v28, v14

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    .line 46
    :try_start_1de
    invoke-direct/range {v1 .. v15}, Lcom/github/catvod/spider/XYQHiker;->jl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_1e2} :catch_1e3

    goto :goto_212

    :catch_1e3
    move-exception v0

    goto :goto_224

    :cond_1e5
    move-object/from16 v16, v1

    move-object/from16 v28, v2

    move-object v1, v15

    .line 47
    :try_start_1ea
    iget-object v2, v1, Lcom/github/catvod/spider/XYQHiker;->f:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_212

    :cond_1f1
    :goto_1f1
    move-object/from16 v16, v1

    move-object/from16 v28, v2

    .line 48
    invoke-static {v3, v5}, Lcom/github/catvod/spider/merge1/aQ/G;->nN(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "{"

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_212

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_212

    .line 50
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_212
    :goto_212
    if-eqz p1, :cond_220

    if-eqz v5, :cond_220

    const-string v0, "filters"
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_1ea .. :try_end_218} :catch_223

    move-object/from16 v2, v28

    .line 51
    :try_start_21a
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_21a .. :try_end_21d} :catch_21e

    goto :goto_22d

    :catch_21e
    move-exception v0

    goto :goto_22a

    :cond_220
    move-object/from16 v2, v28

    goto :goto_22d

    :catch_223
    move-exception v0

    :goto_224
    move-object/from16 v2, v28

    goto :goto_22a

    :catch_227
    move-exception v0

    move-object/from16 v16, v1

    .line 52
    :goto_22a
    :try_start_22a
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    .line 53
    :goto_22d
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_231
    .catch Ljava/lang/Exception; {:try_start_22a .. :try_end_231} :catch_232

    return-object v0

    :catch_232
    move-exception v0

    goto :goto_23b

    :catch_234
    move-exception v0

    move-object/from16 v16, v19

    goto :goto_23b

    :catch_238
    move-exception v0

    move-object/from16 v16, v1

    .line 54
    :goto_23b
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    return-object v16
.end method

.method public homeVideoContent()Ljava/lang/String;
    .registers 39

    move-object/from16 v1, p0

    const-string v0, "首页片单副标题"

    const-string v2, "首页片单图片"

    const-string v3, "首页片单链接"

    const-string v4, "首页片单标题"

    const-string v5, "首页片单是否Jsoup写法"

    const-string v6, "首页片单列表数组规则"

    const-string v7, "首页列表数组规则"

    const-string v8, "首页推荐链接"

    const-string v9, "图片是否需要代理"

    const-string v10, "是否开启获取首页数据"

    const-string v11, "md5("

    const-string v12, ""

    const-string v13, "&&"

    .line 1
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/github/catvod/spider/XYQHiker;->A()V

    .line 2
    invoke-direct {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2a

    goto :goto_2c

    :cond_2a
    const-string v10, "homeContent"

    .line 3
    :goto_2c
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_37

    goto :goto_39

    :cond_37
    const-string v9, "PicNeedProxy"

    .line 4
    :goto_39
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_44

    goto :goto_46

    :cond_44
    const-string v8, "rcmed_url"

    .line 5
    :goto_46
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_51

    goto :goto_53

    :cond_51
    const-string v7, "home_arr_rule"

    .line 6
    :goto_53
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5e

    goto :goto_60

    :cond_5e
    const-string v6, "hmepi_arr_rule"

    .line 7
    :goto_60
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6b

    goto :goto_6d

    :cond_6b
    const-string v5, "home_is_jsoup"

    .line 8
    :goto_6d
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_78

    goto :goto_7a

    :cond_78
    const-string v4, "home_title"

    .line 9
    :goto_7a
    invoke-direct {v1, v3}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_85

    goto :goto_87

    :cond_85
    const-string v3, "home_url"

    .line 10
    :goto_87
    invoke-direct {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_92

    goto :goto_94

    :cond_92
    const-string v2, "home_pic"

    .line 11
    :goto_94
    invoke-direct {v1, v0}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_9f

    goto :goto_a1

    :cond_9f
    const-string v0, "home_subtitle"

    :goto_a1
    move-object v14, v0

    const-string v0, "首页片单链接加前缀"

    .line 12
    invoke-direct {v1, v0}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b1

    const-string v0, "首页片单链接加前缀"

    goto :goto_b3

    :cond_b1
    const-string v0, "home_prefix"

    :goto_b3
    const-string v15, "首页片单链接加后缀"

    .line 13
    invoke-direct {v1, v15}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_c2

    const-string v15, "首页片单链接加后缀"

    goto :goto_c4

    :cond_c2
    const-string v15, "home_suffix"

    :goto_c4
    move-object/from16 v16, v3

    const-string v3, "分类名称替换词"

    .line 14
    invoke-direct {v1, v3}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d5

    const-string v3, "分类名称替换词"

    goto :goto_d7

    :cond_d5
    const-string v3, "class_value"

    :goto_d7
    move-object/from16 v17, v14

    .line 15
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v18, v2

    .line 16
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 17
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_ed} :catch_78e

    move-object/from16 v20, v4

    const-string v4, "list"

    move-object/from16 v21, v7

    const-string v7, "&"

    move-object/from16 v22, v15

    const-string v15, "是"

    move-object/from16 v23, v13

    const-string v13, "1"

    move-object/from16 v24, v11

    if-nez v19, :cond_112

    :try_start_101
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_10c

    goto :goto_112

    :cond_10c
    move-object/from16 v28, v7

    move-object/from16 v25, v12

    goto/16 :goto_17f

    .line 18
    :cond_112
    :goto_112
    invoke-direct {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_126

    invoke-direct {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10c

    .line 19
    :cond_126
    invoke-direct {v1, v3, v12}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 20
    array-length v11, v3
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_12f} :catch_78e

    move-object/from16 v25, v12

    const/4 v12, 0x0

    :goto_132
    if-ge v12, v11, :cond_17a

    move/from16 v26, v11

    :try_start_136
    aget-object v11, v3, v12

    move-object/from16 v27, v3

    const-string v3, "＆＆"

    .line 21
    invoke-virtual {v11, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v28, v7

    const/4 v7, 0x0

    invoke-direct {v1, v3, v13, v7, v11}, Lcom/github/catvod/spider/XYQHiker;->Eg(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_168

    .line 22
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_168

    const/4 v7, 0x0

    .line 23
    :goto_155
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_168

    const/4 v11, 0x5

    if-ge v7, v11, :cond_168

    .line 24
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_155

    .line 25
    :cond_168
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v7, 0x14

    if-lt v3, v7, :cond_171

    goto :goto_17c

    :cond_171
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v26

    move-object/from16 v3, v27

    move-object/from16 v7, v28

    goto :goto_132

    :cond_17a
    move-object/from16 v28, v7

    .line 26
    :goto_17c
    invoke-virtual {v2, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :goto_17f
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_199

    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_194

    goto :goto_199

    :cond_194
    move-object v1, v2

    move-object/from16 v11, v25

    goto/16 :goto_783

    .line 28
    :cond_199
    :goto_199
    invoke-direct {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ad

    invoke-direct {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_194

    :cond_1ad
    const-string v3, "网页编码格式"

    .line 29
    invoke-direct {v1, v3}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1bc

    const-string v3, "网页编码格式"

    goto :goto_1be

    :cond_1bc
    const-string v3, "Coding_format"

    :goto_1be
    const-string v7, "UTF-8"

    .line 30
    invoke-direct {v1, v3, v7}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    const-string v3, "分类片单是否Jsoup写法"

    .line 31
    invoke-direct {v1, v3}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d5

    const-string v3, "分类片单是否Jsoup写法"

    goto :goto_1d7

    :cond_1d5
    const-string v3, "cat_is_jsoup"

    :goto_1d7
    const-string v7, "分类片单标题"

    .line 32
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1e6

    const-string v7, "分类片单标题"

    goto :goto_1e8

    :cond_1e6
    const-string v7, "cat_title"

    :goto_1e8
    const-string v10, "分类片单链接"

    .line 33
    invoke-direct {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1f7

    const-string v10, "分类片单链接"

    goto :goto_1f9

    :cond_1f7
    const-string v10, "cat_url"

    :goto_1f9
    const-string v11, "分类片单图片"

    .line 34
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_208

    const-string v11, "分类片单图片"

    goto :goto_20a

    :cond_208
    const-string v11, "cat_pic"

    :goto_20a
    const-string v12, "分类片单副标题"

    .line 35
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_219

    const-string v12, "分类片单副标题"

    goto :goto_21b

    :cond_219
    const-string v12, "cat_subtitle"

    :goto_21b
    move-object/from16 v26, v2

    const-string v2, "分类片单链接加前缀"

    .line 36
    invoke-direct {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22c

    const-string v2, "分类片单链接加前缀"

    goto :goto_22e

    :cond_22c
    const-string v2, "cat_prefix"

    :goto_22e
    move-object/from16 v27, v4

    const-string v4, "分类片单链接加后缀"

    .line 37
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23f

    const-string v4, "分类片单链接加后缀"

    goto :goto_241

    :cond_23f
    const-string v4, "cat_suffix"

    :goto_241
    move-object/from16 v29, v14

    .line 38
    invoke-direct {v1, v5, v13}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v30, v10

    if-nez v14, :cond_25c

    invoke-direct {v1, v5, v15}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25a

    goto :goto_25c

    :cond_25a
    const/4 v5, 0x0

    goto :goto_25d

    :cond_25c
    :goto_25c
    const/4 v5, 0x1

    .line 39
    :goto_25d
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_274

    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_272

    goto :goto_274

    :cond_272
    const/4 v9, 0x0

    goto :goto_275

    :cond_274
    :goto_274
    const/4 v9, 0x1

    .line 40
    :goto_275
    invoke-direct {v1, v3, v13}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_28c

    invoke-direct {v1, v3, v15}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28a

    goto :goto_28c

    :cond_28a
    const/4 v3, 0x0

    goto :goto_28d

    :cond_28c
    :goto_28c
    const/4 v3, 0x1

    .line 41
    :goto_28d
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v31, 0x3e8

    div-long v13, v13, v31

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "时间戳"

    .line 44
    invoke-virtual {v8, v15, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "时间标"

    .line 45
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v13, v24

    .line 46
    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_2b7
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_2b7} :catch_78a

    const-string v15, ")"

    if-eqz v14, :cond_2e2

    .line 47
    :try_start_2bb
    invoke-static {v8, v13, v15}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    const/4 v10, 0x0

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 48
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lcom/github/catvod/spider/merge1/aQ/AA;->Ku:Ljava/nio/charset/Charset;

    invoke-static {v14, v13}, Lcom/github/catvod/spider/merge1/aQ/AA;->W(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v10, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    :cond_2e2
    const-string v10, ";post"

    .line 49
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3ab

    const-string v10, "\\?"

    .line 50
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    aget-object v10, v10, v13

    const-string v13, "？？"

    const-string v14, "?"

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v13, "\\?"

    .line 51
    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v13, v13, v14

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const-string v14, "？？"

    move-object/from16 v31, v12

    const-string v12, "?"

    invoke-virtual {v13, v14, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 52
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_399

    const-string v13, "{"

    .line 53
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_350

    const-string v13, "}"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_350

    .line 54
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v1, v10, v12, v13, v14}, Lcom/github/catvod/spider/XYQHiker;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    move/from16 v28, v9

    move-object/from16 v35, v11

    move-object/from16 v34, v15

    goto/16 :goto_3e6

    .line 56
    :cond_350
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v14, v28

    .line 57
    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 58
    array-length v14, v12

    move/from16 v28, v9

    const/4 v9, 0x0

    :goto_35f
    if-ge v9, v14, :cond_38a

    move/from16 v32, v14

    aget-object v14, v12, v9

    move-object/from16 v33, v12

    const-string v12, "="

    .line 59
    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v35, v11

    move-object/from16 v34, v15

    const/4 v15, 0x0

    .line 60
    invoke-virtual {v14, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v32

    move-object/from16 v12, v33

    move-object/from16 v15, v34

    move-object/from16 v11, v35

    goto :goto_35f

    :cond_38a
    move-object/from16 v35, v11

    move-object/from16 v34, v15

    .line 61
    iget-object v9, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v1, v10, v13, v9, v11}, Lcom/github/catvod/spider/XYQHiker;->y(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3e6

    :cond_399
    move/from16 v28, v9

    move-object/from16 v35, v11

    move-object/from16 v34, v15

    const/4 v9, 0x0

    .line 62
    iget-object v11, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v1, v10, v9, v11, v12}, Lcom/github/catvod/spider/XYQHiker;->y(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3e6

    :cond_3ab
    move/from16 v28, v9

    move-object/from16 v35, v11

    move-object/from16 v31, v12

    move-object/from16 v34, v15

    .line 63
    iget-object v9, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v1, v8, v9, v10}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "检测中"

    .line 64
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3d1

    const-string v10, "btwaf"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3d1

    .line 65
    invoke-direct {v1, v8, v9}, Lcom/github/catvod/spider/XYQHiker;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_3d1
    move-object v10, v9

    const-string v9, "/huadong_"

    .line 66
    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3e2

    const-string v9, "/renji_"

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3e6

    .line 67
    :cond_3e2
    invoke-direct {v1, v8, v10}, Lcom/github/catvod/spider/XYQHiker;->Vp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 68
    :cond_3e6
    :goto_3e6
    invoke-static {v10}, Lcom/github/catvod/spider/XYQHiker;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-static {v9}, Lcom/github/catvod/spider/merge1/aQ/Db;->W(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object v9

    .line 70
    invoke-direct {v1, v0}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3fe

    if-ne v5, v3, :cond_3fe

    .line 72
    invoke-direct {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3fe
    move-object/from16 v2, v23

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_404
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_404} :catch_78a

    const-string v11, "PG_URL"

    if-eqz v10, :cond_410

    .line 74
    :try_start_408
    invoke-static {v9, v0}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_410
    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_423

    .line 76
    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "\'"
    :try_end_41c
    .catch Ljava/lang/Exception; {:try_start_408 .. :try_end_41c} :catch_78a

    move-object/from16 v11, v25

    :try_start_41e
    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_425

    :cond_423
    move-object/from16 v11, v25

    :goto_425
    move-object v10, v0

    move-object/from16 v15, v22

    .line 77
    invoke-direct {v1, v15}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_438

    if-ne v5, v3, :cond_438

    .line 79
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_438
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_442

    .line 81
    invoke-static {v9, v0}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_442
    move-object v4, v0

    move-object/from16 v0, v21

    .line 82
    invoke-direct {v1, v0}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    .line 83
    aget-object v13, v0, v12

    invoke-static {v13, v9}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v9

    const/4 v12, 0x1

    .line 84
    :goto_455
    array-length v13, v0

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    if-ge v12, v13, :cond_463

    .line 85
    aget-object v13, v0, v12

    invoke-static {v13, v9}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v9

    add-int/lit8 v12, v12, 0x1

    goto :goto_455

    .line 86
    :cond_463
    array-length v12, v0

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    aget-object v0, v0, v12

    invoke-static {v9, v0}, Lcom/github/catvod/spider/XYQHiker;->selectElements(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v9

    move-object v0, v11

    move-object v13, v0

    const/4 v12, 0x0

    .line 87
    :goto_46f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14
    :try_end_473
    .catch Ljava/lang/Exception; {:try_start_41e .. :try_end_473} :catch_788

    if-ge v12, v14, :cond_77a

    .line 88
    :try_start_475
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 89
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 90
    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_4ae

    .line 91
    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v0

    const/16 v19, 0x0

    .line 92
    aget-object v0, v15, v19

    invoke-static {v0, v14}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    move-object/from16 v22, v6

    const/4 v14, 0x1

    .line 93
    :goto_496
    array-length v6, v15

    add-int/lit8 v6, v6, -0x1

    if-ge v14, v6, :cond_4a4

    .line 94
    aget-object v6, v15, v14

    invoke-static {v6, v0}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    add-int/lit8 v14, v14, 0x1

    goto :goto_496

    .line 95
    :cond_4a4
    array-length v6, v15

    const/4 v14, 0x1

    sub-int/2addr v6, v14

    aget-object v6, v15, v6

    invoke-static {v0, v6}, Lcom/github/catvod/spider/XYQHiker;->selectElements(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v0

    goto :goto_4b6

    :cond_4ae
    move-object/from16 v21, v0

    move-object/from16 v22, v6

    .line 96
    invoke-static {v14, v15}, Lcom/github/catvod/spider/XYQHiker;->selectElements(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v0

    :goto_4b6
    move-object v6, v0

    move-object v14, v13

    const/4 v13, 0x0

    .line 97
    :goto_4b9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_741

    .line 98
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/github/catvod/spider/merge1/aQ/li;

    move-object/from16 v23, v6

    move-object/from16 v6, v20

    .line 99
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_4da

    if-ne v5, v3, :cond_4da

    .line 101
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4da
    if-eqz v5, :cond_4ea

    .line 102
    invoke-static {v15, v0}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v9

    move-object/from16 v7, v18

    move-object v6, v0

    goto :goto_514

    :cond_4ea
    move-object/from16 v20, v6

    .line 103
    invoke-virtual {v15}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v32, v7

    move-object/from16 v33, v9

    const/4 v7, 0x0

    aget-object v9, v25, v7

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v19, 0x1

    aget-object v0, v0, v19

    invoke-static {v6, v9, v0}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/XYQHiker;->lB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object/from16 v7, v18

    .line 104
    :goto_514
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_527

    if-ne v5, v3, :cond_527

    move-object/from16 v9, v35

    .line 106
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_529

    :cond_527
    move-object/from16 v9, v35

    .line 107
    :goto_529
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v18
    :try_end_52d
    .catchall {:try_start_475 .. :try_end_52d} :catchall_773

    if-nez v18, :cond_5e4

    move-object/from16 v18, v7

    :try_start_531
    const-string v7, "http"

    .line 108
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_542

    move-object v7, v0

    move-object/from16 v35, v9

    move-object/from16 v36, v14

    move-object/from16 v14, v34

    goto/16 :goto_5bb

    :cond_542
    if-eqz v5, :cond_552

    .line 109
    invoke-static {v15, v0}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v35, v9

    move-object/from16 v36, v14

    goto :goto_574

    .line 110
    :cond_552
    invoke-virtual {v15}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25
    :try_end_55a
    .catch Ljava/lang/Exception; {:try_start_531 .. :try_end_55a} :catch_5d7
    .catchall {:try_start_531 .. :try_end_55a} :catchall_773

    move-object/from16 v35, v9

    move-object/from16 v36, v14

    const/4 v9, 0x0

    :try_start_55f
    aget-object v14, v25, v9

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v19, 0x1

    aget-object v0, v0, v19

    invoke-static {v7, v14, v0}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_573
    .catch Ljava/lang/Exception; {:try_start_55f .. :try_end_573} :catch_5d5
    .catchall {:try_start_55f .. :try_end_573} :catchall_773

    move-object v7, v0

    :goto_574
    :try_start_574
    const-string v0, "url("

    .line 111
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_57a
    .catch Ljava/lang/Exception; {:try_start_574 .. :try_end_57a} :catch_5cf
    .catchall {:try_start_574 .. :try_end_57a} :catchall_773

    if-eqz v0, :cond_5b4

    :try_start_57c
    const-string v0, "\\&quot;"

    .line 112
    invoke-virtual {v7, v0, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "url\\("

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    array-length v9, v0

    const/4 v14, 0x1

    if-le v9, v14, :cond_5b4

    aget-object v9, v0, v14
    :try_end_58e
    .catch Ljava/lang/Exception; {:try_start_57c .. :try_end_58e} :catch_5ac
    .catchall {:try_start_57c .. :try_end_58e} :catchall_773

    move-object/from16 v14, v34

    :try_start_590
    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5b6

    const/4 v9, 0x1

    .line 114
    aget-object v0, v0, v9

    const-string v9, "\\)"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    aget-object v0, v0, v9

    const-string v9, "[\'\"]"

    invoke-virtual {v0, v9, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5a8
    .catch Ljava/lang/Exception; {:try_start_590 .. :try_end_5a8} :catch_5aa
    .catchall {:try_start_590 .. :try_end_5a8} :catchall_773

    move-object v7, v0

    goto :goto_5b6

    :catch_5aa
    move-exception v0

    goto :goto_5af

    :catch_5ac
    move-exception v0

    move-object/from16 v14, v34

    :goto_5af
    move-object/from16 v21, v7

    move/from16 v9, v28

    goto :goto_5e0

    :cond_5b4
    move-object/from16 v14, v34

    .line 115
    :cond_5b6
    :goto_5b6
    :try_start_5b6
    invoke-static {v8, v7}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5ba
    .catch Ljava/lang/Exception; {:try_start_5b6 .. :try_end_5ba} :catch_5cb
    .catchall {:try_start_5b6 .. :try_end_5ba} :catchall_773

    move-object v7, v0

    :goto_5bb
    if-eqz v28, :cond_5c8

    move/from16 v9, v28

    .line 116
    :try_start_5bf
    invoke-virtual {v1, v7, v8, v9}, Lcom/github/catvod/spider/XYQHiker;->cG(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7
    :try_end_5c3
    .catch Ljava/lang/Exception; {:try_start_5bf .. :try_end_5c3} :catch_5c4
    .catchall {:try_start_5bf .. :try_end_5c3} :catchall_773

    goto :goto_5f0

    :catch_5c4
    move-exception v0

    :goto_5c5
    move-object/from16 v21, v7

    goto :goto_5e0

    :cond_5c8
    move/from16 v9, v28

    goto :goto_5f0

    :catch_5cb
    move-exception v0

    move/from16 v9, v28

    goto :goto_5c5

    :catch_5cf
    move-exception v0

    move/from16 v9, v28

    move-object/from16 v14, v34

    goto :goto_5c5

    :catch_5d5
    move-exception v0

    goto :goto_5dc

    :catch_5d7
    move-exception v0

    move-object/from16 v35, v9

    move-object/from16 v36, v14

    :goto_5dc
    move/from16 v9, v28

    move-object/from16 v14, v34

    .line 117
    :goto_5e0
    :try_start_5e0
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto :goto_5ee

    :cond_5e4
    move-object/from16 v18, v7

    move-object/from16 v35, v9

    move-object/from16 v36, v14

    move/from16 v9, v28

    move-object/from16 v14, v34

    :goto_5ee
    move-object/from16 v7, v21

    :goto_5f0
    move-object/from16 v37, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v37

    .line 118
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_60b

    if-ne v5, v3, :cond_60b

    move-object/from16 v25, v8

    move-object/from16 v8, v31

    .line 120
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_60f

    :cond_60b
    move-object/from16 v25, v8

    move-object/from16 v8, v31

    .line 121
    :goto_60f
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v21
    :try_end_613
    .catchall {:try_start_5e0 .. :try_end_613} :catchall_773

    if-nez v21, :cond_65c

    if-eqz v5, :cond_626

    .line 122
    :try_start_617
    invoke-static {v15, v0}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_61b
    .catch Ljava/lang/Exception; {:try_start_617 .. :try_end_61b} :catch_622
    .catchall {:try_start_617 .. :try_end_61b} :catchall_773

    move-object/from16 v31, v8

    move/from16 v28, v9

    move-object/from16 v34, v14

    goto :goto_64d

    :catch_622
    move-exception v0

    move-object/from16 v31, v8

    goto :goto_654

    :cond_626
    move-object/from16 v31, v8

    .line 123
    :try_start_628
    invoke-virtual {v15}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21
    :try_end_630
    .catch Ljava/lang/Exception; {:try_start_628 .. :try_end_630} :catch_653
    .catchall {:try_start_628 .. :try_end_630} :catchall_773

    move/from16 v28, v9

    move-object/from16 v34, v14

    const/4 v9, 0x0

    :try_start_635
    aget-object v14, v21, v9

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v19, 0x1

    aget-object v0, v0, v19

    invoke-static {v8, v14, v0}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/XYQHiker;->lB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_64d
    .catch Ljava/lang/Exception; {:try_start_635 .. :try_end_64d} :catch_651
    .catchall {:try_start_635 .. :try_end_64d} :catchall_773

    :goto_64d
    move-object v14, v0

    move-object/from16 v8, v16

    goto :goto_666

    :catch_651
    move-exception v0

    goto :goto_658

    :catch_653
    move-exception v0

    :goto_654
    move/from16 v28, v9

    move-object/from16 v34, v14

    .line 124
    :goto_658
    :try_start_658
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto :goto_662

    :cond_65c
    move-object/from16 v31, v8

    move/from16 v28, v9

    move-object/from16 v34, v14

    :goto_662
    move-object/from16 v8, v16

    move-object/from16 v14, v36

    .line 125
    :goto_666
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_679

    if-ne v5, v3, :cond_679

    move-object/from16 v9, v30

    .line 127
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_678
    .catchall {:try_start_658 .. :try_end_678} :catchall_773

    goto :goto_67b

    :cond_679
    move-object/from16 v9, v30

    :goto_67b
    const-string v1, "\\[替换:"

    if-eqz v5, :cond_690

    .line 128
    :try_start_67f
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x0

    aget-object v1, v1, v16

    invoke-static {v15, v1}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move/from16 v30, v3

    move/from16 v19, v5

    goto :goto_6bd

    .line 129
    :cond_690
    invoke-virtual {v15}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move/from16 v30, v3

    move/from16 v19, v5

    const/4 v3, 0x0

    aget-object v5, v16, v3

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x1

    aget-object v1, v1, v16

    invoke-static {v15, v5, v1}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_6bd
    const-string v5, "[替换"

    .line 130
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6c9

    .line 131
    invoke-static {v1, v0}, Lcom/github/catvod/spider/XYQHiker;->repl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_6c9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\'input\'"

    .line 133
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6e9

    const-string v5, "\'input\'"

    .line 134
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_6e9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "vod_id"

    .line 136
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$$$"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$$$"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vod_name"

    .line 137
    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vod_pic"

    .line 138
    invoke-virtual {v1, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vod_remarks"

    .line 139
    invoke-virtual {v1, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_71e
    .catchall {:try_start_67f .. :try_end_71e} :catchall_773

    move-object/from16 v3, v29

    .line 140
    :try_start_720
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_723
    .catchall {:try_start_720 .. :try_end_723} :catchall_73f

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v29, v3

    move-object/from16 v21, v7

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    move/from16 v5, v19

    move-object/from16 v6, v23

    move-object/from16 v17, v25

    move/from16 v3, v30

    move-object/from16 v7, v32

    move-object/from16 v30, v9

    move-object/from16 v9, v33

    goto/16 :goto_4b9

    :catchall_73f
    move-exception v0

    goto :goto_776

    :cond_741
    move/from16 v19, v5

    move-object/from16 v32, v7

    move-object/from16 v33, v9

    move-object/from16 v36, v14

    move-object/from16 v25, v17

    move-object/from16 v9, v30

    move/from16 v30, v3

    move-object/from16 v17, v8

    move-object/from16 v8, v16

    move-object/from16 v3, v29

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v29, v3

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    move/from16 v5, v19

    move-object/from16 v0, v21

    move-object/from16 v6, v22

    move-object/from16 v17, v25

    move/from16 v3, v30

    move-object/from16 v7, v32

    move-object/from16 v13, v36

    move-object/from16 v30, v9

    move-object/from16 v9, v33

    goto/16 :goto_46f

    :catchall_773
    move-exception v0

    move-object/from16 v3, v29

    .line 141
    :goto_776
    :try_start_776
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_77c

    :cond_77a
    move-object/from16 v3, v29

    :goto_77c
    move-object/from16 v1, v26

    move-object/from16 v2, v27

    .line 142
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    :goto_783
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_787
    .catch Ljava/lang/Exception; {:try_start_776 .. :try_end_787} :catch_788

    return-object v0

    :catch_788
    move-exception v0

    goto :goto_790

    :catch_78a
    move-exception v0

    move-object/from16 v11, v25

    goto :goto_790

    :catch_78e
    move-exception v0

    move-object v11, v12

    .line 144
    :goto_790
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    return-object v11
.end method

.method protected i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/github/catvod/spider/XYQHiker$1;

    invoke-direct {v1, p0}, Lcom/github/catvod/spider/XYQHiker$1;-><init>(Lcom/github/catvod/spider/XYQHiker;)V

    .line 3
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/G;->Ku()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-static {v2, p1, v0, p3, v1}, Lcom/github/catvod/spider/merge1/aQ/G;->jl(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    .line 4
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/tb;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    .line 5
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "\r|\n"

    const-string p2, ""

    .line 6
    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2c

    return-object p1

    :catchall_2c
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/github/catvod/crawler/Spider;->init(Landroid/content/Context;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 2
    invoke-super {p0, p1, p2}, Lcom/github/catvod/crawler/Spider;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iput-object p2, p0, Lcom/github/catvod/spider/XYQHiker;->T:Ljava/lang/String;

    .line 4
    new-instance p2, Lcom/github/catvod/spider/Push;

    invoke-direct {p2}, Lcom/github/catvod/spider/Push;-><init>()V

    iput-object p2, p0, Lcom/github/catvod/spider/XYQHiker;->cG:Lcom/github/catvod/spider/Push;

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_preferences"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    sput-object p2, Lcom/github/catvod/spider/XYQHiker;->W:Landroid/content/SharedPreferences;

    const-string v0, "PublicRefreshToken"

    const-string v1, ""

    .line 6
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 8
    :try_start_3a
    invoke-static {}, Lcom/github/catvod/spider/Proxy;->localProxyUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/proxy"

    const-string v3, "/file/tvbox/tok.txt"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge1/aQ/G;->nN(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_64

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5b} :catch_5f

    if-nez v1, :cond_64

    move-object v1, v0

    goto :goto_65

    :catch_5f
    move-exception p2

    .line 11
    invoke-static {p2}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto :goto_65

    :cond_64
    move-object v1, p2

    .line 12
    :goto_65
    iget-object p2, p0, Lcom/github/catvod/spider/XYQHiker;->cG:Lcom/github/catvod/spider/Push;

    invoke-virtual {p2, p1, v1}, Lcom/github/catvod/spider/Push;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public isVideoFormat(Ljava/lang/String;)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/XYQHiker;->A()V

    const-string v0, "手动嗅探视频链接关键词"

    .line 2
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_12

    :cond_10
    const-string v0, "VideoFormat"

    :goto_12
    const-string v1, "手动嗅探视频链接过滤词"

    .line 3
    invoke-direct {p0, v1}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_21

    :cond_1f
    const-string v1, "VideoFilter"

    :goto_21
    const-string v2, ".m3u8#.mp4#.flv#video/tos#.mp3#.m4a"

    .line 4
    invoke-direct {p0, v0, v2}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v3, "=http#.html"

    .line 5
    invoke-direct {p0, v1, v3}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "=http"

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_54

    const-string v2, ".html"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    :cond_54
    invoke-static {p1}, Lcom/github/catvod/spider/XYQHiker;->checkstring(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    return v3

    .line 8
    :cond_5b
    array-length v2, v0

    const/4 v4, 0x0

    :goto_5d
    if-ge v4, v2, :cond_82

    aget-object v5, v0, v4

    .line 9
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 10
    array-length v0, v1

    const/4 v2, 0x0

    :goto_69
    if-ge v2, v0, :cond_7d

    aget-object v4, v1, v2

    .line 11
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-static {p1}, Lcom/github/catvod/spider/XYQHiker;->checkstring(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7a

    return v3

    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_7d
    const/4 p1, 0x1

    return p1

    :cond_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    :cond_82
    return v3
.end method

.method lB(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "\\&nbsp;"

    const-string v1, " "

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\&[a-zA-Z]{1,10};"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<[^>]*>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[(/>)<]"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s{2,}"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public manualVideoCheck()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/XYQHiker;->A()V

    const-string v0, "是否开启手动嗅探"

    .line 2
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_12

    :cond_10
    const-string v0, "ManualSniffer"

    .line 3
    :goto_12
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "是"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v0, 0x0

    return v0

    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    return v0
.end method

.method public playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "请求头参数"

    const-string v4, "分析MacPlayer"

    const-string v5, "网页编码格式"

    const-string v6, "#isVideo=true#"

    const-string v7, "1"

    const-string v8, ""

    :try_start_12
    const-string v9, "普画"

    .line 1
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7dd

    const-string v9, "原画"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_24

    goto/16 :goto_7dd

    .line 2
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/github/catvod/spider/XYQHiker;->A()V

    .line 3
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_34

    :cond_32
    const-string v5, "Coding_format"

    .line 4
    :goto_34
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_41

    :cond_3f
    const-string v4, "Anal_MacPlayer"

    :goto_41
    const-string v0, "UTF-8"

    .line 5
    invoke-direct {v1, v5, v0}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    .line 6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 7
    invoke-direct {v1, v3}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_5b

    :cond_59
    const-string v3, "Headers"

    .line 8
    :goto_5b
    invoke-direct {v1, v3, v8}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "$"

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_69} :catch_7e6

    const-string v9, "\\$"

    const-string v10, "电脑"

    const-string v11, "PC_UA"

    const-string v12, "#"

    const-string v13, "2"

    if-eqz v3, :cond_13d

    .line 10
    :try_start_75
    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    .line 11
    :goto_7a
    array-length v15, v3
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7b} :catch_7e6

    move-object/from16 v16, v6

    const-string v6, "referer"

    if-ge v14, v15, :cond_f9

    .line 12
    :try_start_81
    aget-object v15, v3, v14

    invoke-virtual {v15, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v3

    const/16 v17, 0x0

    .line 13
    aget-object v3, v15, v17

    const/16 v17, 0x1

    .line 14
    aget-object v15, v15, v17

    .line 15
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b3

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9e

    goto :goto_b3

    :cond_9e
    move-object/from16 v17, v9

    const-string v9, "MOBILE_UA"

    .line 16
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b0

    const-string v9, "手机"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b7

    .line 17
    :cond_b0
    sget-object v15, Lcom/github/catvod/spider/XYQHiker;->i:Ljava/lang/String;

    goto :goto_b7

    :cond_b3
    :goto_b3
    move-object/from16 v17, v9

    .line 18
    sget-object v15, Lcom/github/catvod/spider/XYQHiker;->X:Ljava/lang/String;

    .line 19
    :cond_b7
    :goto_b7
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c6

    const-string v6, "WebView"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c6

    move-object v15, v2

    .line 20
    :cond_c6
    iget-object v6, v1, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_ec

    const-string v6, "cookie"

    .line 21
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 23
    :cond_ec
    invoke-virtual {v5, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v16

    move-object/from16 v9, v17

    move-object/from16 v3, v18

    goto/16 :goto_7a

    :cond_f9
    move-object/from16 v17, v9

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_114

    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_114

    const-string v3, "Referer"

    .line 25
    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    :cond_114
    iget-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_198

    .line 27
    iget-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_198

    const-string v3, "Cookie$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_198

    const-string v3, "cookie$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_198

    const-string v0, "Cookie"

    .line 28
    iget-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_198

    :cond_13d
    move-object/from16 v16, v6

    move-object/from16 v17, v9

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14a

    const-string v0, "okhttp/3.12.11"

    goto :goto_16c

    .line 30
    :cond_14a
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16a

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_157

    goto :goto_16a

    :cond_157
    const-string v3, "MOBILE_UA"

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_167

    const-string v3, "手机"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16c

    .line 32
    :cond_167
    sget-object v0, Lcom/github/catvod/spider/XYQHiker;->i:Ljava/lang/String;

    goto :goto_16c

    .line 33
    :cond_16a
    :goto_16a
    sget-object v0, Lcom/github/catvod/spider/XYQHiker;->X:Ljava/lang/String;

    .line 34
    :cond_16c
    :goto_16c
    iget-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_184

    .line 35
    iget-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_184

    const-string v3, "Cookie"

    .line 36
    iget-object v6, v1, Lcom/github/catvod/spider/XYQHiker;->O2:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    :cond_184
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_193

    const-string v3, "Referer"

    .line 38
    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_193
    const-string v3, "User-Agent"

    .line 39
    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_198
    :goto_198
    const-string v0, "链接是否直接播放"

    .line 40
    invoke-direct {v1, v0}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a7

    const-string v0, "链接是否直接播放"

    goto :goto_1a9

    :cond_1a7
    const-string v0, "force_play"

    :goto_1a9
    const-string v3, "直接播放链接加前缀"

    .line 41
    invoke-direct {v1, v3}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b8

    const-string v3, "直接播放链接加前缀"

    goto :goto_1ba

    :cond_1b8
    const-string v3, "play_prefix"

    :goto_1ba
    const-string v6, "直接播放链接加后缀"

    .line 42
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c9

    const-string v6, "直接播放链接加后缀"

    goto :goto_1cb

    :cond_1c9
    const-string v6, "play_suffix"

    :goto_1cb
    const-string v9, "直接播放直链视频请求头"

    .line 43
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1da

    const-string v9, "直接播放直链视频请求头"

    goto :goto_1dc

    :cond_1da
    const-string v9, "play_header"

    .line 44
    :goto_1dc
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 45
    invoke-direct {v1, v0}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f8

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_1f3} :catch_7e6

    if-eqz v0, :cond_1f6

    goto :goto_1f8

    :cond_1f6
    const/4 v11, 0x0

    goto :goto_1f9

    :cond_1f8
    :goto_1f8
    const/4 v11, 0x1

    :goto_1f9
    const-string v14, "playUrl"

    const-string v15, "header"

    move-object/from16 v18, v13

    const-string v13, "url"

    move-object/from16 v19, v4

    const-string v4, "parse"

    if-eqz v11, :cond_2d1

    .line 46
    :try_start_207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v1, v3, v8}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v6, v8}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_283

    .line 48
    iget-object v2, v1, Lcom/github/catvod/spider/XYQHiker;->f:Lorg/json/JSONObject;

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_23b

    .line 49
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_28a

    .line 50
    :cond_23b
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 51
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 52
    array-length v5, v2

    const/4 v6, 0x0

    :goto_24a
    if-ge v6, v5, :cond_27b

    aget-object v9, v2, v6

    move-object/from16 v11, v17

    .line 53
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 p2, v2

    const/4 v12, 0x0

    .line 54
    aget-object v2, v9, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    const-string v5, " "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v9, v9, v5

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p2

    move/from16 v5, v17

    move-object/from16 v17, v11

    goto :goto_24a

    .line 55
    :cond_27b
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_28a

    .line 56
    :cond_283
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_28a
    move-object/from16 v2, v16

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b8

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/AA;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_299

    goto :goto_2b8

    .line 58
    :cond_299
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/AA;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b0

    const/4 v2, 0x1

    .line 59
    invoke-virtual {v10, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "jx"

    .line 60
    invoke-virtual {v10, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    invoke-virtual {v10, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2b0
    const/4 v2, 0x1

    .line 63
    invoke-virtual {v10, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    invoke-virtual {v10, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2c9

    .line 65
    :cond_2b8
    :goto_2b8
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c2

    .line 66
    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2c2
    const/4 v2, 0x0

    .line 67
    invoke-virtual {v10, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    invoke-virtual {v10, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :goto_2c9
    invoke-virtual {v10, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d1
    move-object/from16 v3, v19

    .line 71
    invoke-direct {v1, v3}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f8

    invoke-direct {v1, v3}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2fa

    invoke-direct {v1, v3}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "是"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2f3
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_2f3} :catch_7e6

    if-eqz v0, :cond_2f6

    goto :goto_2fa

    :cond_2f6
    const/4 v9, 0x0

    goto :goto_2fb

    :cond_2f8
    move-object/from16 v6, v18

    :cond_2fa
    :goto_2fa
    const/4 v9, 0x1

    :goto_2fb
    if-eqz v9, :cond_4b8

    if-nez v11, :cond_4b8

    .line 72
    :try_start_2ff
    iget-object v0, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v1, v2, v0, v12}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-direct {v1, v2, v0}, Lcom/github/catvod/spider/XYQHiker;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/Db;->W(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object v0

    const-string v12, "script"

    .line 75
    invoke-virtual {v0, v12}, Lcom/github/catvod/spider/merge1/aQ/li;->FX(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v0
    :try_end_317
    .catch Ljava/lang/Exception; {:try_start_2ff .. :try_end_317} :catch_493

    move-object/from16 v18, v6

    const/4 v12, 0x0

    .line 76
    :goto_31a
    :try_start_31a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v12, v6, :cond_439

    .line 77
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {v6}, Lcom/github/catvod/spider/merge1/aQ/li;->Bu()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v0

    const-string v0, "var player_"

    .line 78
    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_433

    const/16 v0, 0x7b

    .line 79
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v12, 0x7d

    .line 80
    invoke-virtual {v6, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    .line 81
    invoke-virtual {v6, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "from"

    .line 84
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_359
    .catch Ljava/lang/Exception; {:try_start_31a .. :try_end_359} :catch_48f

    move-object/from16 v17, v12

    :try_start_35b
    const-string v12, "link_next"

    .line 85
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_361
    .catch Ljava/lang/Exception; {:try_start_35b .. :try_end_361} :catch_42c

    move-object/from16 v19, v3

    :try_start_363
    const-string v3, "key"

    .line 86
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    move/from16 v20, v3

    const-string v3, "tm"

    .line 87
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    move/from16 v21, v3

    const-string v3, "id"

    .line 88
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_384

    const-string v3, "id"

    .line 89
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_381
    .catch Ljava/lang/Exception; {:try_start_363 .. :try_end_381} :catch_42a

    move-object/from16 v22, v3

    goto :goto_386

    :cond_384
    const/16 v22, 0x0

    :goto_386
    :try_start_386
    const-string v3, "vod_pic_thumb"

    .line 90
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_397

    const-string v3, "vod_pic_thumb"

    .line 91
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_394
    .catch Ljava/lang/Exception; {:try_start_386 .. :try_end_394} :catch_425

    move-object/from16 v23, v3

    goto :goto_399

    :cond_397
    const/16 v23, 0x0

    :goto_399
    :try_start_399
    const-string v3, "vod_title"

    .line 92
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c5

    const-string v3, "vod_title_name"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c5

    const-string v3, "vod_title"

    .line 93
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3af
    .catch Ljava/lang/Exception; {:try_start_399 .. :try_end_3af} :catch_420

    move-object/from16 v24, v3

    :try_start_3b1
    const-string v3, "vod_title_name"

    .line 94
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3b7
    .catch Ljava/lang/Exception; {:try_start_3b1 .. :try_end_3b7} :catch_3bc

    move-object/from16 v25, v24

    move-object/from16 v24, v3

    goto :goto_3c9

    :catch_3bc
    move-exception v0

    move-object/from16 v25, v24

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/16 v24, 0x0

    goto/16 :goto_4a4

    :cond_3c5
    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_3c9
    :try_start_3c9
    const-string v3, "nid"

    .line 95
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3da

    const-string v3, "nid"

    .line 96
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3d7
    .catch Ljava/lang/Exception; {:try_start_3c9 .. :try_end_3d7} :catch_41b

    move-object/from16 v26, v3

    goto :goto_3dc

    :cond_3da
    const/16 v26, 0x0

    :goto_3dc
    :try_start_3dc
    const-string v3, "encrypt"

    .line 97
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_414

    const-string v3, "encrypt"

    .line 98
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3f6

    .line 99
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_414

    :cond_3f6
    const/4 v6, 0x2

    if-ne v3, v6, :cond_414

    .line 101
    new-instance v3, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 102
    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v3, Ljava/lang/String;

    invoke-static {v12, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/String;-><init>([B)V

    .line 104
    invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_414
    .catch Ljava/lang/Exception; {:try_start_3dc .. :try_end_414} :catch_416

    :cond_414
    :goto_414
    move-object v3, v0

    goto :goto_44d

    :catch_416
    move-exception v0

    const/4 v3, 0x0

    const/4 v12, 0x0

    goto/16 :goto_4a6

    :catch_41b
    move-exception v0

    const/4 v3, 0x0

    const/4 v12, 0x0

    goto/16 :goto_4a4

    :catch_420
    move-exception v0

    const/4 v3, 0x0

    const/4 v12, 0x0

    goto/16 :goto_4a0

    :catch_425
    move-exception v0

    const/4 v3, 0x0

    const/4 v12, 0x0

    goto/16 :goto_49e

    :catch_42a
    move-exception v0

    goto :goto_42f

    :catch_42c
    move-exception v0

    move-object/from16 v19, v3

    :goto_42f
    const/4 v3, 0x0

    const/4 v12, 0x0

    goto/16 :goto_49c

    :cond_433
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    goto/16 :goto_31a

    :cond_439
    move-object/from16 v19, v3

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_44d
    if-nez v21, :cond_451

    if-eqz v20, :cond_4a9

    .line 105
    :cond_451
    :try_start_451
    invoke-static {v3}, Lcom/github/catvod/spider/merge1/aQ/AA;->i(Ljava/lang/String;)Z

    move-result v0
    :try_end_455
    .catch Ljava/lang/Exception; {:try_start_451 .. :try_end_455} :catch_48d

    if-eqz v0, :cond_472

    const/4 v6, 0x0

    .line 106
    :try_start_458
    invoke-virtual {v10, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    invoke-virtual {v10, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    invoke-virtual {v10, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_46c
    .catch Ljava/lang/Exception; {:try_start_458 .. :try_end_46c} :catch_46d

    return-object v0

    :catch_46d
    move-exception v0

    .line 111
    :try_start_46e
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V
    :try_end_471
    .catch Ljava/lang/Exception; {:try_start_46e .. :try_end_471} :catch_48d

    goto :goto_4a9

    .line 112
    :cond_472
    :try_start_472
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v6, 0x1

    .line 113
    invoke-virtual {v10, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    invoke-virtual {v10, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v10, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_487
    .catch Ljava/lang/Exception; {:try_start_472 .. :try_end_487} :catch_488

    return-object v0

    :catch_488
    move-exception v0

    .line 117
    :try_start_489
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V
    :try_end_48c
    .catch Ljava/lang/Exception; {:try_start_489 .. :try_end_48c} :catch_48d

    goto :goto_4a9

    :catch_48d
    move-exception v0

    goto :goto_4a6

    :catch_48f
    move-exception v0

    move-object/from16 v19, v3

    goto :goto_498

    :catch_493
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v18, v6

    :goto_498
    const/4 v3, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    :goto_49c
    const/16 v22, 0x0

    :goto_49e
    const/16 v23, 0x0

    :goto_4a0
    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_4a4
    const/16 v26, 0x0

    .line 118
    :goto_4a6
    :try_start_4a6
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V
    :try_end_4a9
    .catch Ljava/lang/Exception; {:try_start_4a6 .. :try_end_4a9} :catch_7e6

    :cond_4a9
    :goto_4a9
    move-object/from16 v6, v17

    move-object/from16 v27, v22

    move-object/from16 v28, v23

    move-object/from16 v29, v24

    move-object/from16 v30, v25

    move-object/from16 v31, v26

    move-object/from16 v17, v12

    goto :goto_4ca

    :cond_4b8
    move-object/from16 v19, v3

    move-object/from16 v18, v6

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_4ca
    const-string v12, "&nid="

    move-object/from16 v20, v15

    const-string v15, "&jump="

    move-object/from16 v21, v5

    const-string v5, "&next="

    if-eqz v9, :cond_66d

    if-nez v11, :cond_66d

    .line 119
    :try_start_4d8
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyyMMdd"

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/static/js/playerconfig.js?t="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v9, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v1, v0, v9, v11}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v9, v1, Lcom/github/catvod/spider/XYQHiker;->P:Ljava/lang/String;

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_526

    .line 124
    new-instance v9, Lorg/json/JSONObject;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_527

    :cond_526
    const/4 v9, 0x0

    :goto_527
    if-eqz v9, :cond_651

    .line 125
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_651

    .line 126
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v9, "ps"

    .line 127
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_58a

    .line 128
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_54b

    move-object v9, v8

    goto :goto_550

    :cond_54b
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_54f
    .catch Ljava/lang/Exception; {:try_start_4d8 .. :try_end_54f} :catch_65c

    move-object v9, v0

    .line 129
    :goto_550
    :try_start_550
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57b

    const-string v0, "/static/player/parse.js"

    .line 130
    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v11, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;
    :try_end_55e
    .catch Ljava/lang/Exception; {:try_start_550 .. :try_end_55e} :catch_585

    move-object/from16 v16, v9

    :try_start_560
    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v1, v0, v11, v9}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_56c
    .catch Ljava/lang/Exception; {:try_start_560 .. :try_end_56c} :catch_578

    move/from16 v25, v0

    move-object/from16 v9, v16

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    goto/16 :goto_637

    :catch_578
    move-exception v0

    goto/16 :goto_65f

    :cond_57b
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    goto/16 :goto_637

    :catch_585
    move-exception v0

    move-object/from16 v16, v9

    goto/16 :goto_65f

    .line 133
    :cond_58a
    :try_start_58a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/static/player/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".js"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v9, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/XYQHiker;->Gq(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v1, v0, v9, v11}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_5b2
    .catch Ljava/lang/Exception; {:try_start_58a .. :try_end_5b2} :catch_62a

    .line 136
    :try_start_5b2
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_5b6
    .catch Ljava/lang/Exception; {:try_start_5b2 .. :try_end_5b6} :catch_626

    move/from16 v22, v9

    :try_start_5b8
    const-string v9, "&title="

    .line 137
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5ca

    const-string v9, "humb="

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_5c6
    .catch Ljava/lang/Exception; {:try_start_5b8 .. :try_end_5c6} :catch_61e

    if-eqz v9, :cond_5ca

    const/4 v9, 0x1

    goto :goto_5cb

    :cond_5ca
    const/4 v9, 0x0

    .line 138
    :goto_5cb
    :try_start_5cb
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23
    :try_end_5cf
    .catch Ljava/lang/Exception; {:try_start_5cb .. :try_end_5cf} :catch_616

    move/from16 v24, v9

    :try_start_5d1
    const-string v9, "src=\"http"

    .line 139
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5f3

    const-string v9, "src=\""
    :try_end_5db
    .catch Ljava/lang/Exception; {:try_start_5d1 .. :try_end_5db} :catch_612

    move/from16 v25, v11

    :try_start_5dd
    const-string v11, "\""

    .line 140
    invoke-static {v0, v9, v11}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v11, "\'"

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v9

    goto :goto_60e

    :cond_5f3
    move/from16 v25, v11

    const-string v9, "src=\"\'+"

    .line 141
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_60d

    const-string v9, "+\'"

    const-string v11, "\'+"

    .line 142
    invoke-static {v0, v9, v11}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_60c
    .catch Ljava/lang/Exception; {:try_start_5dd .. :try_end_60c} :catch_610

    goto :goto_60e

    :cond_60d
    const/4 v0, 0x0

    :goto_60e
    move-object v9, v0

    goto :goto_637

    :catch_610
    move-exception v0

    goto :goto_633

    :catch_612
    move-exception v0

    move/from16 v25, v11

    goto :goto_633

    :catch_616
    move-exception v0

    move/from16 v24, v9

    move/from16 v25, v11

    const/16 v23, 0x0

    goto :goto_633

    :catch_61e
    move-exception v0

    move/from16 v25, v11

    const/16 v23, 0x0

    const/16 v24, 0x0

    goto :goto_633

    :catch_626
    move-exception v0

    move/from16 v22, v9

    goto :goto_62d

    :catch_62a
    move-exception v0

    const/16 v22, 0x0

    :goto_62d
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 143
    :goto_633
    :try_start_633
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V
    :try_end_636
    .catch Ljava/lang/Exception; {:try_start_633 .. :try_end_636} :catch_64d

    const/4 v9, 0x0

    :goto_637
    if-eqz v9, :cond_64a

    .line 144
    :try_start_639
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64a

    .line 145
    invoke-static {v2, v9}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_643
    .catch Ljava/lang/Exception; {:try_start_639 .. :try_end_643} :catch_646

    move-object/from16 v16, v0

    goto :goto_66a

    :catch_646
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_667

    :cond_64a
    move-object/from16 v16, v9

    goto :goto_66a

    :catch_64d
    move-exception v0

    const/16 v16, 0x0

    goto :goto_667

    :cond_651
    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    goto :goto_66a

    :catch_65c
    move-exception v0

    const/16 v16, 0x0

    :goto_65f
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 146
    :goto_667
    :try_start_667
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :goto_66a
    move-object/from16 v0, v16

    goto :goto_676

    :cond_66d
    const/4 v0, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_676
    if-eqz v3, :cond_7c3

    .line 147
    invoke-static {v3}, Lcom/github/catvod/spider/merge1/aQ/AA;->y(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6ad

    move-object/from16 v9, v19

    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_696

    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "是"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_694
    .catch Ljava/lang/Exception; {:try_start_667 .. :try_end_694} :catch_7e6

    if-eqz v2, :cond_6af

    :cond_696
    const/4 v2, 0x1

    .line 148
    :try_start_697
    invoke-virtual {v10, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "jx"

    .line 149
    invoke-virtual {v10, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {v10, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6a6
    .catch Ljava/lang/Exception; {:try_start_697 .. :try_end_6a6} :catch_6a7

    return-object v0

    :catch_6a7
    move-exception v0

    .line 152
    :try_start_6a8
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_7c3

    :cond_6ad
    move-object/from16 v9, v19

    .line 153
    :cond_6af
    invoke-static {v3}, Lcom/github/catvod/spider/merge1/aQ/AA;->i(Ljava/lang/String;)Z

    move-result v2
    :try_end_6b3
    .catch Ljava/lang/Exception; {:try_start_6a8 .. :try_end_6b3} :catch_7e6

    if-eqz v2, :cond_6d7

    const/4 v2, 0x0

    .line 154
    :try_start_6b6
    invoke-virtual {v10, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v10, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    invoke-virtual {v10, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6c3
    .catch Ljava/lang/Exception; {:try_start_6b6 .. :try_end_6c3} :catch_6cf

    move-object/from16 v2, v20

    :try_start_6c5
    invoke-virtual {v10, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6cc
    .catch Ljava/lang/Exception; {:try_start_6c5 .. :try_end_6cc} :catch_6cd

    return-object v0

    :catch_6cd
    move-exception v0

    goto :goto_6d2

    :catch_6cf
    move-exception v0

    move-object/from16 v2, v20

    .line 159
    :goto_6d2
    :try_start_6d2
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto/16 :goto_7c5

    :cond_6d7
    move-object/from16 v2, v20

    if-eqz v0, :cond_7c5

    .line 160
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, v18

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_6e5
    .catch Ljava/lang/Exception; {:try_start_6d2 .. :try_end_6e5} :catch_7e6

    if-eqz v7, :cond_7c5

    if-nez v17, :cond_6f3

    .line 161
    :try_start_6e9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_79a

    goto :goto_6f3

    :catch_6f0
    move-exception v0

    goto/16 :goto_7bf

    :cond_6f3
    :goto_6f3
    if-eqz v24, :cond_73a

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v17

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&title="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v30

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v29

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&thumb="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v28

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&id="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v27

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v31

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_79a

    :cond_73a
    move-object/from16 v7, v17

    move-object/from16 v9, v27

    move-object/from16 v11, v31

    if-eqz v22, :cond_755

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_79a

    :cond_755
    if-eqz v23, :cond_780

    .line 164
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&id="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&from="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_79a

    .line 165
    :cond_780
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_79a

    if-eqz v25, :cond_79a

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    :cond_79a
    :goto_79a
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x1

    .line 168
    invoke-virtual {v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    invoke-virtual {v10, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7be
    .catch Ljava/lang/Exception; {:try_start_6e9 .. :try_end_7be} :catch_6f0

    return-object v0

    .line 172
    :goto_7bf
    :try_start_7bf
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    goto :goto_7c5

    :cond_7c3
    :goto_7c3
    move-object/from16 v2, v20

    .line 173
    :cond_7c5
    :goto_7c5
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x1

    .line 174
    invoke-virtual {v10, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 175
    invoke-virtual {v10, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v2, p2

    .line 176
    invoke-virtual {v10, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :cond_7dd
    :goto_7dd
    iget-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->cG:Lcom/github/catvod/spider/Push;

    move-object/from16 v4, p3

    invoke-virtual {v3, v0, v2, v4}, Lcom/github/catvod/spider/Push;->playerContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_7e5
    .catch Ljava/lang/Exception; {:try_start_7bf .. :try_end_7e5} :catch_7e6

    return-object v0

    :catch_7e6
    move-exception v0

    .line 179
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    return-object v8
.end method

.method public searchContent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "}"

    const-string v3, "{"

    const-string v4, "\\{wd\\}"

    const-string v5, "POST请求数据"

    const-string v6, "搜索链接"

    const-string v7, "网页编码格式"

    const-string v8, "1"

    const-string v9, "md5("

    const-string v10, ""

    .line 1
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lcom/github/catvod/spider/XYQHiker;->A()V

    .line 2
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_24

    goto :goto_26

    :cond_24
    const-string v7, "Coding_format"

    .line 3
    :goto_26
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_31

    goto :goto_33

    :cond_31
    const-string v6, "search_url"

    .line 4
    :goto_33
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3e

    goto :goto_40

    :cond_3e
    const-string v5, "sea_PtBody"

    :goto_40
    const-string v11, "UTF-8"

    .line 5
    invoke-direct {v1, v7, v11}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    .line 6
    invoke-static {v2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    .line 8
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    aget-object v7, v7, v11

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const-string v14, "时间戳"

    .line 11
    invoke-virtual {v7, v14, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "时间标"

    .line 12
    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_80} :catch_842

    const-string v13, ")"

    if-eqz v12, :cond_aa

    .line 14
    :try_start_84
    invoke-static {v7, v9, v13}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 15
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v14, Lcom/github/catvod/spider/merge1/aQ/AA;->Ku:Ljava/nio/charset/Charset;

    invoke-static {v12, v14}, Lcom/github/catvod/spider/merge1/aQ/AA;->W(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v9, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_aa
    const-string v9, ";post"

    .line 16
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_b0} :catch_842

    const-string v9, "search"

    const-string v12, "不要频繁操作，搜索时间间隔为"

    const-string v14, "输入验证码"

    if-eqz v6, :cond_165

    .line 17
    :try_start_b8
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "｛"

    .line 18
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "｝"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_159

    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f6

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1, v7, v0, v3, v4}, Lcom/github/catvod/spider/XYQHiker;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_164

    .line 23
    :cond_f6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "&"

    .line 24
    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 25
    array-length v4, v3

    const/4 v5, 0x0

    :goto_103
    if-ge v5, v4, :cond_121

    aget-object v6, v3, v5

    const-string v15, "="

    .line 26
    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v16, v3

    .line 27
    invoke-virtual {v6, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v15, v15, 0x1

    .line 28
    invoke-virtual {v6, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 29
    invoke-virtual {v0, v3, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v16

    goto :goto_103

    .line 30
    :cond_121
    iget-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1, v7, v0, v3, v4}, Lcom/github/catvod/spider/XYQHiker;->y(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13f

    invoke-static {v3}, Lcom/github/catvod/spider/XYQHiker;->checkveriry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13f

    .line 32
    invoke-static {v3}, Lcom/github/catvod/spider/XYQHiker;->vertype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v7, v0, v9, v3}, Lcom/github/catvod/spider/XYQHiker;->cs(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    :cond_13f
    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_157

    .line 34
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 35
    iget-object v3, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1, v7, v0, v3, v4}, Lcom/github/catvod/spider/XYQHiker;->y(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_164

    :cond_157
    move-object v0, v3

    goto :goto_164

    .line 36
    :cond_159
    iget-object v0, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4, v0, v3}, Lcom/github/catvod/spider/XYQHiker;->y(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :goto_164
    goto :goto_1c4

    .line 37
    :cond_165
    iget-object v0, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v7, v0, v3}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "检测中"

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_183

    const-string v3, "btwaf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_183

    .line 39
    invoke-direct {v1, v7, v0}, Lcom/github/catvod/spider/XYQHiker;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_183
    const-string v3, "/huadong_"

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_193

    const-string v3, "/renji_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_197

    .line 41
    :cond_193
    invoke-direct {v1, v7, v0}, Lcom/github/catvod/spider/XYQHiker;->Vp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_197
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ad

    invoke-static {v0}, Lcom/github/catvod/spider/XYQHiker;->checkveriry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ad

    .line 43
    invoke-static {v0}, Lcom/github/catvod/spider/XYQHiker;->vertype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v7, v3, v9, v0}, Lcom/github/catvod/spider/XYQHiker;->cs(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1ad

    .line 44
    :cond_1ad
    :goto_1ad
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c4

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 46
    iget-object v0, v1, Lcom/github/catvod/spider/XYQHiker;->nN:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->f(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1, v7, v0, v4}, Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_1c4
    :goto_1c4
    invoke-static {v0}, Lcom/github/catvod/spider/XYQHiker;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "搜索截取模式"

    .line 48
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d7

    const-string v4, "搜索截取模式"

    goto :goto_1d9

    :cond_1d7
    const-string v4, "search_mode"

    :goto_1d9
    const-string v5, "搜索片单是否Jsoup写法"

    .line 49
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1e8

    const-string v5, "搜索片单是否Jsoup写法"

    goto :goto_1ea

    :cond_1e8
    const-string v5, "sea_is_jsoup"

    :goto_1ea
    const-string v6, "图片是否需要代理"

    .line 50
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1f9

    const-string v6, "图片是否需要代理"

    goto :goto_1fb

    :cond_1f9
    const-string v6, "PicNeedProxy"

    :goto_1fb
    const-string v9, "搜索Json数据二次截取"

    .line 51
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_20a

    const-string v9, "搜索Json数据二次截取"

    goto :goto_20c

    :cond_20a
    const-string v9, "seajson_twice"

    .line 52
    :goto_20c
    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "0"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_227

    invoke-direct {v1, v4}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "否"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_225

    goto :goto_227

    :cond_225
    const/4 v4, 0x0

    goto :goto_228

    :cond_227
    :goto_227
    const/4 v4, 0x1

    .line 53
    :goto_228
    invoke-direct {v1, v5, v8}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_230
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_230} :catch_842

    const-string v15, "是"

    if-nez v12, :cond_241

    :try_start_234
    invoke-direct {v1, v5, v15}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23f

    goto :goto_241

    :cond_23f
    const/4 v5, 0x0

    goto :goto_242

    :cond_241
    :goto_241
    const/4 v5, 0x1

    .line 54
    :goto_242
    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_259

    invoke-direct {v1, v6}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_257

    goto :goto_259

    :cond_257
    const/4 v6, 0x0

    goto :goto_25a

    :cond_259
    :goto_259
    const/4 v6, 0x1

    :goto_25a
    const-string v8, "搜索列表数组规则"

    .line 55
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_269

    const-string v8, "搜索列表数组规则"

    goto :goto_26b

    :cond_269
    const-string v8, "sea_arr_rule"

    :goto_26b
    const-string v12, "搜索片单图片"

    .line 56
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_27a

    const-string v12, "搜索片单图片"

    goto :goto_27c

    :cond_27a
    const-string v12, "sea_pic"

    :goto_27c
    const-string v15, "搜索片单标题"

    .line 57
    invoke-direct {v1, v15}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_28b

    const-string v15, "搜索片单标题"

    goto :goto_28d

    :cond_28b
    const-string v15, "sea_title"

    :goto_28d
    const-string v3, "搜索片单链接"

    .line 58
    invoke-direct {v1, v3}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29c

    const-string v3, "搜索片单链接"

    goto :goto_29e

    :cond_29c
    const-string v3, "sea_url"

    :goto_29e
    const-string v14, "搜索片单副标题"

    .line 59
    invoke-direct {v1, v14}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2ad

    const-string v14, "搜索片单副标题"

    goto :goto_2af

    :cond_2ad
    const-string v14, "sea_subtitle"

    :goto_2af
    const-string v11, "搜索片单链接加前缀"

    .line 60
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2be

    const-string v11, "搜索片单链接加前缀"

    goto :goto_2c0

    :cond_2be
    const-string v11, "search_prefix"

    :goto_2c0
    move-object/from16 v18, v13

    const-string v13, "搜索片单链接加后缀"

    .line 61
    invoke-direct {v1, v13}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2d1

    const-string v13, "搜索片单链接加后缀"

    goto :goto_2d3

    :cond_2d1
    const-string v13, "search_suffix"

    :goto_2d3
    move/from16 v19, v5

    .line 62
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v20, v5

    .line 63
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V
    :try_end_2e1
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_2e1} :catch_842

    move-object/from16 v21, v5

    const-string v5, "$$$"

    move-object/from16 v22, v5

    const-string v5, "\'input\'"

    const-string v2, "&&"

    if-eqz v4, :cond_503

    .line 64
    :try_start_2ed
    invoke-direct {v1, v9}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_318

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_318

    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v23, v14

    const/4 v14, 0x0

    aget-object v9, v9, v14

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v0, v9, v2}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_31a

    :cond_318
    move-object/from16 v23, v14

    .line 67
    :goto_31a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "list"

    .line 68
    invoke-direct {v1, v8, v0}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\."

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 69
    array-length v4, v0

    const/4 v8, 0x1

    if-ne v4, v8, :cond_338

    const/4 v4, 0x0

    .line 70
    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_336
    move-object v2, v0

    goto :goto_385

    .line 71
    :cond_338
    array-length v4, v0

    const/4 v8, 0x2

    if-ne v4, v8, :cond_34b

    const/4 v4, 0x0

    .line 72
    aget-object v8, v0, v4

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_336

    .line 73
    :cond_34b
    array-length v4, v0

    const/4 v9, 0x3

    if-ne v4, v9, :cond_364

    const/4 v4, 0x0

    .line 74
    aget-object v9, v0, v4

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    aget-object v0, v0, v8

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_336

    .line 75
    :cond_364
    array-length v4, v0

    const/4 v9, 0x4

    if-ne v4, v9, :cond_384

    const/4 v4, 0x0

    .line 76
    aget-object v9, v0, v4

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    aget-object v4, v0, v8

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_336

    :cond_384
    const/4 v2, 0x0

    :goto_385
    move-object v8, v10

    move-object v9, v8

    const/4 v4, 0x0

    .line 77
    :goto_388
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_38c
    .catch Ljava/lang/Exception; {:try_start_2ed .. :try_end_38c} :catch_842

    if-ge v4, v0, :cond_4ff

    .line 78
    :try_start_38e
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v0, "name"

    .line 79
    invoke-direct {v1, v15, v0}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_39c
    .catch Ljava/lang/Exception; {:try_start_38e .. :try_end_39c} :catch_4db

    move-object/from16 p2, v2

    :try_start_39e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v0, "id"

    .line 80
    invoke-direct {v1, v3, v0}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_3b0
    .catch Ljava/lang/Exception; {:try_start_39e .. :try_end_3b0} :catch_4d9

    move-object/from16 v16, v8

    .line 81
    :try_start_3b2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3b7
    .catch Ljava/lang/Exception; {:try_start_3b2 .. :try_end_3b7} :catch_4c9

    move-object/from16 v17, v9

    :try_start_3b9
    invoke-direct {v1, v11, v10}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v13, v10}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_3d2
    .catch Ljava/lang/Exception; {:try_start_3b9 .. :try_end_3d2} :catch_4b7

    if-eqz v9, :cond_3e4

    .line 83
    :try_start_3d4
    invoke-virtual {v8, v5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_3d8
    .catch Ljava/lang/Exception; {:try_start_3d4 .. :try_end_3d8} :catch_3d9

    goto :goto_3e4

    :catch_3d9
    move-exception v0

    move-object/from16 v24, v3

    move/from16 v26, v6

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    goto/16 :goto_4e2

    .line 84
    :cond_3e4
    :goto_3e4
    :try_start_3e4
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_3ec
    .catch Ljava/lang/Exception; {:try_start_3e4 .. :try_end_3ec} :catch_4b7

    if-nez v0, :cond_425

    .line 85
    :try_start_3ee
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "http"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_400

    .line 86
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3fe
    move-object v9, v0

    goto :goto_413

    :cond_400
    const-string v0, "pic"

    .line 87
    invoke-direct {v1, v12, v0}, Lcom/github/catvod/spider/XYQHiker;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9
    :try_end_40e
    .catch Ljava/lang/Exception; {:try_start_3ee .. :try_end_40e} :catch_421

    .line 88
    :try_start_40e
    invoke-static {v7, v9}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3fe

    :goto_413
    if-eqz v6, :cond_41e

    .line 89
    invoke-virtual {v1, v9, v7, v6}, Lcom/github/catvod/spider/XYQHiker;->cG(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_419
    .catch Ljava/lang/Exception; {:try_start_40e .. :try_end_419} :catch_41a

    goto :goto_41f

    :catch_41a
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_422

    :cond_41e
    move-object v0, v9

    :goto_41f
    move-object v9, v0

    goto :goto_427

    :catch_421
    move-exception v0

    .line 90
    :goto_422
    :try_start_422
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V
    :try_end_425
    .catch Ljava/lang/Exception; {:try_start_422 .. :try_end_425} :catch_3d9

    :cond_425
    move-object/from16 v9, v16

    :goto_427
    move-object/from16 v29, v23

    move-object/from16 v23, v5

    move-object/from16 v5, v29

    .line 91
    :try_start_42d
    invoke-direct {v1, v5}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_439
    .catch Ljava/lang/Exception; {:try_start_42d .. :try_end_439} :catch_43d

    move-object v14, v0

    move-object/from16 v24, v3

    goto :goto_445

    :catch_43d
    move-exception v0

    .line 92
    :try_start_43e
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V
    :try_end_441
    .catch Ljava/lang/Exception; {:try_start_43e .. :try_end_441} :catch_4aa

    move-object/from16 v24, v3

    move-object/from16 v14, v17

    :goto_445
    move-object/from16 v3, p1

    .line 93
    :try_start_447
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_492

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "vod_id"
    :try_end_454
    .catch Ljava/lang/Exception; {:try_start_447 .. :try_end_454} :catch_49e

    move-object/from16 v25, v5

    .line 95
    :try_start_456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_45e
    .catch Ljava/lang/Exception; {:try_start_456 .. :try_end_45e} :catch_490

    move/from16 v26, v6

    move-object/from16 v6, v22

    :try_start_462
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "vod_name"

    .line 96
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vod_pic"

    .line 97
    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vod_remarks"

    .line 98
    invoke-virtual {v0, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_484
    .catch Ljava/lang/Exception; {:try_start_462 .. :try_end_484} :catch_48c

    move-object/from16 v2, v21

    .line 99
    :try_start_486
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_489
    .catch Ljava/lang/Exception; {:try_start_486 .. :try_end_489} :catch_48a

    goto :goto_49a

    :catch_48a
    move-exception v0

    goto :goto_4a7

    :catch_48c
    move-exception v0

    move-object/from16 v2, v21

    goto :goto_4a7

    :catch_490
    move-exception v0

    goto :goto_4a1

    :cond_492
    move-object/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v2, v21

    move-object/from16 v6, v22

    :goto_49a
    move-object v8, v9

    move-object v9, v14

    goto/16 :goto_4ed

    :catch_49e
    move-exception v0

    move-object/from16 v25, v5

    :goto_4a1
    move/from16 v26, v6

    move-object/from16 v2, v21

    move-object/from16 v6, v22

    :goto_4a7
    move-object v8, v9

    move-object v9, v14

    goto :goto_4ea

    :catch_4aa
    move-exception v0

    move-object/from16 v24, v3

    move-object/from16 v25, v5

    move/from16 v26, v6

    move-object/from16 v2, v21

    move-object/from16 v6, v22

    move-object v8, v9

    goto :goto_4c6

    :catch_4b7
    move-exception v0

    move-object/from16 v24, v3

    move/from16 v26, v6

    move-object/from16 v2, v21

    move-object/from16 v6, v22

    move-object/from16 v25, v23

    move-object/from16 v23, v5

    move-object/from16 v8, v16

    :goto_4c6
    move-object/from16 v9, v17

    goto :goto_4ea

    :catch_4c9
    move-exception v0

    move-object/from16 v24, v3

    move/from16 v26, v6

    move-object/from16 v2, v21

    move-object/from16 v6, v22

    move-object/from16 v25, v23

    move-object/from16 v23, v5

    move-object/from16 v8, v16

    goto :goto_4ea

    :catch_4d9
    move-exception v0

    goto :goto_4de

    :catch_4db
    move-exception v0

    move-object/from16 p2, v2

    :goto_4de
    move-object/from16 v24, v3

    move/from16 v26, v6

    :goto_4e2
    move-object/from16 v2, v21

    move-object/from16 v6, v22

    move-object/from16 v25, v23

    move-object/from16 v23, v5

    .line 100
    :goto_4ea
    :try_start_4ea
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :goto_4ed
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v21, v2

    move-object/from16 v22, v6

    move-object/from16 v5, v23

    move-object/from16 v3, v24

    move-object/from16 v23, v25

    move/from16 v6, v26

    move-object/from16 v2, p2

    goto/16 :goto_388

    :cond_4ff
    move-object/from16 v2, v21

    goto/16 :goto_836

    :cond_503
    move-object/from16 v24, v3

    move-object/from16 v23, v5

    move/from16 v26, v6

    move-object/from16 v25, v14

    move-object/from16 v6, v22

    move-object v3, v2

    move-object/from16 v2, v21

    .line 101
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/Db;->W(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object v0

    .line 102
    invoke-direct {v1, v11}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_51c
    .catch Ljava/lang/Exception; {:try_start_4ea .. :try_end_51c} :catch_842

    const-string v9, "PG_URL"

    if-eqz v5, :cond_528

    .line 104
    :try_start_520
    invoke-static {v0, v4}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 105
    :cond_528
    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_538

    .line 106
    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    :cond_538
    invoke-direct {v1, v13}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_546

    .line 109
    invoke-static {v0, v5}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    :cond_546
    invoke-direct {v1, v8}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 111
    aget-object v11, v8, v9

    invoke-static {v11, v0}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    const/4 v9, 0x1

    .line 112
    :goto_556
    array-length v11, v8

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    if-ge v9, v11, :cond_564

    .line 113
    aget-object v11, v8, v9

    invoke-static {v11, v0}, Lcom/github/catvod/spider/XYQHiker;->getTrueElement(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    add-int/lit8 v9, v9, 0x1

    goto :goto_556

    .line 114
    :cond_564
    array-length v9, v8

    const/4 v11, 0x1

    sub-int/2addr v9, v11

    aget-object v8, v8, v9

    invoke-static {v0, v8}, Lcom/github/catvod/spider/XYQHiker;->selectElements(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v8

    move-object v9, v10

    move-object v11, v9

    const/4 v14, 0x0

    .line 115
    :goto_570
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_574
    .catch Ljava/lang/Exception; {:try_start_520 .. :try_end_574} :catch_842

    if-ge v14, v0, :cond_836

    .line 116
    :try_start_576
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 117
    invoke-direct {v1, v15}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_581
    .catchall {:try_start_576 .. :try_end_581} :catchall_80c

    if-eqz v19, :cond_594

    .line 118
    :try_start_583
    invoke-static {v13, v0}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_587
    .catchall {:try_start_583 .. :try_end_587} :catchall_58f

    move-object/from16 p2, v8

    move-object/from16 v22, v9

    move-object/from16 v27, v11

    :goto_58d
    move-object v8, v0

    goto :goto_5bc

    :catchall_58f
    move-exception v0

    move-object/from16 p2, v8

    goto/16 :goto_80f

    :cond_594
    move-object/from16 p2, v8

    .line 119
    :try_start_596
    invoke-virtual {v13}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21
    :try_end_59e
    .catchall {:try_start_596 .. :try_end_59e} :catchall_80a

    move-object/from16 v22, v9

    move-object/from16 v27, v11

    const/4 v9, 0x0

    :try_start_5a3
    aget-object v11, v21, v9

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_5a9
    .catchall {:try_start_5a3 .. :try_end_5a9} :catchall_7ee

    const/16 v16, 0x1

    :try_start_5ab
    aget-object v0, v0, v16
    :try_end_5ad
    .catchall {:try_start_5ab .. :try_end_5ad} :catchall_802

    :try_start_5ad
    invoke-static {v8, v11, v0}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/XYQHiker;->lB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_58d

    .line 120
    :goto_5bc
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_5c4
    .catchall {:try_start_5ad .. :try_end_5c4} :catchall_7ee

    if-nez v0, :cond_6a7

    .line 121
    :try_start_5c6
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "http"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_5d0
    .catch Ljava/lang/Exception; {:try_start_5c6 .. :try_end_5d0} :catch_687
    .catchall {:try_start_5c6 .. :try_end_5d0} :catchall_67a

    if-eqz v0, :cond_5e8

    .line 122
    :try_start_5d2
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5d6
    .catch Ljava/lang/Exception; {:try_start_5d2 .. :try_end_5d6} :catch_5dd
    .catchall {:try_start_5d2 .. :try_end_5d6} :catchall_67a

    move-object v9, v0

    move-object/from16 v21, v12

    move-object/from16 v12, v18

    goto/16 :goto_657

    :catch_5dd
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v12, v18

    move-object/from16 v9, v22

    :goto_5e4
    move/from16 v11, v26

    goto/16 :goto_690

    .line 123
    :cond_5e8
    :try_start_5e8
    invoke-direct {v1, v12}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5ec
    .catch Ljava/lang/Exception; {:try_start_5e8 .. :try_end_5ec} :catch_687
    .catchall {:try_start_5e8 .. :try_end_5ec} :catchall_67a

    if-eqz v19, :cond_5fa

    .line 124
    :try_start_5ee
    invoke-static {v13, v0}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_5f6
    .catch Ljava/lang/Exception; {:try_start_5ee .. :try_end_5f6} :catch_5dd
    .catchall {:try_start_5ee .. :try_end_5f6} :catchall_67a

    move-object v9, v0

    move-object/from16 v21, v12

    goto :goto_61a

    .line 125
    :cond_5fa
    :try_start_5fa
    invoke-virtual {v13}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11
    :try_end_602
    .catch Ljava/lang/Exception; {:try_start_5fa .. :try_end_602} :catch_687
    .catchall {:try_start_5fa .. :try_end_602} :catchall_67a

    move-object/from16 v21, v12

    const/4 v12, 0x0

    :try_start_605
    aget-object v11, v11, v12

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x1

    aget-object v0, v0, v16

    invoke-static {v9, v11, v0}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_619
    .catch Ljava/lang/Exception; {:try_start_605 .. :try_end_619} :catch_678
    .catchall {:try_start_605 .. :try_end_619} :catchall_676

    move-object v9, v0

    :goto_61a
    :try_start_61a
    const-string v0, "url("

    .line 126
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_650

    const-string v0, "\\&quot;"

    .line 127
    invoke-virtual {v9, v0, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "url\\("

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 128
    array-length v11, v0

    const/4 v12, 0x1

    if-le v11, v12, :cond_650

    aget-object v11, v0, v12
    :try_end_634
    .catch Ljava/lang/Exception; {:try_start_61a .. :try_end_634} :catch_671
    .catchall {:try_start_61a .. :try_end_634} :catchall_66d

    move-object/from16 v12, v18

    :try_start_636
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_652

    const/4 v11, 0x1

    .line 129
    aget-object v0, v0, v11

    const-string v11, "\\)"

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    aget-object v0, v0, v11

    const-string v11, "[\'\"]"

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_652

    :cond_650
    move-object/from16 v12, v18

    .line 130
    :cond_652
    :goto_652
    invoke-static {v7, v9}, Lcom/github/catvod/spider/merge1/aQ/AA;->jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_656
    .catch Ljava/lang/Exception; {:try_start_636 .. :try_end_656} :catch_66a
    .catchall {:try_start_636 .. :try_end_656} :catchall_666

    move-object v9, v0

    :goto_657
    if-eqz v26, :cond_663

    move/from16 v11, v26

    .line 131
    :try_start_65b
    invoke-virtual {v1, v9, v7, v11}, Lcom/github/catvod/spider/XYQHiker;->cG(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_65f
    .catch Ljava/lang/Exception; {:try_start_65b .. :try_end_65f} :catch_661
    .catchall {:try_start_65b .. :try_end_65f} :catchall_696

    move-object v9, v0

    goto :goto_693

    :catch_661
    move-exception v0

    goto :goto_690

    :cond_663
    move/from16 v11, v26

    goto :goto_693

    :catchall_666
    move-exception v0

    move-object/from16 v18, v7

    goto :goto_69b

    :catch_66a
    move-exception v0

    goto/16 :goto_5e4

    :catchall_66d
    move-exception v0

    move-object/from16 v28, v18

    goto :goto_681

    :catch_671
    move-exception v0

    move-object/from16 v12, v18

    goto/16 :goto_5e4

    :catchall_676
    move-exception v0

    goto :goto_67d

    :catch_678
    move-exception v0

    goto :goto_68a

    :catchall_67a
    move-exception v0

    move-object/from16 v21, v12

    :goto_67d
    move-object/from16 v28, v18

    move-object/from16 v9, v22

    :goto_681
    move-object/from16 v13, v23

    move-object/from16 v11, v27

    goto/16 :goto_815

    :catch_687
    move-exception v0

    move-object/from16 v21, v12

    :goto_68a
    move-object/from16 v12, v18

    move/from16 v11, v26

    move-object/from16 v9, v22

    .line 132
    :goto_690
    :try_start_690
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V
    :try_end_693
    .catchall {:try_start_690 .. :try_end_693} :catchall_696

    :goto_693
    move-object/from16 v18, v7

    goto :goto_6b1

    :catchall_696
    move-exception v0

    move-object/from16 v18, v7

    :goto_699
    move/from16 v26, v11

    :goto_69b
    move-object/from16 v28, v12

    :goto_69d
    move-object/from16 v13, v23

    move-object/from16 v7, v24

    move-object/from16 v11, v27

    move-object/from16 v23, v3

    goto/16 :goto_81b

    :cond_6a7
    move-object/from16 v21, v12

    move-object/from16 v12, v18

    move/from16 v11, v26

    move-object/from16 v18, v7

    move-object/from16 v9, v22

    :goto_6b1
    move-object/from16 v7, v25

    .line 133
    :try_start_6b3
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_6bb
    .catchall {:try_start_6b3 .. :try_end_6bb} :catchall_7de

    if-nez v0, :cond_711

    .line 134
    :try_start_6bd
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v19, :cond_6cf

    .line 135
    invoke-static {v13, v0}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6c7
    .catch Ljava/lang/Exception; {:try_start_6bd .. :try_end_6c7} :catch_704
    .catchall {:try_start_6bd .. :try_end_6c7} :catchall_700

    move-object/from16 v25, v7

    move/from16 v26, v11

    move-object/from16 v28, v12

    :goto_6cd
    move-object v11, v0

    goto :goto_6f7

    :cond_6cf
    move-object/from16 v25, v7

    .line 136
    :try_start_6d1
    invoke-virtual {v13}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22
    :try_end_6d9
    .catch Ljava/lang/Exception; {:try_start_6d1 .. :try_end_6d9} :catch_6fe
    .catchall {:try_start_6d1 .. :try_end_6d9} :catchall_6fc

    move/from16 v26, v11

    move-object/from16 v28, v12

    const/4 v11, 0x0

    :try_start_6de
    aget-object v12, v22, v11

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x1

    aget-object v0, v0, v16

    invoke-static {v7, v12, v0}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/XYQHiker;->lB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6f6
    .catch Ljava/lang/Exception; {:try_start_6de .. :try_end_6f6} :catch_6fa
    .catchall {:try_start_6de .. :try_end_6f6} :catchall_70f

    goto :goto_6cd

    :goto_6f7
    move-object/from16 v7, v24

    goto :goto_71b

    :catch_6fa
    move-exception v0

    goto :goto_70b

    :catchall_6fc
    move-exception v0

    goto :goto_699

    :catch_6fe
    move-exception v0

    goto :goto_707

    :catchall_700
    move-exception v0

    move-object/from16 v25, v7

    goto :goto_699

    :catch_704
    move-exception v0

    move-object/from16 v25, v7

    :goto_707
    move/from16 v26, v11

    move-object/from16 v28, v12

    .line 137
    :goto_70b
    :try_start_70b
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V
    :try_end_70e
    .catchall {:try_start_70b .. :try_end_70e} :catchall_70f

    goto :goto_717

    :catchall_70f
    move-exception v0

    goto :goto_69d

    :cond_711
    move-object/from16 v25, v7

    move/from16 v26, v11

    move-object/from16 v28, v12

    :goto_717
    move-object/from16 v7, v24

    move-object/from16 v11, v27

    .line 138
    :goto_71b
    :try_start_71b
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "\\[替换:"

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    aget-object v0, v0, v12

    if-eqz v19, :cond_732

    .line 139
    invoke-static {v13, v0}, Lcom/github/catvod/spider/XYQHiker;->getTextByRule(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v15

    const/4 v15, 0x0

    goto :goto_751

    .line 140
    :cond_732
    invoke-virtual {v13}, Lcom/github/catvod/spider/merge1/aQ/iV;->Tr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13
    :try_end_73a
    .catchall {:try_start_71b .. :try_end_73a} :catchall_7d6

    move-object/from16 v24, v15

    const/4 v15, 0x0

    :try_start_73d
    aget-object v13, v13, v15

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_743
    .catchall {:try_start_73d .. :try_end_743} :catchall_7d2

    const/16 v16, 0x1

    :try_start_745
    aget-object v0, v0, v16

    invoke-static {v12, v13, v0}, Lcom/github/catvod/spider/XYQHiker;->subContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    :goto_751
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "[替换"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_765

    .line 142
    invoke-direct {v1, v7}, Lcom/github/catvod/spider/XYQHiker;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/github/catvod/spider/XYQHiker;->repl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_765
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_777
    .catchall {:try_start_745 .. :try_end_777} :catchall_7ce

    move-object/from16 v13, v23

    .line 144
    :try_start_779
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_783

    .line 145
    invoke-virtual {v12, v13, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_783
    .catchall {:try_start_779 .. :try_end_783} :catchall_7cc

    :cond_783
    move-object/from16 v15, p1

    .line 146
    :try_start_785
    invoke-virtual {v8, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7c6

    .line 147
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "vod_id"
    :try_end_792
    .catchall {:try_start_785 .. :try_end_792} :catchall_7ca

    move-object/from16 v23, v3

    .line 148
    :try_start_794
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "vod_name"

    .line 149
    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "vod_pic"

    .line 150
    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "vod_remarks"

    .line 151
    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7c1
    .catchall {:try_start_794 .. :try_end_7c1} :catchall_7c3

    goto/16 :goto_820

    :catchall_7c3
    move-exception v0

    goto/16 :goto_81d

    :cond_7c6
    move-object/from16 v23, v3

    goto/16 :goto_820

    :catchall_7ca
    move-exception v0

    goto :goto_7db

    :catchall_7cc
    move-exception v0

    goto :goto_7db

    :catchall_7ce
    move-exception v0

    move-object/from16 v13, v23

    goto :goto_7db

    :catchall_7d2
    move-exception v0

    move-object/from16 v13, v23

    goto :goto_7db

    :catchall_7d6
    move-exception v0

    move-object/from16 v24, v15

    move-object/from16 v13, v23

    :goto_7db
    move-object/from16 v23, v3

    goto :goto_81d

    :catchall_7de
    move-exception v0

    move-object/from16 v25, v7

    move/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v13, v23

    move-object/from16 v7, v24

    move-object/from16 v23, v3

    move-object/from16 v24, v15

    goto :goto_7ff

    :catchall_7ee
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v28, v18

    move-object/from16 v13, v23

    :goto_7f5
    move-object/from16 v23, v3

    move-object/from16 v18, v7

    move-object/from16 v7, v24

    move-object/from16 v24, v15

    move-object/from16 v9, v22

    :goto_7ff
    move-object/from16 v11, v27

    goto :goto_81d

    :catchall_802
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v28, v18

    move-object/from16 v13, v23

    goto :goto_7f5

    :catchall_80a
    move-exception v0

    goto :goto_80f

    :catchall_80c
    move-exception v0

    move-object/from16 p2, v8

    :goto_80f
    move-object/from16 v21, v12

    move-object/from16 v28, v18

    move-object/from16 v13, v23

    :goto_815
    move-object/from16 v23, v3

    move-object/from16 v18, v7

    move-object/from16 v7, v24

    :goto_81b
    move-object/from16 v24, v15

    .line 153
    :goto_81d
    :try_start_81d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_820
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v12, v21

    move-object/from16 v3, v23

    move-object/from16 v15, v24

    move-object/from16 v24, v7

    move-object/from16 v23, v13

    move-object/from16 v7, v18

    move-object/from16 v18, v28

    goto/16 :goto_570

    :cond_836
    :goto_836
    const-string v0, "list"

    move-object/from16 v1, v20

    .line 154
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_841
    .catch Ljava/lang/Exception; {:try_start_81d .. :try_end_841} :catch_842

    return-object v0

    :catch_842
    move-exception v0

    .line 156
    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    return-object v10
.end method

.method protected y(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/github/catvod/spider/XYQHiker$2;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/XYQHiker$2;-><init>(Lcom/github/catvod/spider/XYQHiker;)V

    .line 3
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/G;->Ku()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-static {v1, p1, p2, p4, v0}, Lcom/github/catvod/spider/merge1/aQ/G;->y(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    .line 4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/tb;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "\r|\n"

    const-string p3, ""

    .line 6
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-object p1

    :catchall_2b
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
