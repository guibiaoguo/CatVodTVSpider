.class public final Lcom/github/catvod/spider/merge1/aQ/eA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Eg:Ljava/nio/charset/Charset;

.field static final Ku:Ljava/lang/String;

.field private static final W:Ljava/util/regex/Pattern;

.field private static final jl:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(?i)\\bcharset=\\s*(?:[\"\'])?([^\\s,;\"\']*)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/eA;->W:Ljava/util/regex/Pattern;

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/eA;->Eg:Ljava/nio/charset/Charset;

    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/eA;->Ku:Ljava/lang/String;

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/github/catvod/spider/merge1/aQ/eA;->jl:[C

    return-void
.end method
