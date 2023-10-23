.class public final enum Lcom/github/catvod/spider/merge1/aQ/Yw$K;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/Yw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "K"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/catvod/spider/merge1/aQ/Yw$K;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Eg:Lcom/github/catvod/spider/merge1/aQ/Yw$K;

.field public static final enum Ku:Lcom/github/catvod/spider/merge1/aQ/Yw$K;

.field public static final enum W:Lcom/github/catvod/spider/merge1/aQ/Yw$K;

.field private static final synthetic jl:[Lcom/github/catvod/spider/merge1/aQ/Yw$K;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    const-string v1, "noQuirks"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/Yw$K;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/Yw$K;->W:Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    const-string v3, "quirks"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/catvod/spider/merge1/aQ/Yw$K;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/Yw$K;->Eg:Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    new-instance v3, Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    const-string v5, "limitedQuirks"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/catvod/spider/merge1/aQ/Yw$K;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/catvod/spider/merge1/aQ/Yw$K;->Ku:Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/github/catvod/spider/merge1/aQ/Yw$K;->jl:[Lcom/github/catvod/spider/merge1/aQ/Yw$K;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
