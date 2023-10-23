.class final enum Lcom/github/catvod/spider/merge1/aQ/rx$Hz;
.super Lcom/github/catvod/spider/merge1/aQ/rx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/rx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/github/catvod/spider/merge1/aQ/rx;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/aQ/rx$P;)V

    return-void
.end method


# virtual methods
.method O2(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->A()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->Eg()Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->c(Lcom/github/catvod/spider/merge1/aQ/lK$AA;)V

    goto :goto_37

    .line 3
    :cond_e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->cG()Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/rx;->W(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->Gq()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->X()Lcom/github/catvod/spider/merge1/aQ/lK$G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_5b

    .line 4
    :cond_31
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->O2()Z

    move-result v0

    if-eqz v0, :cond_39

    :goto_37
    const/4 p1, 0x1

    return p1

    .line 5
    :cond_39
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->Gq()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->X()Lcom/github/catvod/spider/merge1/aQ/lK$G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noframes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 6
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->jl:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->zK(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/rx;)Z

    move-result p1

    return p1

    .line 7
    :cond_56
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_5b
    :goto_5b
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->zK(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/rx;)Z

    move-result p1

    return p1
.end method
