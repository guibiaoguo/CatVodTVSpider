.class public Lcom/github/catvod/spider/merge1/aQ/l;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# static fields
.field static Eg:[Ljava/lang/String;

.field public static final Ku:Ljavax/net/ssl/X509TrustManager;

.field static W:[Ljava/lang/String;


# instance fields
.field private final jl:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_c3

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v3, :cond_2e

    aget-object v6, v2, v5

    .line 4
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SSL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 5
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 6
    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/github/catvod/spider/merge1/aQ/l;->W:[Ljava/lang/String;

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_c3

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v2, v1, v4

    const-string v2, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "TLS_ECHDE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "TLS_RSA_WITH_AES_256_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v3, v1, v2

    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 12
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/l;->Eg:[Ljava/lang/String;
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c3} :catch_cb

    .line 14
    :cond_c3
    new-instance v0, Lcom/github/catvod/spider/merge1/aQ/l$DK;

    invoke-direct {v0}, Lcom/github/catvod/spider/merge1/aQ/l$DK;-><init>()V

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/l;->Ku:Ljavax/net/ssl/X509TrustManager;

    return-void

    :catch_cb
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_d3

    :goto_d2
    throw v1

    :goto_d3
    goto :goto_d2
.end method

.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    :try_start_3
    const-string v0, "TLS"

    .line 2
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    goto :goto_14

    :cond_13
    move-object v2, v1

    .line 3
    :goto_14
    invoke-virtual {v0, v1, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 4
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/l;->jl:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1d
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_1d} :catch_1e

    return-void

    .line 5
    :catch_1e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private W(Ljavax/net/ssl/SSLSocket;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/l;->W:[Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 3
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_14

    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/l;->Eg:[Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 4
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/l;->jl:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    .line 5
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_10

    .line 6
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge1/aQ/l;->W(Ljavax/net/ssl/SSLSocket;)V

    :cond_10
    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    .line 7
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/l;->jl:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 8
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_10

    .line 9
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge1/aQ/l;->W(Ljavax/net/ssl/SSLSocket;)V

    :cond_10
    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4

    .line 10
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/l;->jl:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 11
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_10

    .line 12
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge1/aQ/l;->W(Ljavax/net/ssl/SSLSocket;)V

    :cond_10
    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    .line 13
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/l;->jl:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 14
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_10

    .line 15
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge1/aQ/l;->W(Ljavax/net/ssl/SSLSocket;)V

    :cond_10
    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/l;->jl:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 2
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_10

    .line 3
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, p2}, Lcom/github/catvod/spider/merge1/aQ/l;->W(Ljavax/net/ssl/SSLSocket;)V

    :cond_10
    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/l;->Eg:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/l;->Eg:[Ljava/lang/String;

    return-object v0
.end method
