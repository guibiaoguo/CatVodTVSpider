.class Lcom/github/catvod/spider/merge1/aQ/lK$c;
.super Lcom/github/catvod/spider/merge1/aQ/lK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/lK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private Eg:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/lK;-><init>(Lcom/github/catvod/spider/merge1/aQ/lK$DK;)V

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->X:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK;->W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    return-void
.end method


# virtual methods
.method f(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$c;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lK$c;->Eg:Ljava/lang/String;

    return-object p0
.end method

.method mw()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$c;->Eg:Ljava/lang/String;

    return-object v0
.end method

.method o()Lcom/github/catvod/spider/merge1/aQ/lK;
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lK$c;->Eg:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/lK$c;->mw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
