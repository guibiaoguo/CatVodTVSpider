.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/g1;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "EndTagOpen"

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 5

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->t()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->p(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    const-string p2, "</"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->k(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_3b

    :cond_14
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->C()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g(Z)Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->l:Lcom/github/catvod/spider/merge2/xbpq/d/ST;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_3b

    :cond_24
    const/16 v1, 0x3e

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->y(C)Z

    move-result p2

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    if-eqz p2, :cond_33

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_3b

    :cond_33
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->e()V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->S:Lcom/github/catvod/spider/merge2/xbpq/d/C2;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :goto_3b
    return-void
.end method
