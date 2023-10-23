.class public final Lcom/github/catvod/spider/merge2/xbpq/d/DE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

.field public static final d:Lcom/github/catvod/spider/merge2/xbpq/d/DE;


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/DE;-><init>(ZZ)V

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->c:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    new-instance v0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/github/catvod/spider/merge2/xbpq/d/DE;-><init>(ZZ)V

    sput-object v0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->d:Lcom/github/catvod/spider/merge2/xbpq/d/DE;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->a:Z

    iput-boolean p2, p0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->b:Z

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method final b(Lcom/github/catvod/spider/merge2/xbpq/c/c;)Lcom/github/catvod/spider/merge2/xbpq/c/c;
    .registers 3

    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->b:Z

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/github/catvod/spider/merge2/xbpq/c/c;->r()V

    :cond_9
    return-object p1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->a:Z

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/github/catvod/spider/merge2/xbpq/h/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->b:Z

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/catvod/spider/merge2/xbpq/d/DE;->a:Z

    return v0
.end method
