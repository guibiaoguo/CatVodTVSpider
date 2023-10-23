.class public final Lcom/github/catvod/spider/merge2/xbpq/e/k;
.super Lcom/github/catvod/spider/merge2/xbpq/e/NO;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    iput p2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/k;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_12

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/NO;-><init>()V

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->j(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/k;->b:Ljava/lang/String;

    return-void

    .line 2
    :cond_12
    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/NO;-><init>()V

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/k;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 4

    iget p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/k;->a:I

    packed-switch p1, :pswitch_data_42

    goto :goto_32

    .line 1
    :pswitch_6  #0x0
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d()Lcom/github/catvod/spider/merge2/xbpq/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/catvod/spider/merge2/xbpq/c/a;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/k;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    return p1

    .line 2
    :goto_32
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->T()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/k;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/k;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_22

    goto :goto_15

    :pswitch_8  #0x0
    new-array v0, v2, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/k;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "[^%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_15
    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/k;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, ":containsData(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
