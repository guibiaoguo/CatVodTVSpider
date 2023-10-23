.class final Lcom/github/catvod/spider/merge1/aQ/lK$AA;
.super Lcom/github/catvod/spider/merge1/aQ/lK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/lK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AA"
.end annotation


# instance fields
.field private final Eg:Ljava/lang/StringBuilder;

.field private Ku:Ljava/lang/String;

.field jl:Z


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/lK;-><init>(Lcom/github/catvod/spider/merge1/aQ/lK$DK;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Eg:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->jl:Z

    .line 4
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->jl:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK;->W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    return-void
.end method

.method private d()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Ku:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Eg:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Ku:Ljava/lang/String;

    :cond_c
    return-void
.end method


# virtual methods
.method Vp()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Ku:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Eg:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method final f(C)Lcom/github/catvod/spider/merge1/aQ/lK$AA;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->d()V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Eg:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method final mw(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$AA;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->d()V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Eg:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 3
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Ku:Ljava/lang/String;

    goto :goto_13

    .line 4
    :cond_e
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Eg:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    return-object p0
.end method

.method o()Lcom/github/catvod/spider/merge1/aQ/lK;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Eg:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/lK;->P(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Ku:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->jl:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Vp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
