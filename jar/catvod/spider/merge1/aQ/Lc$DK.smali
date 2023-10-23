.class Lcom/github/catvod/spider/merge1/aQ/Lc$DK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge1/aQ/lj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/catvod/spider/merge1/aQ/Lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DK"
.end annotation


# instance fields
.field private final Eg:Lcom/github/catvod/spider/merge1/aQ/nM;

.field private final Ku:Lcom/github/catvod/spider/merge1/aQ/u5;

.field private final W:Lcom/github/catvod/spider/merge1/aQ/li;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/nM;Lcom/github/catvod/spider/merge1/aQ/u5;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/Lc$DK;->W:Lcom/github/catvod/spider/merge1/aQ/li;

    .line 3
    iput-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/Lc$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/nM;

    .line 4
    iput-object p3, p0, Lcom/github/catvod/spider/merge1/aQ/Lc$DK;->Ku:Lcom/github/catvod/spider/merge1/aQ/u5;

    return-void
.end method


# virtual methods
.method public Eg(Lcom/github/catvod/spider/merge1/aQ/iV;I)V
    .registers 4

    .line 1
    instance-of p2, p1, Lcom/github/catvod/spider/merge1/aQ/li;

    if-eqz p2, :cond_15

    .line 2
    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 3
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/Lc$DK;->Ku:Lcom/github/catvod/spider/merge1/aQ/u5;

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/Lc$DK;->W:Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {p2, v0, p1}, Lcom/github/catvod/spider/merge1/aQ/u5;->W(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 4
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/Lc$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/nM;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method public W(Lcom/github/catvod/spider/merge1/aQ/iV;I)V
    .registers 3

    return-void
.end method
