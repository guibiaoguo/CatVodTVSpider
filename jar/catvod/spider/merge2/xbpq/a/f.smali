.class final Lcom/github/catvod/spider/merge2/xbpq/a/f;
.super Lcom/github/catvod/spider/merge2/xbpq/a/e;
.source "SourceFile"


# static fields
.field static final b:Lcom/github/catvod/spider/merge2/xbpq/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/a/f;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge2/xbpq/a/f;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/a/f;->b:Lcom/github/catvod/spider/merge2/xbpq/a/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lcom/github/catvod/spider/merge2/xbpq/a/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .registers 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2, p1}, Lcom/github/catvod/spider/merge2/xbpq/a/n;->d(II)I

    const/4 p1, -0x1

    return p1
.end method

.method public final b(C)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
