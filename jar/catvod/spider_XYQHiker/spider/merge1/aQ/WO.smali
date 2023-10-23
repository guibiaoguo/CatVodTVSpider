.class public Lcom/github/catvod/spider/merge1/aQ/WO;
.super Lcom/github/catvod/spider/merge1/aQ/li;
.source "SourceFile"


# instance fields
.field private final nN:Lcom/github/catvod/spider/merge1/aQ/nM;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge1/aQ/li;-><init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)V

    .line 2
    new-instance p1, Lcom/github/catvod/spider/merge1/aQ/nM;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge1/aQ/nM;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/WO;->nN:Lcom/github/catvod/spider/merge1/aQ/nM;

    return-void
.end method


# virtual methods
.method public bridge synthetic I()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/WO;->rT()Lcom/github/catvod/spider/merge1/aQ/WO;

    move-result-object v0

    return-object v0
.end method

.method public be(Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/WO;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WO;->nN:Lcom/github/catvod/spider/merge1/aQ/nM;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/WO;->rT()Lcom/github/catvod/spider/merge1/aQ/WO;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nN()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/WO;->rT()Lcom/github/catvod/spider/merge1/aQ/WO;

    move-result-object v0

    return-object v0
.end method

.method public rT()Lcom/github/catvod/spider/merge1/aQ/WO;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->I()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/WO;

    return-object v0
.end method

.method protected x(Lcom/github/catvod/spider/merge1/aQ/iV;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->x(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/WO;->nN:Lcom/github/catvod/spider/merge1/aQ/nM;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
