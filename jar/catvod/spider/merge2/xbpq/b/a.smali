.class public final synthetic Lcom/github/catvod/spider/merge2/xbpq/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/github/catvod/spider/merge2/xbpq/b/h;

.field public final synthetic b:Lcom/github/catvod/spider/merge2/xbpq/g/c;


# direct methods
.method public synthetic constructor <init>(Lcom/github/catvod/spider/merge2/xbpq/b/h;Lcom/github/catvod/spider/merge2/xbpq/g/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/a;->a:Lcom/github/catvod/spider/merge2/xbpq/b/h;

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/b/a;->b:Lcom/github/catvod/spider/merge2/xbpq/g/c;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/b/a;->a:Lcom/github/catvod/spider/merge2/xbpq/b/h;

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/b/a;->b:Lcom/github/catvod/spider/merge2/xbpq/g/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/b/d;

    invoke-direct {v1, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/d;-><init>(Lcom/github/catvod/spider/merge2/xbpq/b/h;Lcom/github/catvod/spider/merge2/xbpq/g/c;)V

    invoke-static {v1}, Lcom/github/catvod/spider/Init;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
