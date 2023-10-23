.class Lcom/github/catvod/spider/merge1/aQ/MB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Lokhttp3/Request;

.field private Eg:Ljava/lang/String;

.field private Ku:Ljava/lang/Object;

.field private final W:Ljava/lang/String;

.field private final X:Ljava/lang/String;

.field private cG:Lokhttp3/Request$Builder;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final jl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lcom/github/catvod/spider/merge1/aQ/tb;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/github/catvod/spider/merge1/aQ/MB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
            "Lcom/github/catvod/spider/merge1/aQ/tb;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->Ku:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->W:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->Eg:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->X:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->jl:Ljava/util/Map;

    .line 9
    iput-object p5, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->i:Ljava/util/Map;

    .line 10
    iput-object p6, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->y:Lcom/github/catvod/spider/merge1/aQ/tb;

    .line 11
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/MB;->Eg()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/github/catvod/spider/merge1/aQ/tb;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/github/catvod/spider/merge1/aQ/MB;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    return-void
.end method

.method private Eg()V
    .registers 3

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->cG:Lokhttp3/Request$Builder;

    .line 2
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->W:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_2a

    .line 3
    :cond_1d
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->cG:Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/MB;->Ku()Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_2a

    .line 4
    :cond_27
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/MB;->jl()V

    .line 5
    :goto_2a
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->cG:Lokhttp3/Request$Builder;

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->Eg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 6
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->Ku:Ljava/lang/Object;

    if-eqz v0, :cond_3a

    .line 7
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->cG:Lokhttp3/Request$Builder;

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 8
    :cond_3a
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->i:Ljava/util/Map;

    if-eqz v0, :cond_41

    .line 9
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/MB;->X()V

    .line 10
    :cond_41
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->cG:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->A:Lokhttp3/Request;

    return-void
.end method

.method private Ku()Lokhttp3/RequestBody;
    .registers 8

    const-string v0, "charset="

    .line 1
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->X:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Content-Type"

    if-nez v1, :cond_54

    const-string v0, "application/json; charset=utf-8"

    .line 2
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 3
    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->i:Ljava/util/Map;

    if-eqz v3, :cond_4d

    .line 4
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 6
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->i:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    move-object v1, v0

    goto :goto_48

    :cond_40
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->i:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    :goto_48
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    goto :goto_1e

    .line 8
    :cond_4d
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->X:Ljava/lang/String;

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0

    .line 9
    :cond_54
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 10
    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->i:Ljava/util/Map;

    if-eqz v3, :cond_c9

    .line 11
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    iget-object v5, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->jl:Ljava/util/Map;

    if-eqz v5, :cond_65

    .line 13
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_83
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 14
    :try_start_8f
    iget-object v5, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->i:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ad

    iget-object v5, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->i:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    goto :goto_af

    :cond_ad
    const-string v5, "utf-8"

    .line 15
    :goto_af
    iget-object v6, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->jl:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lokhttp3/FormBody$Builder;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_be} :catch_bf

    goto :goto_83

    :catch_bf
    move-exception v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_83

    .line 17
    :cond_c4
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    return-object v0

    .line 18
    :cond_c9
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->jl:Ljava/util/Map;

    if-eqz v0, :cond_ed

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ed

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 20
    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->jl:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_d5

    .line 21
    :cond_ed
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    return-object v0
.end method

.method private X()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->i:Ljava/util/Map;

    if-eqz v0, :cond_26

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->cG:Lokhttp3/Request$Builder;

    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->i:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_c

    :cond_26
    return-void
.end method

.method private jl()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->jl:Ljava/util/Map;

    if-eqz v0, :cond_67

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->Eg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->Eg:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->jl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->Eg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->jl:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->Eg:Ljava/lang/String;

    goto :goto_23

    .line 5
    :cond_58
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->Eg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->Eg:Ljava/lang/String;

    :cond_67
    return-void
.end method


# virtual methods
.method W(Lokhttp3/OkHttpClient;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->A:Lokhttp3/Request;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 2
    :try_start_6
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->y:Lcom/github/catvod/spider/merge1/aQ/tb;

    if-eqz v1, :cond_1a

    .line 4
    invoke-virtual {v1, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/tb;->W(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->y:Lcom/github/catvod/spider/merge1/aQ/tb;

    if-eqz v1, :cond_1a

    .line 6
    invoke-virtual {v1, p1, v0}, Lcom/github/catvod/spider/merge1/aQ/tb;->onError(Lokhttp3/Call;Ljava/lang/Exception;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/merge1/aQ/MB;->Ku:Ljava/lang/Object;

    return-void
.end method
