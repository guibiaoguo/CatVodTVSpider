.class public final Lcom/github/catvod/spider/merge2/xbpq/d/FG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/catvod/spider/merge2/xbpq/d/FG;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;

.field private static final q:[Ljava/lang/String;

.field private static final r:[Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 45

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l:Ljava/util/HashMap;

    const/16 v0, 0x40

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "html"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "head"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "body"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "frameset"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "script"

    aput-object v7, v1, v6

    const/4 v8, 0x5

    const-string v9, "noscript"

    aput-object v9, v1, v8

    const/4 v9, 0x6

    const-string v10, "style"

    aput-object v10, v1, v9

    const/4 v11, 0x7

    const-string v12, "meta"

    aput-object v12, v1, v11

    const/16 v13, 0x8

    const-string v14, "link"

    aput-object v14, v1, v13

    const/16 v15, 0x9

    const-string v16, "title"

    aput-object v16, v1, v15

    const/16 v17, 0xa

    const-string v18, "frame"

    aput-object v18, v1, v17

    const/16 v19, 0xb

    const-string v20, "noframes"

    aput-object v20, v1, v19

    const/16 v20, 0xc

    const-string v21, "section"

    aput-object v21, v1, v20

    const/16 v21, 0xd

    const-string v22, "nav"

    aput-object v22, v1, v21

    const/16 v22, 0xe

    const-string v23, "aside"

    aput-object v23, v1, v22

    const/16 v23, 0xf

    const-string v24, "hgroup"

    aput-object v24, v1, v23

    const/16 v24, 0x10

    const-string v25, "header"

    aput-object v25, v1, v24

    const/16 v25, 0x11

    const-string v26, "footer"

    aput-object v26, v1, v25

    const/16 v26, 0x12

    const-string v27, "p"

    aput-object v27, v1, v26

    const/16 v0, 0x13

    const-string v29, "h1"

    aput-object v29, v1, v0

    const-string v30, "h2"

    const/16 v31, 0x14

    aput-object v30, v1, v31

    const-string v30, "h3"

    const/16 v0, 0x15

    aput-object v30, v1, v0

    const/16 v30, 0x16

    const-string v33, "h4"

    aput-object v33, v1, v30

    const/16 v30, 0x17

    const-string v33, "h5"

    aput-object v33, v1, v30

    const/16 v30, 0x18

    const-string v33, "h6"

    aput-object v33, v1, v30

    const/16 v30, 0x19

    const-string v33, "ul"

    aput-object v33, v1, v30

    const/16 v30, 0x1a

    const-string v33, "ol"

    aput-object v33, v1, v30

    const/16 v30, 0x1b

    const-string v33, "pre"

    aput-object v33, v1, v30

    const/16 v30, 0x1c

    const-string v34, "div"

    aput-object v34, v1, v30

    const/16 v30, 0x1d

    const-string v34, "blockquote"

    aput-object v34, v1, v30

    const/16 v30, 0x1e

    const-string v34, "hr"

    aput-object v34, v1, v30

    const/16 v30, 0x1f

    const-string v34, "address"

    aput-object v34, v1, v30

    const/16 v30, 0x20

    const-string v34, "figure"

    aput-object v34, v1, v30

    const/16 v30, 0x21

    const-string v34, "figcaption"

    aput-object v34, v1, v30

    const/16 v30, 0x22

    const-string v34, "form"

    aput-object v34, v1, v30

    const/16 v30, 0x23

    const-string v34, "fieldset"

    aput-object v34, v1, v30

    const/16 v30, 0x24

    const-string v34, "ins"

    aput-object v34, v1, v30

    const/16 v30, 0x25

    const-string v34, "del"

    aput-object v34, v1, v30

    const/16 v30, 0x26

    const-string v34, "dl"

    aput-object v34, v1, v30

    const/16 v30, 0x27

    const-string v34, "dt"

    aput-object v34, v1, v30

    const/16 v30, 0x28

    const-string v34, "dd"

    aput-object v34, v1, v30

    const/16 v30, 0x29

    const-string v34, "li"

    aput-object v34, v1, v30

    const/16 v30, 0x2a

    const-string v34, "table"

    aput-object v34, v1, v30

    const/16 v30, 0x2b

    const-string v34, "caption"

    aput-object v34, v1, v30

    const/16 v30, 0x2c

    const-string v34, "thead"

    aput-object v34, v1, v30

    const/16 v30, 0x2d

    const-string v34, "tfoot"

    aput-object v34, v1, v30

    const/16 v30, 0x2e

    const-string v34, "tbody"

    aput-object v34, v1, v30

    const/16 v30, 0x2f

    const-string v34, "colgroup"

    aput-object v34, v1, v30

    const/16 v30, 0x30

    const-string v34, "col"

    aput-object v34, v1, v30

    const/16 v30, 0x31

    const-string v34, "tr"

    aput-object v34, v1, v30

    const/16 v30, 0x32

    const-string v34, "th"

    aput-object v34, v1, v30

    const/16 v30, 0x33

    const-string v34, "td"

    aput-object v34, v1, v30

    const/16 v30, 0x34

    const-string v34, "video"

    aput-object v34, v1, v30

    const/16 v30, 0x35

    const-string v34, "audio"

    aput-object v34, v1, v30

    const/16 v30, 0x36

    const-string v34, "canvas"

    aput-object v34, v1, v30

    const/16 v30, 0x37

    const-string v34, "details"

    aput-object v34, v1, v30

    const/16 v30, 0x38

    const-string v34, "menu"

    aput-object v34, v1, v30

    const/16 v30, 0x39

    const-string v34, "plaintext"

    aput-object v34, v1, v30

    const/16 v30, 0x3a

    const-string v34, "template"

    aput-object v34, v1, v30

    const/16 v30, 0x3b

    const-string v34, "article"

    aput-object v34, v1, v30

    const/16 v30, 0x3c

    const-string v34, "main"

    aput-object v34, v1, v30

    const/16 v30, 0x3d

    const-string v34, "svg"

    aput-object v34, v1, v30

    const/16 v30, 0x3e

    const-string v34, "math"

    aput-object v34, v1, v30

    const/16 v30, 0x3f

    const-string v34, "center"

    aput-object v34, v1, v30

    const/16 v0, 0x42

    new-array v0, v0, [Ljava/lang/String;

    const-string v34, "object"

    aput-object v34, v0, v2

    const-string v35, "base"

    aput-object v35, v0, v3

    const-string v35, "font"

    aput-object v35, v0, v4

    const-string v35, "tt"

    aput-object v35, v0, v5

    const-string v35, "i"

    aput-object v35, v0, v6

    const-string v35, "b"

    aput-object v35, v0, v8

    const-string v35, "u"

    aput-object v35, v0, v9

    const-string v35, "big"

    aput-object v35, v0, v11

    const-string v35, "small"

    aput-object v35, v0, v13

    const-string v35, "em"

    aput-object v35, v0, v15

    const-string v35, "strong"

    aput-object v35, v0, v17

    const-string v35, "dfn"

    aput-object v35, v0, v19

    const-string v35, "code"

    aput-object v35, v0, v20

    const-string v35, "samp"

    aput-object v35, v0, v21

    const-string v35, "kbd"

    aput-object v35, v0, v22

    const-string v35, "var"

    aput-object v35, v0, v23

    const-string v35, "cite"

    aput-object v35, v0, v24

    const-string v35, "abbr"

    aput-object v35, v0, v25

    const-string v35, "time"

    aput-object v35, v0, v26

    const-string v35, "acronym"

    const/16 v32, 0x13

    aput-object v35, v0, v32

    const-string v35, "mark"

    aput-object v35, v0, v31

    const-string v35, "ruby"

    const/16 v30, 0x15

    aput-object v35, v0, v30

    const/16 v35, 0x16

    const-string v36, "rt"

    aput-object v36, v0, v35

    const/16 v35, 0x17

    const-string v36, "rp"

    aput-object v36, v0, v35

    const/16 v35, 0x18

    const-string v36, "a"

    aput-object v36, v0, v35

    const/16 v35, 0x19

    const-string v36, "img"

    aput-object v36, v0, v35

    const/16 v35, 0x1a

    const-string v36, "br"

    aput-object v36, v0, v35

    const/16 v35, 0x1b

    const-string v36, "wbr"

    aput-object v36, v0, v35

    const/16 v35, 0x1c

    const-string v36, "map"

    aput-object v36, v0, v35

    const/16 v35, 0x1d

    const-string v36, "q"

    aput-object v36, v0, v35

    const/16 v35, 0x1e

    const-string v36, "sub"

    aput-object v36, v0, v35

    const/16 v35, 0x1f

    const-string v36, "sup"

    aput-object v36, v0, v35

    const/16 v35, 0x20

    const-string v36, "bdo"

    aput-object v36, v0, v35

    const/16 v35, 0x21

    const-string v36, "iframe"

    aput-object v36, v0, v35

    const/16 v35, 0x22

    const-string v36, "embed"

    aput-object v36, v0, v35

    const/16 v35, 0x23

    const-string v36, "span"

    aput-object v36, v0, v35

    const/16 v35, 0x24

    const-string v36, "input"

    aput-object v36, v0, v35

    const/16 v35, 0x25

    const-string v37, "select"

    aput-object v37, v0, v35

    const/16 v35, 0x26

    const-string v38, "textarea"

    aput-object v38, v0, v35

    const/16 v35, 0x27

    const-string v39, "label"

    aput-object v39, v0, v35

    const/16 v35, 0x28

    const-string v39, "button"

    aput-object v39, v0, v35

    const/16 v35, 0x29

    const-string v39, "optgroup"

    aput-object v39, v0, v35

    const/16 v35, 0x2a

    const-string v39, "option"

    aput-object v39, v0, v35

    const/16 v35, 0x2b

    const-string v39, "legend"

    aput-object v39, v0, v35

    const/16 v35, 0x2c

    const-string v39, "datalist"

    aput-object v39, v0, v35

    const/16 v35, 0x2d

    const-string v39, "keygen"

    aput-object v39, v0, v35

    const/16 v35, 0x2e

    const-string v40, "output"

    aput-object v40, v0, v35

    const/16 v35, 0x2f

    const-string v40, "progress"

    aput-object v40, v0, v35

    const/16 v35, 0x30

    const-string v40, "meter"

    aput-object v40, v0, v35

    const/16 v35, 0x31

    const-string v40, "area"

    aput-object v40, v0, v35

    const/16 v35, 0x32

    const-string v41, "param"

    aput-object v41, v0, v35

    const/16 v35, 0x33

    const-string v42, "source"

    aput-object v42, v0, v35

    const/16 v35, 0x34

    const-string v43, "track"

    aput-object v43, v0, v35

    const/16 v35, 0x35

    const-string v44, "summary"

    aput-object v44, v0, v35

    const/16 v35, 0x36

    const-string v44, "command"

    aput-object v44, v0, v35

    const/16 v35, 0x37

    const-string v44, "device"

    aput-object v44, v0, v35

    const/16 v35, 0x38

    aput-object v40, v0, v35

    const/16 v35, 0x39

    const-string v44, "basefont"

    aput-object v44, v0, v35

    const/16 v35, 0x3a

    const-string v44, "bgsound"

    aput-object v44, v0, v35

    const/16 v35, 0x3b

    const-string v44, "menuitem"

    aput-object v44, v0, v35

    const/16 v35, 0x3c

    aput-object v41, v0, v35

    const/16 v35, 0x3d

    aput-object v42, v0, v35

    const/16 v35, 0x3e

    aput-object v43, v0, v35

    const/16 v35, 0x3f

    const-string v44, "data"

    aput-object v44, v0, v35

    const-string v35, "bdi"

    const/16 v28, 0x40

    aput-object v35, v0, v28

    const/16 v35, 0x41

    const-string v44, "s"

    aput-object v44, v0, v35

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->m:[Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    aput-object v12, v0, v2

    aput-object v14, v0, v3

    const-string v12, "base"

    aput-object v12, v0, v4

    aput-object v18, v0, v5

    const-string v12, "img"

    aput-object v12, v0, v6

    const-string v12, "br"

    aput-object v12, v0, v8

    const-string v12, "wbr"

    aput-object v12, v0, v9

    const-string v12, "embed"

    aput-object v12, v0, v11

    const-string v12, "hr"

    aput-object v12, v0, v13

    aput-object v36, v0, v15

    aput-object v39, v0, v17

    const-string v12, "col"

    aput-object v12, v0, v19

    const-string v12, "command"

    aput-object v12, v0, v20

    const-string v12, "device"

    aput-object v12, v0, v21

    aput-object v40, v0, v22

    const-string v12, "basefont"

    aput-object v12, v0, v23

    const-string v12, "bgsound"

    aput-object v12, v0, v24

    const-string v12, "menuitem"

    aput-object v12, v0, v25

    aput-object v41, v0, v26

    const/16 v12, 0x13

    aput-object v42, v0, v12

    aput-object v43, v0, v31

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->n:[Ljava/lang/String;

    new-array v0, v12, [Ljava/lang/String;

    aput-object v16, v0, v2

    const-string v12, "a"

    aput-object v12, v0, v3

    aput-object v27, v0, v4

    aput-object v29, v0, v5

    const-string v12, "h2"

    aput-object v12, v0, v6

    const-string v12, "h3"

    aput-object v12, v0, v8

    const-string v12, "h4"

    aput-object v12, v0, v9

    const-string v12, "h5"

    aput-object v12, v0, v11

    const-string v12, "h6"

    aput-object v12, v0, v13

    aput-object v33, v0, v15

    const-string v12, "address"

    aput-object v12, v0, v17

    const-string v12, "li"

    aput-object v12, v0, v19

    const-string v12, "th"

    aput-object v12, v0, v20

    const-string v12, "td"

    aput-object v12, v0, v21

    aput-object v7, v0, v22

    aput-object v10, v0, v23

    const-string v7, "ins"

    aput-object v7, v0, v24

    const-string v7, "del"

    aput-object v7, v0, v25

    const-string v7, "s"

    aput-object v7, v0, v26

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->o:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    aput-object v33, v0, v2

    const-string v7, "plaintext"

    aput-object v7, v0, v3

    aput-object v16, v0, v4

    aput-object v38, v0, v5

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->p:[Ljava/lang/String;

    new-array v0, v13, [Ljava/lang/String;

    const-string v7, "button"

    aput-object v7, v0, v2

    const-string v7, "fieldset"

    aput-object v7, v0, v3

    aput-object v36, v0, v4

    aput-object v39, v0, v5

    aput-object v34, v0, v6

    const-string v7, "output"

    aput-object v7, v0, v8

    aput-object v37, v0, v9

    aput-object v38, v0, v11

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->q:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    aput-object v36, v0, v2

    aput-object v39, v0, v3

    aput-object v34, v0, v4

    aput-object v37, v0, v5

    aput-object v38, v0, v6

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->r:[Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v4, 0x40

    :goto_3ac
    if-ge v0, v4, :cond_3bf

    aget-object v5, v1, v0

    new-instance v6, Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-direct {v6, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;-><init>(Ljava/lang/String;)V

    .line 1
    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l:Ljava/util/HashMap;

    iget-object v7, v6, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->c:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3ac

    .line 2
    :cond_3bf
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->m:[Ljava/lang/String;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_3c3
    if-ge v4, v1, :cond_3da

    aget-object v5, v0, v4

    new-instance v6, Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-direct {v6, v5}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;-><init>(Ljava/lang/String;)V

    iput-boolean v2, v6, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->e:Z

    iput-boolean v2, v6, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->f:Z

    .line 3
    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l:Ljava/util/HashMap;

    iget-object v7, v6, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->c:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c3

    .line 4
    :cond_3da
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->n:[Ljava/lang/String;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_3de
    if-ge v4, v1, :cond_3f2

    aget-object v5, v0, v4

    sget-object v6, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-static {v5}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    iput-boolean v3, v5, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->g:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3de

    :cond_3f2
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->o:[Ljava/lang/String;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_3f6
    if-ge v4, v1, :cond_40a

    aget-object v5, v0, v4

    sget-object v6, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-static {v5}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    iput-boolean v2, v5, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->f:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f6

    :cond_40a
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->p:[Ljava/lang/String;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_40e
    if-ge v4, v1, :cond_422

    aget-object v5, v0, v4

    sget-object v6, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-static {v5}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    iput-boolean v3, v5, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->i:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_40e

    :cond_422
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->q:[Ljava/lang/String;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_426
    if-ge v4, v1, :cond_43a

    aget-object v5, v0, v4

    sget-object v6, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-static {v5}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    iput-boolean v3, v5, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->j:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_426

    :cond_43a
    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->r:[Ljava/lang/String;

    array-length v1, v0

    :goto_43d
    if-ge v2, v1, :cond_451

    aget-object v4, v0, v2

    sget-object v5, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-static {v4}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    iput-boolean v3, v4, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->k:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_43d

    :cond_451
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->e:Z

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->g:Z

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->h:Z

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->i:Z

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->j:Z

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->k:Z

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->d:Ljava/lang/String;

    return-void
.end method

.method public static l(Ljava/lang/String;Lcom/github/catvod/spider/merge2/xbpq/d/DE;)Lcom/github/catvod/spider/merge2/xbpq/d/FG;
    .registers 4

    invoke-static {p0}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->l(Ljava/lang/Object;)V

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    if-nez v1, :cond_47

    invoke-virtual {p1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->j(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    if-nez v0, :cond_29

    new-instance v1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    invoke-direct {v1, p0}, Lcom/github/catvod/spider/merge2/xbpq/d/FG;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->e:Z

    goto :goto_47

    :cond_29
    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->e()Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    .line 1
    :try_start_35
    invoke-super {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;
    :try_end_3c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_35 .. :try_end_3c} :catch_3f

    .line 2
    iput-object p0, v1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->c:Ljava/lang/String;

    goto :goto_47

    :catch_3f
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_46
    move-object v1, v0

    :cond_47
    :goto_47
    return-object v1
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->f:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->e:Z

    return v0
.end method

.method protected final clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->g:Z

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->j:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->g:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->g:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->f:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->f:Z

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->e:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->e:Z

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->i:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->i:Z

    if-eq v1, v3, :cond_33

    return v2

    :cond_33
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->h:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->h:Z

    if-eq v1, v3, :cond_3a

    return v2

    :cond_3a
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->j:Z

    iget-boolean v3, p1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->j:Z

    if-eq v1, v3, :cond_41

    return v2

    :cond_41
    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->k:Z

    iget-boolean p1, p1, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->k:Z

    if-ne v1, p1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    return v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->e:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final g()Z
    .registers 3

    sget-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->g:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->h:Z

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

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->h:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->k:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->i:Z

    return v0
.end method

.method final k()Lcom/github/catvod/spider/merge2/xbpq/d/FG;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->h:Z

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/FG;->c:Ljava/lang/String;

    return-object v0
.end method
