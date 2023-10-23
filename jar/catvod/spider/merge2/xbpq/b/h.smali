.class public final Lcom/github/catvod/spider/merge2/xbpq/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static k:Ljava/lang/String; = ""

.field public static l:Ljava/lang/String; = ""

.field public static m:Ljava/lang/String; = ""


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/AlertDialog;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/github/catvod/spider/merge2/xbpq/g/f;

.field private g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2K"

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->i:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->j:Ljava/lang/String;

    const-string v0, "aliyundrive_oauth"

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/h/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/f;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/g/f;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->f:Lcom/github/catvod/spider/merge2/xbpq/g/f;

    const-string v0, "aliyundrive_user"

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/h/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->f(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/g/g;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->a:Ljava/util/HashMap;

    const-string v1, ">原画<"

    const-string v2, "UHD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ">2K<"

    const-string v2, "QHD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ">超清<"

    const-string v2, "FHD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private B(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    sget-object v0, Lcom/github/catvod/spider/Init;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ali_tk"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->c:Ljava/lang/String;

    :cond_16
    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->C()V

    return-void
.end method

.method private C()V
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/b/c;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge2/xbpq/b/c;-><init>(Lcom/github/catvod/spider/merge2/xbpq/b/h;)V

    invoke-static {v0}, Lcom/github/catvod/spider/Init;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/github/catvod/spider/merge2/xbpq/b/h;Lcom/github/catvod/spider/merge2/xbpq/g/c;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/g/c;->d()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "https://passport.aliyundrive.com/newlogin/qrcode/query.do?appName=aliyun_drive&fromSite=52&_bx-v=2.2.3"

    .line 2
    invoke-static {v1, p1, v0, v0}, Lcom/github/catvod/spider/merge2/xbpq/f/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/g/c;->g(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/g/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/g/c;->b()Lcom/github/catvod/spider/merge2/xbpq/g/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/g/c;->c()Lcom/github/catvod/spider/merge2/xbpq/g/c;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/g/c;->f()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/g/c;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->B(Ljava/lang/String;)V

    sget-object v1, Lcom/github/catvod/spider/Init;->d:Landroid/content/SharedPreferences;

    const-string v2, "ali_tk"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "token缓存成功！"

    goto :goto_3e

    :cond_3c
    const-string p1, "token缓存失败！"

    :goto_3e
    invoke-static {p1}, Lcom/github/catvod/spider/Init;->show(Ljava/lang/String;)V

    const-string p1, "成功"

    goto :goto_49

    :cond_44
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->B(Ljava/lang/String;)V

    const-string p1, "失败"

    :goto_49
    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->j:Ljava/lang/String;

    return-void
.end method

.method public static b(Lcom/github/catvod/spider/merge2/xbpq/b/h;Lcom/github/catvod/spider/merge2/xbpq/g/c;)V
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "阿里云盘APP扫码登录"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0xf0

    invoke-static {v4}, Lcom/github/catvod/spider/merge2/xbpq/h/p;->a(I)I

    move-result v5

    const/16 v6, 0x19

    invoke-static {v6}, Lcom/github/catvod/spider/merge2/xbpq/h/p;->a(I)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v4}, Lcom/github/catvod/spider/merge2/xbpq/h/p;->a(I)I

    move-result v5

    invoke-static {v4}, Lcom/github/catvod/spider/merge2/xbpq/h/p;->a(I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/g/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/github/catvod/spider/merge2/xbpq/V/a;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/github/catvod/spider/Init;->context()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v5, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/github/catvod/spider/Init;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/b/a;

    invoke-direct {v1, p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/b/a;-><init>(Lcom/github/catvod/spider/merge2/xbpq/b/h;Lcom/github/catvod/spider/merge2/xbpq/g/c;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/b/b;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge2/xbpq/b/b;-><init>(Lcom/github/catvod/spider/merge2/xbpq/b/h;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b3} :catch_b3

    :catch_b3
    return-void
.end method

.method public static c(Lcom/github/catvod/spider/merge2/xbpq/b/h;)V
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    iget-object p0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->b:Landroid/app/AlertDialog;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-void
.end method

.method public static d(Lcom/github/catvod/spider/merge2/xbpq/b/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->C()V

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    const-string v0, "https://api.aliyundrive.com/"

    .line 1
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_f
    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->l()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/f/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_5e

    const-string p3, "AccessTokenInvalid"

    .line 3
    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_27

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->x()Z

    move-result p3

    goto :goto_57

    :cond_27
    const-string p3, "ShareLinkTokenInvalid"

    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_53

    const-string p3, "InvalidParameterNotMatch"

    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_38

    goto :goto_53

    :cond_38
    const-string p3, "QuotaExhausted"

    .line 4
    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_41

    goto :goto_51

    :cond_41
    const-string p3, "容量不够啦。"

    invoke-static {p3}, Lcom/github/catvod/spider/Init;->show(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->a()Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->g()Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->x()Z

    :goto_51
    const/4 p3, 0x0

    goto :goto_57

    .line 5
    :cond_53
    :goto_53
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->y()Z

    move-result p3

    :goto_57
    if-eqz p3, :cond_5e

    .line 6
    invoke-direct {p0, p1, p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5e
    return-object v0
.end method

.method private f(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copy..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->e:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->d()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v0, v3

    const-string p1, "{\"requests\":[{\"body\":{\"file_id\":\"%s\",\"share_id\":\"%s\",\"auto_rename\":true,\"to_parent_file_id\":\"root\",\"to_drive_id\":\"%s\"},\"headers\":{\"Content-Type\":\"application/json\"},\"id\":\"0\",\"method\":\"POST\",\"url\":\"/file/copy\"}],\"resource\":\"file\"}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "adrive/v2/batch"

    invoke-direct {p0, v0, p1, v2}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "responses"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "file_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "file_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "drive_id"

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "openFile/delete"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->s(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_38
    return-void
.end method

.method public static i()Lcom/github/catvod/spider/merge2/xbpq/b/h;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/b/g;->a:Lcom/github/catvod/spider/merge2/xbpq/b/h;

    return-object v0
.end method

.method private l()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->k()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authorization"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->d:Ljava/lang/String;

    const-string v2, "x-share-token"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private m(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const-string v3, "url"

    if-ge v1, v2, :cond_28

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "template_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->a:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_28
    const-string v1, ">原画<"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ">2K<"

    if-eqz v1, :cond_37

    invoke-direct {p0, p1, v2}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->m(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_37
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    const-string p2, ">超清<"

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->m(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_44
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private q(Lcom/github/catvod/spider/merge2/xbpq/g/e;Ljava/util/List;Ljava/util/LinkedHashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge2/xbpq/g/e;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge2/xbpq/g/e;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->r(Lcom/github/catvod/spider/merge2/xbpq/g/e;Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    return-void
.end method

.method private r(Lcom/github/catvod/spider/merge2/xbpq/g/e;Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/catvod/spider/merge2/xbpq/g/e;",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge2/xbpq/g/e;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "limit"

    const/16 v3, 0xc8

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->e:Ljava/lang/String;

    const-string v3, "share_id"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "parent_file_id"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "order_by"

    const-string v3, "name"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "order_direction"

    const-string v3, "ASC"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3a

    const-string v2, "marker"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "adrive/v3/file/list"

    const/4 v2, 0x1

    invoke-direct {p0, v0, p4, v2}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p4

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/github/catvod/spider/merge2/xbpq/g/e;

    invoke-virtual {v0, p4, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/github/catvod/spider/merge2/xbpq/g/e;

    .line 2
    invoke-virtual {p4}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5a
    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/g/e;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "folder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_76
    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10f

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    goto/16 :goto_10f

    :cond_90
    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "srt"

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_b0

    const-string v5, "ass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b0

    const-string v5, "ssa"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    goto :goto_b0

    :cond_ae
    const/4 v4, 0x0

    goto :goto_b1

    :cond_b0
    :goto_b0
    const/4 v4, 0x1

    :goto_b1
    if-eqz v4, :cond_5a

    .line 4
    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_d0

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_d4

    :cond_d0
    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->f()Ljava/lang/String;

    move-result-object v4

    .line 5
    :goto_d4
    invoke-virtual {p3, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e2
    invoke-virtual {p3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@@@"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5a

    :cond_10f
    :goto_10f
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->i(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/g/e;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5a

    :cond_11b
    invoke-virtual {p4}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12c

    invoke-virtual {p4}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->g()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->r(Lcom/github/catvod/spider/merge2/xbpq/g/e;Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    :cond_12c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_130
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_140

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/github/catvod/spider/merge2/xbpq/g/e;

    invoke-direct {p0, p4, p2, p3}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->q(Lcom/github/catvod/spider/merge2/xbpq/g/e;Ljava/util/List;Ljava/util/LinkedHashMap;)V

    goto :goto_130

    :cond_140
    return-void
.end method

.method private s(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    const-string v0, "https://open.aliyundrive.com/adrive/v1.0/"

    .line 1
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_f
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->k()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->f:Lcom/github/catvod/spider/merge2/xbpq/g/f;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/g/f;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authorization"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1, p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/f/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_82

    const-string p3, "AccessTokenInvalid"

    .line 4
    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_7a

    const-string p3, "refresh_token"

    :try_start_30
    const-string v3, "refreshOpenToken..."

    .line 5
    invoke-static {v3}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "grant_type"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->f:Lcom/github/catvod/spider/merge2/xbpq/g/f;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge2/xbpq/g/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "https://api.nn.ci/alist/ali_open/token"

    invoke-direct {p0, p3, v3}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->v(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "Too Many Requests"

    .line 6
    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_58

    const/4 v3, 0x0

    goto :goto_5e

    :cond_58
    const-string v3, "洗洗睡吧，Too Many Requests。"

    invoke-static {v3}, Lcom/github/catvod/spider/Init;->show(Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_5e
    if-eqz v3, :cond_61

    goto :goto_7a

    .line 7
    :cond_61
    invoke-static {p3}, Lcom/github/catvod/spider/merge2/xbpq/g/f;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/g/f;

    move-result-object p3

    .line 8
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aliyundrive_oauth"

    invoke-static {v4, v3}, Lcom/github/catvod/spider/merge2/xbpq/h/n;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iput-object p3, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->f:Lcom/github/catvod/spider/merge2/xbpq/g/f;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_75} :catch_76

    goto :goto_7b

    :catch_76
    move-exception p3

    invoke-static {p3}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_7a
    :goto_7a
    const/4 v1, 0x0

    :goto_7b
    if-eqz v1, :cond_82

    .line 10
    invoke-direct {p0, p1, p2, v2}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->s(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_82
    return-object v0
.end method

.method private t(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    const-string v0, "OAuth Redirect..."

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "grant_type"

    const-string v1, "authorization_code"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "https://api.nn.ci/alist/ali_open/code"

    invoke-direct {p0, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->v(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Too Many Requests"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    goto :goto_2c

    :cond_26
    const-string v0, "洗洗睡吧，Too Many Requests。"

    invoke-static {v0}, Lcom/github/catvod/spider/Init;->show(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_2c
    if-eqz v0, :cond_2f

    return-void

    .line 2
    :cond_2f
    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/g/f;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/g/f;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aliyundrive_oauth"

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/h/n;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->f:Lcom/github/catvod/spider/merge2/xbpq/g/f;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p1

    invoke-static {p1}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :goto_48
    return-void
.end method

.method private u()V
    .registers 5

    :try_start_0
    const-string v0, "OAuth Request..."

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "authorize"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "scope"

    const-string v3, "user:base,file:all:read,file:all:write"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "https://open.aliyundrive.com/oauth/users/authorize?client_id=76917ccccd4441c39457a04f6084fb2f&redirect_uri=https://alist.nn.ci/tool/aliyundrive/callback&scope=user:base,file:all:read,file:all:write&state="

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/github/catvod/spider/merge2/xbpq/g/b;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/g/b;

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->t(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v0

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :goto_3a
    return-void
.end method

.method private v(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 4

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    const-string v0, "https://api.aliyundrive.com/"

    .line 1
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_f
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->k()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/f/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private x()Z
    .registers 7

    const-string v0, "refresh_token"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    const-string v3, "refreshAccessToken..."

    invoke-static {v3}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v4, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->e()Ljava/lang/String;

    move-result-object v4

    :cond_1c
    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1
    invoke-static {v4, v1, v1}, Lcom/github/catvod/spider/merge2/xbpq/f/b;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 2
    :cond_28
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "grant_type"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "https://auth.aliyundrive.com/v2/account/token"

    invoke-direct {p0, v0, v3}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->v(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->f(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/g/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->g()Lcom/github/catvod/spider/merge2/xbpq/g/g;

    iput-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->u()V

    iput-object v4, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->c:Ljava/lang/String;

    return v2

    :cond_4f
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_55} :catch_55

    :catch_55
    nop

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v3, ""

    if-lez v0, :cond_83

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_83

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    iput-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->x()Z

    move-result v0

    if-eqz v0, :cond_83

    return v2

    :cond_83
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v4, "sp"

    if-ge v0, v2, :cond_b8

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->i:Z

    if-eqz v0, :cond_96

    const-string v0, "配置的token无效！"

    invoke-static {v0}, Lcom/github/catvod/spider/Init;->show(Ljava/lang/String;)V

    :cond_96
    sget-object v0, Lcom/github/catvod/spider/Init;->d:Landroid/content/SharedPreferences;

    const-string v5, "ali_tk"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b8

    iput-object v4, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->x()Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->i:Z

    if-eqz v0, :cond_b7

    const-string v0, "使用缓存token成功！"

    invoke-static {v0}, Lcom/github/catvod/spider/Init;->show(Ljava/lang/String;)V

    :cond_b7
    return v2

    :cond_b8
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->j:Ljava/lang/String;

    const-string v5, "成功"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    const-string v0, "扫码的token未起作用，请重试！"

    invoke-static {v0}, Lcom/github/catvod/spider/Init;->show(Ljava/lang/String;)V

    :cond_c7
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->j:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d7

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_143

    :cond_d7
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    const-string v0, "缓存token失效!"

    invoke-static {v0}, Lcom/github/catvod/spider/Init;->show(Ljava/lang/String;)V

    :cond_e4
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->j:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    iput-object v4, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->j:Ljava/lang/String;

    :cond_ee
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->a()Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->g()Lcom/github/catvod/spider/merge2/xbpq/g/g;

    iput-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->C()V

    const-string v0, "https://passport.aliyundrive.com/newlogin/qrcode/generate.do?appName=aliyun_drive&fromSite=52&appName=aliyun_drive&appEntrance=web&isMobile=false&lang=zh_CN&returnUrl=&bizParams=&_bx-v=2.2.3"

    .line 3
    invoke-static {v0, v1, v1}, Lcom/github/catvod/spider/merge2/xbpq/f/b;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/c;->g(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/c;->b()Lcom/github/catvod/spider/merge2/xbpq/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/c;->c()Lcom/github/catvod/spider/merge2/xbpq/g/c;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/b/e;

    invoke-direct {v1, p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/e;-><init>(Lcom/github/catvod/spider/merge2/xbpq/b/h;Lcom/github/catvod/spider/merge2/xbpq/g/c;)V

    invoke-static {v1}, Lcom/github/catvod/spider/Init;->run(Ljava/lang/Runnable;)V

    :goto_115
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_12b

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_115

    .line 5
    :cond_12b
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->j:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_143

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->x()Z

    move-result v0

    if-eqz v0, :cond_143

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->i:Z

    if-eqz v0, :cond_142

    const-string v0, "扫码登录成功！"

    invoke-static {v0}, Lcom/github/catvod/spider/Init;->show(Ljava/lang/String;)V

    :cond_142
    return v2

    :cond_143
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->y()Z

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->x()Z

    :cond_14
    return-void
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "file_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "drive_id"

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "openFile/getDownloadUrl"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v3}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->s(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "url"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_38
    .catchall {:try_start_1 .. :try_end_30} :catchall_36

    if-eqz v0, :cond_35

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->h(Ljava/lang/String;)V

    :cond_35
    return-object p1

    :catchall_36
    move-exception p1

    goto :goto_44

    :catch_38
    move-exception p1

    :try_start_39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_36

    if-eqz v0, :cond_43

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->h(Ljava/lang/String;)V

    :cond_43
    return-object p1

    :goto_44
    if-eqz v0, :cond_49

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->h(Ljava/lang/String;)V

    :cond_49
    throw p1
.end method

.method public final k()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Referer"

    const-string v2, "https://www.aliyundrive.com/"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "file_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "drive_id"

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "category"

    const-string v2, "live_transcoding"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "url_expire_sec"

    const-string v2, "14400"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "openFile/getVideoPreviewPlayInfo"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->s(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "video_preview_play_info"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "live_transcoding_task_list"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->m(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_50
    .catchall {:try_start_1 .. :try_end_48} :catchall_4e

    if-eqz v0, :cond_4d

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->h(Ljava/lang/String;)V

    :cond_4d
    return-object p1

    :catchall_4e
    move-exception p1

    goto :goto_5c

    :catch_50
    move-exception p1

    :try_start_51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_4e

    if-eqz v0, :cond_5b

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->h(Ljava/lang/String;)V

    :cond_5b
    return-object p1

    :goto_5c
    if-eqz v0, :cond_61

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->h(Ljava/lang/String;)V

    :cond_61
    throw p1
.end method

.method public final o([Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge2/xbpq/c/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_4e

    aget-object v4, p1, v3

    const-string v5, "@@@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_4b

    :cond_15
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/github/catvod/spider/Proxy1;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "?do=ali&type=sub&file_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1
    new-instance v7, Lcom/github/catvod/spider/merge2/xbpq/c/b;

    invoke-direct {v7}, Lcom/github/catvod/spider/merge2/xbpq/c/b;-><init>()V

    .line 2
    invoke-virtual {v7, v5}, Lcom/github/catvod/spider/merge2/xbpq/c/b;->b(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/b;

    invoke-virtual {v7, v6}, Lcom/github/catvod/spider/merge2/xbpq/c/b;->a(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/github/catvod/spider/merge2/xbpq/c/b;->c(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/b;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_4e
    return-object v0
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/c;
    .registers 15

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->e:Ljava/lang/String;

    const-string v2, "share_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adrive/v3/share_link/get_share_by_anonymous"

    invoke-direct {p0, v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->v(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Lcom/github/catvod/spider/merge2/xbpq/g/e;

    const-string v4, "file_infos"

    .line 1
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ""

    const/4 v7, 0x0

    if-nez v5, :cond_33

    goto :goto_70

    :cond_33
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-nez p2, :cond_3b

    :cond_39
    move-object p2, v6

    goto :goto_70

    :cond_3b
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v4, "type"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "folder"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    const-string v4, "file_id"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_70

    :cond_54
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-string v4, "category"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "video"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    const-string p2, "root"

    .line 2
    :goto_70
    invoke-direct {v3, p2}, Lcom/github/catvod/spider/merge2/xbpq/g/e;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, v3, v0, v2, v6}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->r(Lcom/github/catvod/spider/merge2/xbpq/g/e;Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->h:Ljava/lang/String;

    const-string v3, "超清"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v3, ">2K<"

    const/4 v4, 0x2

    const-string v5, ">原画<"

    const-string v8, ">超清<"

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz p2, :cond_96

    new-array p2, v9, [Ljava/lang/String;

    aput-object v8, p2, v7

    aput-object v5, p2, v10

    aput-object v3, p2, v4

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_b9

    :cond_96
    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->h:Ljava/lang/String;

    const-string v11, "原画"

    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ad

    new-array p2, v9, [Ljava/lang/String;

    aput-object v5, p2, v7

    aput-object v3, p2, v10

    aput-object v8, p2, v4

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_b9

    :cond_ad
    new-array p2, v9, [Ljava/lang/String;

    aput-object v3, p2, v7

    aput-object v5, p2, v10

    aput-object v8, p2, v4

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_b9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_147

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge2/xbpq/g/e;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/github/catvod/spider/merge2/xbpq/h/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge2/xbpq/g/e;->f()Ljava/lang/String;

    move-result-object v5

    const-string v9, "."

    .line 5
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_110

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_110

    invoke-direct {p0, v5}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->f(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    goto :goto_13b

    :cond_110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_137

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-direct {p0, v10}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->f(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11d

    :cond_137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    :goto_13b
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c7

    :cond_147
    :goto_147
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_159

    const-string v0, "#"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_147

    :cond_159
    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->g:Lcom/github/catvod/spider/merge2/xbpq/g/g;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/g/g;->e()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->i:Z

    const-string v5, "，链接："

    const-string v7, "，播放"

    const-string v8, "share_name"

    if-eqz v3, :cond_18d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_18d

    sget-object v3, Lcom/github/catvod/spider/Init;->d:Landroid/content/SharedPreferences;

    const-string v9, "ali_tk"

    invoke-interface {v3, v9, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "正在使用扫码存储token："

    goto :goto_19e

    :cond_18d
    iget-boolean v3, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->i:Z

    if-eqz v3, :cond_1b9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1b9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "正在使用配置中的token："

    :goto_19e
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c3

    :cond_1b9
    sget-object v2, Lcom/github/catvod/spider/merge2/xbpq/b/h;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c3

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/b/h;->k:Ljava/lang/String;

    :cond_1c3
    :goto_1c3
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/b/h;->l:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1d3

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/b/h;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->d(Ljava/lang/String;)V

    :cond_1d3
    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/b/h;->m:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1e0

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/b/h;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->b(Ljava/lang/String;)V

    :cond_1e0
    const-string p1, "avatar"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->g(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->f(Ljava/lang/String;)V

    const-string p1, "$$$"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->i(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->h(Ljava/lang/String;)V

    const-string p1, "阿里云盘"

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public final w(Ljava/util/Map;)[Ljava/lang/Object;
    .registers 5
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

    const-string v0, "file_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->l()Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/f/b;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xc8

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "application/octet-stream"

    aput-object v2, v0, v1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x2

    aput-object v1, v0, p1

    return-object v0
.end method

.method public final y()Z
    .registers 4

    :try_start_0
    const-string v0, "refreshShareToken..."

    invoke-static {v0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "share_id"

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "share_pwd"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "v2/share_link/get_share_token"

    invoke-direct {p0, v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/h;->v(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "share_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->d:Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2d

    const/4 v0, 0x1

    return v0

    :catch_2d
    move-exception v0

    const-string v1, "来晚啦，该分享已失效。"

    invoke-static {v1}, Lcom/github/catvod/spider/Init;->show(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final z(Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "[^A-Za-z0-9]"

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v0, :cond_16

    const-string p1, "https://cat.colamint.club/ali-tokent"

    .line 1
    :goto_d
    invoke-static {p1, v2, v2}, Lcom/github/catvod/spider/merge2/xbpq/f/b;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6f

    :cond_16
    const-string v0, "原画"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "超清"

    if-nez v4, :cond_3a

    const-string v4, ">原画<"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_3a

    :cond_29
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    const-string v4, ">超清<"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3c

    :cond_37
    iput-object v5, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->h:Ljava/lang/String;

    goto :goto_3c

    :cond_3a
    :goto_3a
    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->h:Ljava/lang/String;

    :cond_3c
    :goto_3c
    const-string v4, "调试模式"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_47

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->i:Z

    :cond_47
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ">2K<"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "><"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "普画"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    goto/16 :goto_d

    :cond_6f
    :goto_6f
    if-nez p1, :cond_72

    goto :goto_73

    :cond_72
    move-object v3, p1

    :goto_73
    iput-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/b/h;->c:Ljava/lang/String;

    return-void
.end method
