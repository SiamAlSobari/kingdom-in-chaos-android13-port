.class public Lcom/applovin/impl/sdk/ca;
.super Lcom/applovin/impl/sdk/cb;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .locals 1

    const-string v0, "TaskCacheNativeAdImages"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/impl/sdk/cb;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V
    .locals 1

    const-string v0, "TaskCacheNativeAdImages"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/impl/sdk/cb;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/NativeAdImpl;)Z
    .locals 1

    const/16 v0, -0xc9

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/ca;->a(Lcom/applovin/impl/sdk/NativeAdImpl;I)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected a(Lcom/applovin/impl/sdk/NativeAdImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;->onNativeAdImagesPrecached(Lcom/applovin/nativeAds/AppLovinNativeAd;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/NativeAdImpl;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->b:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

    invoke-interface {v0, p1, p2}, Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;->onNativeAdImagePrecachingFailed(Lcom/applovin/nativeAds/AppLovinNativeAd;I)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/applovin/impl/sdk/NativeAdImpl;Lcom/applovin/impl/sdk/x;)Z
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "TaskCacheNativeAdImages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Beginning slot image caching for ad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/NativeAdImpl;->getAdId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/NativeAdImpl;->getSourceIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/applovin/impl/sdk/ca;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/x;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/NativeAdImpl;->setIconUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/NativeAdImpl;->getSourceImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/applovin/impl/sdk/ca;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/x;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/NativeAdImpl;->setImageUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ca;->b(Lcom/applovin/impl/sdk/NativeAdImpl;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ca;->b(Lcom/applovin/impl/sdk/NativeAdImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lcom/applovin/impl/sdk/cb;->run()V

    return-void
.end method
