.class public final enum Lcom/github/catvod/spider/merge1/aQ/Y5$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/Y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/catvod/spider/merge1/aQ/Y5$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Eg:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

.field public static final enum Ku:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

.field public static final enum W:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

.field private static final synthetic jl:[Lcom/github/catvod/spider/merge1/aQ/Y5$c;


# instance fields
.field private A:[Ljava/lang/String;

.field private X:[Ljava/lang/String;

.field private i:[I

.field private y:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/Ay;->W:Ljava/lang/String;

    const-string v2, "xhtml"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->W:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    sget-object v2, Lcom/github/catvod/spider/merge1/aQ/Ay;->Eg:Ljava/lang/String;

    const-string v4, "base"

    const/4 v5, 0x1

    const/16 v6, 0x6a

    invoke-direct {v1, v4, v5, v2, v6}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->Eg:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    .line 3
    new-instance v2, Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/Ay;->Ku:Ljava/lang/String;

    const-string v6, "extended"

    const/4 v7, 0x2

    const/16 v8, 0x84d

    invoke-direct {v2, v6, v7, v4, v8}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->Ku:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    .line 4
    sput-object v4, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->jl:[Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    invoke-static {p0, p3, p4}, Lcom/github/catvod/spider/merge1/aQ/Y5;->W(Lcom/github/catvod/spider/merge1/aQ/Y5$c;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic A(Lcom/github/catvod/spider/merge1/aQ/Y5$c;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->A:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Eg(Lcom/github/catvod/spider/merge1/aQ/Y5$c;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->X:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Ku(Lcom/github/catvod/spider/merge1/aQ/Y5$c;)[I
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->i:[I

    return-object p0
.end method

.method static synthetic W(Lcom/github/catvod/spider/merge1/aQ/Y5$c;)[Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->X:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic X(Lcom/github/catvod/spider/merge1/aQ/Y5$c;)[I
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->y:[I

    return-object p0
.end method

.method static synthetic i(Lcom/github/catvod/spider/merge1/aQ/Y5$c;[I)[I
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->y:[I

    return-object p1
.end method

.method static synthetic jl(Lcom/github/catvod/spider/merge1/aQ/Y5$c;[I)[I
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->i:[I

    return-object p1
.end method

.method public static nN(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Y5$c;
    .registers 2

    .line 1
    const-class v0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    return-object p0
.end method

.method public static values()[Lcom/github/catvod/spider/merge1/aQ/Y5$c;
    .registers 1

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->jl:[Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    invoke-virtual {v0}, [Lcom/github/catvod/spider/merge1/aQ/Y5$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    return-object v0
.end method

.method static synthetic y(Lcom/github/catvod/spider/merge1/aQ/Y5$c;)[Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->A:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method O2(I)Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->y:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_1d

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->A:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->y:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ne v2, p1, :cond_1a

    .line 3
    aget-object p1, v1, v3

    goto :goto_1c

    :cond_1a
    aget-object p1, v1, v0

    :goto_1c
    return-object p1

    :cond_1d
    const-string p1, ""

    return-object p1
.end method

.method cG(Ljava/lang/String;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->X:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_d

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->i:[I

    aget p1, v0, p1

    goto :goto_e

    :cond_d
    const/4 p1, -0x1

    :goto_e
    return p1
.end method
