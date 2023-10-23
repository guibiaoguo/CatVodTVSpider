.class Lcom/github/catvod/spider/merge1/aQ/iV$DK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge1/aQ/lj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/iV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DK"
.end annotation


# instance fields
.field private final Eg:Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

.field private final W:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iV$DK;->W:Ljava/lang/Appendable;

    .line 3
    iput-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/iV$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    .line 4
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/Yw$DK;->A()Ljava/nio/charset/CharsetEncoder;

    return-void
.end method


# virtual methods
.method public Eg(Lcom/github/catvod/spider/merge1/aQ/iV;I)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV$DK;->W:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/iV$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    invoke-virtual {p1, v0, p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->kc(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    .line 2
    new-instance p2, Lcom/github/catvod/spider/merge1/aQ/Cc;

    invoke-direct {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/Cc;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public W(Lcom/github/catvod/spider/merge1/aQ/iV;I)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->cs()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2
    :try_start_c
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iV$DK;->W:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/iV$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/Yw$DK;

    invoke-virtual {p1, v0, p2, v1}, Lcom/github/catvod/spider/merge1/aQ/iV;->ey(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_1b

    :catch_14
    move-exception p1

    .line 3
    new-instance p2, Lcom/github/catvod/spider/merge1/aQ/Cc;

    invoke-direct {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/Cc;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1b
    :goto_1b
    return-void
.end method
