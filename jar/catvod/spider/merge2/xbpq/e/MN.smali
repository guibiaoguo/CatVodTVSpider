.class public final Lcom/github/catvod/spider/merge2/xbpq/e/MN;
.super Lcom/github/catvod/spider/merge2/xbpq/e/NO;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/NO;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/MN;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 3

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/MN;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/MN;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
