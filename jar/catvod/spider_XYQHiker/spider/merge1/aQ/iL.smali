.class public Lcom/github/catvod/spider/merge1/aQ/iL;
.super Lcom/github/catvod/spider/merge1/aQ/HW;
.source "SourceFile"


# static fields
.field static final Gq:[Ljava/lang/String;

.field static final P:[Ljava/lang/String;

.field static final T:[Ljava/lang/String;

.field static final f:[Ljava/lang/String;

.field static final mw:[Ljava/lang/String;

.field static final nN:[Ljava/lang/String;

.field static final o:[Ljava/lang/String;


# instance fields
.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            ">;"
        }
    .end annotation
.end field

.field private GL:Z

.field private Tr:Lcom/github/catvod/spider/merge1/aQ/li;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private Vp:Lcom/github/catvod/spider/merge1/aQ/rx;

.field private Wa:[Ljava/lang/String;

.field private cs:Lcom/github/catvod/spider/merge1/aQ/li;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/github/catvod/spider/merge1/aQ/rx;

.field private et:Z

.field private ey:Lcom/github/catvod/spider/merge1/aQ/lK$MB;

.field private kc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lB:Lcom/github/catvod/spider/merge1/aQ/WO;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private r:Z

.field private z0:Z


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

    .line 1
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/iL;->nN:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v18, "ol"

    aput-object v18, v1, v2

    const-string v19, "ul"

    aput-object v19, v1, v4

    .line 2
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/iL;->Gq:[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v20, "button"

    aput-object v20, v1, v2

    .line 3
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/iL;->o:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    aput-object v7, v1, v2

    aput-object v13, v1, v4

    .line 4
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/iL;->P:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v21, "optgroup"

    aput-object v21, v1, v2

    const-string v22, "option"

    aput-object v22, v1, v4

    .line 5
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/iL;->T:[Ljava/lang/String;

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

    .line 6
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/iL;->f:[Ljava/lang/String;

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

    .line 7
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/iL;->mw:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/HW;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 2
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->Wa:[Ljava/lang/String;

    return-void
.end method

.method private Bn(Lcom/github/catvod/spider/merge1/aQ/iV;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->jl:Lcom/github/catvod/spider/merge1/aQ/Yw;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/li;->JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_1f

    .line 3
    :cond_e
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->b0()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->dM(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    goto :goto_1f

    .line 5
    :cond_18
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/li;->JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    .line 6
    :goto_1f
    instance-of v0, p1, Lcom/github/catvod/spider/merge1/aQ/li;

    if-eqz v0, :cond_36

    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->db()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->i()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 7
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->lB:Lcom/github/catvod/spider/merge1/aQ/WO;

    if-eqz v0, :cond_36

    .line 8
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/WO;->be(Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/WO;

    :cond_36
    return-void
.end method

.method private Gv(Ljava/util/ArrayList;Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            ">;",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            ")Z"
        }
    .end annotation

    .line 1
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

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge1/aQ/li;

    if-ne v4, p2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_1d
    return v2
.end method

.method private I(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/catvod/spider/merge1/aQ/li;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/github/catvod/spider/merge1/aQ/dH;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private JW(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->Wa:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-direct {p0, v0, p2, p3}, Lcom/github/catvod/spider/merge1/aQ/iL;->K([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private K([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le v0, v2, :cond_10

    add-int/lit8 v2, v0, -0x64

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-lt v0, v2, :cond_39

    .line 2
    iget-object v4, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {v4}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v4, p1}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    return v1

    .line 4
    :cond_26
    invoke-static {v4, p2}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    return v3

    :cond_2d
    if-eqz p3, :cond_36

    .line 5
    invoke-static {v4, p3}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    return v3

    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_39
    return v3
.end method

.method private varargs T([Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_31

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 3
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/github/catvod/spider/merge1/aQ/gx;->Ku(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_31

    .line 4
    :cond_29
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_31
    :goto_31
    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            ">;",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 2
    :goto_a
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->Ku(Z)V

    .line 3
    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method AM(Lcom/github/catvod/spider/merge1/aQ/li;I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->o(Lcom/github/catvod/spider/merge1/aQ/li;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method B2(Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1d

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/li;

    if-ne v2, p1, :cond_1a

    .line 3
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v1

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method B8(Lcom/github/catvod/spider/merge1/aQ/li;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->cs:Lcom/github/catvod/spider/merge1/aQ/li;

    return-void
.end method

.method Bs()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->et:Z

    return v0
.end method

.method Bu(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_25

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 3
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_25

    .line 4
    :cond_1d
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_25
    :goto_25
    return-void
.end method

.method C(Lcom/github/catvod/spider/merge1/aQ/li;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1d

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/li;

    if-ne v1, p1, :cond_1a

    .line 3
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1d

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1d
    :goto_1d
    return-void
.end method

.method Cv(Lcom/github/catvod/spider/merge1/aQ/li;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->Bn(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method Db(Lcom/github/catvod/spider/merge1/aQ/li;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method E(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_23

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/li;

    if-nez v1, :cond_15

    goto :goto_23

    .line 3
    :cond_15
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

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

.method Eb()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0
.end method

.method Eg()Lcom/github/catvod/spider/merge1/aQ/Vp;
    .registers 2

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Vp;->W:Lcom/github/catvod/spider/merge1/aQ/Vp;

    return-object v0
.end method

.method FX(Lcom/github/catvod/spider/merge1/aQ/WO;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->lB:Lcom/github/catvod/spider/merge1/aQ/WO;

    return-void
.end method

.method GL()Lcom/github/catvod/spider/merge1/aQ/WO;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->lB:Lcom/github/catvod/spider/merge1/aQ/WO;

    return-object v0
.end method

.method GV()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method Gq(Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/li;

    if-ne v1, p1, :cond_1f

    .line 3
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/li;

    return-object p1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method Hw(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->z0:Z

    return-void
.end method

.method JM(Lcom/github/catvod/spider/merge1/aQ/lK$G;Z)Lcom/github/catvod/spider/merge1/aQ/WO;
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->z0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->A:Lcom/github/catvod/spider/merge1/aQ/Vp;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/n8;->T(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Vp;)Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/WO;

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->A:Lcom/github/catvod/spider/merge1/aQ/Vp;

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {v2, p1}, Lcom/github/catvod/spider/merge1/aQ/Vp;->Eg(Lcom/github/catvod/spider/merge1/aQ/dH;)Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/github/catvod/spider/merge1/aQ/WO;-><init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->FX(Lcom/github/catvod/spider/merge1/aQ/WO;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->Bn(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    if-eqz p2, :cond_25

    .line 5
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    return-object v1
.end method

.method L()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Eb()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Tu(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_56

    .line 3
    :cond_d
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v3, v1

    :cond_16
    const/4 v4, 0x0

    if-nez v3, :cond_1a

    goto :goto_2d

    .line 4
    :cond_1a
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    if-eqz v0, :cond_2c

    .line 5
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Tu(Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    if-nez v2, :cond_39

    .line 6
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 7
    :cond_39
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->Yl(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/li;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v5

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->X()Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/catvod/spider/merge1/aQ/dH;->X(Lcom/github/catvod/spider/merge1/aQ/dH;)V

    .line 10
    iget-object v5, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v3, v1, :cond_2c

    :cond_56
    :goto_56
    return-void
.end method

.method N(Lcom/github/catvod/spider/merge1/aQ/li;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->o(Lcom/github/catvod/spider/merge1/aQ/li;)V

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic O2(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/HW;->O2(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)Z

    move-result p1

    return p1
.end method

.method varargs OF([Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_25

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 3
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_25

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_25
    :goto_25
    return-void
.end method

.method P()V
    .registers 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->we()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_e
    return-void
.end method

.method RV(Ljava/lang/String;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_2a

    .line 2
    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 3
    invoke-virtual {v3}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    return v1

    .line 5
    :cond_1e
    sget-object v4, Lcom/github/catvod/spider/merge1/aQ/iL;->T:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    return v2

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2a
    const-string p1, "Should not be reachable"

    .line 6
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/QL;->W(Ljava/lang/String;)V

    return v2
.end method

.method Sp(Ljava/lang/String;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/iL;->P:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->JW(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method Tr(Ljava/lang/String;)V
    .registers 4

    :goto_0
    if-eqz p1, :cond_24

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/iL;->f:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/iL;->l()Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_0

    :cond_24
    return-void
.end method

.method Tu(Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->Gv(Ljava/util/ArrayList;Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result p1

    return p1
.end method

.method U1()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_e7

    .line 2
    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/catvod/spider/merge1/aQ/li;

    if-nez v0, :cond_18

    .line 3
    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->Tr:Lcom/github/catvod/spider/merge1/aQ/li;

    const/4 v2, 0x1

    :cond_18
    if-eqz v3, :cond_1f

    .line 4
    invoke-virtual {v3}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_1f
    const-string v3, ""

    :goto_21
    const-string v4, "select"

    .line 5
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 6
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->f:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto/16 :goto_e7

    :cond_30
    const-string v4, "td"

    .line 7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e2

    const-string v4, "th"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    if-nez v2, :cond_44

    goto/16 :goto_e2

    :cond_44
    const-string v4, "tr"

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 9
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->P:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto/16 :goto_e7

    :cond_53
    const-string v4, "tbody"

    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_dc

    const-string v4, "thead"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_dc

    const-string v4, "tfoot"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    goto/16 :goto_dc

    :cond_6d
    const-string v4, "caption"

    .line 11
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 12
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->nN:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto/16 :goto_e7

    :cond_7c
    const-string v4, "colgroup"

    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 14
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->Gq:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_e7

    :cond_8a
    const-string v4, "table"

    .line 15
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 16
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->cG:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_e7

    :cond_98
    const-string v4, "head"

    .line 17
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 18
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_e7

    :cond_a6
    const-string v4, "body"

    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 20
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_e7

    :cond_b4
    const-string v4, "frameset"

    .line 21
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 22
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->Vp:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_e7

    :cond_c2
    const-string v4, "html"

    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 24
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->Ku:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_e7

    :cond_d0
    if-eqz v2, :cond_d8

    .line 25
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->y:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_e7

    :cond_d8
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_9

    .line 26
    :cond_dc
    :goto_dc
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->o:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    goto :goto_e7

    .line 27
    :cond_e2
    :goto_e2
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/rx;->T:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V

    :cond_e7
    :goto_e7
    return-void
.end method

.method UO(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/iL;->nN:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->JW(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method V([Ljava/lang/String;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/iL;->nN:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->K([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method Vp(Lcom/github/catvod/spider/merge1/aQ/rx;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->W:Lcom/github/catvod/spider/merge1/aQ/dz;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/dz;->W()Lcom/github/catvod/spider/merge1/aQ/d1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/d1;->W()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->W:Lcom/github/catvod/spider/merge1/aQ/dz;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/dz;->W()Lcom/github/catvod/spider/merge1/aQ/d1;

    move-result-object v0

    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/KX;

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->Eg:Lcom/github/catvod/spider/merge1/aQ/sJ;

    invoke-virtual {v2}, Lcom/github/catvod/spider/merge1/aQ/sJ;->UO()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->y:Lcom/github/catvod/spider/merge1/aQ/lK;

    invoke-virtual {v5}, Lcom/github/catvod/spider/merge1/aQ/lK;->T()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected token [%s] when in state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lcom/github/catvod/spider/merge1/aQ/KX;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    return-void
.end method

.method WF(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 2
    :goto_d
    invoke-static {v1}, Lcom/github/catvod/spider/merge1/aQ/QL;->Ku(Z)V

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    add-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method Wa()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->kc:Ljava/util/List;

    return-object v0
.end method

.method protected X(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "script"

    .line 1
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

.method Y(Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/iL;->mw:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/gx;->jl(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method Yl(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 4

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/li;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->A:Lcom/github/catvod/spider/merge1/aQ/Vp;

    invoke-static {p1, v1}, Lcom/github/catvod/spider/merge1/aQ/n8;->T(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Vp;)Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/github/catvod/spider/merge1/aQ/li;-><init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Cv(Lcom/github/catvod/spider/merge1/aQ/li;)V

    return-object v0
.end method

.method ZT(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_25

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 3
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

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

.method b0()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->z0:Z

    return v0
.end method

.method bq()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/github/catvod/spider/merge1/aQ/li;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    return-object v0
.end method

.method c(Lcom/github/catvod/spider/merge1/aQ/lK$AA;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/wb;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$AA;->Vp()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/wb;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Bn(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    return-void
.end method

.method cs()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->GL:Z

    return v0
.end method

.method d()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "template"

    aput-object v2, v0, v1

    .line 1
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->T([Ljava/lang/String;)V

    return-void
.end method

.method dM(Lcom/github/catvod/spider/merge1/aQ/iV;)V
    .registers 5

    const-string v0, "table"

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->z0(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 2
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 3
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->B2()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v1

    move-object v2, v1

    const/4 v1, 0x1

    goto :goto_23

    .line 4
    :cond_16
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Gq(Lcom/github/catvod/spider/merge1/aQ/li;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v2

    goto :goto_23

    .line 5
    :cond_1b
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/li;

    :goto_23
    if-eqz v1, :cond_2c

    .line 6
    invoke-static {v0}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/li;->Gv(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    goto :goto_2f

    .line 8
    :cond_2c
    invoke-virtual {v2, p1}, Lcom/github/catvod/spider/merge1/aQ/li;->JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    :goto_2f
    return-void
.end method

.method db()Lcom/github/catvod/spider/merge1/aQ/rx;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->d:Lcom/github/catvod/spider/merge1/aQ/rx;

    return-object v0
.end method

.method et()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->cs:Lcom/github/catvod/spider/merge1/aQ/li;

    return-object v0
.end method

.method ey()Lcom/github/catvod/spider/merge1/aQ/Yw;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->jl:Lcom/github/catvod/spider/merge1/aQ/Yw;

    return-object v0
.end method

.method f()V
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

    .line 1
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->T([Ljava/lang/String;)V

    return-void
.end method

.method fI()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->d:Lcom/github/catvod/spider/merge1/aQ/rx;

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp:Lcom/github/catvod/spider/merge1/aQ/rx;

    return-void
.end method

.method ft(Lcom/github/catvod/spider/merge1/aQ/li;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->r:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "href"

    .line 2
    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iV;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 4
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->i:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->r:Z

    .line 6
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->jl:Lcom/github/catvod/spider/merge1/aQ/Yw;

    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/iV;->JW(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method gK(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->ey()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/dH;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2
    iget-object v0, p1, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->A:Lcom/github/catvod/spider/merge1/aQ/Vp;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/dH;->O2(Lcom/github/catvod/spider/merge1/aQ/Vp;)I

    move-result v0

    if-lez v0, :cond_1d

    const-string v0, "Duplicate attribute"

    .line 3
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/HW;->Ku(Ljava/lang/String;)V

    .line 4
    :cond_1d
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->GL()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 5
    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->s(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->Ku:Lcom/github/catvod/spider/merge1/aQ/WL;

    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/n6;->W:Lcom/github/catvod/spider/merge1/aQ/n6;

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/WL;->Tr(Lcom/github/catvod/spider/merge1/aQ/n6;)V

    .line 8
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->Ku:Lcom/github/catvod/spider/merge1/aQ/WL;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->ey:Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->nK()Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/li;->oT()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->et(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/lK$l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/WL;->o(Lcom/github/catvod/spider/merge1/aQ/lK;)V

    return-object p1

    .line 9
    :cond_47
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/li;

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->z0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->A:Lcom/github/catvod/spider/merge1/aQ/Vp;

    invoke-static {v1, v2}, Lcom/github/catvod/spider/merge1/aQ/n8;->T(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Vp;)Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->A:Lcom/github/catvod/spider/merge1/aQ/Vp;

    iget-object p1, p1, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {v3, p1}, Lcom/github/catvod/spider/merge1/aQ/Vp;->Eg(Lcom/github/catvod/spider/merge1/aQ/dH;)Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/github/catvod/spider/merge1/aQ/li;-><init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Cv(Lcom/github/catvod/spider/merge1/aQ/li;)V

    return-object v0
.end method

.method j(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->UO(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected jl(Ljava/io/Reader;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dz;)V
    .registers 4
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/github/catvod/spider/merge1/aQ/HW;->jl(Ljava/io/Reader;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dz;)V

    .line 2
    sget-object p1, Lcom/github/catvod/spider/merge1/aQ/rx;->W:Lcom/github/catvod/spider/merge1/aQ/rx;

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->d:Lcom/github/catvod/spider/merge1/aQ/rx;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp:Lcom/github/catvod/spider/merge1/aQ/rx;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->r:Z

    .line 5
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->cs:Lcom/github/catvod/spider/merge1/aQ/li;

    .line 6
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->lB:Lcom/github/catvod/spider/merge1/aQ/WO;

    .line 7
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->Tr:Lcom/github/catvod/spider/merge1/aQ/li;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->kc:Ljava/util/List;

    .line 10
    new-instance p1, Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    invoke-direct {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$MB;-><init>()V

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->ey:Lcom/github/catvod/spider/merge1/aQ/lK$MB;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->GL:Z

    .line 12
    iput-boolean p2, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->z0:Z

    .line 13
    iput-boolean p2, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->et:Z

    return-void
.end method

.method k()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->kc:Ljava/util/List;

    return-void
.end method

.method kc()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->i:Ljava/lang/String;

    return-object v0
.end method

.method l()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    return-object v0
.end method

.method lB()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->Tr(Ljava/lang/String;)V

    return-void
.end method

.method m(Lcom/github/catvod/spider/merge1/aQ/li;)I
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

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

.method mW(Lcom/github/catvod/spider/merge1/aQ/li;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/github/catvod/spider/merge1/aQ/iL;->Gv(Ljava/util/ArrayList;Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result p1

    return p1
.end method

.method mw()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "table"

    aput-object v2, v0, v1

    .line 1
    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->T([Ljava/lang/String;)V

    return-void
.end method

.method n7()Lcom/github/catvod/spider/merge1/aQ/rx;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->Vp:Lcom/github/catvod/spider/merge1/aQ/rx;

    return-object v0
.end method

.method nK(Ljava/lang/String;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/iL;->o:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->UO(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method o(Lcom/github/catvod/spider/merge1/aQ/li;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_2a

    .line 2
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/catvod/spider/merge1/aQ/li;

    if-nez v2, :cond_16

    goto :goto_2a

    .line 3
    :cond_16
    invoke-direct {p0, p1, v2}, Lcom/github/catvod/spider/merge1/aQ/iL;->I(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit8 v1, v1, 0x1

    :cond_1e
    const/4 v2, 0x3

    if-ne v1, v2, :cond_27

    .line 4
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2a

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_2a
    :goto_2a
    return-void
.end method

.method oT(Lcom/github/catvod/spider/merge1/aQ/rx;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->d:Lcom/github/catvod/spider/merge1/aQ/rx;

    return-void
.end method

.method r(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->GL:Z

    return-void
.end method

.method s(Lcom/github/catvod/spider/merge1/aQ/lK$G;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->z0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->A:Lcom/github/catvod/spider/merge1/aQ/Vp;

    invoke-static {v0, v1}, Lcom/github/catvod/spider/merge1/aQ/n8;->T(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Vp;)Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/li;

    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->A:Lcom/github/catvod/spider/merge1/aQ/Vp;

    iget-object v3, p1, Lcom/github/catvod/spider/merge1/aQ/lK$l;->O2:Lcom/github/catvod/spider/merge1/aQ/dH;

    invoke-virtual {v2, v3}, Lcom/github/catvod/spider/merge1/aQ/Vp;->Eg(Lcom/github/catvod/spider/merge1/aQ/dH;)Lcom/github/catvod/spider/merge1/aQ/dH;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/github/catvod/spider/merge1/aQ/li;-><init>(Lcom/github/catvod/spider/merge1/aQ/n8;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/dH;)V

    .line 3
    invoke-direct {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->Bn(Lcom/github/catvod/spider/merge1/aQ/iV;)V

    .line 4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$l;->GL()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 5
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->A()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 6
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->X()Z

    move-result p1

    if-nez p1, :cond_38

    .line 7
    iget-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->Ku:Lcom/github/catvod/spider/merge1/aQ/WL;

    const-string v0, "Tag cannot be self closing; not a void tag"

    invoke-virtual {p1, v0}, Lcom/github/catvod/spider/merge1/aQ/WL;->Vp(Ljava/lang/String;)V

    goto :goto_38

    .line 8
    :cond_35
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->o()Lcom/github/catvod/spider/merge1/aQ/n8;

    :cond_38
    :goto_38
    return-object v1
.end method

.method t(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->a(Ljava/util/ArrayList;Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TreeBuilder{currentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->y:Lcom/github/catvod/spider/merge1/aQ/lK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->d:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method we()Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->E:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/li;

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method x(Ljava/lang/String;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/iL;->Gq:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/iL;->UO(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected y(Lcom/github/catvod/spider/merge1/aQ/lK;)Z
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->y:Lcom/github/catvod/spider/merge1/aQ/lK;

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/iL;->d:Lcom/github/catvod/spider/merge1/aQ/rx;

    invoke-virtual {v0, p1, p0}, Lcom/github/catvod/spider/merge1/aQ/rx;->O2(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result p1

    return p1
.end method

.method yx(Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/github/catvod/spider/merge1/aQ/iL;->a(Ljava/util/ArrayList;Lcom/github/catvod/spider/merge1/aQ/li;Lcom/github/catvod/spider/merge1/aQ/li;)V

    return-void
.end method

.method z(Lcom/github/catvod/spider/merge1/aQ/lK$c;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/HW;->W()Lcom/github/catvod/spider/merge1/aQ/li;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->jl:Lcom/github/catvod/spider/merge1/aQ/Yw;

    .line 3
    :cond_8
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK$c;->mw()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/lK;->i()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 6
    new-instance p1, Lcom/github/catvod/spider/merge1/aQ/vb;

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge1/aQ/vb;-><init>(Ljava/lang/String;)V

    goto :goto_2d

    .line 7
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/github/catvod/spider/merge1/aQ/iL;->X(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 8
    new-instance p1, Lcom/github/catvod/spider/merge1/aQ/IF;

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge1/aQ/IF;-><init>(Ljava/lang/String;)V

    goto :goto_2d

    .line 9
    :cond_28
    new-instance p1, Lcom/github/catvod/spider/merge1/aQ/Gn;

    invoke-direct {p1, v2}, Lcom/github/catvod/spider/merge1/aQ/Gn;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_2d
    invoke-virtual {v0, p1}, Lcom/github/catvod/spider/merge1/aQ/li;->JM(Lcom/github/catvod/spider/merge1/aQ/iV;)Lcom/github/catvod/spider/merge1/aQ/li;

    return-void
.end method

.method z0(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/li;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 2
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->X:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/li;

    .line 3
    invoke-virtual {v1}, Lcom/github/catvod/spider/merge1/aQ/li;->AM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return-object v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method zK(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/rx;)Z
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/HW;->y:Lcom/github/catvod/spider/merge1/aQ/lK;

    .line 2
    invoke-virtual {p2, p1, p0}, Lcom/github/catvod/spider/merge1/aQ/rx;->O2(Lcom/github/catvod/spider/merge1/aQ/lK;Lcom/github/catvod/spider/merge1/aQ/iL;)Z

    move-result p1

    return p1
.end method
