.class final Lcom/github/catvod/spider/merge2/xbpq/h/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->r()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_1d

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->r()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->s(Z)Z

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->o()Landroid/widget/Button;

    move-result-object p1

    const-string v1, "■"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->t()V

    goto :goto_3a

    :cond_1d
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->r()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->s(Z)Z

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->o()Landroid/widget/Button;

    move-result-object p1

    const-string v1, "ー"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->v()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    :goto_3a
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->u()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->u()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
