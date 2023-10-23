.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/t0;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "AttributeName"

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->r0:[C

    invoke-virtual {p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->q([C)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->e()C

    move-result p2

    if-eqz p2, :cond_59

    const/16 v1, 0x20

    if-eq p2, v1, :cond_53

    const/16 v1, 0x22

    if-eq p2, v1, :cond_4d

    const/16 v1, 0x27

    if-eq p2, v1, :cond_4d

    const/16 v1, 0x2f

    if-eq p2, v1, :cond_4a

    const v1, 0xffff

    if-eq p2, v1, :cond_43

    const/16 v1, 0x9

    if-eq p2, v1, :cond_53

    const/16 v1, 0xa

    if-eq p2, v1, :cond_53

    const/16 v1, 0xc

    if-eq p2, v1, :cond_53

    const/16 v1, 0xd

    if-eq p2, v1, :cond_53

    packed-switch p2, :pswitch_data_66

    goto :goto_50

    :pswitch_3c  #0x3e
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->o()V

    goto :goto_46

    :pswitch_40  #0x3d
    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->M:Lcom/github/catvod/spider/merge2/xbpq/d/v0;

    goto :goto_55

    :cond_43
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->p(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :goto_46
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_64

    :cond_4a
    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->R:Lcom/github/catvod/spider/merge2/xbpq/d/B2;

    goto :goto_55

    :cond_4d
    :pswitch_4d  #0x3c
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :goto_50
    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    goto :goto_61

    :cond_53
    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->L:Lcom/github/catvod/spider/merge2/xbpq/d/u0;

    :goto_55
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_64

    :cond_59
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    const p2, 0xfffd

    :goto_61
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->i(C)V

    :goto_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x3c
        :pswitch_4d  #0000003c
        :pswitch_40  #0000003d
        :pswitch_3c  #0000003e
    .end packed-switch
.end method
