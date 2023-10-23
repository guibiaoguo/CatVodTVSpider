.class final Lcom/github/catvod/spider/merge2/xbpq/c/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/catvod/spider/merge2/xbpq/e/OP;


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Lcom/github/catvod/spider/merge2/xbpq/c/g;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Lcom/github/catvod/spider/merge2/xbpq/c/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/q;->a:Ljava/lang/Appendable;

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/c/q;->b:Lcom/github/catvod/spider/merge2/xbpq/c/g;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/c/g;->e()Ljava/nio/charset/CharsetEncoder;

    return-void
.end method


# virtual methods
.method public final a(Lcom/github/catvod/spider/merge2/xbpq/c/r;I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/q;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/q;->b:Lcom/github/catvod/spider/merge2/xbpq/c/g;

    invoke-virtual {p1, v0, p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->w(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    new-instance p2, Lcom/github/catvod/spider/merge2/xbpq/Y/a;

    invoke-direct {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/Y/a;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final b(Lcom/github/catvod/spider/merge2/xbpq/c/r;I)V
    .registers 5

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :try_start_c
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/c/q;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/c/q;->b:Lcom/github/catvod/spider/merge2/xbpq/c/g;

    invoke-virtual {p1, v0, p2, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->x(Ljava/lang/Appendable;ILcom/github/catvod/spider/merge2/xbpq/c/g;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_1b

    :catch_14
    move-exception p1

    new-instance p2, Lcom/github/catvod/spider/merge2/xbpq/Y/a;

    invoke-direct {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/Y/a;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1b
    :goto_1b
    return-void
.end method
