.class final enum Lcom/github/catvod/spider/merge1/aQ/Y5$K;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/Y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "K"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/catvod/spider/merge1/aQ/Y5$K;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Eg:Lcom/github/catvod/spider/merge1/aQ/Y5$K;

.field public static final enum Ku:Lcom/github/catvod/spider/merge1/aQ/Y5$K;

.field public static final enum W:Lcom/github/catvod/spider/merge1/aQ/Y5$K;

.field private static final synthetic jl:[Lcom/github/catvod/spider/merge1/aQ/Y5$K;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    const-string v1, "ascii"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/Y5$K;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/Y5$K;->W:Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    const-string v3, "utf"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/catvod/spider/merge1/aQ/Y5$K;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/Y5$K;->Eg:Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    new-instance v3, Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    const-string v5, "fallback"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/catvod/spider/merge1/aQ/Y5$K;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/catvod/spider/merge1/aQ/Y5$K;->Ku:Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/github/catvod/spider/merge1/aQ/Y5$K;->jl:[Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static Eg()[Lcom/github/catvod/spider/merge1/aQ/Y5$K;
    .registers 1

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Y5$K;->jl:[Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    invoke-virtual {v0}, [Lcom/github/catvod/spider/merge1/aQ/Y5$K;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    return-object v0
.end method

.method static W(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Y5$K;
    .registers 2

    const-string v0, "US-ASCII"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2
    sget-object p0, Lcom/github/catvod/spider/merge1/aQ/Y5$K;->W:Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    return-object p0

    :cond_b
    const-string v0, "UTF-"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 4
    sget-object p0, Lcom/github/catvod/spider/merge1/aQ/Y5$K;->Eg:Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    return-object p0

    .line 5
    :cond_16
    sget-object p0, Lcom/github/catvod/spider/merge1/aQ/Y5$K;->Ku:Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    return-object p0
.end method
