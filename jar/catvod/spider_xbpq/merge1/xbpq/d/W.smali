.class final enum Lcom/github/catvod/spider/merge1/xbpq/d/W;
.super Lcom/github/catvod/spider/merge1/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "RawtextLessthanSign"

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge1/xbpq/d/Q;Lcom/github/catvod/spider/merge1/xbpq/d/a;)V
    .registers 4

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->y(C)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->h()V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->q:Lcom/github/catvod/spider/merge1/xbpq/d/X;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->a(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_1b

    :cond_11
    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->i(C)V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->g:Lcom/github/catvod/spider/merge1/xbpq/d/U0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    :goto_1b
    return-void
.end method
