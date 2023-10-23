.class Lcom/github/catvod/spider/XYQHiker$5;
.super Lcom/github/catvod/spider/merge1/aQ/tb$DK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/catvod/spider/XYQHiker;->loadPic(Ljava/util/Map;)[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/spider/merge1/aQ/tb$DK;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lokhttp3/Response;

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker$5;->onResponse(Lokhttp3/Response;)V

    return-void
.end method

.method protected onResponse(Lokhttp3/Response;)V
    .registers 2

    return-void
.end method
