.class public final enum Lcom/github/catvod/spider/merge1/aQ/se$DK;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/se;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/catvod/spider/merge1/aQ/se$DK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Eg:Lcom/github/catvod/spider/merge1/aQ/se$DK;

.field public static final enum Ku:Lcom/github/catvod/spider/merge1/aQ/se$DK;

.field public static final enum W:Lcom/github/catvod/spider/merge1/aQ/se$DK;

.field public static final enum X:Lcom/github/catvod/spider/merge1/aQ/se$DK;

.field private static final synthetic i:[Lcom/github/catvod/spider/merge1/aQ/se$DK;

.field public static final enum jl:Lcom/github/catvod/spider/merge1/aQ/se$DK;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/se$DK;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/se$DK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/se$DK;->W:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/se$DK;

    const-string v3, "SKIP_CHILDREN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/catvod/spider/merge1/aQ/se$DK;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/se$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    .line 3
    new-instance v3, Lcom/github/catvod/spider/merge1/aQ/se$DK;

    const-string v5, "SKIP_ENTIRELY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/catvod/spider/merge1/aQ/se$DK;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/catvod/spider/merge1/aQ/se$DK;->Ku:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    .line 4
    new-instance v5, Lcom/github/catvod/spider/merge1/aQ/se$DK;

    const-string v7, "REMOVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/github/catvod/spider/merge1/aQ/se$DK;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/catvod/spider/merge1/aQ/se$DK;->jl:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    .line 5
    new-instance v7, Lcom/github/catvod/spider/merge1/aQ/se$DK;

    const-string v9, "STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/github/catvod/spider/merge1/aQ/se$DK;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/github/catvod/spider/merge1/aQ/se$DK;->X:Lcom/github/catvod/spider/merge1/aQ/se$DK;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/github/catvod/spider/merge1/aQ/se$DK;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/github/catvod/spider/merge1/aQ/se$DK;->i:[Lcom/github/catvod/spider/merge1/aQ/se$DK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
