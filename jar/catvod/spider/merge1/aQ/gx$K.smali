.class public Lcom/github/catvod/spider/merge1/aQ/gx$K;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/gx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "K"
.end annotation


# instance fields
.field final Eg:Ljava/lang/String;

.field Ku:Z

.field W:Ljava/lang/StringBuilder;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/gx;->Eg()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/gx$K;->W:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/gx$K;->Ku:Z

    .line 4
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/gx$K;->Eg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Eg()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/gx$K;->W:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->o(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/gx$K;->W:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public W(Ljava/lang/Object;)Lcom/github/catvod/spider/merge1/aQ/gx$K;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/gx$K;->W:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/gx$K;->Ku:Z

    if-nez v0, :cond_10

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/gx$K;->W:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/gx$K;->Eg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_10
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/gx$K;->W:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/github/catvod/spider/merge1/aQ/gx$K;->Ku:Z

    return-object p0
.end method
