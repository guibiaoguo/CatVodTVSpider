.class public Lcom/github/catvod/spider/merge1/aQ/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Eg:Lokhttp3/OkHttpClient;

.field public static Ku:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final W:Ljava/lang/Object;

.field private static jl:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/G;->W:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/G;->Ku:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/G;->jl:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static A(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Lcom/github/catvod/spider/merge1/aQ/tb;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, p3}, Lcom/github/catvod/spider/merge1/aQ/G;->cG(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    return-void
.end method

.method public static Eg(Lokhttp3/OkHttpClient;Ljava/lang/Object;)V
    .registers 5

    if-eqz p0, :cond_59

    if-nez p1, :cond_5

    goto :goto_59

    .line 1
    :cond_5
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 2
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_11

    .line 4
    :cond_2f
    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3b
    :goto_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 5
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 6
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_3b

    :cond_59
    :goto_59
    return-void
.end method

.method public static Gq(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/G;->Ku()Lokhttp3/OkHttpClient;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/github/catvod/spider/merge1/aQ/G;->o(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Ku()Lokhttp3/OkHttpClient;
    .registers 5

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/G;->W:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/G;->Eg:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_3b

    .line 3
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v2, Lcom/github/catvod/spider/merge1/aQ/G$DK;

    invoke-direct {v2}, Lcom/github/catvod/spider/merge1/aQ/G$DK;-><init>()V

    .line 4
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    .line 5
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/github/catvod/spider/merge1/aQ/l;

    sget-object v3, Lcom/github/catvod/spider/merge1/aQ/l;->Ku:Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v2, v3}, Lcom/github/catvod/spider/merge1/aQ/l;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    .line 9
    invoke-virtual {v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/G;->Eg:Lokhttp3/OkHttpClient;

    .line 11
    :cond_3b
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/G;->Eg:Lokhttp3/OkHttpClient;

    monitor-exit v0

    return-object v1

    :catchall_3f
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public static O2(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/G;->Ku()Lokhttp3/OkHttpClient;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/github/catvod/spider/merge1/aQ/G;->o(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static P(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/G;->i()Lokhttp3/OkHttpClient;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/github/catvod/spider/merge1/aQ/G;->o(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static W(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/G;->Ku()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/github/catvod/spider/merge1/aQ/G;->Eg(Lokhttp3/OkHttpClient;Ljava/lang/Object;)V

    return-void
.end method

.method public static X(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "location"

    .line 1
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1a
    const-string v1, "Location"

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_2f
    return-object v0
.end method

.method public static cG(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/github/catvod/spider/merge1/aQ/tb;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/github/catvod/spider/merge1/aQ/MB;

    const-string v1, "POST"

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/github/catvod/spider/merge1/aQ/MB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    invoke-virtual {v6, p0}, Lcom/github/catvod/spider/merge1/aQ/MB;->W(Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public static i()Lokhttp3/OkHttpClient;
    .registers 5

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/G;->W:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/G;->jl:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_3b

    .line 3
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    .line 4
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/github/catvod/spider/merge1/aQ/l;

    sget-object v3, Lcom/github/catvod/spider/merge1/aQ/l;->Ku:Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v2, v3}, Lcom/github/catvod/spider/merge1/aQ/l;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    .line 10
    invoke-virtual {v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/G;->jl:Lokhttp3/OkHttpClient;

    .line 12
    :cond_3b
    sget-object v1, Lcom/github/catvod/spider/merge1/aQ/G;->jl:Lokhttp3/OkHttpClient;

    monitor-exit v0

    return-object v1

    :catchall_3f
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public static jl(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/github/catvod/spider/merge1/aQ/tb;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/github/catvod/spider/merge1/aQ/MB;

    const-string v1, "GET"

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/github/catvod/spider/merge1/aQ/MB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    invoke-virtual {v6, p0}, Lcom/github/catvod/spider/merge1/aQ/MB;->W(Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public static nN(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/G;->Ku()Lokhttp3/OkHttpClient;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/github/catvod/spider/merge1/aQ/G;->o(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/github/catvod/spider/merge1/aQ/G$K;

    invoke-direct {v6, p5}, Lcom/github/catvod/spider/merge1/aQ/G$K;-><init>(Ljava/util/Map;)V

    .line 2
    new-instance p5, Lcom/github/catvod/spider/merge1/aQ/MB;

    const-string v1, "GET"

    move-object v0, p5

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/github/catvod/spider/merge1/aQ/MB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    .line 3
    invoke-virtual {p5, p2}, Lcom/github/catvod/spider/merge1/aQ/MB;->i(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p5, p0}, Lcom/github/catvod/spider/merge1/aQ/MB;->W(Lokhttp3/OkHttpClient;)V

    .line 5
    invoke-virtual {v6}, Lcom/github/catvod/spider/merge1/aQ/tb;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static y(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/github/catvod/spider/merge1/aQ/tb;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/github/catvod/spider/merge1/aQ/MB;

    const-string v1, "POST"

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/github/catvod/spider/merge1/aQ/MB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    invoke-virtual {v6, p0}, Lcom/github/catvod/spider/merge1/aQ/MB;->W(Lokhttp3/OkHttpClient;)V

    return-void
.end method
