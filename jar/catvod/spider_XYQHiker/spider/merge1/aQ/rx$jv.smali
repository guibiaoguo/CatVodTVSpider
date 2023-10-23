.class final enum Lcom/github/catvod/spider/merge1/aQ/rx$jv;
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

    goto :goto_53

    .line 3
    :cond_e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->cG()Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->Gq()Z

    move-result v0

    const-string v1, "html"

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->X()Lcom/github/catvod/spider/merge1/aQ/lK$G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->bq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_62

    .line 4
    :cond_2b
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/rx;->W(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 5
    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->ZT(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->W()Lcom/github/catvod/spider/merge1/aQ/lK$c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->z(Lcom/github/catvod/spider/merge1/aQ/lK$c;)V

    .line 7
    iget-object p1, p2, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p2, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    const-string p2, "body"

    invoke-virtual {v0, p2}, Lcom/github/catvod/spider/merge1/aQ/li;->Hw(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 9
    :cond_4d
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->O2()Z

    move-result v0

    if-eqz v0, :cond_55

    :goto_53
    const/4 p1, 0x1

    return p1

    .line 10
    :cond_55
    invoke-virtual {p2, p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 11
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    .line 12
    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z

    move-result p1

    return p1

    .line 13
    :cond_62
    :goto_62
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p2, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->zK(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/rx;)Z

    move-result p1

    return p1
.end method
