.class Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$2;
.super Lcom/sponsorpay/utils/SPWebClient;
.source "MarketPlaceInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->getWebClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/app/Activity;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Activity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$2;->this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    .line 145
    invoke-direct {p0, p2}, Lcom/sponsorpay/utils/SPWebClient;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private fireClickAndOpenURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$2;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    .local v0, "hostActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$2;->this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v1}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->access$5(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$2;->launchActivityWithUrl(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getHostActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$2;->this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->access$6(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string v1, "Interstitials WebView triggered an error. Error code: %d, error description: %s. Failing URL: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    .line 192
    aput-object p4, v2, v3

    .line 190
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "MarketPlaceInterstitial"

    invoke-static {v1, v0}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$2;->this$0:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-static {v1, v0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->access$7(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method protected onSponsorPayExitScheme(ILjava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0, p2}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$2;->fireClickAndOpenURL(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method protected onTargetActivityStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 185
    return-void
.end method

.method protected processSponsorPayScheme(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 180
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lcom/sponsorpay/utils/SPWebClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 150
    .local v0, "shouldOverrideUrlLoading":Z
    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0, p2}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$2;->fireClickAndOpenURL(Ljava/lang/String;)V

    .line 153
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
