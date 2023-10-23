.class Lcom/github/catvod/spider/merge1/aQ/aH$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/aH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# instance fields
.field private final Eg:I

.field private final Ku:Ljava/util/Locale;

.field private final W:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$l;->W:Ljava/util/TimeZone;

    if-eqz p2, :cond_d

    const/high16 p1, -0x80000000

    or-int/2addr p1, p3

    .line 3
    iput p1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$l;->Eg:I

    goto :goto_f

    .line 4
    :cond_d
    iput p3, p0, Lcom/github/catvod/spider/merge1/aQ/aH$l;->Eg:I

    .line 5
    :goto_f
    invoke-static {p4}, Lcom/github/catvod/spider/merge1/aQ/Xj;->W(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$l;->Ku:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/github/catvod/spider/merge1/aQ/aH$l;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 2
    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/aH$l;

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$l;->W:Ljava/util/TimeZone;

    iget-object v3, p1, Lcom/github/catvod/spider/merge1/aQ/aH$l;->W:Ljava/util/TimeZone;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget v1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$l;->Eg:I

    iget v3, p1, Lcom/github/catvod/spider/merge1/aQ/aH$l;->Eg:I

    if-ne v1, v3, :cond_26

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$l;->Ku:Ljava/util/Locale;

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/aH$l;->Ku:Ljava/util/Locale;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    :cond_28
    return v2
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/github/catvod/spider/merge1/aQ/aH$l;->Eg:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$l;->Ku:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/aH$l;->W:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
