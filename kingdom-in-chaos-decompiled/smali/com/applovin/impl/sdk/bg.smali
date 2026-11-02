.class Lcom/applovin/impl/sdk/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/applovin/impl/sdk/bc;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bc;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bg;->d:Lcom/applovin/impl/sdk/bc;

    iput-object p2, p0, Lcom/applovin/impl/sdk/bg;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/applovin/impl/sdk/bg;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    iput-object p4, p0, Lcom/applovin/impl/sdk/bg;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdsFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bg;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bg;->b:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method public onNativeAdsLoaded(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/bg;->d:Lcom/applovin/impl/sdk/bc;

    iget-object v1, p0, Lcom/applovin/impl/sdk/bg;->a:Ljava/util/List;

    new-instance v2, Lcom/applovin/impl/sdk/bh;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/bh;-><init>(Lcom/applovin/impl/sdk/bg;)V

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/bc;->a(Lcom/applovin/impl/sdk/bc;Ljava/util/List;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V

    return-void
.end method
