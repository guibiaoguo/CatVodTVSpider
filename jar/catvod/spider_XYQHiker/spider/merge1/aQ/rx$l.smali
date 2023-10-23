.class final enum Lcom/github/catvod/spider/merge1/aQ/rx$l;
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
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/rx;->W(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->W()Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->z(Lcom/github/catvod/spider/merge1/aQ/lK$c;)V

    goto :goto_6e

    .line 3
    :cond_e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->A()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->Eg()Lcom/github/catvod/spider/merge1/aQ/lK$AA;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->c(Lcom/github/catvod/spider/merge1/aQ/lK$AA;)V

    goto :goto_6e

    .line 5
    :cond_1c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->cG()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 6
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v1

    .line 7
    :cond_27
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->Gq()Z

    move-result v0

    const-string v2, "html"

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->X()Lcom/github/catvod/spider/merge1/aQ/lK$G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 8
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->zK(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/rx;)Z

    move-result p1

    return p1

    .line 9
    :cond_44
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->nN()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->jl()Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 10
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->Bs()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 11
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    return v1

    .line 12
    :cond_62
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/rx;->cs:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_6e

    .line 13
    :cond_68
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->O2()Z

    move-result v0

    if-eqz v0, :cond_70

    :goto_6e
    const/4 p1, 0x1

    return p1

    .line 14
    :cond_70
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 15
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 16
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1
.end method
