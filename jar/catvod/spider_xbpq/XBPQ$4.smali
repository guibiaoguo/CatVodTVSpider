.class Lcom/github/catvod/spider/XBPQ$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge1/xbpq/h/k;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/github/catvod/spider/XBPQ;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/XBPQ;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    iput-object p2, p0, Lcom/github/catvod/spider/XBPQ$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public vertifyCode(Ljava/lang/String;)V
    .registers 15

    const-string v0, "$$$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "0"

    const/4 v2, 0x1

    if-le v0, v2, :cond_121

    const-string v0, "\\$\\$\\$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    array-length v3, p1

    if-le v3, v2, :cond_19

    aget-object v3, p1, v2

    goto :goto_1b

    :cond_19
    const-string v3, "1"

    :goto_1b
    invoke-static {v0, v3}, Lcom/github/catvod/spider/XBPQ;->a(Lcom/github/catvod/spider/XBPQ;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/github/catvod/spider/Init;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    invoke-static {v4}, Lcom/github/catvod/spider/XBPQ;->b(Lcom/github/catvod/spider/XBPQ;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_ua"

    .line 1
    invoke-static {v3, v4, v5}, Lcom/github/catvod/spider/merge1/xbpq/b/f;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2
    aget-object v5, p1, v4

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    aget-object v3, p1, v4

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    sput-object v3, Lcom/github/catvod/spider/XBPQ;->F:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    aget-object p1, p1, v4

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-static {v3, p1}, Lcom/github/catvod/spider/XBPQ;->d(Lcom/github/catvod/spider/XBPQ;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/github/catvod/spider/XBPQ$4;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x2

    if-le p1, v3, :cond_10e

    iget-object p1, p0, Lcom/github/catvod/spider/XBPQ$4;->a:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v5, p1

    const/4 v6, 0x0

    :goto_6d
    if-ge v6, v5, :cond_10e

    aget-object v7, p1, v6

    iget-object v8, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    invoke-static {v8}, Lcom/github/catvod/spider/XBPQ;->c(Lcom/github/catvod/spider/XBPQ;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_ba

    iget-object v8, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    invoke-static {v8}, Lcom/github/catvod/spider/XBPQ;->c(Lcom/github/catvod/spider/XBPQ;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v2, :cond_b6

    iget-object v9, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    invoke-static {v9}, Lcom/github/catvod/spider/XBPQ;->c(Lcom/github/catvod/spider/XBPQ;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9e

    goto :goto_b6

    :cond_9e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    invoke-static {v10}, Lcom/github/catvod/spider/XBPQ;->c(Lcom/github/catvod/spider/XBPQ;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_b6
    :goto_b6
    invoke-static {v8, v7}, Lcom/github/catvod/spider/XBPQ;->d(Lcom/github/catvod/spider/XBPQ;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_10a

    :cond_ba
    iget-object v8, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    invoke-static {v11}, Lcom/github/catvod/spider/XBPQ;->c(Lcom/github/catvod/spider/XBPQ;)Ljava/lang/String;

    move-result-object v11

    .line 3
    invoke-static {v10, v11, v3}, Lcom/github/catvod/spider/merge1/xbpq/b/f;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v4

    const-string v12, "=.*?;"

    .line 5
    invoke-static {v11, v9, v12}, Lcom/github/catvod/spider/merge1/xbpq/b/f;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v9, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/github/catvod/spider/XBPQ;->d(Lcom/github/catvod/spider/XBPQ;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    invoke-static {v7}, Lcom/github/catvod/spider/XBPQ;->c(Lcom/github/catvod/spider/XBPQ;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    invoke-static {v9}, Lcom/github/catvod/spider/XBPQ;->c(Lcom/github/catvod/spider/XBPQ;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/github/catvod/spider/XBPQ;->d(Lcom/github/catvod/spider/XBPQ;Ljava/lang/String;)Ljava/lang/String;

    :goto_10a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6d

    :cond_10e
    iget-object p1, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    invoke-static {p1}, Lcom/github/catvod/spider/XBPQ;->b(Lcom/github/catvod/spider/XBPQ;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    invoke-static {v1}, Lcom/github/catvod/spider/XBPQ;->c(Lcom/github/catvod/spider/XBPQ;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_126

    :cond_121
    iget-object p1, p0, Lcom/github/catvod/spider/XBPQ$4;->b:Lcom/github/catvod/spider/XBPQ;

    invoke-static {p1, v1}, Lcom/github/catvod/spider/XBPQ;->a(Lcom/github/catvod/spider/XBPQ;Ljava/lang/String;)Ljava/lang/String;

    :goto_126
    return-void
.end method
