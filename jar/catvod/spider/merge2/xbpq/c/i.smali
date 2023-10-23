.class public final Lcom/github/catvod/spider/merge2/xbpq/c/i;
.super Lcom/github/catvod/spider/merge2/xbpq/c/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;-><init>()V

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    const-string v0, "name"

    .line 1
    invoke-super {p0, v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/r;

    const-string p1, "publicId"

    invoke-super {p0, p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/r;

    const-string p2, "systemId"

    invoke-super {p0, p2, p3}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/r;

    .line 2
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/i;->K(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    const-string p1, "PUBLIC"

    goto :goto_2c

    :cond_24
    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge2/xbpq/c/i;->K(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p1, "SYSTEM"

    :goto_2c
    const-string p2, "pubSysKey"

    .line 3
    invoke-super {p0, p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/r;

    :cond_31
    return-void
.end method

.method private K(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->c(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public final L(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "pubSysKey"

    invoke-super {p0, v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/r;

    :cond_7
    return-void
.end method

.method public final bridge synthetic h()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final m()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 1

    return-object p0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    const-string v0, "#doctype"

    return-object v0
.end method

.method final w(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    .registers 7

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge2/xbpq/c/g;->g()I

    move-result p2

    const/4 p3, 0x1

    const-string v0, "systemId"

    const-string v1, "publicId"

    if-ne p2, p3, :cond_1a

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/i;->K(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1a

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/i;->K(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1a

    const-string p2, "<!doctype"

    goto :goto_1c

    :cond_1a
    const-string p2, "<!DOCTYPE"

    :goto_1c
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const-string p2, "name"

    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge2/xbpq/c/i;->K(Ljava/lang/String;)Z

    move-result p3

    const-string v2, " "

    if-eqz p3, :cond_34

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    .line 1
    invoke-super {p0, p2}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_34
    const-string p2, "pubSysKey"

    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge2/xbpq/c/i;->K(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_47

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    .line 3
    invoke-super {p0, p2}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_47
    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/i;->K(Ljava/lang/String;)Z

    move-result p2

    const/16 p3, 0x22

    const-string v2, " \""

    if-eqz p2, :cond_60

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    .line 5
    invoke-super {p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_60
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/i;->K(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_75

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    .line 7
    invoke-super {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_75
    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method final x(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    .registers 4

    return-void
.end method
