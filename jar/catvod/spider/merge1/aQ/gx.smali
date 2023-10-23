.class public final Lcom/github/catvod/spider/merge1/aQ/gx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/catvod/spider/merge1/aQ/gx$K;
    }
.end annotation


# static fields
.field private static Eg:Ljava/util/regex/Pattern;

.field private static final Ku:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Stack<",
            "Ljava/lang/StringBuilder;",
            ">;>;"
        }
    .end annotation
.end field

.field static final W:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "   "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "     "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "      "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "       "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "        "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "         "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "          "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "           "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "            "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "             "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "              "

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "               "

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "                "

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "                 "

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "                  "

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "                   "

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "                    "

    aput-object v2, v0, v1

    .line 1
    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/gx;->W:[Ljava/lang/String;

    const-string v0, "^/((\\.{1,2}/)+)"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/gx;->Eg:Ljava/util/regex/Pattern;

    .line 3
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/gx$DK;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/gx$DK;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/gx;->Ku:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static A(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    .line 2
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1f

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1f
    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method public static Eg()Ljava/lang/StringBuilder;
    .registers 2

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/gx;->Ku:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 2
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1c

    .line 4
    :cond_16
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    :goto_1c
    return-object v0
.end method

.method public static Gq(I)Ljava/lang/String;
    .registers 4

    if-ltz p0, :cond_21

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/gx;->W:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_a

    .line 2
    aget-object p0, v0, p0

    return-object p0

    :cond_a
    const/16 v0, 0x1e

    .line 3
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 4
    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_13
    if-ge v1, p0, :cond_1c

    const/16 v2, 0x20

    .line 5
    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 6
    :cond_1c
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "width must be > 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2a

    :goto_29
    throw p0

    :goto_2a
    goto :goto_29
.end method

.method public static varargs Ku(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_12

    .line 2
    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public static O2(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/gx;->nN(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static P(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_e

    .line 2
    :try_start_5
    invoke-static {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/gx;->T(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :catch_e
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    const-string p0, ""

    return-object p0
.end method

.method public static T(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 5

    const-string v0, "?"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_1b
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 4
    sget-object p0, Lcom/github/catvod/spider/merge1/aQ/gx;->Eg:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    :cond_4e
    new-instance p1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-direct {p1, v1, v2, v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method public static W(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v2, v0, :cond_34

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 3
    invoke-static {v5}, Lcom/github/catvod/spider/merge1/aQ/gx;->X(I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_23

    if-eqz p2, :cond_19

    if-eqz v3, :cond_2e

    :cond_19
    if-eqz v4, :cond_1c

    goto :goto_2e

    :cond_1c
    const/16 v4, 0x20

    .line 4
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_2e

    .line 5
    :cond_23
    invoke-static {v5}, Lcom/github/catvod/spider/merge1/aQ/gx;->y(I)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 6
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7
    :cond_2e
    :goto_2e
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_8

    :cond_34
    return-void
.end method

.method public static X(I)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1b

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static cG(I)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_17

    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    const/16 v0, 0xa

    if-eq p0, v0, :cond_17

    const/16 v0, 0xc

    if-eq p0, v0, :cond_17

    const/16 v0, 0xd

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static i(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p0, :cond_20

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_20

    .line 2
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_20

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/github/catvod/spider/merge1/aQ/gx;->cG(I)Z

    move-result v4

    if-nez v4, :cond_1d

    return v2

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_20
    :goto_20
    return v0
.end method

.method public static jl(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static nN(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    const-string p0, ""

    return-object p0

    .line 2
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_18

    return-object v0

    .line 4
    :cond_18
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/gx$K;

    invoke-direct {v1, p1}, Lcom/github/catvod/spider/merge1/aQ/gx$K;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/gx$K;->W(Ljava/lang/Object;)Lcom/github/catvod/spider/merge1/aQ/gx$K;

    .line 6
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/github/catvod/spider/merge1/aQ/gx$K;->W(Ljava/lang/Object;)Lcom/github/catvod/spider/merge1/aQ/gx$K;

    goto :goto_20

    .line 8
    :cond_2e
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/gx$K;->Eg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x2000

    if-le v1, v2, :cond_15

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1d

    :cond_15
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 6
    :goto_1d
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/gx;->Ku:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 7
    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_28
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result p0

    const/16 v2, 0x8

    if-le p0, v2, :cond_34

    .line 9
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_28

    :cond_34
    return-object v0
.end method

.method public static y(I)Z
    .registers 2

    const/16 v0, 0x200b

    if-eq p0, v0, :cond_b

    const/16 v0, 0xad

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method
