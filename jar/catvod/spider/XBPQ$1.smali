.class Lcom/github/catvod/spider/XBPQ$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge2/xbpq/h/k;


# instance fields
.field final synthetic a:Lcom/github/catvod/spider/XBPQ;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/XBPQ;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/XBPQ$1;->a:Lcom/github/catvod/spider/XBPQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public vertifyCode(Ljava/lang/String;)V
    .registers 9

    const-string v0, "$$$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5f

    const-string v0, "\\$\\$\\$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v2, p1, v0

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    sput-object v2, Lcom/github/catvod/spider/XBPQ;->F:Ljava/lang/String;

    iget-object v2, p0, Lcom/github/catvod/spider/XBPQ$1;->a:Lcom/github/catvod/spider/XBPQ;

    aget-object v4, p1, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v2, v4}, Lcom/github/catvod/spider/XBPQ;->d(Lcom/github/catvod/spider/XBPQ;Ljava/lang/String;)Ljava/lang/String;

    sget-object v2, Lcom/github/catvod/spider/Init;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/github/catvod/spider/XBPQ$1;->a:Lcom/github/catvod/spider/XBPQ;

    invoke-static {v5}, Lcom/github/catvod/spider/XBPQ;->b(Lcom/github/catvod/spider/XBPQ;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_ua"

    .line 1
    invoke-static {v4, v5, v6}, Lcom/github/catvod/spider/merge2/xbpq/b/f;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    aget-object v5, p1, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lcom/github/catvod/spider/XBPQ$1;->a:Lcom/github/catvod/spider/XBPQ;

    invoke-static {v4}, Lcom/github/catvod/spider/XBPQ;->b(Lcom/github/catvod/spider/XBPQ;)Ljava/lang/String;

    move-result-object v4

    aget-object p1, p1, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-interface {v2, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5f
    iget-object p1, p0, Lcom/github/catvod/spider/XBPQ$1;->a:Lcom/github/catvod/spider/XBPQ;

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/github/catvod/spider/XBPQ;->a(Lcom/github/catvod/spider/XBPQ;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
