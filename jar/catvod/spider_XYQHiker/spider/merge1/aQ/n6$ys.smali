.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$ys;
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
    .registers 4

    const-string v0, "--"

    .line 1
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->i()V

    .line 3
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->s:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_3b

    :cond_11
    const-string v0, "DOCTYPE"

    .line 4
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->kc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->Yl:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_3b

    :cond_1f
    const-string v0, "[CDATA["

    .line 6
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->E(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 7
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->cG()V

    .line 8
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->OF:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_3b

    .line 9
    :cond_30
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/WL;->r(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 10
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->X()V

    .line 11
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->z:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :goto_3b
    return-void
.end method
