.class Lcom/github/catvod/spider/merge1/aQ/aH$G;
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
    name = "G"
.end annotation


# instance fields
.field private final Eg:[Ljava/lang/String;

.field private final W:I


# direct methods
.method constructor <init>(I[Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$G;->W:I

    .line 3
    iput-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/aH$G;->Eg:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Eg(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$G;->Eg:[Ljava/lang/String;

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$G;->W:I

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    aget-object p2, v0, p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public Ku()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$G;->Eg:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/aH$G;->Eg:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_14
    return v1
.end method
