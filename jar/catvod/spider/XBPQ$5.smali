.class Lcom/github/catvod/spider/XBPQ$5;
.super Lcom/github/catvod/spider/merge2/xbpq/i/b;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/github/catvod/spider/merge2/xbpq/i/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method protected final bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    return-void
.end method
