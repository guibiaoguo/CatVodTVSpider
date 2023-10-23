.class Lcom/github/catvod/spider/merge1/aQ/aH$qz;
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
    name = "qz"
.end annotation


# instance fields
.field private final Eg:I

.field private final Ku:Ljava/lang/String;

.field private final W:Ljava/util/Locale;

.field private final jl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/github/catvod/spider/merge1/aQ/Xj;->W(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$qz;->W:Ljava/util/Locale;

    .line 3
    iput p3, p0, Lcom/github/catvod/spider/merge1/aQ/aH$qz;->Eg:I

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0, p3, p2}, Lcom/github/catvod/spider/merge1/aQ/aH;->T(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$qz;->Ku:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0, p3, p2}, Lcom/github/catvod/spider/merge1/aQ/aH;->T(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$qz;->jl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Eg(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const/16 v1, 0x10

    .line 2
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-nez p2, :cond_19

    const/4 p2, 0x0

    .line 3
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$qz;->Eg:I

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/aH$qz;->W:Ljava/util/Locale;

    invoke-static {v0, p2, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/aH;->T(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_25

    :cond_19
    const/4 p2, 0x1

    .line 4
    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$qz;->Eg:I

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/aH$qz;->W:Ljava/util/Locale;

    invoke-static {v0, p2, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/aH;->T(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_25
    return-void
.end method

.method public Ku()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$qz;->Ku:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$qz;->jl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
