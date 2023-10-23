.class public Lcom/github/catvod/spider/merge1/aQ/AA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Eg:[Ljava/lang/String;

.field public static Ku:Ljava/nio/charset/Charset;

.field private static final W:[Ljava/lang/String;

.field public static jl:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".m3u8"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ".mp4"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, ".flv"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, ".avi"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v6, ".mkv"

    aput-object v6, v0, v1

    const/4 v1, 0x5

    const-string v6, ".rm"

    aput-object v6, v0, v1

    const/4 v1, 0x6

    const-string v6, ".wmv"

    aput-object v6, v0, v1

    const/4 v1, 0x7

    const-string v6, ".mpg"

    aput-object v6, v0, v1

    const/16 v1, 0x8

    const-string v6, "video/tos"

    aput-object v6, v0, v1

    const/16 v1, 0x9

    const-string v6, ".mp3"

    aput-object v6, v0, v1

    const/16 v1, 0xa

    const-string v6, ".m4a"

    aput-object v6, v0, v1

    .line 1
    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/AA;->W:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "=http"

    aput-object v1, v0, v2

    const-string v1, ".html"

    aput-object v1, v0, v3

    const-string v1, "?http"

    aput-object v1, v0, v4

    .line 2
    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/AA;->Eg:[Ljava/lang/String;

    const-string v0, "UTF-8"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/AA;->Ku:Ljava/nio/charset/Charset;

    const-string v0, "iso-8859-1"

    .line 4
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/AA;->jl:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static A(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "url"

    if-eqz v1, :cond_18

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    .line 4
    :cond_18
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1c
    const-string v1, "//"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_35
    const-string v1, "http"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3f

    return-object v3

    .line 8
    :cond_3f
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 9
    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/AA;->y(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    invoke-static {p1}, Lcom/github/catvod/spider/merge1/aQ/AA;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_52

    :cond_51
    return-object v3

    .line 10
    :cond_52
    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge1/aQ/AA;->X(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    return-object v3

    .line 11
    :cond_59
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "user-agent"

    const-string v4, ""

    .line 12
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, " "

    if-lez v5, :cond_86

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "User-Agent"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_86
    const-string v3, "referer"

    .line 15
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_aa

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Referer"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_aa
    invoke-static {v1, p0, p1}, Lcom/github/catvod/spider/merge1/aQ/AA;->Ku(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "header"

    .line 20
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static Eg(Ljava/lang/String;)Z
    .registers 10

    const-string v0, "com/s/"

    const/4 v1, 0x1

    .line 1
    :try_start_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "User-Agent"

    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36"

    .line 2
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Referer"

    const-string v4, "https://www.aliyundrive.com/"

    .line 3
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v3, Lcom/github/catvod/spider/merge1/aQ/AA$DK;

    invoke-direct {v3}, Lcom/github/catvod/spider/merge1/aQ/AA$DK;-><init>()V

    const-string v4, "https://api.aliyundrive.com/adrive/v3/share_link/get_share_by_anonymous"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "share_id"

    .line 7
    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_62

    .line 9
    invoke-static {}, Lcom/github/catvod/spider/merge1/aQ/G;->Ku()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v0, v2, v3}, Lcom/github/catvod/spider/merge1/aQ/G;->cG(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/github/catvod/spider/merge1/aQ/tb;)V

    .line 10
    invoke-virtual {v3}, Lcom/github/catvod/spider/merge1/aQ/tb;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "share_link is"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    const-string v0, "share_link cannot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5f} :catch_62

    if-eqz p0, :cond_62

    :cond_61
    return v7

    :catch_62
    :cond_62
    return v1
.end method

.method public static Ku(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    if-nez p0, :cond_7

    .line 1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    const-string v0, "www.mgtv.com"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, " Mozilla/5.0"

    const-string v2, " "

    const-string v3, "User-Agent"

    const-string v4, "Referer"

    if-eqz v0, :cond_1e

    .line 3
    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3f

    :cond_1e
    const-string v0, "titan.mgtv"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 6
    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3f

    :cond_2d
    const-string p2, "bilibili"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3f

    const-string p1, " https://www.bilibili.com/"

    .line 9
    invoke-virtual {p0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, " Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36"

    .line 10
    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3f
    :goto_3f
    return-object p0
.end method

.method public static W(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_15
    array-length v2, p0

    if-ge v1, v2, :cond_30

    .line 5
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2a

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    :cond_2a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 10
    :cond_30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_38} :catch_39

    return-object p0

    :catch_39
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static X(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    const-string p0, "973973.xyz"

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, ".fit:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static i(Ljava/lang/String;)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "=http"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "from=https://banyung.pw"

    const-string v2, "m3u8.pw/Cache"

    const/4 v3, 0x0

    if-nez v0, :cond_19

    const-string v0, ".html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_19
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_5f

    .line 3
    :cond_26
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/AA;->W:[Ljava/lang/String;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v4, :cond_5f

    aget-object v6, v0, v5

    .line 4
    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 5
    sget-object v0, Lcom/github/catvod/spider/merge1/aQ/AA;->Eg:[Ljava/lang/String;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_38
    if-ge v5, v4, :cond_5a

    aget-object v6, v0, v5

    .line 6
    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_56

    const-string v6, "getm3u8?url=http"

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_57

    :cond_56
    return v3

    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_5a
    const/4 p0, 0x1

    return p0

    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_5f
    :goto_5f
    return v3
.end method

.method public static jl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "mac://"

    :try_start_2
    const-string v1, "//"

    .line 1
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_26
    move-object p1, p0

    goto/16 :goto_ac

    :cond_29
    const-string v1, "/"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_a8

    const-string v2, "://"

    if-eqz v1, :cond_5d

    :try_start_33
    const-string v1, "=http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 5
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    .line 7
    :cond_5d
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    .line 10
    :cond_7f
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 11
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_a6} :catch_a8

    goto/16 :goto_26

    :catch_a8
    move-exception p0

    .line 13
    invoke-static {p0}, Lcom/github/catvod/crawler/SpiderDebug;->log(Ljava/lang/Throwable;)V

    :cond_ac
    :goto_ac
    return-object p1
.end method

.method public static y(Ljava/lang/String;)Z
    .registers 9

    const-string v0, "iqiyi.com"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    new-array v4, v3, [Ljava/lang/String;

    aput-object v0, v4, v1

    const-string v5, "v.qq.com"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v7, "youku.com"

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-string v7, "le.com"

    aput-object v7, v4, v5

    const/4 v5, 0x4

    const-string v7, "tudou.com"

    aput-object v7, v4, v5

    const/4 v5, 0x5

    const-string v7, "mgtv.com"

    aput-object v7, v4, v5

    const/4 v5, 0x6

    const-string v7, "sohu.com"

    aput-object v7, v4, v5

    const/4 v5, 0x7

    const-string v7, "acfun.cn"

    aput-object v7, v4, v5

    const/16 v5, 0x8

    const-string v7, "bilibili.com"

    aput-object v7, v4, v5

    const/16 v5, 0x9

    const-string v7, "baofeng.com"

    aput-object v7, v4, v5

    const/16 v5, 0xa

    const-string v7, "pptv.com"

    aput-object v7, v4, v5

    const/16 v5, 0xb

    const-string v7, "www.miguvideo.com"

    aput-object v7, v4, v5

    const/16 v5, 0xc

    const-string v7, "www.ixigua.com"

    aput-object v7, v4, v5

    const/16 v5, 0xd

    const-string v7, "vip.1905.com"

    aput-object v7, v4, v5

    const/16 v5, 0xe

    const-string v7, "www.fun.tv"

    aput-object v7, v4, v5

    const/16 v5, 0xf

    const-string v7, "m.fun.tv"

    aput-object v7, v4, v5

    const/4 v5, 0x0

    :goto_65
    if-ge v5, v3, :cond_94

    .line 2
    aget-object v7, v4, v5

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 3
    aget-object v7, v4, v5

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    const-string v7, "iqiyi.com/a_"

    .line 4
    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8f

    const-string v7, "iqiyi.com/w_"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8f

    const-string v7, "iqiyi.com/v_"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8d} :catch_94

    if-eqz v7, :cond_91

    :cond_8f
    const/4 v1, 0x1

    goto :goto_94

    :cond_91
    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    :catch_94
    :cond_94
    :goto_94
    return v1
.end method
