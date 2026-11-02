.class public Lcom/sponsorpay/mediation/marketplace/MarketPlaceAdapter;
.super Lcom/sponsorpay/mediation/SPMediationAdapter;
.source "MarketPlaceAdapter.java"


# static fields
.field private static final ADAPTER_NAME:Ljava/lang/String; = "Fyber"


# instance fields
.field private mInterstitial:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sponsorpay/mediation/SPMediationAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sponsorpay/mediation/marketplace/MarketPlaceAdapter;->mInterstitial:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    return-object v0
.end method

.method public bridge synthetic getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/marketplace/MarketPlaceAdapter;->getInterstitialMediationAdapter()Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    move-result-object v0

    return-object v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "Fyber"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "7.0.1"

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter",
            "<+",
            "Lcom/sponsorpay/mediation/SPMediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public startAdapter(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    invoke-direct {v0, p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;-><init>(Lcom/sponsorpay/mediation/marketplace/MarketPlaceAdapter;)V

    iput-object v0, p0, Lcom/sponsorpay/mediation/marketplace/MarketPlaceAdapter;->mInterstitial:Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;

    .line 27
    const/4 v0, 0x1

    return v0
.end method
