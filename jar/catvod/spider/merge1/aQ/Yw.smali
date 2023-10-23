.class public Lcom/github/catvod/spider/merge1/aQ/Yw;
.super Lcom/github/catvod/spider/merge1/aQ/li;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/catvod/spider/merge1/aQ/Yw$DK;,
        Lcom/github/catvod/spider/merge1/aQ/Yw$K;
    }
.end annotation


# static fields
.field private static final nN:Lcom/github/catvod/spider/merge1/aQ/u5;


# instance fields
.field private Gq:Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

.field private P:Lcom/github/catvod/spider/merge1/aQ/Yw$K;

.field private final T:Ljava/lang/String;

.field private f:Z

.field private o:Lcom/github/catvod/spider/merge1/aQ/dz;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/u5$Q;

    const-string v1, "title"

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/u5$Q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/Yw;->nN:Lcom/github/catvod/spider/merge1/aQ/u5;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Vp;->W:Lcom/github/catvod/spider/merge1/aQ/Vp;

    const-string v1, "#root"

    invoke-static {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->T(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Vp;)Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/github/catvod/spider/merge1/aQ/li;-><init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw;->Gq:Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    .line 3
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Yw$K;->W:Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw;->P:Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw;->f:Z

    .line 5
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/Yw;->T:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/dz;->Ku()Lcom/github/catvod/spider/merge1/aQ/dz;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/Yw;->o:Lcom/github/catvod/spider/merge1/aQ/dz;

    return-void
.end method

.method private lA()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->Bs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "html"

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 2
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    .line 3
    :cond_21
    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge1/aQ/li;->dM(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public CI(Lcom/github/catvod/spider/merge1/aQ/Yw$K;)Lcom/github/catvod/spider/merge1/aQ/Yw;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/Yw;->P:Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    return-object p0
.end method

.method public GA(Lcom/github/catvod/spider/merge1/aQ/dz;)Lcom/github/catvod/spider/merge1/aQ/Yw;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/Yw;->o:Lcom/github/catvod/spider/merge1/aQ/dz;

    return-object p0
.end method

.method public bridge synthetic I()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Yw;->rT()Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object v0

    return-object v0
.end method

.method public Tr()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->Bu()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ze()Lcom/github/catvod/spider/merge1/aQ/dz;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw;->o:Lcom/github/catvod/spider/merge1/aQ/dz;

    return-object v0
.end method

.method public be()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/Yw;->lA()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->Bs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "body"

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 3
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v3

    const-string v4, "frameset"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_30
    return-object v2

    .line 4
    :cond_31
    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/li;->dM(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Yw;->rT()Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object v0

    return-object v0
.end method

.method public cs()Ljava/lang/String;
    .registers 2

    const-string v0, "#document"

    return-object v0
.end method

.method public dK(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Yw;->be()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/li;->dK(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    return-object p0
.end method

.method public i5()Lcom/github/catvod/spider/merge1/aQ/Yw$DK;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw;->Gq:Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    return-object v0
.end method

.method public bridge synthetic nN()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Yw;->rT()Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object v0

    return-object v0
.end method

.method public rT()Lcom/github/catvod/spider/merge1/aQ/Yw;
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->I()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/Yw;

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/Yw;->Gq:Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->Ku()Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    move-result-object v1

    iput-object v1, v0, Lcom/github/catvod/spider/merge1/aQ/Yw;->Gq:Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    return-object v0
.end method

.method public tK()Lcom/github/catvod/spider/merge1/aQ/Yw$K;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw;->P:Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    return-object v0
.end method
