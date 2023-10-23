.class Lcom/github/catvod/spider/merge1/aQ/aH$Fx;
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
    name = "Fx"
.end annotation


# instance fields
.field private final W:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$Fx;->W:I

    return-void
.end method


# virtual methods
.method public Eg(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$Fx;->W:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/aH$Fx;->W(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public Ku()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final W(Ljava/lang/Appendable;I)V
    .registers 4

    const/16 v0, 0xa

    if-ge p2, v0, :cond_b

    add-int/lit8 p2, p2, 0x30

    int-to-char p2, p2

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_17

    :cond_b
    const/16 v0, 0x64

    if-ge p2, v0, :cond_13

    .line 2
    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/aH;->W(Ljava/lang/Appendable;I)V

    goto :goto_17

    :cond_13
    const/4 v0, 0x1

    .line 3
    invoke-static {p1, p2, v0}, Lcom/github/catvod/spider/merge1/aQ/aH;->Eg(Ljava/lang/Appendable;II)V

    :goto_17
    return-void
.end method
