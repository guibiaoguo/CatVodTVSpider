.class Lcom/github/catvod/spider/merge1/aQ/aH$Xx;
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
    name = "Xx"
.end annotation


# instance fields
.field private final W:Lcom/github/catvod/spider/merge1/aQ/aH$AA;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge1/aQ/aH$AA;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$Xx;->W:Lcom/github/catvod/spider/merge1/aQ/aH$AA;

    return-void
.end method


# virtual methods
.method public Eg(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$Xx;->W:Lcom/github/catvod/spider/merge1/aQ/aH$AA;

    invoke-virtual {p2}, Ljava/util/Calendar;->getWeekYear()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/aH$AA;->W(Ljava/lang/Appendable;I)V

    return-void
.end method

.method public Ku()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$Xx;->W:Lcom/github/catvod/spider/merge1/aQ/aH$AA;

    invoke-interface {v0}, Lcom/github/catvod/spider/merge1/aQ/aH$tb;->Ku()I

    move-result v0

    return v0
.end method

.method public W(Ljava/lang/Appendable;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$Xx;->W:Lcom/github/catvod/spider/merge1/aQ/aH$AA;

    invoke-interface {v0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/aH$AA;->W(Ljava/lang/Appendable;I)V

    return-void
.end method
