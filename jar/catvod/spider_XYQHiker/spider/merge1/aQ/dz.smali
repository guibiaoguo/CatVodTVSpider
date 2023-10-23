.class public Lcom/github/catvod/spider/merge1/aQ/dz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Eg:Lcom/github/catvod/spider/merge1/aQ/d1;

.field private Ku:Lcom/github/catvod/spider/merge1/aQ/Vp;

.field private W:Lcom/github/catvod/spider/merge1/aQ/HW;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge1/aQ/HW;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/dz;->W:Lcom/github/catvod/spider/merge1/aQ/HW;

    .line 3
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/HW;->Eg()Lcom/github/catvod/spider/merge1/aQ/Vp;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/dz;->Ku:Lcom/github/catvod/spider/merge1/aQ/Vp;

    .line 4
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/d1;->Eg()Lcom/github/catvod/spider/merge1/aQ/d1;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/dz;->Eg:Lcom/github/catvod/spider/merge1/aQ/d1;

    return-void
.end method

.method public static Ku()Lcom/github/catvod/spider/merge1/aQ/dz;
    .registers 2

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/dz;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/iL;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/aQ/iL;-><init>()V

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/dz;-><init>(Lcom/github/catvod/spider/merge1/aQ/HW;)V

    return-object v0
.end method

.method public static X(Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Yw;
    .registers 4

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/iL;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/iL;-><init>()V

    .line 2
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/github/catvod/spider/merge1/aQ/dz;

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/dz;-><init>(Lcom/github/catvod/spider/merge1/aQ/HW;)V

    invoke-virtual {v0, v1, p1, p0}, Lcom/github/catvod/spider/merge1/aQ/HW;->i(Ljava/io/Reader;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dz;)Lcom/github/catvod/spider/merge1/aQ/Yw;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Eg()Lcom/github/catvod/spider/merge1/aQ/HW;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dz;->W:Lcom/github/catvod/spider/merge1/aQ/HW;

    return-object v0
.end method

.method public W()Lcom/github/catvod/spider/merge1/aQ/d1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dz;->Eg:Lcom/github/catvod/spider/merge1/aQ/d1;

    return-object v0
.end method

.method public i()Lcom/github/catvod/spider/merge1/aQ/Vp;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/dz;->Ku:Lcom/github/catvod/spider/merge1/aQ/Vp;

    return-object v0
.end method

.method public jl(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/dz;->Eg()Lcom/github/catvod/spider/merge1/aQ/HW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/HW;->X(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
