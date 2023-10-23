.class public final enum Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/Yw$DK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Eg:Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

.field private static final synthetic Ku:[Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

.field public static final enum W:Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    const-string v1, "html"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;->W:Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    const-string v3, "xml"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;->Ku:[Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
