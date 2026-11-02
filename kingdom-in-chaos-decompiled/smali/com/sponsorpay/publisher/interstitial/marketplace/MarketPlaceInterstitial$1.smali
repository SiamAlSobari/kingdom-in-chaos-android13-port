.class Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$1;
.super Landroid/os/Handler;
.source "MarketPlaceInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;-><init>(Lcom/sponsorpay/mediation/marketplace/MarketPlaceAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/os/Looper;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$1;->this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    .line 59
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    .line 67
    .local v6, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$1;->this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->access$0(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/webkit/WebView;)V

    .line 69
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$1;->this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0, v6}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->access$1(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/content/Context;)V

    .line 71
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$1;->this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->access$2(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$1;->this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->access$2(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$1;->this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v1}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->access$3(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    .line 77
    .end local v6    # "context":Landroid/content/Context;
    :pswitch_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$1;->this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->access$4(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$1;->this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->access$2(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$1;->this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v2}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->access$4(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    move-object v3, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
