.class final Lcom/github/catvod/spider/merge2/xbpq/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge2/xbpq/e/OP;


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/j;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge2/xbpq/c/r;I)V
    .registers 3

    instance-of p2, p1, Lcom/github/catvod/spider/merge2/xbpq/c/u;

    if-eqz p2, :cond_c

    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/c/u;

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/c/j;->a:Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->I(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge2/xbpq/c/u;)V

    goto :goto_3f

    :cond_c
    instance-of p2, p1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz p2, :cond_3f

    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/c/j;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_3f

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->a0()Z

    move-result p2

    if-nez p2, :cond_30

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->J(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "br"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    :cond_30
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/j;->a:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/u;->M(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/j;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3f
    :goto_3f
    return-void
.end method

.method public final b(Lcom/github/catvod/spider/merge2/xbpq/c/r;I)V
    .registers 3

    instance-of p2, p1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz p2, :cond_24

    move-object p2, p1

    check-cast p2, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->a0()Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->s()Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object p1

    instance-of p1, p1, Lcom/github/catvod/spider/merge2/xbpq/c/u;

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/j;->a:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/u;->M(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/j;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_24
    return-void
.end method
