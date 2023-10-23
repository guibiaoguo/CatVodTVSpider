.class public final Lcom/github/catvod/spider/merge1/xbpq/d/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/github/catvod/spider/merge1/xbpq/d/i1;

.field private b:Lcom/github/catvod/spider/merge1/xbpq/d/C;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge1/xbpq/d/i1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/xbpq/d/E;->a:Lcom/github/catvod/spider/merge1/xbpq/d/i1;

    .line 1
    new-instance p1, Lcom/github/catvod/spider/merge1/xbpq/d/C;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge1/xbpq/d/C;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/xbpq/d/E;->b:Lcom/github/catvod/spider/merge1/xbpq/d/C;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/xbpq/c/h;
    .registers 4

    new-instance v0, Lcom/github/catvod/spider/merge1/xbpq/d/b;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/xbpq/d/b;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/github/catvod/spider/merge1/xbpq/d/E;

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/xbpq/d/E;-><init>(Lcom/github/catvod/spider/merge1/xbpq/d/i1;)V

    .line 1
    invoke-virtual {v0, v1, p0}, Lcom/github/catvod/spider/merge1/xbpq/d/b;->C(Ljava/io/Reader;Lcom/github/catvod/spider/merge1/xbpq/d/E;)V

    .line 2
    iget-object p0, v0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->c:Lcom/github/catvod/spider/merge1/xbpq/d/Q;

    :cond_14
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/d/Q;->t()Lcom/github/catvod/spider/merge1/xbpq/d/O;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/xbpq/d/b;->c(Lcom/github/catvod/spider/merge1/xbpq/d/O;)Z

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/xbpq/d/O;->g()Lcom/github/catvod/spider/merge1/xbpq/d/O;

    iget v1, v1, Lcom/github/catvod/spider/merge1/xbpq/d/O;->a:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_14

    .line 3
    iget-object p0, v0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->b:Lcom/github/catvod/spider/merge1/xbpq/d/a;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/xbpq/d/a;->d()V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->b:Lcom/github/catvod/spider/merge1/xbpq/d/a;

    iput-object p0, v0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->c:Lcom/github/catvod/spider/merge1/xbpq/d/Q;

    iput-object p0, v0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->e:Ljava/util/ArrayList;

    iget-object p0, v0, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->d:Lcom/github/catvod/spider/merge1/xbpq/c/h;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/github/catvod/spider/merge1/xbpq/d/C;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/d/E;->b:Lcom/github/catvod/spider/merge1/xbpq/d/C;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/d/E;->a:Lcom/github/catvod/spider/merge1/xbpq/d/i1;

    .line 2
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/xbpq/d/i1;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
