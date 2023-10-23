.class final Lcom/github/catvod/spider/merge2/xbpq/a/g;
.super Lcom/github/catvod/spider/merge2/xbpq/a/e;
.source "SourceFile"


# static fields
.field static final b:I

.field static final c:Lcom/github/catvod/spider/merge2/xbpq/a/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    sput v0, Lcom/github/catvod/spider/merge2/xbpq/a/g;->b:I

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/a/g;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/a/g;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/a/g;->c:Lcom/github/catvod/spider/merge2/xbpq/a/g;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const-string v0, "CharMatcher.whitespace()"

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/a/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(C)Z
    .registers 4

    const v0, 0x6449bf0a

    mul-int v0, v0, p1

    sget v1, Lcom/github/catvod/spider/merge2/xbpq/a/g;->b:I

    ushr-int/2addr v0, v1

    const-string v1, "\u2002　\r\u0085\u200a\u2005\u2000　\u2029\u000b　\u2008\u2003\u205f　 \t \u2006\u2001\u202f\u00a0\f\u2009　\u2004　　\u2028\n\u2007　"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method
