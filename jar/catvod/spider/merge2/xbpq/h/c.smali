.class public final synthetic Lcom/github/catvod/spider/merge2/xbpq/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/github/catvod/spider/merge2/xbpq/h/k;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/h/k;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/h/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/h/c;->b:Lcom/github/catvod/spider/merge2/xbpq/h/k;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/h/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/h/c;->b:Lcom/github/catvod/spider/merge2/xbpq/h/k;

    invoke-static {v0, v1, p1}, Lcom/github/catvod/spider/merge2/xbpq/h/l;->d(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/h/k;Landroid/content/DialogInterface;)V

    return-void
.end method
