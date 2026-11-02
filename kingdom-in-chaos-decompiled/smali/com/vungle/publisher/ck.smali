.class public Lcom/vungle/publisher/ck;
.super Lcom/vungle/publisher/net/http/InfiniteRetryHttpResponseHandler;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ck$1;
    }
.end annotation


# instance fields
.field public a:Lcom/vungle/publisher/protocol/message/RequestConfigResponse$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Lcom/vungle/publisher/env/SdkConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/protocol/RequestConfigAsync;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vungle/publisher/net/http/InfiniteRetryHttpResponseHandler;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/cf;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vungle/publisher/ck;->a:Lcom/vungle/publisher/protocol/message/RequestConfigResponse$Factory;

    iget-object v1, p2, Lcom/vungle/publisher/cf;->a:Ljava/net/HttpURLConnection;

    invoke-static {v1}, Lcom/vungle/publisher/ck;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/protocol/message/RequestConfigResponse$Factory;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/message/RequestConfigResponse;

    .line 36
    iget-object v2, v0, Lcom/vungle/publisher/protocol/message/RequestConfigResponse;->b:Ljava/lang/Integer;

    .line 37
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/vungle/publisher/ck;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/protocol/RequestConfigAsync;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/vungle/publisher/protocol/RequestConfigAsync;->a(J)V

    .line 40
    :cond_0
    iget-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestConfigResponse;->d:Lcom/vungle/publisher/protocol/message/RequestConfigResponse$a;

    .line 41
    if-eqz v1, :cond_1

    .line 42
    sget-object v2, Lcom/vungle/publisher/ck$1;->a:[I

    invoke-virtual {v1}, Lcom/vungle/publisher/protocol/message/RequestConfigResponse$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 50
    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unhandled streaming connectivity type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/vungle/publisher/ck;->b:Lcom/vungle/publisher/env/SdkConfig;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/vungle/publisher/protocol/message/RequestConfigResponse;->a:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "VungleConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_2

    const-string v1, "enabling"

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ad streaming"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, v2, Lcom/vungle/publisher/env/SdkConfig;->b:Z

    .line 54
    iget-object v0, v0, Lcom/vungle/publisher/protocol/message/RequestConfigResponse;->c:Ljava/lang/Integer;

    .line 55
    if-nez v0, :cond_3

    .line 56
    const-string v0, "VungleNetwork"

    const-string v1, "null request streaming ad timeout millis"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_2
    return-void

    .line 44
    :pswitch_0
    iget-object v1, p0, Lcom/vungle/publisher/ck;->b:Lcom/vungle/publisher/env/SdkConfig;

    invoke-static {}, Lcom/vungle/publisher/ca;->values()[Lcom/vungle/publisher/ca;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/env/SdkConfig;->a([Lcom/vungle/publisher/ca;)V

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v1, p0, Lcom/vungle/publisher/ck;->b:Lcom/vungle/publisher/env/SdkConfig;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/vungle/publisher/ca;

    const/4 v3, 0x0

    sget-object v4, Lcom/vungle/publisher/ca;->b:Lcom/vungle/publisher/ca;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/env/SdkConfig;->a([Lcom/vungle/publisher/ca;)V

    goto :goto_0

    .line 53
    :cond_2
    const-string v1, "disabling"

    goto :goto_1

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/vungle/publisher/ck;->b:Lcom/vungle/publisher/env/SdkConfig;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "VungleConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setting streaming response timeout "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, v1, Lcom/vungle/publisher/env/SdkConfig;->d:I

    goto :goto_2

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
