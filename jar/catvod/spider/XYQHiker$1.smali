.class Lcom/github/catvod/spider/XYQHiker$1;
.super Lcom/github/catvod/spider/merge1/aQ/tb$DK;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/catvod/spider/XYQHiker;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Eg:Lcom/github/catvod/spider/XYQHiker;


# direct methods
.method constructor <init>(Lcom/github/catvod/spider/XYQHiker;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/github/catvod/spider/XYQHiker$1;->Eg:Lcom/github/catvod/spider/XYQHiker;

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

    invoke-virtual {p0, p1}, Lcom/github/catvod/spider/XYQHiker$1;->onResponse(Lokhttp3/Response;)V

    return-void
.end method

.method protected onResponse(Lokhttp3/Response;)V
    .registers 2

    return-void
.end method
