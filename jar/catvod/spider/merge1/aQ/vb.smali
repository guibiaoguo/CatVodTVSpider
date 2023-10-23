.class public Lcom/github/catvod/spider/merge1/aQ/vb;
.super Lcom/github/catvod/spider/merge1/aQ/Gn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/Gn;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic JM()Lcom/github/catvod/spider/merge1/aQ/Gn;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/vb;->WF()Lcom/github/catvod/spider/merge1/aQ/vb;

    move-result-object v0

    return-object v0
.end method

.method public WF()Lcom/github/catvod/spider/merge1/aQ/vb;
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/github/catvod/spider/merge1/aQ/Gn;->JM()Lcom/github/catvod/spider/merge1/aQ/Gn;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/vb;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/vb;->WF()Lcom/github/catvod/spider/merge1/aQ/vb;

    move-result-object v0

    return-object v0
.end method

.method public cs()Ljava/lang/String;
    .registers 2

    const-string v0, "#cdata"

    return-object v0
.end method

.method ey(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    .registers 4

    :try_start_0
    const-string p2, "]]>"

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 2
    new-instance p2, Lcom/github/catvod/spider/merge1/aQ/mg;

    invoke-direct {p2, p1}, Lcom/github/catvod/spider/merge1/aQ/mg;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method kc(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge1/aQ/Yw$DK;)V
    .registers 4

    const-string p2, "<![CDATA["

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/Gn;->dM()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public bridge synthetic nN()Lcom/github/catvod/spider/merge1/aQ/iV;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/vb;->WF()Lcom/github/catvod/spider/merge1/aQ/vb;

    move-result-object v0

    return-object v0
.end method
