.class Lcom/github/catvod/spider/merge1/aQ/aH$P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge1/aQ/aH$tb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/aH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "P"
.end annotation


# static fields
.field static final Eg:Lcom/github/catvod/spider/merge1/aQ/aH$P;

.field static final W:Lcom/github/catvod/spider/merge1/aQ/aH$P;


# instance fields
.field final Ku:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/aH$P;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/aH$P;-><init>(Z)V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/aH$P;->W:Lcom/github/catvod/spider/merge1/aQ/aH$P;

    .line 2
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/aH$P;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/aH$P;-><init>(Z)V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/aH$P;->Eg:Lcom/github/catvod/spider/merge1/aQ/aH$P;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$P;->Ku:Z

    return-void
.end method


# virtual methods
.method public Eg(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 5

    const/16 v0, 0xf

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr v0, p2

    if-gez v0, :cond_16

    const/16 p2, 0x2d

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    neg-int v0, v0

    goto :goto_1b

    :cond_16
    const/16 p2, 0x2b

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_1b
    const p2, 0x36ee80

    .line 4
    div-int p2, v0, p2

    .line 5
    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/aH;->W(Ljava/lang/Appendable;I)V

    .line 6
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$P;->Ku:Z

    if-eqz v1, :cond_2c

    const/16 v1, 0x3a

    .line 7
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_2c
    const v1, 0xea60

    .line 8
    div-int/2addr v0, v1

    mul-int/lit8 p2, p2, 0x3c

    sub-int/2addr v0, p2

    .line 9
    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/aH;->W(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public Ku()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method
