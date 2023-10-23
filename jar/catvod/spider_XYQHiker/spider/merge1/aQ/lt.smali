.class public Lcom/github/catvod/spider/merge1/aQ/lt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Eg:[Ljava/lang/String;

.field private static final Ku:Ljava/util/regex/Pattern;

.field private static final W:[Ljava/lang/String;

.field private static final jl:Ljava/util/regex/Pattern;


# instance fields
.field private final X:Lcom/github/catvod/spider/merge1/aQ/wV;

.field private final i:Ljava/lang/String;

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/catvod/spider/merge1/aQ/u5;",
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

    .line 1
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/lt;->W:[Ljava/lang/String;

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

    .line 2
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/lt;->Eg:[Ljava/lang/String;

    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    .line 3
    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/lt;->Ku:Ljava/util/regex/Pattern;

    const-string v0, "([+-])?(\\d+)"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/lt;->jl:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    .line 3
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->y(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->i:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/wV;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    return-void
.end method

.method private A()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/gx;->Eg()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    :goto_4
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->O2()Z

    move-result v1

    if-nez v1, :cond_61

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->W(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 5
    :cond_2c
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->W(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 7
    :cond_4c
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    sget-object v2, Lcom/github/catvod/spider/merge1/aQ/lt;->W:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->P([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    goto :goto_61

    .line 8
    :cond_57
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->Ku()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 9
    :cond_61
    :goto_61
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->o(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Eg()V
    .registers 7

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/wV;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->W(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/lt;->Eg:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->A([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/github/catvod/spider/merge1/aQ/QL;->y(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->cG()Z

    .line 5
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->O2()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_46

    const-string v0, "^"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 7
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v2, Lcom/github/catvod/spider/merge1/aQ/u5$AA;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/github/catvod/spider/merge1/aQ/u5$AA;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d4

    .line 8
    :cond_3a
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v2, Lcom/github/catvod/spider/merge1/aQ/u5$K;

    invoke-direct {v2, v1}, Lcom/github/catvod/spider/merge1/aQ/u5$K;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d4

    :cond_46
    const-string v2, "="

    .line 9
    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 10
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v3, Lcom/github/catvod/spider/merge1/aQ/u5$I;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->mw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$I;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d4

    :cond_5e
    const-string v2, "!="

    .line 11
    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 12
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v3, Lcom/github/catvod/spider/merge1/aQ/u5$l;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->mw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    :cond_75
    const-string v2, "^="

    .line 13
    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 14
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v3, Lcom/github/catvod/spider/merge1/aQ/u5$qz;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->mw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$qz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    :cond_8c
    const-string v2, "$="

    .line 15
    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 16
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v3, Lcom/github/catvod/spider/merge1/aQ/u5$MB;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->mw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$MB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    :cond_a3
    const-string v2, "*="

    .line 17
    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 18
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v3, Lcom/github/catvod/spider/merge1/aQ/u5$tb;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->mw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$tb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d4

    :cond_ba
    const-string v2, "~="

    .line 19
    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 20
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v3, Lcom/github/catvod/spider/merge1/aQ/u5$G;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->mw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$G;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d4
    return-void

    .line 21
    :cond_d5
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/sg$DK;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->i:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->mw()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v1, v0, v2}, Lcom/github/catvod/spider/merge1/aQ/sg$DK;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private Gq()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->jl()V

    goto/16 :goto_200

    .line 3
    :cond_f
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->Ku()V

    goto/16 :goto_200

    .line 5
    :cond_1e
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->f()Z

    move-result v0

    if-nez v0, :cond_1fd

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, "*|"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto/16 :goto_1fd

    .line 6
    :cond_32
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 7
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->Eg()V

    goto/16 :goto_200

    .line 8
    :cond_41
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 9
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->W()V

    goto/16 :goto_200

    .line 10
    :cond_50
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, ":lt("

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 11
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->f()V

    goto/16 :goto_200

    .line 12
    :cond_5f
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, ":gt("

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 13
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->T()V

    goto/16 :goto_200

    .line 14
    :cond_6e
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, ":eq("

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 15
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->P()V

    goto/16 :goto_200

    .line 16
    :cond_7d
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, ":has("

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 17
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->o()V

    goto/16 :goto_200

    .line 18
    :cond_8c
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, ":contains("

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9c

    .line 19
    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/lt;->cG(Z)V

    goto/16 :goto_200

    .line 20
    :cond_9c
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v2, ":containsOwn("

    invoke-virtual {v0, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_ac

    .line 21
    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge1/aQ/lt;->cG(Z)V

    goto/16 :goto_200

    .line 22
    :cond_ac
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":containsData("

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 23
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->O2()V

    goto/16 :goto_200

    .line 24
    :cond_bb
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":matches("

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 25
    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/lt;->mw(Z)V

    goto/16 :goto_200

    .line 26
    :cond_ca
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":matchesOwn("

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 27
    invoke-direct {p0, v2}, Lcom/github/catvod/spider/merge1/aQ/lt;->mw(Z)V

    goto/16 :goto_200

    .line 28
    :cond_d9
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":not("

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->Gq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 29
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->d()V

    goto/16 :goto_200

    .line 30
    :cond_e8
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":nth-child("

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 31
    invoke-direct {p0, v1, v1}, Lcom/github/catvod/spider/merge1/aQ/lt;->nN(ZZ)V

    goto/16 :goto_200

    .line 32
    :cond_f7
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":nth-last-child("

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 33
    invoke-direct {p0, v2, v1}, Lcom/github/catvod/spider/merge1/aQ/lt;->nN(ZZ)V

    goto/16 :goto_200

    .line 34
    :cond_106
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":nth-of-type("

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 35
    invoke-direct {p0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/lt;->nN(ZZ)V

    goto/16 :goto_200

    .line 36
    :cond_115
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":nth-last-of-type("

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_124

    .line 37
    invoke-direct {p0, v2, v2}, Lcom/github/catvod/spider/merge1/aQ/lt;->nN(ZZ)V

    goto/16 :goto_200

    .line 38
    :cond_124
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":first-child"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 39
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$b;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/aQ/u5$b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_200

    .line 40
    :cond_13a
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":last-child"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_150

    .line 41
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$S;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/aQ/u5$S;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_200

    .line 42
    :cond_150
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":first-of-type"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_166

    .line 43
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$X;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/aQ/u5$X;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_200

    .line 44
    :cond_166
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":last-of-type"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 45
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$R;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/aQ/u5$R;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_200

    .line 46
    :cond_17c
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":only-child"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_192

    .line 47
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$Rt;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/aQ/u5$Rt;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_200

    .line 48
    :cond_192
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":only-of-type"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 49
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$n;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/aQ/u5$n;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_200

    .line 50
    :cond_1a7
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":empty"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 51
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$j;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/aQ/u5$j;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_200

    .line 52
    :cond_1bc
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":root"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 53
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$g6;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/aQ/u5$g6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_200

    .line 54
    :cond_1d1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v3, ":matchText"

    invoke-virtual {v0, v3}, Lcom/github/catvod/spider/merge1/aQ/wV;->nN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 55
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$w;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/aQ/u5$w;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_200

    .line 56
    :cond_1e6
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/sg$DK;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->i:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->mw()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, v1, v3}, Lcom/github/catvod/spider/merge1/aQ/sg$DK;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 57
    :cond_1fd
    :goto_1fd
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->X()V

    :goto_200
    return-void
.end method

.method private Ku()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->X()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->y(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v2, Lcom/github/catvod/spider/merge1/aQ/u5$P;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$P;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private O2()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, ":containsData"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->jl(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->W(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->Vp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":containsData(text) query must not be empty"

    .line 3
    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/QL;->A(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v2, Lcom/github/catvod/spider/merge1/aQ/u5$E;

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$E;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private P()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$lW;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->y()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/u5$lW;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private T()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$Xx;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->y()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/u5$Xx;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private W()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$DK;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/aQ/u5$DK;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private X()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/KC;->Eg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->y(Ljava/lang/String;)V

    const-string v1, "*|"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ":"

    if-eqz v2, :cond_39

    .line 4
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v4, Lcom/github/catvod/spider/merge1/aQ/Sv$K;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/github/catvod/spider/merge1/aQ/u5;

    const/4 v6, 0x0

    new-instance v7, Lcom/github/catvod/spider/merge1/aQ/u5$Q;

    invoke-direct {v7, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$Q;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/github/catvod/spider/merge1/aQ/u5$QJ;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$QJ;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Lcom/github/catvod/spider/merge1/aQ/Sv$K;-><init>([Lcom/github/catvod/spider/merge1/aQ/u5;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_39
    const-string v1, "|"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 6
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_45
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v2, Lcom/github/catvod/spider/merge1/aQ/u5$Q;

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$Q;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4f
    return-void
.end method

.method private cG(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    if-eqz p1, :cond_7

    const-string v1, ":containsOwn"

    goto :goto_9

    :cond_7
    const-string v1, ":contains"

    :goto_9
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->jl(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->W(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->Vp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":contains(text) query must not be empty"

    .line 3
    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/QL;->A(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2c

    .line 4
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$jv;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$jv;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 5
    :cond_2c
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$Hz;

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$Hz;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_36
    return-void
.end method

.method private d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, ":not"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->jl(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->W(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":not(selector) subselect must not be empty"

    .line 3
    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/QL;->A(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v2, Lcom/github/catvod/spider/merge1/aQ/pi$AA;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/lt;->r(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/u5;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge1/aQ/pi$AA;-><init>(Lcom/github/catvod/spider/merge1/aQ/u5;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$vF;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->y()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/u5$vF;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private i(C)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->cG()Z

    .line 2
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->A()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/lt;->r(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/u5;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x2c

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_33

    .line 5
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/u5;

    .line 6
    instance-of v5, v1, Lcom/github/catvod/spider/merge1/aQ/Sv$K;

    if-eqz v5, :cond_3a

    if-eq p1, v2, :cond_3a

    .line 7
    move-object v5, v1

    check-cast v5, Lcom/github/catvod/spider/merge1/aQ/Sv$K;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge1/aQ/Sv;->Ku()Lcom/github/catvod/spider/merge1/aQ/u5;

    move-result-object v5

    const/4 v6, 0x1

    move-object v9, v5

    move-object v5, v1

    move-object v1, v9

    goto :goto_3c

    .line 8
    :cond_33
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;

    iget-object v5, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    invoke-direct {v1, v5}, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;-><init>(Ljava/util/Collection;)V

    :cond_3a
    move-object v5, v1

    const/4 v6, 0x0

    .line 9
    :goto_3c
    iget-object v7, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/16 v7, 0x20

    const/4 v8, 0x2

    if-eq p1, v7, :cond_b4

    const/16 v7, 0x3e

    if-eq p1, v7, :cond_a3

    const/16 v7, 0x7e

    if-eq p1, v7, :cond_92

    const/16 v7, 0x2b

    if-eq p1, v7, :cond_81

    if-ne p1, v2, :cond_68

    .line 10
    instance-of p1, v1, Lcom/github/catvod/spider/merge1/aQ/Sv$K;

    if-eqz p1, :cond_5b

    .line 11
    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/Sv$K;

    goto :goto_64

    .line 12
    :cond_5b
    new-instance p1, Lcom/github/catvod/spider/merge1/aQ/Sv$K;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge1/aQ/Sv$K;-><init>()V

    .line 13
    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge1/aQ/Sv$K;->X(Lcom/github/catvod/spider/merge1/aQ/u5;)V

    move-object v1, p1

    .line 14
    :goto_64
    invoke-virtual {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/Sv$K;->X(Lcom/github/catvod/spider/merge1/aQ/u5;)V

    goto :goto_c5

    .line 15
    :cond_68
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/sg$DK;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown combinator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/github/catvod/spider/merge1/aQ/sg$DK;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 16
    :cond_81
    new-instance p1, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;

    new-array v2, v8, [Lcom/github/catvod/spider/merge1/aQ/u5;

    new-instance v7, Lcom/github/catvod/spider/merge1/aQ/pi$c;

    invoke-direct {v7, v1}, Lcom/github/catvod/spider/merge1/aQ/pi$c;-><init>(Lcom/github/catvod/spider/merge1/aQ/u5;)V

    aput-object v7, v2, v4

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;-><init>([Lcom/github/catvod/spider/merge1/aQ/u5;)V

    goto :goto_c4

    .line 17
    :cond_92
    new-instance p1, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;

    new-array v2, v8, [Lcom/github/catvod/spider/merge1/aQ/u5;

    new-instance v7, Lcom/github/catvod/spider/merge1/aQ/pi$tb;

    invoke-direct {v7, v1}, Lcom/github/catvod/spider/merge1/aQ/pi$tb;-><init>(Lcom/github/catvod/spider/merge1/aQ/u5;)V

    aput-object v7, v2, v4

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;-><init>([Lcom/github/catvod/spider/merge1/aQ/u5;)V

    goto :goto_c4

    .line 18
    :cond_a3
    new-instance p1, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;

    new-array v2, v8, [Lcom/github/catvod/spider/merge1/aQ/u5;

    new-instance v7, Lcom/github/catvod/spider/merge1/aQ/pi$K;

    invoke-direct {v7, v1}, Lcom/github/catvod/spider/merge1/aQ/pi$K;-><init>(Lcom/github/catvod/spider/merge1/aQ/u5;)V

    aput-object v7, v2, v4

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;-><init>([Lcom/github/catvod/spider/merge1/aQ/u5;)V

    goto :goto_c4

    .line 19
    :cond_b4
    new-instance p1, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;

    new-array v2, v8, [Lcom/github/catvod/spider/merge1/aQ/u5;

    new-instance v7, Lcom/github/catvod/spider/merge1/aQ/pi$I;

    invoke-direct {v7, v1}, Lcom/github/catvod/spider/merge1/aQ/pi$I;-><init>(Lcom/github/catvod/spider/merge1/aQ/u5;)V

    aput-object v7, v2, v4

    aput-object v0, v2, v3

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;-><init>([Lcom/github/catvod/spider/merge1/aQ/u5;)V

    :goto_c4
    move-object v1, p1

    :goto_c5
    if-eqz v6, :cond_ce

    .line 20
    move-object p1, v5

    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/Sv$K;

    invoke-virtual {p1, v1}, Lcom/github/catvod/spider/merge1/aQ/Sv;->Eg(Lcom/github/catvod/spider/merge1/aQ/u5;)V

    goto :goto_cf

    :cond_ce
    move-object v5, v1

    .line 21
    :goto_cf
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private jl()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->X()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->y(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v2, Lcom/github/catvod/spider/merge1/aQ/u5$d;

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$d;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private mw(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    if-eqz p1, :cond_7

    const-string v1, ":matchesOwn"

    goto :goto_9

    :cond_7
    const-string v1, ":matches"

    :goto_9
    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->jl(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->W(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":matches(regex) query must not be empty"

    .line 3
    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/QL;->A(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2c

    .line 4
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$Fo;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$Fo;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 5
    :cond_2c
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/u5$mi;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/github/catvod/spider/merge1/aQ/u5$mi;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3a
    return-void
.end method

.method private nN(ZZ)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/KC;->Eg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/lt;->Ku:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/github/catvod/spider/merge1/aQ/lt;->jl:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "odd"

    .line 4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_25

    const/4 v5, 0x1

    goto :goto_77

    :cond_25
    const-string v3, "even"

    .line 5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_77

    .line 6
    :cond_2e
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v4, ""

    const-string v7, "^\\+"

    if-eqz v3, :cond_63

    const/4 v0, 0x3

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x1

    :goto_4d
    const/4 v2, 0x4

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_61

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    :cond_61
    move v4, v0

    goto :goto_77

    .line 9
    :cond_63
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 10
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    const/4 v4, 0x0

    :goto_77
    if-eqz p2, :cond_91

    if-eqz p1, :cond_86

    .line 11
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance p2, Lcom/github/catvod/spider/merge1/aQ/u5$bs;

    invoke-direct {p2, v4, v5}, Lcom/github/catvod/spider/merge1/aQ/u5$bs;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 12
    :cond_86
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance p2, Lcom/github/catvod/spider/merge1/aQ/u5$t;

    invoke-direct {p2, v4, v5}, Lcom/github/catvod/spider/merge1/aQ/u5$t;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    :cond_91
    if-eqz p1, :cond_9e

    .line 13
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance p2, Lcom/github/catvod/spider/merge1/aQ/u5$oO;

    invoke-direct {p2, v4, v5}, Lcom/github/catvod/spider/merge1/aQ/u5$oO;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 14
    :cond_9e
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance p2, Lcom/github/catvod/spider/merge1/aQ/u5$je;

    invoke-direct {p2, v4, v5}, Lcom/github/catvod/spider/merge1/aQ/u5$je;-><init>(II)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a8
    return-void

    .line 15
    :cond_a9
    new-instance p1, Lcom/github/catvod/spider/merge1/aQ/sg$DK;

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v0, p2, v5

    const-string v0, "Could not parse nth-index \'%s\': unexpected format"

    invoke-direct {p1, v0, p2}, Lcom/github/catvod/spider/merge1/aQ/sg$DK;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private o()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, ":has"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->jl(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->W(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":has(el) subselect must not be empty"

    .line 3
    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/QL;->A(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v2, Lcom/github/catvod/spider/merge1/aQ/pi$DK;

    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/lt;->r(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/u5;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/github/catvod/spider/merge1/aQ/pi$DK;-><init>(Lcom/github/catvod/spider/merge1/aQ/u5;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static r(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/u5;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/lt;

    invoke-direct {v0, p0}, Lcom/github/catvod/spider/merge1/aQ/lt;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/lt;->Vp()Lcom/github/catvod/spider/merge1/aQ/u5;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    .line 3
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/sg$DK;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/github/catvod/spider/merge1/aQ/sg$DK;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private y()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->Eg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->A(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Index must be numeric"

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/QL;->jl(ZLjava/lang/String;)V

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method Vp()Lcom/github/catvod/spider/merge1/aQ/u5;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->cG()Z

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/lt;->W:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/wV;->P([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/pi$MB;

    invoke-direct {v1}, Lcom/github/catvod/spider/merge1/aQ/pi$MB;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->Ku()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/lt;->i(C)V

    goto :goto_26

    .line 5
    :cond_23
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->Gq()V

    .line 6
    :goto_26
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->O2()Z

    move-result v0

    if-nez v0, :cond_54

    .line 7
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->cG()Z

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    sget-object v2, Lcom/github/catvod/spider/merge1/aQ/lt;->W:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/wV;->P([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 9
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->X:Lcom/github/catvod/spider/merge1/aQ/wV;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/wV;->Ku()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/lt;->i(C)V

    goto :goto_26

    :cond_48
    if-eqz v0, :cond_50

    const/16 v0, 0x20

    .line 10
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/lt;->i(C)V

    goto :goto_26

    .line 11
    :cond_50
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/lt;->Gq()V

    goto :goto_26

    .line 12
    :cond_54
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_67

    .line 13
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/u5;

    return-object v0

    .line 14
    :cond_67
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->y:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/Sv$DK;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/lt;->i:Ljava/lang/String;

    return-object v0
.end method
