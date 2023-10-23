.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$g6;
.super Lcom/github/catvod/spider/merge1/aQ/n6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/n6;
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
    invoke-direct {p0, p1, p2, v0}, Lcom/github/catvod/spider/merge1/aQ/n6;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge1/aQ/n6$P;)V

    return-void
.end method


# virtual methods
.method cG(Lcom/github/catvod/spider/merge1/aQ/WL;Lcom/github/catvod/spider/merge1/aQ/sJ;)V
    .registers 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->i(Z)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 3
    iget-object v2, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Vp(Ljava/lang/String;)V

    goto :goto_16

    .line 4
    :cond_11
    iget-object v1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->x()V

    .line 5
    :goto_16
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->X()C

    move-result p2

    if-eqz p2, :cond_54

    const v1, 0xffff

    if-eq p2, v1, :cond_4b

    const/16 v1, 0x27

    const/16 v2, 0x26

    if-eq p2, v2, :cond_35

    if-eq p2, v1, :cond_2f

    .line 6
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->d(C)V

    goto :goto_5f

    .line 7
    :cond_2f
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->gK:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_5f

    .line 8
    :cond_35
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/github/catvod/spider/merge1/aQ/WL;->jl(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-eqz p2, :cond_45

    .line 9
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->r([I)V

    goto :goto_5f

    .line 10
    :cond_45
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    invoke-virtual {p1, v2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->d(C)V

    goto :goto_5f

    .line 11
    :cond_4b
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->d(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 12
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_5f

    .line 13
    :cond_54
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 14
    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/WL;->nN:Lcom/github/catvod/spider/merge1/aQ/lK$l;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->d(C)V

    :goto_5f
    return-void
.end method
