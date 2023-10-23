.class public final Lcom/github/catvod/spider/merge2/xbpq/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge2/xbpq/g/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "next_marker"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file_id"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "share_id"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file_extension"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field private i:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parent"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->h:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 13

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    const-string v3, "]"

    const-string v4, "["

    if-eqz v1, :cond_13

    move-object v1, v2

    goto :goto_1d

    .line 2
    :cond_13
    invoke-static {v4}, Lcom/github/catvod/spider/merge2/xbpq/g/d;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v5, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->j:Ljava/lang/String;

    .line 4
    invoke-static {v1, v5, v3}, Lcom/github/catvod/spider/merge2/xbpq/b/f;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1d
    const/4 v5, 0x0

    aput-object v1, v0, v5

    .line 5
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v0, v6

    .line 6
    iget-wide v7, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->i:D

    const-wide/16 v9, 0x0

    const/4 v1, 0x2

    cmpl-double v11, v7, v9

    if-nez v11, :cond_32

    goto/16 :goto_af

    .line 7
    :cond_32
    invoke-static {v4}, Lcom/github/catvod/spider/merge2/xbpq/g/d;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8
    iget-wide v7, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->i:D

    cmpl-double v11, v7, v9

    if-nez v11, :cond_3e

    goto/16 :goto_ab

    :cond_3e
    const-wide/high16 v9, 0x4270000000000000L  # 1.099511627776E12

    const-string v2, "%.2f%s"

    cmpl-double v11, v7, v9

    if-lez v11, :cond_5c

    div-double/2addr v7, v9

    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v10, v5

    const-string v5, "TB"

    aput-object v5, v10, v6

    invoke-static {v9, v2, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_ab

    :cond_5c
    const-wide/high16 v9, 0x41d0000000000000L  # 1.073741824E9

    cmpl-double v11, v7, v9

    if-lez v11, :cond_78

    div-double/2addr v7, v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v10, v5

    const-string v5, "GB"

    aput-object v5, v10, v6

    invoke-static {v9, v2, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_ab

    :cond_78
    const-wide/high16 v9, 0x4130000000000000L  # 1048576.0

    cmpl-double v11, v7, v9

    if-lez v11, :cond_94

    div-double/2addr v7, v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v10, v5

    const-string v5, "MB"

    aput-object v5, v10, v6

    invoke-static {v9, v2, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_ab

    :cond_94
    const-wide/high16 v9, 0x4090000000000000L  # 1024.0

    div-double/2addr v7, v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v10, v5

    const-string v5, "KB"

    aput-object v5, v10, v6

    invoke-static {v9, v2, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10
    :goto_ab
    invoke-static {v4, v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/b/f;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_af
    aput-object v2, v0, v1

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, " "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->g:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->c:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge2/xbpq/g/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->a:Ljava/util/List;

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->e:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->b:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->f:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public final i(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/g/e;
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/g/e;->j:Ljava/lang/String;

    return-object p0
.end method
