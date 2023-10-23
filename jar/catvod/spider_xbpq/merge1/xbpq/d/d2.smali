.class final enum Lcom/github/catvod/spider/merge1/xbpq/d/d0;
.super Lcom/github/catvod/spider/merge1/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "ScriptDataEscapeStart"

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge1/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge1/xbpq/d/Q;Lcom/github/catvod/spider/merge1/xbpq/d/a;)V
    .registers 4

    const/16 v0, 0x2d

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->y(C)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->i(C)V

    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->w:Lcom/github/catvod/spider/merge1/xbpq/d/e0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->a(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    goto :goto_16

    :cond_11
    sget-object p2, Lcom/github/catvod/spider/merge1/xbpq/d/h1;->h:Lcom/github/catvod/spider/merge1/xbpq/d/d1;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->u(Lcom/github/catvod/spider/merge1/xbpq/d/h1;)V

    :goto_16
    return-void
.end method
