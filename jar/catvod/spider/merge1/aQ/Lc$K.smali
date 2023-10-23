.class Lcom/github/catvod/spider/merge1/aQ/Lc$K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge1/aQ/se;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/Lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "K"
.end annotation


# instance fields
.field private Eg:Lcom/github/catvod/spider/merge1/aQ/li;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final Ku:Lcom/github/catvod/spider/merge1/aQ/u5;

.field private final W:Lcom/github/catvod/spider/merge1/aQ/li;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/u5;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Lc$K;->Eg:Lcom/github/catvod/spider/merge1/aQ/li;

    .line 3
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/Lc$K;->W:Lcom/github/catvod/spider/merge1/aQ/li;

    .line 4
    iput-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/Lc$K;->Ku:Lcom/github/catvod/spider/merge1/aQ/u5;

    return-void
.end method

.method static synthetic Ku(Lcom/github/catvod/spider/merge1/aQ/Lc$K;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/catvod/spider/merge1/aQ/Lc$K;->Eg:Lcom/github/catvod/spider/merge1/aQ/li;

    return-object p0
.end method


# virtual methods
.method public Eg(Lcom/github/catvod/spider/merge1/aQ/iV;I)Lcom/github/catvod/spider/merge1/aQ/se$DK;
    .registers 4

    .line 1
    instance-of p2, p1, Lcom/github/catvod/spider/merge1/aQ/li;

    if-eqz p2, :cond_15

    .line 2
    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 3
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/Lc$K;->Ku:Lcom/github/catvod/spider/merge1/aQ/u5;

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Lc$K;->W:Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {p2, v0, p1}, Lcom/github/catvod/spider/merge1/aQ/u5;->W(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 4
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/Lc$K;->Eg:Lcom/github/catvod/spider/merge1/aQ/li;

    .line 5
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/se$DK;->X:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    return-object p1

    .line 6
    :cond_15
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/se$DK;->W:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    return-object p1
.end method

.method public W(Lcom/github/catvod/spider/merge1/aQ/iV;I)Lcom/github/catvod/spider/merge1/aQ/se$DK;
    .registers 3

    .line 1
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/se$DK;->W:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    return-object p1
.end method
