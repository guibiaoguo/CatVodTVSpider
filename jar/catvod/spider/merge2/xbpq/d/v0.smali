.class final enum Lcom/github/catvod/spider/merge2/xbpq/d/v0;
.super Lcom/github/catvod/spider/merge2/xbpq/d/h1;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, "BeforeAttributeValue"

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/h1;-><init>(Ljava/lang/String;ILcom/github/catvod/spider/merge2/xbpq/d/c0;)V

    return-void
.end method


# virtual methods
.method final g(Lcom/github/catvod/spider/merge2/xbpq/d/QR;Lcom/github/catvod/spider/merge2/xbpq/d/a;)V
    .registers 7

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->P:Lcom/github/catvod/spider/merge2/xbpq/d/z0;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->e()C

    move-result v2

    if-eqz v2, :cond_5b

    const/16 v3, 0x20

    if-eq v2, v3, :cond_69

    const/16 v3, 0x22

    if-eq v2, v3, :cond_55

    const/16 v3, 0x60

    if-eq v2, v3, :cond_4c

    const v3, 0xffff

    if-eq v2, v3, :cond_42

    const/16 v3, 0x9

    if-eq v2, v3, :cond_69

    const/16 v3, 0xa

    if-eq v2, v3, :cond_69

    const/16 v3, 0xc

    if-eq v2, v3, :cond_69

    const/16 v3, 0xd

    if-eq v2, v3, :cond_69

    const/16 v3, 0x26

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x27

    if-eq v2, v3, :cond_3b

    packed-switch v2, :pswitch_data_6a

    goto :goto_3e

    :pswitch_37  #0x3e
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_45

    :cond_3b
    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->O:Lcom/github/catvod/spider/merge2/xbpq/d/x0;

    goto :goto_57

    :cond_3e
    :goto_3e
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->G()V

    goto :goto_66

    :cond_42
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->p(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :goto_45
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->o()V

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_69

    :cond_4c
    :pswitch_4c  #0x3c, 0x3d
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {p2, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->k(C)V

    goto :goto_66

    :cond_55
    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->N:Lcom/github/catvod/spider/merge2/xbpq/d/w0;

    :goto_57
    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    goto :goto_69

    :cond_5b
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->q(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    iget-object p2, p1, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->i:Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->k(C)V

    :goto_66
    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    :cond_69
    :goto_69
    return-void

    :pswitch_data_6a
    .packed-switch 0x3c
        :pswitch_4c  #0000003c
        :pswitch_4c  #0000003d
        :pswitch_37  #0000003e
    .end packed-switch
.end method
