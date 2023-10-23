.class final Lcom/github/catvod/spider/merge1/aQ/lK$G;
.super Lcom/github/catvod/spider/merge1/aQ/lK$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/lK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "G"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;-><init>()V

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->Eg:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK;->W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    return-void
.end method


# virtual methods
.method UO(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)Lcom/github/catvod/spider/merge1/aQ/lK$G;
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Eg:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    .line 3
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/KC;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Ku:Ljava/lang/String;

    return-object p0
.end method

.method nK()Lcom/github/catvod/spider/merge1/aQ/lK$l;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->nK()Lcom/github/catvod/spider/merge1/aQ/lK$l;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    return-object p0
.end method

.method bridge synthetic o()Lcom/github/catvod/spider/merge1/aQ/lK;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$G;->nK()Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->ey()Z

    move-result v0

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->size()I

    move-result v0

    if-lez v0, :cond_37

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/dH;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
