.class final Lcom/github/catvod/spider/merge2/xbpq/h/g;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHideCustomView()V
    .registers 3

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_45

    :cond_d
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->p()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->q()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->p()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3c
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->r()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->t()V

    :cond_45
    :goto_45
    return-void
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->f(Landroid/view/View;)Landroid/view/View;

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->g()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->q()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->p()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_30
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->u()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->r()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->v()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_4e
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->p()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_5b
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
