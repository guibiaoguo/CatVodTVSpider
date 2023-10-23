.class Lcom/github/catvod/spider/merge1/aQ/aH$K;
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
    name = "K"
.end annotation


# instance fields
.field private final W:Lcom/github/catvod/spider/merge1/aQ/aH$AA;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge1/aQ/aH$AA;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$K;->W:Lcom/github/catvod/spider/merge1/aQ/aH$AA;

    return-void
.end method


# virtual methods
.method public Eg(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 6

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$K;->W:Lcom/github/catvod/spider/merge1/aQ/aH$AA;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_b

    goto :goto_d

    :cond_b
    add-int/lit8 v0, p2, -0x1

    :goto_d
    invoke-interface {v1, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/aH$AA;->W(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public Ku()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$K;->W:Lcom/github/catvod/spider/merge1/aQ/aH$AA;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge1/aQ/aH$tb;->Ku()I

    move-result v0

    return v0
.end method

.method public W(Ljava/lang/Appendable;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$K;->W:Lcom/github/catvod/spider/merge1/aQ/aH$AA;

    invoke-interface {v0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/aH$AA;->W(Ljava/lang/Appendable;I)V

    return-void
.end method
