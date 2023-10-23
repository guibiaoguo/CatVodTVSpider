.class Lcom/github/catvod/spider/merge1/aQ/aH$I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge1/aQ/aH$AA;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/aH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "I"
.end annotation


# instance fields
.field private final Eg:I

.field private final W:I


# direct methods
.method constructor <init>(II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    if-lt p2, v0, :cond_b

    .line 2
    iput p1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$I;->W:I

    .line 3
    iput p2, p0, Lcom/github/catvod/spider/merge1/aQ/aH$I;->Eg:I

    return-void

    .line 4
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public Eg(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$I;->W:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/aH$I;->W(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public Ku()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$I;->Eg:I

    return v0
.end method

.method public final W(Ljava/lang/Appendable;I)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$I;->Eg:I

    invoke-static {p1, p2, v0}, Lcom/github/catvod/spider/merge1/aQ/aH;->Eg(Ljava/lang/Appendable;II)V

    return-void
.end method
