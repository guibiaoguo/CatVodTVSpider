.class final Lcom/github/catvod/spider/merge2/xbpq/h/h;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :try_start_3
    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->i:Ljava/lang/String;

    const-string p2, "人机"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_26

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->u()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/16 p2, 0xf0

    if-ge p1, p2, :cond_26

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->u()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_26
    sget-object p1, Lcom/github/catvod/spider/merge2/xbpq/h/l;->i:Ljava/lang/String;

    const-string p2, "验证码"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_38

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->w()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_48

    :cond_38
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->i()V

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->l(J)J

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->n(J)J
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_48
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_62

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->h()I

    move-result p2

    if-lez p2, :cond_1f

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->i()V

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->l(J)J

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->n(J)J

    :cond_1f
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    return v1

    :cond_23
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->j()I

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->h()I

    move-result v0

    if-ne v0, v1, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->l(J)J

    goto :goto_62

    :cond_34
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->h()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_62

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->n(J)J

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->m()J

    move-result-wide p1

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->k()J

    move-result-wide v4

    sub-long/2addr p1, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, p1, v4

    if-gez v0, :cond_58

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->v()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_58
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->i()V

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->l(J)J

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->n(J)J

    return v1

    :cond_62
    :goto_62
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 13

    const-string v0, ";post;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_e

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_80

    :cond_e
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-le v4, v2, :cond_7c

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    const-string v0, "="

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, ""

    if-gez v4, :cond_2d

    goto :goto_77

    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\\&"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v6, p2

    const/4 v7, 0x0

    :goto_3a
    if-ge v7, v6, :cond_6a

    aget-object v8, p2, v7

    :try_start_3e
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-le v9, v2, :cond_5e

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5f

    :cond_5e
    move-object v8, v5

    :goto_5f
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_67} :catch_77

    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    :cond_6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2
    :catch_77
    :goto_77
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    goto :goto_7d

    :cond_7c
    const/4 p2, 0x0

    :goto_7d
    invoke-virtual {p1, v1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    :goto_80
    return v2
.end method
