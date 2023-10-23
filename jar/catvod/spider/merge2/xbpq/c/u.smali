.class public Lcom/github/catvod/spider/merge2/xbpq/c/u;
.super Lcom/github/catvod/spider/merge2/xbpq/c/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/p;->f:Ljava/lang/Object;

    return-void
.end method

.method static M(Ljava/lang/StringBuilder;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method


# virtual methods
.method public K()Lcom/github/catvod/spider/merge2/xbpq/c/u;
    .registers 2

    invoke-super {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->j()Lcom/github/catvod/spider/merge2/xbpq/c/r;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/u;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/u;->K()Lcom/github/catvod/spider/merge2/xbpq/c/u;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic j()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/u;->K()Lcom/github/catvod/spider/merge2/xbpq/c/u;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/github/catvod/spider/merge2/xbpq/c/r;
    .registers 1

    return-object p0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    const-string v0, "#text"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method w(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    .registers 13

    invoke-virtual {p3}, Lcom/github/catvod/spider/merge2/xbpq/c/g;->f()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1
    iget v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->d:I

    if-nez v1, :cond_2a

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    instance-of v2, v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz v2, :cond_2a

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->m0()Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->a()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_2a

    .line 4
    :cond_27
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->r(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V

    :cond_2a
    :goto_2a
    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    invoke-static {v2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->h0(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Z

    move-result v2

    if-nez v2, :cond_38

    const/4 v7, 0x1

    goto :goto_39

    :cond_38
    const/4 v7, 0x0

    :goto_39
    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/r;->c:Lcom/github/catvod/spider/merge2/xbpq/c/r;

    instance-of v0, v0, Lcom/github/catvod/spider/merge2/xbpq/c/h;

    if-eqz v0, :cond_43

    const/4 v8, 0x1

    goto :goto_44

    :cond_43
    const/4 v8, 0x0

    :goto_44
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/c/p;->I()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lcom/github/catvod/spider/merge2/xbpq/c/n;->d(Ljava/lang/Appendable;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/c/g;ZZZ)V

    return-void
.end method

.method x(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    .registers 4

    return-void
.end method
