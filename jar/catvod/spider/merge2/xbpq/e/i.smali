.class public final Lcom/github/catvod/spider/merge2/xbpq/e/i;
.super Lcom/github/catvod/spider/merge2/xbpq/e/NO;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput p2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/i;->a:I

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/NO;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 3

    iget p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/i;->a:I

    packed-switch p1, :pswitch_data_20

    goto :goto_14

    .line 1
    :pswitch_6  #0x1
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/i;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->W(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 2
    :pswitch_d  #0x0
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/i;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->o(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 3
    :goto_14
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/i;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_d  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/i;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_30

    goto :goto_22

    :pswitch_8  #0x1
    new-array v0, v2, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/i;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, ".%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15  #0x0
    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/i;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_22
    new-array v0, v2, [Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/i;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_15  #00000000
        :pswitch_8  #00000001
    .end packed-switch
.end method
