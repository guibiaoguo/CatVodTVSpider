.class Lcom/github/catvod/spider/merge1/aQ/aH$lW;
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
    name = "lW"
.end annotation


# static fields
.field static final W:Lcom/github/catvod/spider/merge1/aQ/aH$lW;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/aH$lW;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/aH$lW;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/aH$lW;->W:Lcom/github/catvod/spider/merge1/aQ/aH$lW;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Eg(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/aH$lW;->W(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public Ku()I
    .registers 2

    const/4 v0, 0x2

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

    goto :goto_e

    .line 2
    :cond_b
    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/aH;->W(Ljava/lang/Appendable;I)V

    :goto_e
    return-void
.end method
