.class public final Lcom/github/catvod/spider/merge2/xbpq/e/PQ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge2/xbpq/e/NO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, ","

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, ">"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "+"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "~"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, " "

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->d:[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "="

    aput-object v2, v1, v3

    const-string v2, "!="

    aput-object v2, v1, v4

    const-string v2, "^="

    aput-object v2, v1, v5

    const-string v2, "$="

    aput-object v2, v1, v6

    const-string v2, "*="

    aput-object v2, v1, v7

    const-string v2, "~="

    aput-object v2, v1, v0

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->e:[Ljava/lang/String;

    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->f:Ljava/util/regex/Pattern;

    const-string v0, "([+-])?(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->b:Ljava/lang/String;

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    return-void
.end method

.method private a(C)V
    .registers 11

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->h()Z

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_9
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->i()Z

    move-result v1

    if-nez v1, :cond_63

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    goto :goto_4a

    :cond_2e
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    :goto_4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_4e
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    sget-object v2, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->d:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->l([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    goto :goto_63

    :cond_59
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->c()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_63
    :goto_63
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->h(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_9a

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    instance-of v5, v1, Lcom/github/catvod/spider/merge2/xbpq/e/e;

    if-eqz v5, :cond_a1

    if-eq p1, v2, :cond_a1

    move-object v5, v1

    check-cast v5, Lcom/github/catvod/spider/merge2/xbpq/e/e;

    .line 3
    iget v6, v5, Lcom/github/catvod/spider/merge2/xbpq/e/f;->b:I

    if-lez v6, :cond_97

    iget-object v5, v5, Lcom/github/catvod/spider/merge2/xbpq/e/f;->a:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    goto :goto_98

    :cond_97
    const/4 v5, 0x0

    :goto_98
    const/4 v6, 0x1

    goto :goto_a3

    .line 4
    :cond_9a
    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/d;

    iget-object v5, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Lcom/github/catvod/spider/merge2/xbpq/e/d;-><init>(Ljava/util/Collection;)V

    :cond_a1
    move-object v5, v1

    const/4 v6, 0x0

    :goto_a3
    iget-object v7, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/16 v7, 0x20

    const/4 v8, 0x2

    if-eq p1, v7, :cond_125

    const/16 v7, 0x3e

    if-eq p1, v7, :cond_114

    const/16 v7, 0x7e

    if-eq p1, v7, :cond_103

    const/16 v7, 0x2b

    if-eq p1, v7, :cond_f2

    if-ne p1, v2, :cond_d9

    instance-of p1, v5, Lcom/github/catvod/spider/merge2/xbpq/e/e;

    if-eqz p1, :cond_c2

    check-cast v5, Lcom/github/catvod/spider/merge2/xbpq/e/e;

    goto :goto_d0

    :cond_c2
    new-instance p1, Lcom/github/catvod/spider/merge2/xbpq/e/e;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge2/xbpq/e/e;-><init>()V

    .line 5
    iget-object v2, p1, Lcom/github/catvod/spider/merge2/xbpq/e/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/e/f;->b()V

    move-object v5, p1

    .line 6
    :goto_d0
    iget-object p1, v5, Lcom/github/catvod/spider/merge2/xbpq/e/f;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge2/xbpq/e/f;->b()V

    goto :goto_136

    .line 7
    :cond_d9
    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/e/QR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown combinator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/QR;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_f2
    new-instance p1, Lcom/github/catvod/spider/merge2/xbpq/e/d;

    new-array v2, v8, [Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    new-instance v7, Lcom/github/catvod/spider/merge2/xbpq/e/UV;

    invoke-direct {v7, v5}, Lcom/github/catvod/spider/merge2/xbpq/e/UV;-><init>(Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge2/xbpq/e/d;-><init>([Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V

    goto :goto_135

    :cond_103
    new-instance p1, Lcom/github/catvod/spider/merge2/xbpq/e/d;

    new-array v2, v8, [Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    new-instance v7, Lcom/github/catvod/spider/merge2/xbpq/e/XY;

    invoke-direct {v7, v5}, Lcom/github/catvod/spider/merge2/xbpq/e/XY;-><init>(Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge2/xbpq/e/d;-><init>([Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V

    goto :goto_135

    :cond_114
    new-instance p1, Lcom/github/catvod/spider/merge2/xbpq/e/d;

    new-array v2, v8, [Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    new-instance v7, Lcom/github/catvod/spider/merge2/xbpq/e/TU;

    invoke-direct {v7, v5}, Lcom/github/catvod/spider/merge2/xbpq/e/TU;-><init>(Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge2/xbpq/e/d;-><init>([Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V

    goto :goto_135

    :cond_125
    new-instance p1, Lcom/github/catvod/spider/merge2/xbpq/e/d;

    new-array v2, v8, [Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    new-instance v7, Lcom/github/catvod/spider/merge2/xbpq/e/WX;

    invoke-direct {v7, v5}, Lcom/github/catvod/spider/merge2/xbpq/e/WX;-><init>(Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge2/xbpq/e/d;-><init>([Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V

    :goto_135
    move-object v5, p1

    :goto_136
    if-eqz v6, :cond_145

    move-object p1, v1

    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/e/e;

    .line 8
    iget-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/e/f;->a:Ljava/util/ArrayList;

    iget p1, p1, Lcom/github/catvod/spider/merge2/xbpq/e/f;->b:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_146

    :cond_145
    move-object v1, v5

    .line 9
    :goto_146
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()I
    .registers 6

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/github/catvod/spider/merge2/xbpq/b/j;->d:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_2c

    :cond_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_2c

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2b
    const/4 v1, 0x1

    :cond_2c
    :goto_2c
    if-eqz v1, :cond_33

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be numeric"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3c

    :goto_3b
    throw v0

    :goto_3c
    goto :goto_3b
.end method

.method private c(Z)V
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    if-eqz p1, :cond_7

    const-string v1, ":containsOwn"

    goto :goto_9

    :cond_7
    const-string v1, ":contains"

    :goto_9
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":contains(text) query must not be empty"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/r;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/r;-><init>(Ljava/lang/String;)V

    goto :goto_30

    :cond_29
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/s;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/s;-><init>(Ljava/lang/String;)V

    :goto_30
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d(ZZ)V
    .registers 11

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v2, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "odd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_23

    const/4 v0, 0x1

    :goto_21
    const/4 v4, 0x2

    goto :goto_73

    :cond_23
    const-string v3, "even"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v0, 0x0

    goto :goto_21

    :cond_2d
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v6, ""

    const-string v7, "^\\+"

    if-eqz v3, :cond_61

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_4a
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5e

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    :cond_5e
    move v0, v4

    move v4, v5

    goto :goto_73

    :cond_61
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_73
    if-eqz p2, :cond_87

    if-eqz p1, :cond_7f

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/github/catvod/spider/merge2/xbpq/e/GH;

    invoke-direct {p2, v4, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/GH;-><init>(II)V

    goto :goto_98

    :cond_7f
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/github/catvod/spider/merge2/xbpq/e/HI;

    invoke-direct {p2, v4, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/HI;-><init>(II)V

    goto :goto_98

    :cond_87
    if-eqz p1, :cond_91

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/github/catvod/spider/merge2/xbpq/e/FG;

    invoke-direct {p2, v4, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/FG;-><init>(II)V

    goto :goto_98

    :cond_91
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/github/catvod/spider/merge2/xbpq/e/EF;

    invoke-direct {p2, v4, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/EF;-><init>(II)V

    :goto_98
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_9c
    new-instance p1, Lcom/github/catvod/spider/merge2/xbpq/e/QR;

    new-array p2, v5, [Ljava/lang/Object;

    aput-object v0, p2, v4

    const-string v0, "Could not parse nth-index \'%s\': unexpected format"

    invoke-direct {p1, v0, p2}, Lcom/github/catvod/spider/merge2/xbpq/e/QR;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a9

    :goto_a8
    throw p1

    :goto_a9
    goto :goto_a8
.end method

.method private e()V
    .registers 11

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->j(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/catvod/spider/merge2/xbpq/e/u;

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/u;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a8

    .line 2
    :cond_1f
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_43

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->j(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge2/xbpq/e/i;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/i;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a8

    .line 4
    :cond_43
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->m()Z

    move-result v0

    const-string v2, "*|"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v0, :cond_35e

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    goto/16 :goto_35e

    :cond_59
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, "["

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 5
    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const/16 v5, 0x5b

    const/16 v6, 0x5d

    invoke-virtual {v2, v5, v6}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a(CC)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->e:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->g([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->j(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->h()Z

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->i()Z

    move-result v5

    if-eqz v5, :cond_a4

    const-string v0, "^"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge2/xbpq/e/k;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v4}, Lcom/github/catvod/spider/merge2/xbpq/e/k;-><init>(Ljava/lang/String;I)V

    goto :goto_9f

    :cond_98
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge2/xbpq/e/i;

    invoke-direct {v3, v2, v4}, Lcom/github/catvod/spider/merge2/xbpq/e/i;-><init>(Ljava/lang/String;I)V

    :goto_9f
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a8

    :cond_a4
    const-string v5, "="

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge2/xbpq/e/l;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    :cond_b8
    const-string v5, "!="

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cc

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge2/xbpq/e/p;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    :cond_cc
    const-string v5, "^="

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e0

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge2/xbpq/e/q;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    :cond_e0
    const-string v5, "$="

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f4

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge2/xbpq/e/n;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    :cond_f4
    const-string v5, "*="

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_108

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge2/xbpq/e/m;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11f

    :cond_108
    const-string v5, "~="

    invoke-virtual {v0, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_124

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge2/xbpq/e/o;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/o;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    :goto_11f
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a8

    :cond_124
    new-instance v2, Lcom/github/catvod/spider/merge2/xbpq/e/QR;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->n()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v2, v0, v3}, Lcom/github/catvod/spider/merge2/xbpq/e/QR;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 6
    :cond_138
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, "*"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 7
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/h;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge2/xbpq/e/h;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a8

    .line 8
    :cond_14e
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":lt("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 9
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/y;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/e/y;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a8

    .line 10
    :cond_168
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":gt("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_182

    .line 11
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/x;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/e/x;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a8

    .line 12
    :cond_182
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":eq("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 13
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/v;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/e/v;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a8

    .line 14
    :cond_19c
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":has("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x29

    const/16 v5, 0x28

    if-eqz v0, :cond_1cc

    .line 15
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v1, ":has"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v0, v5, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":has(el) subselect must not be empty"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/catvod/spider/merge2/xbpq/e/ST;

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->h(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/ST;-><init>(Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a8

    .line 16
    :cond_1cc
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v6, ":contains("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1db

    invoke-direct {p0, v4}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c(Z)V

    goto/16 :goto_3a8

    :cond_1db
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v6, ":containsOwn("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c(Z)V

    goto/16 :goto_3a8

    :cond_1ea
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v6, ":containsData("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_216

    .line 17
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v3, ":containsData"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v0, v5, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":containsData(text) query must not be empty"

    invoke-static {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/github/catvod/spider/merge2/xbpq/e/k;

    invoke-direct {v3, v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/k;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a8

    .line 18
    :cond_216
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v6, ":matches("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_225

    invoke-direct {p0, v4}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->f(Z)V

    goto/16 :goto_3a8

    :cond_225
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v6, ":matchesOwn("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_234

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->f(Z)V

    goto/16 :goto_3a8

    :cond_234
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v6, ":not("

    invoke-virtual {v0, v6}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_260

    .line 19
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v1, ":not"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v0, v5, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":not(selector) subselect must not be empty"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/catvod/spider/merge2/xbpq/e/VW;

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->h(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/VW;-><init>(Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a8

    .line 20
    :cond_260
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":nth-child("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26f

    invoke-direct {p0, v4, v4}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->d(ZZ)V

    goto/16 :goto_3a8

    :cond_26f
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":nth-last-child("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27e

    invoke-direct {p0, v1, v4}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->d(ZZ)V

    goto/16 :goto_3a8

    :cond_27e
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":nth-of-type("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28d

    invoke-direct {p0, v4, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->d(ZZ)V

    goto/16 :goto_3a8

    :cond_28d
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":nth-last-of-type("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29c

    invoke-direct {p0, v1, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->d(ZZ)V

    goto/16 :goto_3a8

    :cond_29c
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":first-child"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2af

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/AB;

    invoke-direct {v1, v4}, Lcom/github/catvod/spider/merge2/xbpq/e/AB;-><init>(I)V

    goto/16 :goto_344

    :cond_2af
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":last-child"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/CD;

    invoke-direct {v1, v4}, Lcom/github/catvod/spider/merge2/xbpq/e/CD;-><init>(I)V

    goto/16 :goto_344

    :cond_2c2
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":first-of-type"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d5

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/BC;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge2/xbpq/e/BC;-><init>()V

    goto/16 :goto_344

    :cond_2d5
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":last-of-type"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e7

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/DE;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge2/xbpq/e/DE;-><init>()V

    goto :goto_344

    :cond_2e7
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":only-child"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f9

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/catvod/spider/merge2/xbpq/e/AB;

    invoke-direct {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/AB;-><init>(I)V

    goto :goto_32e

    :cond_2f9
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":only-of-type"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30b

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/IJ;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge2/xbpq/e/IJ;-><init>()V

    goto :goto_344

    :cond_30b
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":empty"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31d

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/z;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge2/xbpq/e/z;-><init>()V

    goto :goto_344

    :cond_31d
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":root"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_333

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/catvod/spider/merge2/xbpq/e/CD;

    invoke-direct {v2, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/CD;-><init>(I)V

    :goto_32e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a8

    :cond_333
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const-string v2, ":matchText"

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_348

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/JK;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge2/xbpq/e/JK;-><init>()V

    :goto_344
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a8

    :cond_348
    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/e/QR;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->b:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->n()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/e/QR;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 21
    :cond_35e
    :goto_35e
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->j(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ":"

    if-eqz v5, :cond_392

    iget-object v5, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v7, Lcom/github/catvod/spider/merge2/xbpq/e/e;

    new-array v8, v3, [Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    new-instance v9, Lcom/github/catvod/spider/merge2/xbpq/e/MN;

    invoke-direct {v9, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/MN;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v4

    new-instance v4, Lcom/github/catvod/spider/merge2/xbpq/e/i;

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/github/catvod/spider/merge2/xbpq/e/i;-><init>(Ljava/lang/String;I)V

    aput-object v4, v8, v1

    invoke-direct {v7, v8}, Lcom/github/catvod/spider/merge2/xbpq/e/e;-><init>([Lcom/github/catvod/spider/merge2/xbpq/e/NO;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a8

    :cond_392
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39e

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_39e
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/github/catvod/spider/merge2/xbpq/e/MN;

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/MN;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3a8
    return-void
.end method

.method private f(Z)V
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    if-eqz p1, :cond_7

    const-string v1, ":matchesOwn"

    goto :goto_9

    :cond_7
    const-string v1, ":matches"

    :goto_9
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":matches(regex) query must not be empty"

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/LM;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/LM;-><init>(Ljava/util/regex/Pattern;)V

    goto :goto_34

    :cond_29
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/KL;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/KL;-><init>(Ljava/util/regex/Pattern;)V

    :goto_34
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static h(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/e/NO;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->g()Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/e/QR;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/QR;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method final g()Lcom/github/catvod/spider/merge2/xbpq/e/NO;
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->h()Z

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->l([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/YZ;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge2/xbpq/e/YZ;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    goto :goto_37

    :cond_1b
    move-object v0, p0

    :cond_1c
    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->e()V

    :goto_1f
    iget-object v1, v0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->i()Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, v0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->h()Z

    move-result v1

    iget-object v2, v0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    sget-object v3, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->d:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->l([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    :goto_37
    iget-object v1, v0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a:Lcom/github/catvod/spider/merge2/xbpq/d/PQ;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/PQ;->c()C

    move-result v1

    goto :goto_42

    :cond_3e
    if-eqz v1, :cond_1c

    const/16 v1, 0x20

    :goto_42
    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->a(C)V

    goto :goto_1f

    :cond_46
    iget-object v1, v0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/e/NO;

    return-object v0

    :cond_59
    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/e/d;

    iget-object v0, v0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->c:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge2/xbpq/e/d;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/e/PQ;->b:Ljava/lang/String;

    return-object v0
.end method
