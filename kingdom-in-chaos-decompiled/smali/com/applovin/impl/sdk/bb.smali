.class Lcom/applovin/impl/sdk/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ba;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bb;->a:Lcom/applovin/impl/sdk/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdImagePrecachingFailed(Lcom/applovin/nativeAds/AppLovinNativeAd;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bb;->a:Lcom/applovin/impl/sdk/ba;

    sget-object v1, Lcom/applovin/impl/sdk/NativeAdImpl;->SPEC_NATIVE:Lcom/applovin/impl/sdk/d;

    invoke-virtual {v0, v1, p2}, Lcom/applovin/impl/sdk/ba;->b(Lcom/applovin/impl/sdk/d;I)V

    return-void
.end method

.method public onNativeAdImagesPrecached(Lcom/applovin/nativeAds/AppLovinNativeAd;)V
    .locals 1

    invoke-interface {p1}, Lcom/applovin/nativeAds/AppLovinNativeAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bb;->a:Lcom/applovin/impl/sdk/ba;

    check-cast p1, Lcom/applovin/impl/sdk/ax;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ba;->c(Lcom/applovin/impl/sdk/ax;)V

    :cond_0
    return-void
.end method

.method public onNativeAdVideoPrecachingFailed(Lcom/applovin/nativeAds/AppLovinNativeAd;I)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/bb;->a:Lcom/applovin/impl/sdk/ba;

    iget-object v0, v0, Lcom/applovin/impl/sdk/ba;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "NativeAdPreloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video failed to cache during native ad preload. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bb;->a:Lcom/applovin/impl/sdk/ba;

    check-cast p1, Lcom/applovin/impl/sdk/ax;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ba;->c(Lcom/applovin/impl/sdk/ax;)V

    return-void
.end method

.method public onNativeAdVideoPreceached(Lcom/applovin/nativeAds/AppLovinNativeAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bb;->a:Lcom/applovin/impl/sdk/ba;

    check-cast p1, Lcom/applovin/impl/sdk/ax;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ba;->c(Lcom/applovin/impl/sdk/ax;)V

    return-void
.end method
