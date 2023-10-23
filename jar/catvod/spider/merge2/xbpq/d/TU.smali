.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/TU;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "RcdataLessthanSign"

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 7

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->y(C)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->h()V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->n:Lcom/github/catvod/spider/merge2/xbpq/d/UV;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->a(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_69

    :cond_11
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->C()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f

    const-string v0, "</"

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/d;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->D(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-gt v1, v2, :cond_49

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->D(Ljava/lang/CharSequence;)I

    move-result p2

    if-le p2, v2, :cond_47

    goto :goto_49

    :cond_47
    const/4 p2, 0x0

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 p2, 0x1

    :goto_4a
    if-nez p2, :cond_5f

    .line 4
    invoke-virtual {p1, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->g(Z)Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    move-result-object p2

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->s(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    iput-object p2, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->o()V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->j:Lcom/github/catvod/spider/merge2/xbpq/d/f1;

    goto :goto_66

    :cond_5f
    const-string p2, "<"

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->k(Ljava/lang/String;)V

    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->e:Lcom/github/catvod/spider/merge2/xbpq/d/y0;

    :goto_66
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :goto_69
    return-void
.end method
