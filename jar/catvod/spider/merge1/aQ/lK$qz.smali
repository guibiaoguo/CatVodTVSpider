.class public final enum Lcom/github/catvod/spider/merge1/aQ/lK$qz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/lK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "qz"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/catvod/spider/merge1/aQ/lK$qz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Eg:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

.field public static final enum Ku:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

.field public static final enum W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

.field public static final enum X:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

.field public static final enum i:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

.field public static final enum jl:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

.field private static final synthetic y:[Lcom/github/catvod/spider/merge1/aQ/lK$qz;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    const-string v1, "Doctype"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/lK$qz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->W:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    const-string v3, "StartTag"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/catvod/spider/merge1/aQ/lK$qz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->Eg:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    .line 3
    new-instance v3, Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    const-string v5, "EndTag"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/catvod/spider/merge1/aQ/lK$qz;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->Ku:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    .line 4
    new-instance v5, Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    const-string v7, "Comment"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/github/catvod/spider/merge1/aQ/lK$qz;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->jl:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    .line 5
    new-instance v7, Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    const-string v9, "Character"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/github/catvod/spider/merge1/aQ/lK$qz;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->X:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    .line 6
    new-instance v9, Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    const-string v11, "EOF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/github/catvod/spider/merge1/aQ/lK$qz;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->i:Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->y:[Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static W()[Lcom/github/catvod/spider/merge1/aQ/lK$qz;
    .registers 1

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/lK$qz;->y:[Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    invoke-virtual {v0}, [Lcom/github/catvod/spider/merge1/aQ/lK$qz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/catvod/spider/merge1/aQ/lK$qz;

    return-object v0
.end method
