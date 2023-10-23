.class Lcom/github/catvod/spider/merge1/aQ/aH$DK;
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
    name = "DK"
.end annotation


# instance fields
.field private final W:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-char p1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$DK;->W:C

    return-void
.end method


# virtual methods
.method public Eg(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 3

    .line 1
    iget-char p2, p0, Lcom/github/catvod/spider/merge1/aQ/aH$DK;->W:C

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public Ku()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
