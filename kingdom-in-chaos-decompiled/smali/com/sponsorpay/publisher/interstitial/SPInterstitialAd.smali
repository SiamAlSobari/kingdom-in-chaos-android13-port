.class public Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;
.super Ljava/lang/Object;
.source "SPInterstitialAd.java"


# instance fields
.field private mAdId:Ljava/lang/String;

.field private mContextData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderType:Ljava/lang/String;

.field private mTrackingParameters:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "providerType"    # Ljava/lang/String;
    .param p2, "adId"    # Ljava/lang/String;
    .param p3, "trackingParams"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->mProviderType:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->mAdId:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->mTrackingParameters:Lorg/json/JSONObject;

    .line 49
    return-void
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->mAdId:Ljava/lang/String;

    return-object v0
.end method

.method public getContextData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->mContextData:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->mContextData:Ljava/util/Map;

    goto :goto_0
.end method

.method public getProviderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->mProviderType:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingParameters()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->mTrackingParameters:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setContextData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->mContextData:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->mContextData:Ljava/util/Map;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->mContextData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method
