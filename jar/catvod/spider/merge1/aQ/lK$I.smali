.class final Lcom/github/catvod/spider/merge1/aQ/lK$I;
.super Lcom/github/catvod/spider/merge1/aQ/lK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/lK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "I"
.end annotation


# instance fields
.field final Eg:Ljava/lang/StringBuilder;

.field Ku:Ljava/lang/String;

.field final X:Ljava/lang/StringBuilder;

.field i:Z

.field final jl:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/lK;-><init>(Lcom/github/catvod/spider/merge1/aQ/lK$DK;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->Eg:Ljava/lang/StringBuilder;

    .line 3
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->Ku:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->jl:Ljava/lang/StringBuilder;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->X:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->i:Z

    .line 7
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK;->W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    return-void
.end method


# virtual methods
.method public Vp()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->X:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->jl:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->Eg:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method mw()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->Ku:Ljava/lang/String;

    return-object v0
.end method

.method o()Lcom/github/catvod/spider/merge1/aQ/lK;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->Eg:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/lK;->P(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->Ku:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->jl:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/lK;->P(Ljava/lang/StringBuilder;)V

    .line 4
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->X:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/lK;->P(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->i:Z

    return-object p0
.end method

.method public r()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$I;->i:Z

    return v0
.end method
