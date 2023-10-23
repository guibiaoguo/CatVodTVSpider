.class public final Lcom/github/catvod/spider/merge2/xbpq/d/EF;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/github/catvod/spider/merge2/xbpq/d/i1;

.field private b:Lcom/github/catvod/spider/merge2/xbpq/d/CD;


# direct methods
.method public constructor <init>(Lcom/github/catvod/spider/merge2/xbpq/d/i1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/EF;->a:Lcom/github/catvod/spider/merge2/xbpq/d/i1;

    .line 1
    new-instance p1, Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/CD;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/EF;->b:Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/h;
    .registers 4

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/b;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/EF;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/i1;)V

    .line 1
    invoke-virtual {v0, v1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->C(Ljava/io/Reader;Lcom/github/catvod/spider/merge2/xbpq/d/EF;)V

    .line 2
    iget-object p0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/QR;

    :cond_14
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->t()Lcom/github/catvod/spider/merge2/xbpq/d/OP;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->g()Lcom/github/catvod/spider/merge2/xbpq/d/OP;

    iget v1, v1, Lcom/github/catvod/spider/merge2/xbpq/d/OP;->a:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_14

    .line 3
    iget-object p0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->b:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->d()V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->b:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    iput-object p0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/QR;

    iput-object p0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    iget-object p0, v0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d:Lcom/github/catvod/spider/merge2/xbpq/c/h;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/github/catvod/spider/merge2/xbpq/d/CD;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/EF;->b:Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/EF;->a:Lcom/github/catvod/spider/merge2/xbpq/d/i1;

    .line 2
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
