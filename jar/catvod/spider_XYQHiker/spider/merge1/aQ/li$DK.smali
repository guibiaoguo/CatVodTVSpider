.class Lcom/github/catvod/spider/merge1/aQ/li$DK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge1/aQ/lj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/catvod/spider/merge1/aQ/li;->n()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Eg:Lcom/github/catvod/spider/merge1/aQ/li;

.field final synthetic W:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/merge1/aQ/li;Ljava/lang/StringBuilder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/li$DK;->Eg:Lcom/github/catvod/spider/merge1/aQ/li;

    iput-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/li$DK;->W:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Eg(Lcom/github/catvod/spider/merge1/aQ/iV;I)V
    .registers 3

    .line 1
    instance-of p2, p1, Lcom/github/catvod/spider/merge1/aQ/Gn;

    if-eqz p2, :cond_c

    .line 2
    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/Gn;

    .line 3
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/li$DK;->W:Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/li;->z(Ljava/lang/StringBuilder;Lcom/github/catvod/spider/merge1/aQ/Gn;)V

    goto :goto_3f

    .line 4
    :cond_c
    instance-of p2, p1, Lcom/github/catvod/spider/merge1/aQ/li;

    if-eqz p2, :cond_3f

    .line 5
    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 6
    iget-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/li$DK;->W:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_3f

    .line 7
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->m()Z

    move-result p2

    if-nez p2, :cond_30

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->c(Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/n8;->Ku()Ljava/lang/String;

    move-result-object p1

    const-string p2, "br"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    :cond_30
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/li$DK;->W:Ljava/lang/StringBuilder;

    .line 8
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/Gn;->Bn(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 9
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/li$DK;->W:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3f
    :goto_3f
    return-void
.end method

.method public W(Lcom/github/catvod/spider/merge1/aQ/iV;I)V
    .registers 3

    .line 1
    instance-of p2, p1, Lcom/github/catvod/spider/merge1/aQ/li;

    if-eqz p2, :cond_24

    .line 2
    move-object p2, p1

    check-cast p2, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 3
    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->m()Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->r()Lcom/github/catvod/spider/merge1/aQ/iV;

    move-result-object p1

    instance-of p1, p1, Lcom/github/catvod/spider/merge1/aQ/Gn;

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/li$DK;->W:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/Gn;->Bn(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 4
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/li$DK;->W:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_24
    return-void
.end method
