.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/x0;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "AttributeValue_singleQuoted"

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->f(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    iget-object v2, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->l(Ljava/lang/String;)V

    goto :goto_16

    :cond_11
    iget-object v1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->w()V

    :goto_16
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->e()C

    move-result p2

    if-eqz p2, :cond_4c

    const v1, 0xffff

    if-eq p2, v1, :cond_43

    const/16 v1, 0x27

    const/16 v2, 0x26

    if-eq p2, v2, :cond_2f

    if-eq p2, v1, :cond_2c

    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    goto :goto_54

    :cond_2c
    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->Q:Lcom/github/catvod/spider/merge2/xbpq/d/A2;

    goto :goto_48

    :cond_2f
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->d(Ljava/lang/Character;Z)[I

    move-result-object p2

    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    if-eqz p2, :cond_3f

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->m([I)V

    goto :goto_57

    :cond_3f
    invoke-virtual {p1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->k(C)V

    goto :goto_57

    :cond_43
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->p(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    :goto_48
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_57

    :cond_4c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    const p2, 0xfffd

    :goto_54
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->k(C)V

    :goto_57
    return-void
.end method
