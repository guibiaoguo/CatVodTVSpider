.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/j0;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "ScriptDataEscapedEndTagOpen"

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 5

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->C()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g(Z)Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    iget-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->s()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->n(C)V

    iget-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->s()C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->C:Lcom/github/catvod/spider/merge2/xbpq/d/k0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_2c

    :cond_22
    const-string p2, "</"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->k(Ljava/lang/String;)V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->x:Lcom/github/catvod/spider/merge2/xbpq/d/f0;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :goto_2c
    return-void
.end method
