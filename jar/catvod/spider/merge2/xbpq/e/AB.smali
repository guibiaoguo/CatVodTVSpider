.class public final Lcom/github/catvod/spider/merge2/xbpq/e/AB;
.super Lcom/github/catvod/spider/merge2/xbpq/e/NO;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/AB;->a:I

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/NO;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 5

    iget p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/AB;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_30

    goto :goto_1a

    .line 1
    :pswitch_8  #0x0
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p1

    if-eqz p1, :cond_19

    instance-of p1, p1, Lcom/github/catvod/spider/merge2/xbpq/c/h;

    if-nez p1, :cond_19

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->U()I

    move-result p1

    if-nez p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0

    .line 2
    :goto_1a
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p1

    if-eqz p1, :cond_2f

    instance-of p1, p1, Lcom/github/catvod/spider/merge2/xbpq/c/h;

    if-nez p1, :cond_2f

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->l0()Lcom/github/catvod/spider/merge2/xbpq/e/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    return v0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/AB;->a:I

    packed-switch v0, :pswitch_data_c

    const-string v0, ":only-child"

    return-object v0

    :pswitch_8  #0x0
    const-string v0, ":first-child"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
