.class final Lcom/github/catvod/spider/merge1/aQ/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static Eg(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/dz;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->GL()Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Yw;->Ze()Lcom/github/catvod/spider/merge1/aQ/dz;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Yw;->Ze()Lcom/github/catvod/spider/merge1/aQ/dz;

    move-result-object p0

    goto :goto_1b

    :cond_11
    new-instance p0, Lcom/github/catvod/spider/merge1/aQ/dz;

    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/iL;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/iL;-><init>()V

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/dz;-><init>(Lcom/github/catvod/spider/merge1/aQ/HW;)V

    :goto_1b
    return-object p0
.end method

.method static W(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/Yw$DK;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->GL()Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object p0

    if-eqz p0, :cond_7

    goto :goto_e

    .line 2
    :cond_7
    new-instance p0, Lcom/github/catvod/spider/merge1/aQ/Yw;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/Yw;-><init>(Ljava/lang/String;)V

    :goto_e
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Yw;->i5()Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    move-result-object p0

    return-object p0
.end method
