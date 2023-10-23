.class public Lcom/github/catvod/spider/merge1/aQ/Yw$DK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/Yw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DK"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;
    }
.end annotation


# instance fields
.field private A:Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

.field private Eg:Ljava/nio/charset/Charset;

.field private final Ku:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private W:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

.field private X:Z

.field private i:Z

.field jl:Lcom/github/catvod/spider/merge1/aQ/Y5$K;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private y:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->Eg:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->W:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    .line 3
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/eA;->Eg:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->Eg:Ljava/nio/charset/Charset;

    .line 4
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->Ku:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->X:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->i:Z

    .line 7
    iput v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->y:I

    .line 8
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;->W:Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->A:Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    return-void
.end method


# virtual methods
.method A()Ljava/nio/charset/CharsetEncoder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->Eg:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->Ku:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge1/aQ/Y5$K;->W(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->jl:Lcom/github/catvod/spider/merge1/aQ/Y5$K;

    return-object v0
.end method

.method public Eg(Ljava/nio/charset/Charset;)Lcom/github/catvod/spider/merge1/aQ/Yw$DK;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->Eg:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public Ku()Lcom/github/catvod/spider/merge1/aQ/Yw$DK;
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_1c

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->Eg:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->W(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->W:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge1/aQ/Y5$c;->nN(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    move-result-object v1

    iput-object v1, v0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->W:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    return-object v0

    :catch_1c
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public O2()Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->A:Lcom/github/catvod/spider/merge1/aQ/Yw$DK$DK;

    return-object v0
.end method

.method public W(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/Yw$DK;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->Eg(Ljava/nio/charset/Charset;)Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    return-object p0
.end method

.method public X()Lcom/github/catvod/spider/merge1/aQ/Y5$c;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->W:Lcom/github/catvod/spider/merge1/aQ/Y5$c;

    return-object v0
.end method

.method public cG()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->X:Z

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->Ku()Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->y:I

    return v0
.end method

.method jl()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->Ku:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_b

    goto :goto_f

    .line 2
    :cond_b
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->A()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public y()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->i:Z

    return v0
.end method
