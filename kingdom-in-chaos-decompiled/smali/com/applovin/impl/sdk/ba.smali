.class public Lcom/applovin/impl/sdk/ba;
.super Lcom/applovin/impl/sdk/bm;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bm;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method


# virtual methods
.method a(Lcom/applovin/impl/sdk/d;)Lcom/applovin/impl/sdk/bq;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/applovin/impl/sdk/ch;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ba;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1, v2, p0}, Lcom/applovin/impl/sdk/ch;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;ILcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/ch;->a(Z)V

    return-object v0
.end method

.method a(Lcom/applovin/impl/sdk/ax;)Lcom/applovin/impl/sdk/d;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/NativeAdImpl;->SPEC_NATIVE:Lcom/applovin/impl/sdk/d;

    return-object v0
.end method

.method a()Ljava/util/Map;
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Lcom/applovin/impl/sdk/bn;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ba;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/br;->aR:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/applovin/impl/sdk/bn;-><init>(I)V

    sget-object v0, Lcom/applovin/impl/sdk/NativeAdImpl;->SPEC_NATIVE:Lcom/applovin/impl/sdk/d;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public a(Lcom/applovin/impl/sdk/d;I)V
    .locals 0

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ax;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/nativeAds/AppLovinNativeAd;

    const/4 v1, 0x0

    check-cast p2, Lcom/applovin/nativeAds/AppLovinNativeAd;

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast p1, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {p1, v0}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    return-void
.end method

.method a(Ljava/lang/Object;Lcom/applovin/impl/sdk/d;I)V
    .locals 0

    check-cast p1, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {p1, p3}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    return-void
.end method

.method public bridge synthetic a(Lcom/applovin/impl/sdk/d;Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/applovin/impl/sdk/bm;->a(Lcom/applovin/impl/sdk/d;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic b(Lcom/applovin/impl/sdk/d;)Lcom/applovin/impl/sdk/ax;
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/bm;->b(Lcom/applovin/impl/sdk/d;)Lcom/applovin/impl/sdk/ax;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lcom/applovin/impl/sdk/d;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/applovin/impl/sdk/bm;->b(Lcom/applovin/impl/sdk/d;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Lcom/applovin/impl/sdk/d;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/bm;->c(Lcom/applovin/impl/sdk/d;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d(Lcom/applovin/impl/sdk/d;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/bm;->d(Lcom/applovin/impl/sdk/d;)V

    return-void
.end method

.method public bridge synthetic e(Lcom/applovin/impl/sdk/d;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/bm;->e(Lcom/applovin/impl/sdk/d;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f(Lcom/applovin/impl/sdk/d;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/bm;->f(Lcom/applovin/impl/sdk/d;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 0

    return-void
.end method

.method public onNativeAdsFailedToLoad(I)V
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/NativeAdImpl;->SPEC_NATIVE:Lcom/applovin/impl/sdk/d;

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/ba;->b(Lcom/applovin/impl/sdk/d;I)V

    return-void
.end method

.method public onNativeAdsLoaded(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/nativeAds/AppLovinNativeAd;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ba;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getNativeAdService()Lcom/applovin/nativeAds/AppLovinNativeAdService;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/bb;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/bb;-><init>(Lcom/applovin/impl/sdk/ba;)V

    invoke-interface {v1, v0, v2}, Lcom/applovin/nativeAds/AppLovinNativeAdService;->precacheResources(Lcom/applovin/nativeAds/AppLovinNativeAd;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V

    return-void
.end method
