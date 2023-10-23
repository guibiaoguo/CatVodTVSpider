.class public Lcom/github/catvod/spider/merge1/aQ/Vp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Eg:Lcom/github/catvod/spider/merge1/aQ/Vp;

.field public static final W:Lcom/github/catvod/spider/merge1/aQ/Vp;


# instance fields
.field private final Ku:Z

.field private final jl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/Vp;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/github/catvod/spider/merge1/aQ/Vp;-><init>(ZZ)V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/Vp;->W:Lcom/github/catvod/spider/merge1/aQ/Vp;

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/Vp;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/github/catvod/spider/merge1/aQ/Vp;-><init>(ZZ)V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/Vp;->Eg:Lcom/github/catvod/spider/merge1/aQ/Vp;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/github/catvod/spider/merge1/aQ/Vp;->Ku:Z

    .line 3
    iput-boolean p2, p0, Lcom/github/catvod/spider/merge1/aQ/Vp;->jl:Z

    return-void
.end method


# virtual methods
.method Eg(Lcom/github/catvod/spider/merge1/aQ/dH;)Lcom/github/catvod/spider/merge1/aQ/dH;
    .registers 3

    if-eqz p1, :cond_9

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/Vp;->jl:Z

    if-nez v0, :cond_9

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/dH;->cs()V

    :cond_9
    return-object p1
.end method

.method public Ku(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/Vp;->Ku:Z

    if-nez v0, :cond_c

    .line 3
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/KC;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method public W(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/Vp;->jl:Z

    if-nez v0, :cond_c

    .line 3
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/KC;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method public X()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/Vp;->Ku:Z

    return v0
.end method

.method public jl()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/Vp;->jl:Z

    return v0
.end method
