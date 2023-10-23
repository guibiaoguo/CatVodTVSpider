.class public final Lcom/github/catvod/spider/merge2/xbpq/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ", "

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/a/i;->a:Ljava/lang/String;

    return-void
.end method

.method public static b()Lcom/github/catvod/spider/merge2/xbpq/a/i;
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/a/i;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/a/i;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1
    :try_start_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Ljava/lang/CharSequence;

    move-object v2, p0

    if-eqz v1, :cond_19

    move-object v1, p2

    move-object p2, p1

    goto :goto_3c

    :cond_19
    move-object v1, v0

    move-object v0, p2

    move-object p2, p1

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, v2, Lcom/github/catvod/spider/merge2/xbpq/a/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1c

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3c
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3e} :catch_44

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_20

    :cond_42
    move-object p1, p2

    :cond_43
    return-object p1

    :catch_44
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_4c

    :goto_4b
    throw p2

    :goto_4c
    goto :goto_4b
.end method
