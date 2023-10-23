.class public final Lcom/github/catvod/spider/merge2/xbpq/d/b;
.super Lcom/github/catvod/spider/merge2/xbpq/d/i1;
.source "SourceFile"


# static fields
.field static final A:[Ljava/lang/String;

.field static final B:[Ljava/lang/String;

.field static final v:[Ljava/lang/String;

.field static final w:[Ljava/lang/String;

.field static final x:[Ljava/lang/String;

.field static final y:[Ljava/lang/String;

.field static final z:[Ljava/lang/String;


# instance fields
.field private k:Lcom/github/catvod/spider/merge2/xbpq/d/AB;

.field private l:Lcom/github/catvod/spider/merge2/xbpq/d/AB;

.field private m:Z

.field private n:Lcom/github/catvod/spider/merge2/xbpq/c/l;

.field private o:Lcom/github/catvod/spider/merge2/xbpq/c/o;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/catvod/spider/merge2/xbpq/c/l;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/github/catvod/spider/merge2/xbpq/d/LM;

.field private s:Z

.field private t:Z

.field private u:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "applet"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "caption"

    aput-object v5, v1, v4

    const/4 v6, 0x2

    const-string v7, "html"

    aput-object v7, v1, v6

    const/4 v8, 0x3

    const-string v9, "marquee"

    aput-object v9, v1, v8

    const/4 v10, 0x4

    const-string v11, "object"

    aput-object v11, v1, v10

    const/4 v12, 0x5

    const-string v13, "table"

    aput-object v13, v1, v12

    const/4 v14, 0x6

    const-string v15, "td"

    aput-object v15, v1, v14

    const/16 v16, 0x7

    const-string v17, "th"

    aput-object v17, v1, v16

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/b;->v:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v18, "ol"

    aput-object v18, v1, v2

    const-string v19, "ul"

    aput-object v19, v1, v4

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/b;->w:[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v20, "button"

    aput-object v20, v1, v2

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    aput-object v7, v1, v2

    aput-object v13, v1, v4

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/b;->y:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v21, "optgroup"

    aput-object v21, v1, v2

    const-string v22, "option"

    aput-object v22, v1, v4

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/b;->z:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v23, "dd"

    aput-object v23, v1, v2

    const-string v23, "dt"

    aput-object v23, v1, v4

    const-string v23, "li"

    aput-object v23, v1, v6

    aput-object v21, v1, v8

    aput-object v22, v1, v10

    const-string v21, "p"

    aput-object v21, v1, v12

    const-string v21, "rp"

    aput-object v21, v1, v14

    const-string v21, "rt"

    aput-object v21, v1, v16

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/b;->A:[Ljava/lang/String;

    const/16 v1, 0x4f

    new-array v1, v1, [Ljava/lang/String;

    const-string v21, "address"

    aput-object v21, v1, v2

    aput-object v3, v1, v4

    const-string v2, "area"

    aput-object v2, v1, v6

    const-string v2, "article"

    aput-object v2, v1, v8

    const-string v2, "aside"

    aput-object v2, v1, v10

    const-string v2, "base"

    aput-object v2, v1, v12

    const-string v2, "basefont"

    aput-object v2, v1, v14

    const-string v2, "bgsound"

    aput-object v2, v1, v16

    const-string v2, "blockquote"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "body"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "br"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    aput-object v20, v1, v0

    const/16 v0, 0xc

    aput-object v5, v1, v0

    const/16 v0, 0xd

    const-string v2, "center"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string v2, "col"

    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-string v2, "colgroup"

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-string v2, "command"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string v2, "dd"

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-string v2, "details"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-string v2, "dir"

    aput-object v2, v1, v0

    const/16 v0, 0x14

    const-string v2, "div"

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-string v2, "dl"

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-string v2, "dt"

    aput-object v2, v1, v0

    const/16 v0, 0x17

    const-string v2, "embed"

    aput-object v2, v1, v0

    const/16 v0, 0x18

    const-string v2, "fieldset"

    aput-object v2, v1, v0

    const/16 v0, 0x19

    const-string v2, "figcaption"

    aput-object v2, v1, v0

    const/16 v0, 0x1a

    const-string v2, "figure"

    aput-object v2, v1, v0

    const/16 v0, 0x1b

    const-string v2, "footer"

    aput-object v2, v1, v0

    const/16 v0, 0x1c

    const-string v2, "form"

    aput-object v2, v1, v0

    const/16 v0, 0x1d

    const-string v2, "frame"

    aput-object v2, v1, v0

    const/16 v0, 0x1e

    const-string v2, "frameset"

    aput-object v2, v1, v0

    const/16 v0, 0x1f

    const-string v2, "h1"

    aput-object v2, v1, v0

    const/16 v0, 0x20

    const-string v2, "h2"

    aput-object v2, v1, v0

    const/16 v0, 0x21

    const-string v2, "h3"

    aput-object v2, v1, v0

    const/16 v0, 0x22

    const-string v2, "h4"

    aput-object v2, v1, v0

    const/16 v0, 0x23

    const-string v2, "h5"

    aput-object v2, v1, v0

    const/16 v0, 0x24

    const-string v2, "h6"

    aput-object v2, v1, v0

    const/16 v0, 0x25

    const-string v2, "head"

    aput-object v2, v1, v0

    const/16 v0, 0x26

    const-string v2, "header"

    aput-object v2, v1, v0

    const/16 v0, 0x27

    const-string v2, "hgroup"

    aput-object v2, v1, v0

    const/16 v0, 0x28

    const-string v2, "hr"

    aput-object v2, v1, v0

    const/16 v0, 0x29

    aput-object v7, v1, v0

    const/16 v0, 0x2a

    const-string v2, "iframe"

    aput-object v2, v1, v0

    const/16 v0, 0x2b

    const-string v2, "img"

    aput-object v2, v1, v0

    const/16 v0, 0x2c

    const-string v2, "input"

    aput-object v2, v1, v0

    const/16 v0, 0x2d

    const-string v2, "isindex"

    aput-object v2, v1, v0

    const/16 v0, 0x2e

    const-string v2, "li"

    aput-object v2, v1, v0

    const/16 v0, 0x2f

    const-string v2, "link"

    aput-object v2, v1, v0

    const/16 v0, 0x30

    const-string v2, "listing"

    aput-object v2, v1, v0

    const/16 v0, 0x31

    aput-object v9, v1, v0

    const/16 v0, 0x32

    const-string v2, "menu"

    aput-object v2, v1, v0

    const/16 v0, 0x33

    const-string v2, "meta"

    aput-object v2, v1, v0

    const/16 v0, 0x34

    const-string v2, "nav"

    aput-object v2, v1, v0

    const/16 v0, 0x35

    const-string v2, "noembed"

    aput-object v2, v1, v0

    const/16 v0, 0x36

    const-string v2, "noframes"

    aput-object v2, v1, v0

    const/16 v0, 0x37

    const-string v2, "noscript"

    aput-object v2, v1, v0

    const/16 v0, 0x38

    aput-object v11, v1, v0

    const/16 v0, 0x39

    aput-object v18, v1, v0

    const/16 v0, 0x3a

    const-string v2, "p"

    aput-object v2, v1, v0

    const/16 v0, 0x3b

    const-string v2, "param"

    aput-object v2, v1, v0

    const/16 v0, 0x3c

    const-string v2, "plaintext"

    aput-object v2, v1, v0

    const/16 v0, 0x3d

    const-string v2, "pre"

    aput-object v2, v1, v0

    const/16 v0, 0x3e

    const-string v2, "script"

    aput-object v2, v1, v0

    const/16 v0, 0x3f

    const-string v2, "section"

    aput-object v2, v1, v0

    const/16 v0, 0x40

    const-string v2, "select"

    aput-object v2, v1, v0

    const/16 v0, 0x41

    const-string v2, "style"

    aput-object v2, v1, v0

    const/16 v0, 0x42

    const-string v2, "summary"

    aput-object v2, v1, v0

    const/16 v0, 0x43

    aput-object v13, v1, v0

    const/16 v0, 0x44

    const-string v2, "tbody"

    aput-object v2, v1, v0

    const/16 v0, 0x45

    aput-object v15, v1, v0

    const/16 v0, 0x46

    const-string v2, "textarea"

    aput-object v2, v1, v0

    const/16 v0, 0x47

    const-string v2, "tfoot"

    aput-object v2, v1, v0

    const/16 v0, 0x48

    aput-object v17, v1, v0

    const/16 v0, 0x49

    const-string v2, "thead"

    aput-object v2, v1, v0

    const/16 v0, 0x4a

    const-string v2, "title"

    aput-object v2, v1, v0

    const/16 v0, 0x4b

    const-string v2, "tr"

    aput-object v2, v1, v0

    const/16 v0, 0x4c

    aput-object v19, v1, v0

    const/16 v0, 0x4d

    const-string v2, "wbr"

    aput-object v2, v1, v0

    const/16 v0, 0x4e

    const-string v2, "xmp"

    aput-object v2, v1, v0

    sput-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/b;->B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->u:[Ljava/lang/String;

    return-void
.end method

.method private A([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 10

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-le v0, v3, :cond_10

    add-int/lit8 v3, v0, -0x64

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    :goto_11
    if-lt v0, v3, :cond_39

    iget-object v4, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    return v1

    :cond_26
    invoke-static {v4, p2}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    return v2

    :cond_2d
    if-eqz p3, :cond_36

    invoke-static {v4, p3}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    return v2

    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_39
    return v2
.end method

.method private K(Lcom/github/catvod/spider/merge2/xbpq/c/r;)V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d:Lcom/github/catvod/spider/merge2/xbpq/c/h;

    goto :goto_17

    .line 1
    :cond_b
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->t:Z

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->I(Lcom/github/catvod/spider/merge2/xbpq/c/r;)V

    goto :goto_1a

    :cond_13
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    .line 3
    :goto_17
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->L(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    .line 4
    :goto_1a
    instance-of v0, p1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz v0, :cond_31

    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->m0()Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->e()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o:Lcom/github/catvod/spider/merge2/xbpq/c/o;

    if-eqz v0, :cond_31

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/o;->r0(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Lcom/github/catvod/spider/merge2/xbpq/c/o;

    :cond_31
    return-void
.end method

.method private M(Ljava/util/ArrayList;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/github/catvod/spider/merge2/xbpq/c/l;",
            ">;",
            "Lcom/github/catvod/spider/merge2/xbpq/c/l;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/16 v3, 0x100

    if-lt v0, v3, :cond_e

    add-int/lit16 v3, v0, -0x100

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    if-lt v0, v3, :cond_1d

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-ne v4, p2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_1d
    return v2
.end method

.method private varargs j([Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_41

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/github/catvod/spider/merge2/xbpq/b/j;->d:I

    .line 1
    array-length v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1b
    if-ge v6, v4, :cond_2a

    aget-object v7, p1, v6

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v5, 0x1

    goto :goto_2a

    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_2a
    :goto_2a
    if-nez v5, :cond_41

    .line 2
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_41

    :cond_39
    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_41
    :goto_41
    return-void
.end method


# virtual methods
.method final B(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->y:[Ljava/lang/String;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->u:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->A([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final C(Ljava/io/Reader;Lcom/github/catvod/spider/merge2/xbpq/d/EF;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/h;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/h;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d:Lcom/github/catvod/spider/merge2/xbpq/c/h;

    invoke-virtual {v0, p2}, Lcom/github/catvod/spider/merge2/xbpq/c/h;->t0(Lcom/github/catvod/spider/merge2/xbpq/d/EF;)Lcom/github/catvod/spider/merge2/xbpq/c/h;

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a:Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->c:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->h:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/a;

    const v1, 0x8000

    .line 2
    invoke-direct {v0, p1, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/a;-><init>(Ljava/io/Reader;I)V

    .line 3
    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->b:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->g:Lcom/github/catvod/spider/merge2/xbpq/d/OP;

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/QR;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->b:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge2/xbpq/d/EF;->a()Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/a;Lcom/github/catvod/spider/merge2/xbpq/d/CD;)V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/QR;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0x20

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    const-string p2, ""

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->f:Ljava/lang/String;

    .line 4
    sget-object p2, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->c:Lcom/github/catvod/spider/merge2/xbpq/d/m;

    iput-object p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->k:Lcom/github/catvod/spider/merge2/xbpq/d/AB;

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->l:Lcom/github/catvod/spider/merge2/xbpq/d/AB;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->m:Z

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n:Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o:Lcom/github/catvod/spider/merge2/xbpq/c/o;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->q:Ljava/util/ArrayList;

    new-instance p1, Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/LM;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->r:Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->s:Z

    iput-boolean p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->t:Z

    return-void
.end method

.method final D(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 6

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->r()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->h:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->i(Lcom/github/catvod/spider/merge2/xbpq/d/DE;)I

    move-result v0

    if-lez v0, :cond_34

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a:Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/EF;->a()Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/CD;->a()Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/d/BC;

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->b:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->E()I

    move-result v2

    const-string v3, "Duplicate attribute"

    invoke-direct {v1, v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/BC;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2
    :cond_34
    iget-boolean v0, p1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->i:Z

    if-eqz v0, :cond_5a

    .line 3
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->G(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object p1

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/QR;

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/h1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/c0;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->u(Lcom/github/catvod/spider/merge2/xbpq/d/h1;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/QR;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->r:Lcom/github/catvod/spider/merge2/xbpq/d/LM;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->v()Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->n0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->s(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/d/NO;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->j(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)V

    return-object p1

    :cond_5a
    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->h:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/d/DE;)Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->h:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v3, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->b(Lcom/github/catvod/spider/merge2/xbpq/c/c;)Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-direct {v0, v1, v2, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/FG;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->K(Lcom/github/catvod/spider/merge2/xbpq/c/r;)V

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method final E(Lcom/github/catvod/spider/merge2/xbpq/d/HI;)V
    .registers 5

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d:Lcom/github/catvod/spider/merge2/xbpq/c/h;

    :cond_8
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/HI;->j()Ljava/lang/String;

    move-result-object v2

    .line 1
    instance-of p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/GH;

    if-eqz p1, :cond_1a

    .line 2
    new-instance p1, Lcom/github/catvod/spider/merge2/xbpq/c/d;

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge2/xbpq/c/d;-><init>(Ljava/lang/String;)V

    goto :goto_2b

    :cond_1a
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    new-instance p1, Lcom/github/catvod/spider/merge2/xbpq/c/f;

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge2/xbpq/c/f;-><init>(Ljava/lang/String;)V

    goto :goto_2b

    :cond_26
    new-instance p1, Lcom/github/catvod/spider/merge2/xbpq/c/u;

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge2/xbpq/c/u;-><init>(Ljava/lang/String;)V

    :goto_2b
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->L(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-void
.end method

.method final F(Lcom/github/catvod/spider/merge2/xbpq/d/IJ;)V
    .registers 3

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/e;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/IJ;->k()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->K(Lcom/github/catvod/spider/merge2/xbpq/c/r;)V

    return-void
.end method

.method final G(Lcom/github/catvod/spider/merge2/xbpq/d/MN;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 6

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->t()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->h:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/d/DE;)Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->h:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    iget-object v3, p1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->b(Lcom/github/catvod/spider/merge2/xbpq/c/c;)Lcom/github/catvod/spider/merge2/xbpq/c/c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/c/l;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/FG;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->K(Lcom/github/catvod/spider/merge2/xbpq/c/r;)V

    .line 1
    iget-boolean p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->i:Z

    if-eqz p1, :cond_35

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->g()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->d()Z

    move-result p1

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->c:Lcom/github/catvod/spider/merge2/xbpq/d/QR;

    const-string v0, "Tag cannot be self closing; not a void tag"

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/QR;->r(Ljava/lang/String;)V

    goto :goto_35

    :cond_32
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->k()Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    :cond_35
    :goto_35
    return-object v1
.end method

.method final H(Lcom/github/catvod/spider/merge2/xbpq/d/MN;Z)Lcom/github/catvod/spider/merge2/xbpq/c/o;
    .registers 6

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->t()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->h:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/d/DE;)Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/c/o;

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->h:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    iget-object p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/NO;->j:Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-virtual {v2, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->b(Lcom/github/catvod/spider/merge2/xbpq/c/c;)Lcom/github/catvod/spider/merge2/xbpq/c/c;

    invoke-direct {v1, v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/o;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/FG;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    .line 1
    iput-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o:Lcom/github/catvod/spider/merge2/xbpq/c/o;

    .line 2
    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->K(Lcom/github/catvod/spider/merge2/xbpq/c/r;)V

    if-eqz p2, :cond_22

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    return-object v1
.end method

.method final I(Lcom/github/catvod/spider/merge2/xbpq/c/r;)V
    .registers 5

    const-string v0, "table"

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->t(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->f0()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v1

    move-object v2, v1

    const/4 v1, 0x1

    goto :goto_23

    :cond_16
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->g(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v2

    goto :goto_23

    :cond_1b
    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    :goto_23
    if-eqz v1, :cond_2c

    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    .line 1
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->f(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/r;

    goto :goto_2f

    .line 2
    :cond_2c
    invoke-virtual {v2, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->L(Lcom/github/catvod/spider/merge2/xbpq/c/r;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    :goto_2f
    return-void
.end method

.method final J()V
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final L(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 4

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->h:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    invoke-static {p1, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/d/DE;)Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    move-result-object p1

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p1, v1, v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;-><init>(Lcom/github/catvod/spider/merge2/xbpq/d/FG;Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->K(Lcom/github/catvod/spider/merge2/xbpq/c/r;)V

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method final N(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->M(Ljava/util/ArrayList;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result p1

    return p1
.end method

.method final O(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->B:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final P()V
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->k:Lcom/github/catvod/spider/merge2/xbpq/d/AB;

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->l:Lcom/github/catvod/spider/merge2/xbpq/d/AB;

    return-void
.end method

.method final Q(Lcom/github/catvod/spider/merge2/xbpq/c/l;)V
    .registers 3

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->m:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "href"

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->m:Z

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->d:Lcom/github/catvod/spider/merge2/xbpq/c/h;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/c/r;->G(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method final R()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->q:Ljava/util/ArrayList;

    return-void
.end method

.method final S(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->M(Ljava/util/ArrayList;Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result p1

    return p1
.end method

.method final T()Lcom/github/catvod/spider/merge2/xbpq/d/AB;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->l:Lcom/github/catvod/spider/merge2/xbpq/d/AB;

    return-object v0
.end method

.method final U()Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object v0
.end method

.method final V(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_25

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    return-object v1

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method

.method final W(Lcom/github/catvod/spider/merge2/xbpq/c/l;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_12

    return v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method final X(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/AB;)Z
    .registers 3

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->g:Lcom/github/catvod/spider/merge2/xbpq/d/OP;

    invoke-virtual {p2, p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z

    move-result p1

    return p1
.end method

.method final Y(Lcom/github/catvod/spider/merge2/xbpq/c/l;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->h(Lcom/github/catvod/spider/merge2/xbpq/c/l;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final Z(Lcom/github/catvod/spider/merge2/xbpq/c/l;I)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->h(Lcom/github/catvod/spider/merge2/xbpq/c/l;)V

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method final a0()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_6a

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->S(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_6a

    :cond_21
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v1

    :cond_2a
    const/4 v4, 0x0

    if-nez v3, :cond_2e

    goto :goto_41

    :cond_2e
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-eqz v0, :cond_40

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->S(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z

    move-result v5

    if-eqz v5, :cond_2a

    :cond_40
    const/4 v2, 0x0

    :goto_41
    if-nez v2, :cond_4d

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    :cond_4d
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->L(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d()Lcom/github/catvod/spider/merge2/xbpq/c/c;

    move-result-object v5

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d()Lcom/github/catvod/spider/merge2/xbpq/c/c;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->e(Lcom/github/catvod/spider/merge2/xbpq/c/c;)V

    iget-object v5, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v3, v1, :cond_40

    :cond_6a
    :goto_6a
    return-void
.end method

.method protected final b(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "script"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method final b0(Lcom/github/catvod/spider/merge2/xbpq/c/l;)V
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_19

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-ne v1, p1, :cond_6

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_19
    return-void
.end method

.method protected final c(Lcom/github/catvod/spider/merge2/xbpq/d/OP;)Z
    .registers 3

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->g:Lcom/github/catvod/spider/merge2/xbpq/d/OP;

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->k:Lcom/github/catvod/spider/merge2/xbpq/d/AB;

    invoke-virtual {v0, p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->d(Lcom/github/catvod/spider/merge2/xbpq/d/OP;Lcom/github/catvod/spider/merge2/xbpq/d/b;)Z

    move-result p1

    return p1
.end method

.method final c0(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Z
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1d

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-ne v2, p1, :cond_1a

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v1

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method final d0(Lcom/github/catvod/spider/merge2/xbpq/c/l;Lcom/github/catvod/spider/merge2/xbpq/c/l;)V
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-static {v1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->e(Z)V

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final e0()V
    .registers 6

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_be

    iget-object v3, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-nez v0, :cond_17

    const/4 v3, 0x0

    const/4 v2, 0x1

    :cond_17
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v3

    goto :goto_20

    :cond_1e
    const-string v3, ""

    :goto_20
    const-string v4, "select"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->r:Lcom/github/catvod/spider/merge2/xbpq/d/i;

    goto/16 :goto_bc

    :cond_2c
    const-string v4, "td"

    .line 1
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ba

    const-string v4, "th"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    if-nez v2, :cond_40

    goto/16 :goto_ba

    :cond_40
    const-string v4, "tr"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->p:Lcom/github/catvod/spider/merge2/xbpq/d/g;

    goto/16 :goto_bc

    :cond_4c
    const-string v4, "tbody"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b7

    const-string v4, "thead"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b7

    const-string v4, "tfoot"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    goto :goto_b7

    :cond_65
    const-string v4, "caption"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->m:Lcom/github/catvod/spider/merge2/xbpq/d/d;

    goto :goto_bc

    :cond_70
    const-string v4, "colgroup"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->n:Lcom/github/catvod/spider/merge2/xbpq/d/e;

    goto :goto_bc

    :cond_7b
    const-string v4, "table"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->k:Lcom/github/catvod/spider/merge2/xbpq/d/y;

    goto :goto_bc

    :cond_86
    const-string v4, "head"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    goto :goto_b0

    :cond_8f
    const-string v4, "body"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_98

    goto :goto_b0

    :cond_98
    const-string v4, "frameset"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->u:Lcom/github/catvod/spider/merge2/xbpq/d/l;

    goto :goto_bc

    :cond_a3
    const-string v4, "html"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->e:Lcom/github/catvod/spider/merge2/xbpq/d/s;

    goto :goto_bc

    :cond_ae
    if-eqz v2, :cond_b3

    :goto_b0
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->i:Lcom/github/catvod/spider/merge2/xbpq/d/w;

    goto :goto_bc

    :cond_b3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_9

    :cond_b7
    :goto_b7
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->o:Lcom/github/catvod/spider/merge2/xbpq/d/f;

    goto :goto_bc

    :cond_ba
    :goto_ba
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/AB;->q:Lcom/github/catvod/spider/merge2/xbpq/d/h;

    .line 2
    :goto_bc
    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->k:Lcom/github/catvod/spider/merge2/xbpq/d/AB;

    :cond_be
    return-void
.end method

.method final f0()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o:Lcom/github/catvod/spider/merge2/xbpq/c/o;

    return-void
.end method

.method final g(Lcom/github/catvod/spider/merge2/xbpq/c/l;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 4

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-ne v1, p1, :cond_1f

    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object p1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method final g0(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->t:Z

    return-void
.end method

.method final h(Lcom/github/catvod/spider/merge2/xbpq/c/l;)V
    .registers 9

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ltz v0, :cond_46

    iget-object v4, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-nez v4, :cond_17

    goto :goto_46

    .line 1
    :cond_17
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d()Lcom/github/catvod/spider/merge2/xbpq/c/c;

    move-result-object v5

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d()Lcom/github/catvod/spider/merge2/xbpq/c/c;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v4, 0x1

    goto :goto_36

    :cond_35
    const/4 v4, 0x0

    :goto_36
    if-eqz v4, :cond_3a

    add-int/lit8 v3, v3, 0x1

    :cond_3a
    const/4 v4, 0x3

    if-ne v3, v4, :cond_43

    .line 2
    iget-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_46

    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_46
    :goto_46
    return-void
.end method

.method final h0(Lcom/github/catvod/spider/merge2/xbpq/c/l;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n:Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-void
.end method

.method final i()V
    .registers 3

    :cond_0
    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1b

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-nez v0, :cond_0

    :cond_1e
    return-void
.end method

.method final i0()Lcom/github/catvod/spider/merge2/xbpq/d/AB;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->k:Lcom/github/catvod/spider/merge2/xbpq/d/AB;

    return-object v0
.end method

.method final j0(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V
    .registers 2

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->k:Lcom/github/catvod/spider/merge2/xbpq/d/AB;

    return-void
.end method

.method final k()V
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tbody"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tfoot"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thead"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "template"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j([Ljava/lang/String;)V

    return-void
.end method

.method final l()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "table"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j([Ljava/lang/String;)V

    return-void
.end method

.method final m()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "template"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->j([Ljava/lang/String;)V

    return-void
.end method

.method final n(Lcom/github/catvod/spider/merge2/xbpq/d/AB;)V
    .registers 8

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a:Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/EF;->a()Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/CD;->a()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a:Lcom/github/catvod/spider/merge2/xbpq/d/EF;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/d/EF;->a()Lcom/github/catvod/spider/merge2/xbpq/d/CD;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/d/BC;

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->b:Lcom/github/catvod/spider/merge2/xbpq/d/a;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/d/a;->E()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->g:Lcom/github/catvod/spider/merge2/xbpq/d/OP;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected token [%s] when in state [%s]"

    .line 2
    invoke-direct {v1, v2, p1, v3}, Lcom/github/catvod/spider/merge2/xbpq/d/BC;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_35
    return-void
.end method

.method final o(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->s:Z

    return-void
.end method

.method final p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->s:Z

    return v0
.end method

.method final q(Ljava/lang/String;)V
    .registers 4

    :goto_0
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge2/xbpq/d/b;->A:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->U()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    goto :goto_0

    :cond_24
    return-void
.end method

.method final r(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_23

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    if-nez v1, :cond_15

    goto :goto_23

    :cond_15
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    return-object v1

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_23
    :goto_23
    const/4 p1, 0x0

    return-object p1
.end method

.method final s()Lcom/github/catvod/spider/merge2/xbpq/c/o;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->o:Lcom/github/catvod/spider/merge2/xbpq/c/o;

    return-object v0
.end method

.method final t(Ljava/lang/String;)Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 5

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1d

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    const-string v0, "TreeBuilder{currentToken="

    .line 1
    invoke-static {v0}, Lcom/github/catvod/spider/merge2/xbpq/g/d;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->g:Lcom/github/catvod/spider/merge2/xbpq/d/OP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->k:Lcom/github/catvod/spider/merge2/xbpq/d/AB;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->a()Lcom/github/catvod/spider/merge2/xbpq/c/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final u()Lcom/github/catvod/spider/merge2/xbpq/c/l;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->n:Lcom/github/catvod/spider/merge2/xbpq/c/l;

    return-object v0
.end method

.method final v()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method final w(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->x(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final x(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->v:[Ljava/lang/String;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->u:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v1, v0, p2}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->A([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final y([Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/b;->v:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/b;->A([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final z(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_2a

    iget-object v2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/i1;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge2/xbpq/c/l;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge2/xbpq/c/l;->d0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    return v1

    :cond_1d
    sget-object v3, Lcom/github/catvod/spider/merge2/xbpq/d/b;->z:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/github/catvod/spider/merge2/xbpq/b/j;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    const/4 p1, 0x0

    return p1

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2a
    const-string p1, "Should not be reachable"

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_32

    :goto_31
    throw p1

    :goto_32
    goto :goto_31
.end method
