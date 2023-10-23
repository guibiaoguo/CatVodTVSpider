.class public final Lcom/github/catvod/spider/merge2/xbpq/h/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/webkit/CookieManager; = null

.field private static b:Landroid/view/View; = null

.field private static c:Landroid/webkit/WebView; = null

.field private static d:Landroid/widget/EditText; = null

.field private static e:Landroid/app/Activity; = null

.field private static f:Landroid/app/AlertDialog; = null

.field private static g:Landroid/widget/Button; = null

.field private static h:Landroid/widget/Button; = null

.field public static i:Ljava/lang/String; = ""

.field private static j:I

.field private static k:J

.field private static l:J

.field private static m:Z

.field private static n:Z

.field private static o:Landroid/widget/FrameLayout;


# direct methods
.method public static A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/h/k;)V
    .registers 7

    const-string v0, "验证码"

    :try_start_2
    invoke-static {}, Lcom/github/catvod/spider/Init;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    sget-object v2, Lcom/github/catvod/spider/merge2/xbpq/h/l;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_28

    const/4 v1, 0x1

    sput-boolean v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->n:Z

    :cond_28
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/github/catvod/spider/merge2/xbpq/h/l;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/github/catvod/spider/merge2/xbpq/h/l;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5c

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->e:Landroid/app/Activity;

    invoke-static {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string p0, "取消"

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/h/e;->a:Lcom/github/catvod/spider/merge2/xbpq/h/e;

    invoke-virtual {v1, p0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p0, "确定"

    new-instance p2, Lcom/github/catvod/spider/merge2/xbpq/h/d;

    invoke-direct {p2, p1, p3}, Lcom/github/catvod/spider/merge2/xbpq/h/d;-><init>(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/h/k;)V

    invoke-virtual {v1, p0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p0, Lcom/github/catvod/spider/merge2/xbpq/h/b;

    invoke-direct {p0, p3}, Lcom/github/catvod/spider/merge2/xbpq/h/b;-><init>(Lcom/github/catvod/spider/merge2/xbpq/h/k;)V

    goto :goto_6c

    :cond_5c
    sget-object p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->e:Landroid/app/Activity;

    invoke-static {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance p0, Lcom/github/catvod/spider/merge2/xbpq/h/c;

    invoke-direct {p0, p1, p3}, Lcom/github/catvod/spider/merge2/xbpq/h/c;-><init>(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/h/k;)V

    :goto_6c
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->f:Landroid/app/AlertDialog;

    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/h/f;->a:Lcom/github/catvod/spider/merge2/xbpq/h/f;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->f:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    sget-object p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->f:Landroid/app/AlertDialog;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sget-object p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->f:Landroid/app/AlertDialog;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    sget-object p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_a8

    sget-object p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->f:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->z()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a3} :catch_a4

    goto :goto_a8

    :catch_a4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a8
    :goto_a8
    return-void
.end method

.method public static synthetic a()V
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/h/k;Landroid/content/DialogInterface;)V
    .registers 8

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_18

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_1d

    :cond_18
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    :goto_1d
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v1, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz p0, :cond_78

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_78

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mac_history_mxpro=[^;]+?;"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5f

    const/4 p0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_5f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$$$"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_78
    if-eqz p1, :cond_a3

    sget-object p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d:Landroid/widget/EditText;

    if-eqz p0, :cond_8f

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p0

    if-le p0, v2, :cond_8f

    sget-object p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_91

    :cond_8f
    const-string p0, "1"

    :goto_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/h/k;->vertifyCode(Ljava/lang/String;)V

    :cond_a3
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->x()V

    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic c(Lcom/github/catvod/spider/merge2/xbpq/h/k;Landroid/content/DialogInterface;)V
    .registers 3

    if-eqz p0, :cond_7

    const-string v0, "0"

    invoke-interface {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/h/k;->vertifyCode(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->x()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/h/k;Landroid/content/DialogInterface;)V
    .registers 8

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_18

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_1d

    :cond_18
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    :goto_1d
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v1, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz p0, :cond_78

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_78

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mac_history_mxpro=[^;]+?;"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5f

    const/4 p0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_5f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$$$"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_78
    if-eqz p1, :cond_a3

    sget-object p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d:Landroid/widget/EditText;

    if-eqz p0, :cond_8f

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p0

    if-le p0, v2, :cond_8f

    sget-object p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_91

    :cond_8f
    const-string p0, "1"

    :goto_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/h/k;->vertifyCode(Ljava/lang/String;)V

    :cond_a3
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->x()V

    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic e()Landroid/view/View;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Landroid/view/View;)Landroid/view/View;
    .registers 1

    sput-object p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g()Landroid/widget/FrameLayout;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->o:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic h()I
    .registers 1

    sget v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->j:I

    return v0
.end method

.method static synthetic i()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->j:I

    return-void
.end method

.method static synthetic j()I
    .registers 2

    sget v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->j:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->j:I

    return v0
.end method

.method static synthetic k()J
    .registers 2

    sget-wide v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->k:J

    return-wide v0
.end method

.method static synthetic l(J)J
    .registers 2

    sput-wide p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->k:J

    return-wide p0
.end method

.method static synthetic m()J
    .registers 2

    sget-wide v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->l:J

    return-wide v0
.end method

.method static synthetic n(J)J
    .registers 2

    sput-wide p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->l:J

    return-wide p0
.end method

.method static synthetic o()Landroid/widget/Button;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic p()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic q()Z
    .registers 1

    sget-boolean v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->n:Z

    return v0
.end method

.method static synthetic r()Z
    .registers 1

    sget-boolean v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->m:Z

    return v0
.end method

.method static synthetic s(Z)Z
    .registers 1

    sput-boolean p0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->m:Z

    return p0
.end method

.method static synthetic t()V
    .registers 0

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->z()V

    return-void
.end method

.method static synthetic u()Landroid/webkit/WebView;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic v()Landroid/app/AlertDialog;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->f:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic w()Landroid/widget/EditText;
    .registers 1

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private static x()V
    .registers 2

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    :cond_2d
    return-void
.end method

.method public static y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/github/catvod/spider/merge2/xbpq/h/l;->o:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->i:Ljava/lang/String;

    const-string v6, "验证码"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0x8

    const/4 v8, -0x2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ltz v5, :cond_3b

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_6f

    :cond_3b
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->o:Landroid/widget/FrameLayout;

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v5, 0x40000

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :goto_6f
    new-instance v5, Landroid/webkit/WebView;

    invoke-direct {v5, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    new-instance v12, Lcom/github/catvod/spider/merge2/xbpq/h/g;

    invoke-direct {v12}, Lcom/github/catvod/spider/merge2/xbpq/h/g;-><init>()V

    invoke-virtual {v5, v12}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    new-instance v12, Lcom/github/catvod/spider/merge2/xbpq/h/h;

    invoke-direct {v12}, Lcom/github/catvod/spider/merge2/xbpq/h/h;-><init>()V

    invoke-virtual {v5, v12}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v5, v10}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v5, v11}, Landroid/view/View;->setFocusable(Z)V

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v5, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v5, v11}, Landroid/view/View;->setEnabled(Z)V

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_ab

    invoke-virtual {v5, v10}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_ab
    invoke-virtual {v5, v10}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {v5, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v5, v11}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v5, v11}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {v5, v11}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    sget-object v12, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v5, v12}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    sget-object v12, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v5, v12}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    sget-object v12, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v5, v12}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {v5, v11}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v5, v11}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v5, v11}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v5, v11}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/16 v12, 0x42

    invoke-virtual {v5, v12}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    sget-object v12, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v12, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget-object v12, Lcom/github/catvod/spider/XBPQ;->F:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v11, :cond_ec

    sget-object v12, Lcom/github/catvod/spider/XBPQ;->F:Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_ec
    invoke-static/range {p0 .. p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v5

    sput-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v5, v11}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v5}, Landroid/webkit/CookieManager;->removeAllCookie()V

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v5}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_12f

    const-string v5, ";"

    move-object/from16 v12, p2

    invoke-virtual {v12, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v12, v5

    const/4 v14, 0x0

    :goto_112
    if-ge v14, v12, :cond_11e

    aget-object v15, v5, v14

    sget-object v10, Lcom/github/catvod/spider/merge2/xbpq/h/l;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v10, v1, v15}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_112

    :cond_11e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v13, :cond_12a

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_12f

    :cond_12a
    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V

    :cond_12f
    :goto_12f
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d:Landroid/widget/EditText;

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/h/l;->i:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d:Landroid/widget/EditText;

    const v5, -0xbbbbbc

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d:Landroid/widget/EditText;

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/view/View;->setFocusable(Z)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->i:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_17b

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2

    :cond_17b
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe8000000000000L  # 0.75

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    double-to-int v6, v6

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-double v7, v1

    const-wide v9, 0x3feccccccccccccdL  # 0.9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    double-to-int v1, v7

    invoke-direct {v5, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/Button;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v0, v2, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g:Landroid/widget/Button;

    const/16 v6, 0x14

    invoke-virtual {v1, v6, v6, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/view/View;->setEnabled(Z)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/view/View;->setFocusable(Z)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g:Landroid/widget/Button;

    const-string v5, "■"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g:Landroid/widget/Button;

    const v5, -0x333334

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g:Landroid/widget/Button;

    const/high16 v7, 0x40a00000  # 5.0f

    const v8, -0x777778

    invoke-virtual {v1, v7, v7, v7, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g:Landroid/widget/Button;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v9, 0x1e

    invoke-static {v9}, Lcom/github/catvod/spider/merge2/xbpq/h/p;->a(I)I

    move-result v10

    invoke-static {v9}, Lcom/github/catvod/spider/merge2/xbpq/h/p;->a(I)I

    move-result v12

    invoke-direct {v7, v10, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g:Landroid/widget/Button;

    new-instance v7, Lcom/github/catvod/spider/merge2/xbpq/h/i;

    invoke-direct {v7}, Lcom/github/catvod/spider/merge2/xbpq/h/i;-><init>()V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-direct {v1, v0, v2, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->h:Landroid/widget/Button;

    invoke-virtual {v1, v9, v6, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->h:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/view/View;->setEnabled(Z)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->h:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/view/View;->setFocusable(Z)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->h:Landroid/widget/Button;

    invoke-virtual {v1, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->h:Landroid/widget/Button;

    const-string v2, "☒"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->h:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->h:Landroid/widget/Button;

    const/high16 v2, 0x40800000  # 4.0f

    invoke-virtual {v1, v2, v2, v2, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->h:Landroid/widget/Button;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v9}, Lcom/github/catvod/spider/merge2/xbpq/h/p;->a(I)I

    move-result v5

    invoke-static {v9}, Lcom/github/catvod/spider/merge2/xbpq/h/p;->a(I)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->h:Landroid/widget/Button;

    new-instance v2, Lcom/github/catvod/spider/merge2/xbpq/h/j;

    invoke-direct {v2}, Lcom/github/catvod/spider/merge2/xbpq/h/j;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->h:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->c:Landroid/webkit/WebView;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-object v3
.end method

.method private static z()V
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->f:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v4, 0x3fe8000000000000L  # 0.75

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v4, 0x3feccccccccccccdL  # 0.9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/h/l;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
