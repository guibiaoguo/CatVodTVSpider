.class public Lcom/github/catvod/spider/merge1/aQ/n8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final A:[Ljava/lang/String;

.field private static final Eg:[Ljava/lang/String;

.field private static final Ku:[Ljava/lang/String;

.field private static final W:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/catvod/spider/merge1/aQ/n8;",
            ">;"
        }
    .end annotation
.end field

.field private static final X:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static final jl:[Ljava/lang/String;

.field private static final y:[Ljava/lang/String;


# instance fields
.field private Gq:Z

.field private O2:Ljava/lang/String;

.field private P:Z

.field private T:Z

.field private cG:Ljava/lang/String;

.field private f:Z

.field private mw:Z

.field private nN:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 26

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/n8;->W:Ljava/util/Map;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "html"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "head"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "body"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "frameset"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "script"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "noscript"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "style"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "meta"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "link"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "title"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "frame"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "noframes"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "section"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-string v1, "nav"

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-string v1, "aside"

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-string v1, "hgroup"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "header"

    const/16 v18, 0x10

    aput-object v1, v0, v18

    const-string v1, "footer"

    const/16 v19, 0x11

    aput-object v1, v0, v19

    const-string v1, "p"

    const/16 v20, 0x12

    aput-object v1, v0, v20

    const-string v1, "h1"

    const/16 v15, 0x13

    aput-object v1, v0, v15

    const/16 v1, 0x14

    const-string v22, "h2"

    aput-object v22, v0, v1

    const/16 v1, 0x15

    const-string v22, "h3"

    aput-object v22, v0, v1

    const/16 v1, 0x16

    const-string v22, "h4"

    aput-object v22, v0, v1

    const/16 v1, 0x17

    const-string v22, "h5"

    aput-object v22, v0, v1

    const/16 v1, 0x18

    const-string v22, "h6"

    aput-object v22, v0, v1

    const/16 v1, 0x19

    const-string v22, "ul"

    aput-object v22, v0, v1

    const/16 v1, 0x1a

    const-string v22, "ol"

    aput-object v22, v0, v1

    const/16 v1, 0x1b

    const-string v22, "pre"

    aput-object v22, v0, v1

    const/16 v1, 0x1c

    const-string v22, "div"

    aput-object v22, v0, v1

    const/16 v1, 0x1d

    const-string v22, "blockquote"

    aput-object v22, v0, v1

    const/16 v1, 0x1e

    const-string v22, "hr"

    aput-object v22, v0, v1

    const/16 v1, 0x1f

    const-string v22, "address"

    aput-object v22, v0, v1

    const/16 v1, 0x20

    const-string v22, "figure"

    aput-object v22, v0, v1

    const/16 v1, 0x21

    const-string v22, "figcaption"

    aput-object v22, v0, v1

    const/16 v1, 0x22

    const-string v22, "form"

    aput-object v22, v0, v1

    const/16 v1, 0x23

    const-string v22, "fieldset"

    aput-object v22, v0, v1

    const/16 v1, 0x24

    const-string v22, "ins"

    aput-object v22, v0, v1

    const/16 v1, 0x25

    const-string v22, "del"

    aput-object v22, v0, v1

    const/16 v1, 0x26

    const-string v22, "dl"

    aput-object v22, v0, v1

    const/16 v1, 0x27

    const-string v22, "dt"

    aput-object v22, v0, v1

    const/16 v1, 0x28

    const-string v22, "dd"

    aput-object v22, v0, v1

    const/16 v1, 0x29

    const-string v22, "li"

    aput-object v22, v0, v1

    const/16 v1, 0x2a

    const-string v22, "table"

    aput-object v22, v0, v1

    const/16 v1, 0x2b

    const-string v22, "caption"

    aput-object v22, v0, v1

    const/16 v1, 0x2c

    const-string v22, "thead"

    aput-object v22, v0, v1

    const/16 v1, 0x2d

    const-string v22, "tfoot"

    aput-object v22, v0, v1

    const/16 v1, 0x2e

    const-string v22, "tbody"

    aput-object v22, v0, v1

    const/16 v1, 0x2f

    const-string v22, "colgroup"

    aput-object v22, v0, v1

    const/16 v1, 0x30

    const-string v22, "col"

    aput-object v22, v0, v1

    const/16 v1, 0x31

    const-string v22, "tr"

    aput-object v22, v0, v1

    const/16 v1, 0x32

    const-string v22, "th"

    aput-object v22, v0, v1

    const/16 v1, 0x33

    const-string v22, "td"

    aput-object v22, v0, v1

    const/16 v1, 0x34

    const-string v22, "video"

    aput-object v22, v0, v1

    const/16 v1, 0x35

    const-string v22, "audio"

    aput-object v22, v0, v1

    const/16 v1, 0x36

    const-string v22, "canvas"

    aput-object v22, v0, v1

    const/16 v1, 0x37

    const-string v22, "details"

    aput-object v22, v0, v1

    const/16 v1, 0x38

    const-string v22, "menu"

    aput-object v22, v0, v1

    const/16 v1, 0x39

    const-string v22, "plaintext"

    aput-object v22, v0, v1

    const/16 v1, 0x3a

    const-string v22, "template"

    aput-object v22, v0, v1

    const/16 v1, 0x3b

    const-string v22, "article"

    aput-object v22, v0, v1

    const/16 v1, 0x3c

    const-string v22, "main"

    aput-object v22, v0, v1

    const/16 v1, 0x3d

    const-string v22, "svg"

    aput-object v22, v0, v1

    const/16 v1, 0x3e

    const-string v22, "math"

    aput-object v22, v0, v1

    const/16 v1, 0x3f

    const-string v22, "center"

    aput-object v22, v0, v1

    .line 2
    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/n8;->Eg:[Ljava/lang/String;

    const/16 v1, 0x42

    new-array v1, v1, [Ljava/lang/String;

    const-string v22, "object"

    aput-object v22, v1, v2

    const-string v22, "base"

    aput-object v22, v1, v3

    const-string v22, "font"

    aput-object v22, v1, v4

    const-string v22, "tt"

    aput-object v22, v1, v5

    const-string v22, "i"

    aput-object v22, v1, v6

    const-string v22, "b"

    aput-object v22, v1, v7

    const-string v22, "u"

    aput-object v22, v1, v8

    const-string v22, "big"

    aput-object v22, v1, v9

    const-string v22, "small"

    aput-object v22, v1, v10

    const-string v22, "em"

    aput-object v22, v1, v11

    const-string v22, "strong"

    aput-object v22, v1, v12

    const-string v22, "dfn"

    aput-object v22, v1, v13

    const-string v22, "code"

    aput-object v22, v1, v14

    const-string v22, "samp"

    const/16 v21, 0xd

    aput-object v22, v1, v21

    const-string v22, "kbd"

    aput-object v22, v1, v16

    const-string v22, "var"

    aput-object v22, v1, v17

    const-string v22, "cite"

    aput-object v22, v1, v18

    const-string v22, "abbr"

    aput-object v22, v1, v19

    const-string v22, "time"

    aput-object v22, v1, v20

    const-string v22, "acronym"

    aput-object v22, v1, v15

    const/16 v22, 0x14

    const-string v23, "mark"

    aput-object v23, v1, v22

    const/16 v22, 0x15

    const-string v23, "ruby"

    aput-object v23, v1, v22

    const/16 v22, 0x16

    const-string v23, "rt"

    aput-object v23, v1, v22

    const/16 v22, 0x17

    const-string v23, "rp"

    aput-object v23, v1, v22

    const/16 v22, 0x18

    const-string v23, "a"

    aput-object v23, v1, v22

    const/16 v22, 0x19

    const-string v23, "img"

    aput-object v23, v1, v22

    const/16 v22, 0x1a

    const-string v23, "br"

    aput-object v23, v1, v22

    const/16 v22, 0x1b

    const-string v23, "wbr"

    aput-object v23, v1, v22

    const/16 v22, 0x1c

    const-string v23, "map"

    aput-object v23, v1, v22

    const/16 v22, 0x1d

    const-string v23, "q"

    aput-object v23, v1, v22

    const/16 v22, 0x1e

    const-string v23, "sub"

    aput-object v23, v1, v22

    const/16 v22, 0x1f

    const-string v23, "sup"

    aput-object v23, v1, v22

    const/16 v22, 0x20

    const-string v23, "bdo"

    aput-object v23, v1, v22

    const/16 v22, 0x21

    const-string v23, "iframe"

    aput-object v23, v1, v22

    const/16 v22, 0x22

    const-string v23, "embed"

    aput-object v23, v1, v22

    const/16 v22, 0x23

    const-string v23, "span"

    aput-object v23, v1, v22

    const/16 v22, 0x24

    const-string v23, "input"

    aput-object v23, v1, v22

    const/16 v22, 0x25

    const-string v24, "select"

    aput-object v24, v1, v22

    const/16 v22, 0x26

    const-string v24, "textarea"

    aput-object v24, v1, v22

    const/16 v22, 0x27

    const-string v25, "label"

    aput-object v25, v1, v22

    const/16 v22, 0x28

    const-string v25, "button"

    aput-object v25, v1, v22

    const/16 v22, 0x29

    const-string v25, "optgroup"

    aput-object v25, v1, v22

    const/16 v22, 0x2a

    const-string v25, "option"

    aput-object v25, v1, v22

    const/16 v22, 0x2b

    const-string v25, "legend"

    aput-object v25, v1, v22

    const/16 v22, 0x2c

    const-string v25, "datalist"

    aput-object v25, v1, v22

    const/16 v22, 0x2d

    const-string v25, "keygen"

    aput-object v25, v1, v22

    const/16 v22, 0x2e

    const-string v25, "output"

    aput-object v25, v1, v22

    const/16 v22, 0x2f

    const-string v25, "progress"

    aput-object v25, v1, v22

    const/16 v22, 0x30

    const-string v25, "meter"

    aput-object v25, v1, v22

    const/16 v22, 0x31

    const-string v25, "area"

    aput-object v25, v1, v22

    const/16 v22, 0x32

    const-string v25, "param"

    aput-object v25, v1, v22

    const/16 v22, 0x33

    const-string v25, "source"

    aput-object v25, v1, v22

    const/16 v22, 0x34

    const-string v25, "track"

    aput-object v25, v1, v22

    const/16 v22, 0x35

    const-string v25, "summary"

    aput-object v25, v1, v22

    const/16 v22, 0x36

    const-string v25, "command"

    aput-object v25, v1, v22

    const/16 v22, 0x37

    const-string v25, "device"

    aput-object v25, v1, v22

    const/16 v22, 0x38

    const-string v25, "area"

    aput-object v25, v1, v22

    const/16 v22, 0x39

    const-string v25, "basefont"

    aput-object v25, v1, v22

    const/16 v22, 0x3a

    const-string v25, "bgsound"

    aput-object v25, v1, v22

    const/16 v22, 0x3b

    const-string v25, "menuitem"

    aput-object v25, v1, v22

    const/16 v22, 0x3c

    const-string v25, "param"

    aput-object v25, v1, v22

    const/16 v22, 0x3d

    const-string v25, "source"

    aput-object v25, v1, v22

    const/16 v22, 0x3e

    const-string v25, "track"

    aput-object v25, v1, v22

    const/16 v22, 0x3f

    const-string v25, "data"

    aput-object v25, v1, v22

    const/16 v22, 0x40

    const-string v25, "bdi"

    aput-object v25, v1, v22

    const/16 v22, 0x41

    const-string v25, "s"

    aput-object v25, v1, v22

    .line 3
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/n8;->Ku:[Ljava/lang/String;

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

    const-string v22, "meta"

    aput-object v22, v1, v2

    const-string v22, "link"

    aput-object v22, v1, v3

    const-string v22, "base"

    aput-object v22, v1, v4

    const-string v22, "frame"

    aput-object v22, v1, v5

    const-string v22, "img"

    aput-object v22, v1, v6

    const-string v22, "br"

    aput-object v22, v1, v7

    const-string v22, "wbr"

    aput-object v22, v1, v8

    const-string v22, "embed"

    aput-object v22, v1, v9

    const-string v22, "hr"

    aput-object v22, v1, v10

    aput-object v23, v1, v11

    const-string v22, "keygen"

    aput-object v22, v1, v12

    const-string v22, "col"

    aput-object v22, v1, v13

    const-string v22, "command"

    aput-object v22, v1, v14

    const-string v22, "device"

    const/16 v21, 0xd

    aput-object v22, v1, v21

    const-string v22, "area"

    aput-object v22, v1, v16

    const-string v22, "basefont"

    aput-object v22, v1, v17

    const-string v22, "bgsound"

    aput-object v22, v1, v18

    const-string v22, "menuitem"

    aput-object v22, v1, v19

    const-string v22, "param"

    aput-object v22, v1, v20

    const-string v22, "source"

    aput-object v22, v1, v15

    const/16 v22, 0x14

    const-string v25, "track"

    aput-object v25, v1, v22

    .line 4
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/n8;->jl:[Ljava/lang/String;

    new-array v1, v15, [Ljava/lang/String;

    const-string v15, "title"

    aput-object v15, v1, v2

    const-string v15, "a"

    aput-object v15, v1, v3

    const-string v15, "p"

    aput-object v15, v1, v4

    const-string v15, "h1"

    aput-object v15, v1, v5

    const-string v15, "h2"

    aput-object v15, v1, v6

    const-string v15, "h3"

    aput-object v15, v1, v7

    const-string v15, "h4"

    aput-object v15, v1, v8

    const-string v15, "h5"

    aput-object v15, v1, v9

    const-string v15, "h6"

    aput-object v15, v1, v10

    const-string v15, "pre"

    aput-object v15, v1, v11

    const-string v11, "address"

    aput-object v11, v1, v12

    const-string v11, "li"

    aput-object v11, v1, v13

    const-string v11, "th"

    aput-object v11, v1, v14

    const-string v11, "td"

    const/16 v12, 0xd

    aput-object v11, v1, v12

    const-string v11, "script"

    aput-object v11, v1, v16

    const-string v11, "style"

    aput-object v11, v1, v17

    const-string v11, "ins"

    aput-object v11, v1, v18

    const-string v11, "del"

    aput-object v11, v1, v19

    const-string v11, "s"

    aput-object v11, v1, v20

    .line 5
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/n8;->X:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v11, "pre"

    aput-object v11, v1, v2

    const-string v11, "plaintext"

    aput-object v11, v1, v3

    const-string v11, "title"

    aput-object v11, v1, v4

    aput-object v24, v1, v5

    .line 6
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/n8;->i:[Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/String;

    const-string v10, "button"

    aput-object v10, v1, v2

    const-string v10, "fieldset"

    aput-object v10, v1, v3

    aput-object v23, v1, v4

    const-string v10, "keygen"

    aput-object v10, v1, v5

    const-string v10, "object"

    aput-object v10, v1, v6

    const-string v10, "output"

    aput-object v10, v1, v7

    const-string v10, "select"

    aput-object v10, v1, v8

    aput-object v24, v1, v9

    .line 7
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/n8;->y:[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    aput-object v23, v1, v2

    const-string v7, "keygen"

    aput-object v7, v1, v3

    const-string v7, "object"

    aput-object v7, v1, v4

    const-string v4, "select"

    aput-object v4, v1, v5

    aput-object v24, v1, v6

    .line 8
    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/n8;->A:[Ljava/lang/String;

    .line 9
    array-length v1, v0

    const/4 v4, 0x0

    :goto_3e7
    if-ge v4, v1, :cond_3f6

    aget-object v5, v0, v4

    .line 10
    new-instance v6, Lcom/github/catvod/spider/merge1/aQ/n8;

    invoke-direct {v6, v5}, Lcom/github/catvod/spider/merge1/aQ/n8;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {v6}, Lcom/github/catvod/spider/merge1/aQ/n8;->Gq(Lcom/github/catvod/spider/merge1/aQ/n8;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e7

    .line 12
    :cond_3f6
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/n8;->Ku:[Ljava/lang/String;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_3fa
    if-ge v4, v1, :cond_40d

    aget-object v5, v0, v4

    .line 13
    new-instance v6, Lcom/github/catvod/spider/merge1/aQ/n8;

    invoke-direct {v6, v5}, Lcom/github/catvod/spider/merge1/aQ/n8;-><init>(Ljava/lang/String;)V

    .line 14
    iput-boolean v2, v6, Lcom/github/catvod/spider/merge1/aQ/n8;->nN:Z

    .line 15
    iput-boolean v2, v6, Lcom/github/catvod/spider/merge1/aQ/n8;->Gq:Z

    .line 16
    invoke-static {v6}, Lcom/github/catvod/spider/merge1/aQ/n8;->Gq(Lcom/github/catvod/spider/merge1/aQ/n8;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3fa

    .line 17
    :cond_40d
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/n8;->jl:[Ljava/lang/String;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_411
    if-ge v4, v1, :cond_425

    aget-object v5, v0, v4

    .line 18
    sget-object v6, Lcom/github/catvod/spider/merge1/aQ/n8;->W:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge1/aQ/n8;

    .line 19
    invoke-static {v5}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 20
    iput-boolean v3, v5, Lcom/github/catvod/spider/merge1/aQ/n8;->o:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_411

    .line 21
    :cond_425
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/n8;->X:[Ljava/lang/String;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_429
    if-ge v4, v1, :cond_43d

    aget-object v5, v0, v4

    .line 22
    sget-object v6, Lcom/github/catvod/spider/merge1/aQ/n8;->W:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge1/aQ/n8;

    .line 23
    invoke-static {v5}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 24
    iput-boolean v2, v5, Lcom/github/catvod/spider/merge1/aQ/n8;->Gq:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_429

    .line 25
    :cond_43d
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/n8;->i:[Ljava/lang/String;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_441
    if-ge v4, v1, :cond_455

    aget-object v5, v0, v4

    .line 26
    sget-object v6, Lcom/github/catvod/spider/merge1/aQ/n8;->W:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge1/aQ/n8;

    .line 27
    invoke-static {v5}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 28
    iput-boolean v3, v5, Lcom/github/catvod/spider/merge1/aQ/n8;->T:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_441

    .line 29
    :cond_455
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/n8;->y:[Ljava/lang/String;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_459
    if-ge v4, v1, :cond_46d

    aget-object v5, v0, v4

    .line 30
    sget-object v6, Lcom/github/catvod/spider/merge1/aQ/n8;->W:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge1/aQ/n8;

    .line 31
    invoke-static {v5}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 32
    iput-boolean v3, v5, Lcom/github/catvod/spider/merge1/aQ/n8;->f:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_459

    .line 33
    :cond_46d
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/n8;->A:[Ljava/lang/String;

    array-length v1, v0

    :goto_470
    if-ge v2, v1, :cond_484

    aget-object v4, v0, v2

    .line 34
    sget-object v5, Lcom/github/catvod/spider/merge1/aQ/n8;->W:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge1/aQ/n8;

    .line 35
    invoke-static {v4}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 36
    iput-boolean v3, v4, Lcom/github/catvod/spider/merge1/aQ/n8;->mw:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_470

    :cond_484
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->nN:Z

    .line 3
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->Gq:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->o:Z

    .line 5
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->P:Z

    .line 6
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->T:Z

    .line 7
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->f:Z

    .line 8
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->mw:Z

    .line 9
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->cG:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/KC;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->O2:Ljava/lang/String;

    return-void
.end method

.method private static Gq(Lcom/github/catvod/spider/merge1/aQ/n8;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/n8;->W:Ljava/util/Map;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->cG:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static P(Ljava/lang/String;)Lcom/github/catvod/spider/merge1/aQ/n8;
    .registers 2

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/Vp;->Eg:Lcom/github/catvod/spider/merge1/aQ/Vp;

    invoke-static {p0, v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->T(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Vp;)Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object p0

    return-object p0
.end method

.method public static T(Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/Vp;)Lcom/github/catvod/spider/merge1/aQ/n8;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/QL;->cG(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/n8;->W:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge1/aQ/n8;

    if-nez v1, :cond_3d

    .line 3
    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge1/aQ/Vp;->Ku(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/QL;->y(Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/github/catvod/spider/merge1/aQ/KC;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/n8;

    if-nez v0, :cond_29

    .line 7
    new-instance v1, Lcom/github/catvod/spider/merge1/aQ/n8;

    invoke-direct {v1, p0}, Lcom/github/catvod/spider/merge1/aQ/n8;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 8
    iput-boolean p0, v1, Lcom/github/catvod/spider/merge1/aQ/n8;->nN:Z

    goto :goto_3d

    .line 9
    :cond_29
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge1/aQ/Vp;->X()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 10
    invoke-virtual {v0}, Lcom/github/catvod/spider/merge1/aQ/n8;->W()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v1

    .line 11
    iput-object p0, v1, Lcom/github/catvod/spider/merge1/aQ/n8;->cG:Ljava/lang/String;

    goto :goto_3d

    :cond_3c
    move-object v1, v0

    :cond_3d
    :goto_3d
    return-object v1
.end method


# virtual methods
.method public A()Z
    .registers 3

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/n8;->W:Ljava/util/Map;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->cG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Eg()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->Gq:Z

    return v0
.end method

.method public Ku()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->cG:Ljava/lang/String;

    return-object v0
.end method

.method public O2()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->O2:Ljava/lang/String;

    return-object v0
.end method

.method protected W()Lcom/github/catvod/spider/merge1/aQ/n8;
    .registers 3

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge1/aQ/n8;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public X()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->o:Z

    return v0
.end method

.method public cG()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->o:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->P:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/spider/merge1/aQ/n8;->W()Lcom/github/catvod/spider/merge1/aQ/n8;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/github/catvod/spider/merge1/aQ/n8;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/github/catvod/spider/merge1/aQ/n8;

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->cG:Ljava/lang/String;

    iget-object v3, p1, Lcom/github/catvod/spider/merge1/aQ/n8;->cG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 4
    :cond_17
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->o:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge1/aQ/n8;->o:Z

    if-eq v1, v3, :cond_1e

    return v2

    .line 5
    :cond_1e
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->Gq:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge1/aQ/n8;->Gq:Z

    if-eq v1, v3, :cond_25

    return v2

    .line 6
    :cond_25
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->nN:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge1/aQ/n8;->nN:Z

    if-eq v1, v3, :cond_2c

    return v2

    .line 7
    :cond_2c
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->T:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge1/aQ/n8;->T:Z

    if-eq v1, v3, :cond_33

    return v2

    .line 8
    :cond_33
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->P:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge1/aQ/n8;->P:Z

    if-eq v1, v3, :cond_3a

    return v2

    .line 9
    :cond_3a
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->f:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge1/aQ/n8;->f:Z

    if-eq v1, v3, :cond_41

    return v2

    .line 10
    :cond_41
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->mw:Z

    iget-boolean p1, p1, Lcom/github/catvod/spider/merge1/aQ/n8;->mw:Z

    if-ne v1, p1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->cG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->nN:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->Gq:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->o:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->P:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->T:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->mw:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->f:Z

    return v0
.end method

.method public jl()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->nN:Z

    return v0
.end method

.method public nN()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->T:Z

    return v0
.end method

.method o()Lcom/github/catvod/spider/merge1/aQ/n8;
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->P:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->cG:Ljava/lang/String;

    return-object v0
.end method

.method public y()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/github/catvod/spider/merge1/aQ/n8;->nN:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
