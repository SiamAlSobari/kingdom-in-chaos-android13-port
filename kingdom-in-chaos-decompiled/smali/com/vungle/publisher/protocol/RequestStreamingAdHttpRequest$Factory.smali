.class public Lcom/vungle/publisher/protocol/RequestStreamingAdHttpRequest$Factory;
.super Lcom/vungle/publisher/protocol/ProtocolHttpRequest$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/RequestStreamingAdHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/protocol/ProtocolHttpRequest$a",
        "<",
        "Lcom/vungle/publisher/protocol/RequestStreamingAdHttpRequest;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/protocol/message/RequestStreamingAd$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/ProtocolHttpRequest$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Lcom/vungle/publisher/net/http/HttpRequest;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/vungle/publisher/protocol/RequestStreamingAdHttpRequest;

    invoke-direct {v0}, Lcom/vungle/publisher/protocol/RequestStreamingAdHttpRequest;-><init>()V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/vungle/publisher/c;)Lcom/vungle/publisher/protocol/RequestStreamingAdHttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/bt;
        }
    .end annotation

    .prologue
    .line 41
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/protocol/ProtocolHttpRequest$a;->c()Lcom/vungle/publisher/protocol/ProtocolHttpRequest;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/RequestStreamingAdHttpRequest;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/publisher/protocol/RequestStreamingAdHttpRequest$Factory;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "requestStreamingAd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/net/http/HttpRequest;->b:Ljava/lang/String;

    .line 43
    iget-object v1, v0, Lcom/vungle/publisher/net/http/HttpRequest;->c:Landroid/os/Bundle;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/vungle/publisher/protocol/RequestStreamingAdHttpRequest$Factory;->g:Lcom/vungle/publisher/protocol/message/RequestStreamingAd$Factory;

    invoke-virtual {v1, p1, p2}, Lcom/vungle/publisher/protocol/message/RequestStreamingAd$Factory;->a(Ljava/lang/String;Lcom/vungle/publisher/c;)Lcom/vungle/publisher/protocol/message/RequestStreamingAd;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/vungle/publisher/protocol/message/RequestStreamingAd;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/net/http/HttpRequest;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Lcom/vungle/publisher/bt;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/bt;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
