.class Lcom/tapjoy/TapjoyFullScreenAd$1;
.super Ljava/lang/Object;
.source "TapjoyFullScreenAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyFullScreenAd;->getFullScreenAdLegacy(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyFullScreenAd;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyFullScreenAd;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/tapjoy/TapjoyFullScreenAd$1;->this$0:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "get_offers/featured.html?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyFullScreenAd$1;->this$0:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-static {v3}, Lcom/tapjoy/TapjoyFullScreenAd;->access$000(Lcom/tapjoy/TapjoyFullScreenAd;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 104
    .local v0, "httpResponse":Lcom/tapjoy/TapjoyHttpURLResponse;
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyFullScreenAd;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    if-eqz v0, :cond_1

    .line 108
    iget v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    packed-switch v1, :pswitch_data_0

    .line 119
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyFullScreenAdNotifier;->getFullScreenAdResponseFailed(I)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/TapjoyFullScreenAd;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/tapjoy/TapjoyFullScreenAdNotifier;->getFullScreenAdResponse()V

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/tapjoy/TapjoyFullScreenAdNotifier;->getFullScreenAdResponseFailed(I)V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
