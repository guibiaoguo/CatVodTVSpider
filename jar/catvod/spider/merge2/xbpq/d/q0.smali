.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/q0;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "ScriptDataDoubleEscapedLessthanSign"

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 4

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->y(C)Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i(C)V

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->h()V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->I:Lcom/github/catvod/spider/merge2/xbpq/d/r0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_19

    :cond_14
    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->E:Lcom/github/catvod/spider/merge2/xbpq/d/m0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :goto_19
    return-void
.end method
