.class abstract Lcom/github/catvod/spider/merge1/aQ/lK$l;
.super Lcom/github/catvod/spider/merge1/aQ/lK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/lK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "l"
.end annotation


# instance fields
.field private A:Z

.field protected Eg:Ljava/lang/String;

.field protected Ku:Ljava/lang/String;

.field O2:Lcom/github/catvod/spider/merge1/aQ/dH;

.field private X:Ljava/lang/StringBuilder;

.field cG:Z

.field private i:Ljava/lang/String;

.field private jl:Ljava/lang/String;

.field private y:Z


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/lK;-><init>(Lcom/github/catvod/spider/merge1/aQ/lK$DK;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->X:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->y:Z

    .line 4
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->A:Z

    .line 5
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->cG:Z

    return-void
.end method

.method private Tr()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->A:Z

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->i:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->i:Ljava/lang/String;

    :cond_f
    return-void
.end method


# virtual methods
.method final E()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->jl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Wa()V

    :cond_7
    return-void
.end method

.method final GL()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->cG:Z

    return v0
.end method

.method final Vp(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Tr()V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 3
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->i:Ljava/lang/String;

    goto :goto_13

    .line 4
    :cond_e
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    return-void
.end method

.method final Wa()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/dH;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->jl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->jl:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_41

    .line 6
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->A:Z

    if-eqz v0, :cond_32

    .line 7
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2f

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_2f
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->i:Ljava/lang/String;

    goto :goto_3a

    .line 8
    :cond_32
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->y:Z

    if-eqz v0, :cond_39

    const-string v0, ""

    goto :goto_3a

    :cond_39
    move-object v0, v1

    .line 9
    :goto_3a
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->jl:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->jl(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/dH;

    .line 10
    :cond_41
    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->jl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->y:Z

    .line 12
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->A:Z

    .line 13
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->X:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/lK;->P(Ljava/lang/StringBuilder;)V

    .line 14
    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->i:Ljava/lang/String;

    return-void
.end method

.method final bq()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Ku:Ljava/lang/String;

    return-object v0
.end method

.method final cs(C)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->lB(Ljava/lang/String;)V

    return-void
.end method

.method final d(C)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Tr()V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final et(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$l;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Eg:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/KC;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Ku:Ljava/lang/String;

    return-object p0
.end method

.method final ey()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method final f(C)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->mw(Ljava/lang/String;)V

    return-void
.end method

.method final j()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Eg:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, "[unset]"

    :goto_7
    return-object v0
.end method

.method final kc(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->o(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method final lB(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Eg:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Eg:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/KC;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Ku:Ljava/lang/String;

    return-void
.end method

.method final mw(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->jl:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->jl:Ljava/lang/String;

    return-void
.end method

.method nK()Lcom/github/catvod/spider/merge1/aQ/lK$l;
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Eg:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Ku:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->jl:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->X:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/github/catvod/spider/merge1/aQ/lK;->P(Ljava/lang/StringBuilder;)V

    .line 5
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->i:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->y:Z

    .line 7
    iput-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->A:Z

    .line 8
    iput-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->cG:Z

    .line 9
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    return-object p0
.end method

.method bridge synthetic o()Lcom/github/catvod/spider/merge1/aQ/lK;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->nK()Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object v0

    return-object v0
.end method

.method final r([I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Tr()V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    aget v2, p1, v1

    .line 3
    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method final x()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->y:Z

    return-void
.end method

.method final z0()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Eg:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->Eg(Z)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$l;->Eg:Ljava/lang/String;

    return-object v0
.end method
