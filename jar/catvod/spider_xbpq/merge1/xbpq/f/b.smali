.class public final Lcom/github/catvod/spider/merge1/xbpq/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_9
    const-class v2, Lcom/github/catvod/crawler/Spider;

    const-string v3, "safeDns"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Dns;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_1d

    goto :goto_1f

    :catch_1d
    sget-object v2, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    .line 3
    :goto_1f
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v2, Lcom/github/catvod/spider/merge1/xbpq/f/f;->b:Ljavax/net/ssl/X509TrustManager;

    sget-object v2, Lcom/github/catvod/spider/merge1/xbpq/f/d;->a:Lcom/github/catvod/spider/merge1/xbpq/f/d;

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v2, Lcom/github/catvod/spider/merge1/xbpq/f/f;

    invoke-direct {v2}, Lcom/github/catvod/spider/merge1/xbpq/f/f;-><init>()V

    sget-object v3, Lcom/github/catvod/spider/merge1/xbpq/f/f;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v2, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/xbpq/f/b;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 12
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
    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/f/a;->a:Lcom/github/catvod/spider/merge1/xbpq/f/b;

    .line 2
    iget-object v0, v0, Lcom/github/catvod/spider/merge1/xbpq/f/b;->a:Lokhttp3/OkHttpClient;

    .line 3
    new-instance v7, Lcom/github/catvod/spider/merge1/xbpq/f/c;

    const-string v2, "POST"

    move-object v1, v7

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/github/catvod/spider/merge1/xbpq/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge1/xbpq/f/c;->b()Lcom/github/catvod/spider/merge1/xbpq/f/c;

    invoke-virtual {v7, v0}, Lcom/github/catvod/spider/merge1/xbpq/f/c;->a(Lokhttp3/OkHttpClient;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
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

    new-instance v0, Lcom/github/catvod/spider/merge1/xbpq/f/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/catvod/spider/merge1/xbpq/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1
    sget-object p0, Lcom/github/catvod/spider/merge1/xbpq/f/a;->a:Lcom/github/catvod/spider/merge1/xbpq/f/b;

    .line 2
    iget-object p0, p0, Lcom/github/catvod/spider/merge1/xbpq/f/b;->a:Lokhttp3/OkHttpClient;

    .line 3
    invoke-virtual {v0, p0}, Lcom/github/catvod/spider/merge1/xbpq/f/c;->a(Lokhttp3/OkHttpClient;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
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

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/github/catvod/spider/merge1/xbpq/f/b;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .registers 11
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
    sget-object v0, Lcom/github/catvod/spider/merge1/xbpq/f/a;->a:Lcom/github/catvod/spider/merge1/xbpq/f/b;

    .line 2
    iget-object v0, v0, Lcom/github/catvod/spider/merge1/xbpq/f/b;->a:Lokhttp3/OkHttpClient;

    .line 3
    new-instance v7, Lcom/github/catvod/spider/merge1/xbpq/f/c;

    const-string v2, "GET"

    const/4 v4, 0x0

    move-object v1, v7

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/github/catvod/spider/merge1/xbpq/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v7}, Lcom/github/catvod/spider/merge1/xbpq/f/c;->b()Lcom/github/catvod/spider/merge1/xbpq/f/c;

    invoke-virtual {v7, v0}, Lcom/github/catvod/spider/merge1/xbpq/f/c;->a(Lokhttp3/OkHttpClient;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
