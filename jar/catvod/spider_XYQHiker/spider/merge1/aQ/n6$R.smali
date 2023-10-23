.class final enum Lcom/github/catvod/spider/merge1/aQ/n6$R;
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

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge1/aQ/sJ;->ey(C)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 2
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/WL;->O2(C)V

    .line 3
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/WL;->cG()V

    .line 4
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->x:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->W(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    goto :goto_19

    .line 5
    :cond_14
    sget-object p2, Lcom/github/catvod/spider/merge1/aQ/n6;->et:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    :goto_19
    return-void
.end method
