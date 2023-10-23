.class public Lcom/github/catvod/spider/merge1/aQ/li;
.super Lcom/github/catvod/spider/merge1/aQ/iV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/catvod/spider/merge1/aQ/li$K;
    }
.end annotation


# static fields
.field private static final X:Ljava/util/regex/Pattern;

.field private static final i:Ljava/lang/String;

.field private static final jl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private O2:Lcom/github/catvod/spider/merge1/aQ/dH;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field cG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/aQ/iV;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/github/catvod/spider/merge1/aQ/n8;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/li;->jl:Ljava/util/List;

    const-string v0, "\\s+"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/li;->X:Ljava/util/regex/Pattern;

    .line 3
    const-string v0, "/baseUri"

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/li;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcom/github/catvod/spider/merge1/aQ/li;-><init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)V
    .registers 5
    .param p2  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Lcom/github/catvod/spider/merge1/aQ/dH;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/iV;->W:Ljava/util/List;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/github/catvod/spider/merge1/aQ/li;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    .line 6
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    if-eqz p2, :cond_13

    .line 7
    invoke-virtual {p0, p2}, Lcom/github/catvod/spider/merge1/aQ/iV;->JW(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/n8;->P(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/github/catvod/spider/merge1/aQ/li;-><init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)V

    return-void
.end method

.method private C(Ljava/lang/StringBuilder;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/iV;

    .line 2
    instance-of v2, v1, Lcom/github/catvod/spider/merge1/aQ/Gn;

    if-eqz v2, :cond_1c

    .line 3
    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/Gn;

    .line 4
    invoke-static {p1, v1}, Lcom/github/catvod/spider/merge1/aQ/li;->GV(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge1/aQ/Gn;)V

    goto :goto_6

    .line 5
    :cond_1c
    instance-of v2, v1, Lcom/github/catvod/spider/merge1/aQ/li;

    if-eqz v2, :cond_6

    .line 6
    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-static {v1, p1}, Lcom/github/catvod/spider/merge1/aQ/li;->WF(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/StringBuilder;)V

    goto :goto_6

    :cond_26
    return-void
.end method

.method private Db(Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->db()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->y()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->db()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->X()Z

    move-result v0

    if-nez v0, :cond_32

    .line 3
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->m()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4
    :cond_24
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->Wa()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 5
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->y()Z

    move-result p1

    if-nez p1, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    return p1
.end method

.method private static GV(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge1/aQ/Gn;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/Gn;->dM()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    invoke-static {v1}, Lcom/github/catvod/spider/merge1/aQ/li;->t(Lcom/github/catvod/spider/merge1/aQ/iV;)Z

    move-result v1

    if-nez v1, :cond_19

    instance-of p1, p1, Lcom/github/catvod/spider/merge1/aQ/vb;

    if-eqz p1, :cond_11

    goto :goto_19

    .line 3
    :cond_11
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/Gn;->Bn(Ljava/lang/StringBuilder;)Z

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/github/catvod/spider/merge1/aQ/gx;->W(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    goto :goto_1c

    .line 4
    :cond_19
    :goto_19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    return-void
.end method

.method private static OF(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            ">(",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_12

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_f

    return v2

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return v1
.end method

.method private static U1(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :goto_0
    if-eqz p0, :cond_18

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    iget-object p0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->nN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_13
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p0

    goto :goto_0

    :cond_18
    const-string p0, ""

    return-object p0
.end method

.method private static WF(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/StringBuilder;)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/n8;->Ku()Ljava/lang/String;

    move-result-object p0

    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/Gn;->Bn(Ljava/lang/StringBuilder;)Z

    move-result p0

    if-nez p0, :cond_19

    const-string p0, " "

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    return-void
.end method

.method static synthetic c(Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/n8;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    return-object p0
.end method

.method private static s(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/nM;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->oT()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 3
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/li;->s(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/nM;)V

    :cond_18
    return-void
.end method

.method static t(Lcom/github/catvod/spider/merge1/aQ/iV;)Z
    .registers 5
    .param p0  # Lcom/github/catvod/spider/merge1/aQ/iV;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 2
    check-cast p0, Lcom/github/catvod/spider/merge1/aQ/li;

    const/4 v0, 0x0

    .line 3
    :cond_8
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/n8;->nN()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    return v3

    .line 4
    :cond_12
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p0

    add-int/2addr v0, v3

    const/4 v2, 0x6

    if-ge v0, v2, :cond_1c

    if-nez p0, :cond_8

    :cond_1c
    return v1
.end method

.method static synthetic z(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge1/aQ/Gn;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/li;->GV(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge1/aQ/Gn;)V

    return-void
.end method

.method private zK(Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->Eg()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->db()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->Eg()Z

    move-result v0

    if-nez v0, :cond_25

    :cond_1c
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->y()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p1, 0x1

    :goto_26
    return p1
.end method


# virtual methods
.method public AM()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->O2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final B2()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    return-object v0
.end method

.method public B8()Lcom/github/catvod/spider/merge1/aQ/nM;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/nM;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/nM;-><init>(I)V

    return-object v0

    .line 3
    :cond_b
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->Bs()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/nM;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/nM;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/li;

    if-eq v2, p0, :cond_22

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_34
    return-object v1
.end method

.method public Bn(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/Gn;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/Gn;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    return-object p0
.end method

.method Bs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->cG()I

    move-result v0

    if-nez v0, :cond_9

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/li;->jl:Ljava/util/List;

    return-object v0

    .line 3
    :cond_9
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->A:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3f

    .line 4
    :cond_15
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_37

    .line 6
    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge1/aQ/iV;

    .line 7
    instance-of v4, v3, Lcom/github/catvod/spider/merge1/aQ/li;

    if-eqz v4, :cond_34

    .line 8
    check-cast v3, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 9
    :cond_37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->A:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_3f
    return-object v0
.end method

.method public Bu()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/gx;->Eg()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->l(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 3
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->o(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/m0;->W(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->cG()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_19
    return-object v0
.end method

.method protected Eb(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 4
    .param p1  # Lcom/github/catvod/spider/merge1/aQ/iV;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->Gq(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->cG()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/li;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    .line 3
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/li$K;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/github/catvod/spider/merge1/aQ/li$K;-><init>(Lcom/github/catvod/spider/merge1/aQ/li;I)V

    iput-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    .line 4
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public FX(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;
    .registers 2

    .line 1
    invoke-static {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/sg;->Eg(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic Gq(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2
    .param p1  # Lcom/github/catvod/spider/merge1/aQ/iV;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/li;->Eb(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    return-object p1
.end method

.method public Gv(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->y(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/li;

    return-object p1
.end method

.method public Hw(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/sg;->jl(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    return-object p1
.end method

.method public I()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->nN()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    return-object v0
.end method

.method public JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->j(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    .line 3
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->T()Ljava/util/List;

    .line 4
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->Sp(I)V

    return-object p0
.end method

.method public L()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/gx;->Eg()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->C(Ljava/lang/StringBuilder;)V

    .line 3
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->o(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->Bs()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->OF(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/util/List;)I

    move-result v2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    if-le v3, v2, :cond_21

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    return-object v0

    :cond_21
    return-object v1
.end method

.method public bridge synthetic P()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->ft()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic RV()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->yx()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    return-object v0
.end method

.method protected T()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/aQ/iV;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/iV;->W:Ljava/util/List;

    if-ne v0, v1, :cond_e

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/li$K;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/github/catvod/spider/merge1/aQ/li$K;-><init>(Lcom/github/catvod/spider/merge1/aQ/li;I)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    .line 3
    :cond_e
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    return-object v0
.end method

.method public Tu(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/nM;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->y(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/KC;->Eg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/u5$Q;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/u5$Q;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/github/catvod/spider/merge1/aQ/Lc;->W(Lcom/github/catvod/spider/merge1/aQ/u5;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object p1

    return-object p1
.end method

.method public X()Lcom/github/catvod/spider/merge1/aQ/dH;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/dH;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    return-object v0
.end method

.method public Y()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/gx;->Eg()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/iV;

    .line 3
    instance-of v3, v2, Lcom/github/catvod/spider/merge1/aQ/IF;

    if-eqz v3, :cond_24

    .line 4
    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/IF;

    .line 5
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/IF;->dM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 6
    :cond_24
    instance-of v3, v2, Lcom/github/catvod/spider/merge1/aQ/wb;

    if-eqz v3, :cond_32

    .line 7
    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/wb;

    .line 8
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/wb;->dM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 9
    :cond_32
    instance-of v3, v2, Lcom/github/catvod/spider/merge1/aQ/li;

    if-eqz v3, :cond_40

    .line 10
    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 11
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/li;->Y()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 13
    :cond_40
    instance-of v3, v2, Lcom/github/catvod/spider/merge1/aQ/vb;

    if-eqz v3, :cond_a

    .line 14
    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/vb;

    .line 15
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/Gn;->dM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 16
    :cond_4e
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->o(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Yl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/iV;->jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/iV;

    return-object p0
.end method

.method public ZT()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    if-eqz v0, :cond_b

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/dH;->Gq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0
.end method

.method public a()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV;->Eg:Lcom/github/catvod/spider/merge1/aQ/iV;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 2
    :cond_6
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->Bs()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->OF(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_1d

    add-int/lit8 v2, v2, -0x1

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    return-object v0

    :cond_1d
    return-object v1
.end method

.method public b0(I)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->Bs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/li;

    return-object p1
.end method

.method public cG()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->I()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    return-object v0
.end method

.method public cs()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->Ku()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dK(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->ft()Lcom/github/catvod/spider/merge1/aQ/li;

    .line 3
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->GL()Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/Yw;->Ze()Lcom/github/catvod/spider/merge1/aQ/dz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/dz;->jl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/IF;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/IF;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_2b

    .line 6
    :cond_23
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/Gn;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/Gn;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    :goto_2b
    return-object p0
.end method

.method public dM(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 4

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/m0;->Eg(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/dz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/dz;->i()Lcom/github/catvod/spider/merge1/aQ/Vp;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/github/catvod/spider/merge1/aQ/n8;->T(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Vp;)Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/github/catvod/spider/merge1/aQ/li;-><init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    return-object v0
.end method

.method public db()Lcom/github/catvod/spider/merge1/aQ/n8;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    return-object v0
.end method

.method ey(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->cG()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 2
    :cond_10
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->cG()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    .line 3
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->Eg()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->y()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_48

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4b

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/github/catvod/spider/merge1/aQ/Gn;

    if-nez v0, :cond_4b

    .line 4
    :cond_48
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge1/aQ/iV;->Vp(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V

    :cond_4b
    const-string p2, "</"

    .line 5
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->oT()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_5e
    return-void
.end method

.method public fI()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_8
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->Bs()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->OF(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public ft()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/li;->i:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->U1(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iJ()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/aQ/Gn;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/iV;

    .line 3
    instance-of v3, v2, Lcom/github/catvod/spider/merge1/aQ/Gn;

    if-eqz v3, :cond_b

    .line 4
    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/Gn;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 5
    :cond_21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/github/catvod/spider/merge1/aQ/nM;
    .registers 2

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/u5$DK;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/u5$DK;-><init>()V

    invoke-static {v0, p0}, Lcom/github/catvod/spider/merge1/aQ/Lc;->W(Lcom/github/catvod/spider/merge1/aQ/u5;Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/nM;

    move-result-object v0

    return-object v0
.end method

.method kc(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    .registers 5

    .line 1
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->cG()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0, p3}, Lcom/github/catvod/spider/merge1/aQ/li;->zK(Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0, p3}, Lcom/github/catvod/spider/merge1/aQ/li;->Db(Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_23

    .line 3
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_26

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge1/aQ/iV;->Vp(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V

    goto :goto_26

    .line 5
    :cond_23
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge1/aQ/iV;->Vp(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V

    :cond_26
    :goto_26
    const/16 p2, 0x3c

    .line 6
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->oT()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 7
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/li;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    if-eqz p2, :cond_3a

    invoke-virtual {p2, p1, p3}, Lcom/github/catvod/spider/merge1/aQ/dH;->f(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)V

    .line 8
    :cond_3a
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/16 v0, 0x3e

    if-eqz p2, :cond_66

    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/n8;->cG()Z

    move-result p2

    if-eqz p2, :cond_66

    .line 9
    invoke-virtual {p3}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->O2()Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    move-result-object p2

    sget-object p3, Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;->W:Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    if-ne p2, p3, :cond_60

    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/n8;->X()Z

    move-result p2

    if-eqz p2, :cond_60

    .line 10
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_69

    :cond_60
    const-string p2, " />"

    .line 11
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_69

    .line 12
    :cond_66
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_69
    return-void
.end method

.method public l(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/li;->cG:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/iV;

    invoke-virtual {v2, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->E(Ljava/lang/Appendable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-object p1
.end method

.method lB()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->lB()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->A:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public m()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->jl()Z

    move-result v0

    return v0
.end method

.method public mW()Lcom/github/catvod/spider/merge1/aQ/nM;
    .registers 3

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/nM;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->Bs()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/nM;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected mw()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/gx;->Eg()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/li$DK;

    invoke-direct {v1, p0, v0}, Lcom/github/catvod/spider/merge1/aQ/li$DK;-><init>(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lcom/github/catvod/spider/merge1/aQ/A3;->Eg(Lcom/github/catvod/spider/merge1/aQ/lj;Lcom/github/catvod/spider/merge1/aQ/iV;)V

    .line 3
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->o(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n7(Ljava/lang/String;)Z
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v2, "class"

    .line 2
    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge1/aQ/dH;->Gq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v2, :cond_5c

    if-ge v2, v9, :cond_19

    goto :goto_5c

    :cond_19
    if-ne v2, v9, :cond_20

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_20
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_23
    if-ge v11, v2, :cond_4c

    .line 6
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    const/4 v12, 0x1

    if-eqz v4, :cond_45

    if-eqz v3, :cond_49

    sub-int v3, v11, v10

    if-ne v3, v9, :cond_43

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    .line 7
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_43

    return v12

    :cond_43
    const/4 v3, 0x0

    goto :goto_49

    :cond_45
    if-nez v3, :cond_49

    move v10, v11

    const/4 v3, 0x1

    :cond_49
    :goto_49
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    :cond_4c
    if-eqz v3, :cond_5c

    sub-int/2addr v2, v10

    if-ne v2, v9, :cond_5c

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    .line 8
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_5c
    :goto_5c
    return v1
.end method

.method public bridge synthetic nN()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->I()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    return-object v0
.end method

.method protected o(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/li;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->lB(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/dH;

    return-void
.end method

.method public oT()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/li;->y:Lcom/github/catvod/spider/merge1/aQ/n8;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->Ku()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public we()Lcom/github/catvod/spider/merge1/aQ/nM;
    .registers 2

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/nM;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/nM;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/li;->s(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/nM;)V

    return-object v0
.end method

.method public yx()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge1/aQ/iV;->RV()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    return-object v0
.end method

.method public bridge synthetic z0()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    return-object v0
.end method
