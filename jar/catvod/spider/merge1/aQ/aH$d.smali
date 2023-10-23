.class Lcom/github/catvod/spider/merge1/aQ/aH$d;
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
    name = "d"
.end annotation


# static fields
.field static final W:Lcom/github/catvod/spider/merge1/aQ/aH$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/aH$d;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/aH$d;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/aH$d;->W:Lcom/github/catvod/spider/merge1/aQ/aH$d;

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

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    rem-int/lit8 p2, p2, 0x64

    invoke-virtual {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/aH$d;->W(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public Ku()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final W(Ljava/lang/Appendable;I)V
    .registers 3

    .line 1
    rem-int/lit8 p2, p2, 0x64

    invoke-static {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/aH;->W(Ljava/lang/Appendable;I)V

    return-void
.end method
