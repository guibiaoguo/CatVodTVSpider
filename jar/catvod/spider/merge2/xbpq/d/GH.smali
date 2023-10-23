.class final Lcom/github/catvod/spider/merge2/xbpq/d/GH;
.super Lcom/github/catvod/spider/merge2/xbpq/d/HI;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/HI;-><init>()V

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/HI;->i(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/d/HI;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    const-string v0, "<![CDATA["

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/d;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/HI;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "]]>"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/b/f;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
