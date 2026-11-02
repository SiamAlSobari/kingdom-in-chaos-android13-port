.class public Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdsProcessor;
.super Landroid/os/AsyncTask;
.source "SPInterstitialAdsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;",
        "Ljava/lang/Void;",
        "Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SPInterstitialAdsProcessor"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    return-void
.end method

.method public static processAds([Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)V
    .locals 1
    .param p0, "ads"    # [Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .prologue
    .line 29
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdsProcessor;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdsProcessor;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdsProcessor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 30
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;
    .locals 7
    .param p1, "ads"    # [Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "SPInterstitialAdsProcessor"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 38
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 62
    const-string v2, "SPInterstitialAdsProcessor"

    const-string v3, "There are no ads available currently."

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v2, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    sget-object v3, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationNoFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v2, v1, v3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    move-object v0, v1

    .line 65
    :goto_1
    return-object v0

    .line 38
    :cond_0
    aget-object v0, p1, v2

    .line 39
    .local v0, "ad":Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;
    const-string v4, "SPInterstitialAdsProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Processing ad from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getProviderType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v4, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getProviderType()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sponsorpay/mediation/SPMediationAdFormat;->Interstitial:Lcom/sponsorpay/mediation/SPMediationAdFormat;

    invoke-virtual {v4, v5, v6}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->isNetworkAvailable(Ljava/lang/String;Lcom/sponsorpay/mediation/SPMediationAdFormat;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    const-string v4, "SPInterstitialAdsProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getProviderType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " is available, proceeding..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v4, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    sget-object v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationRequest:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v4, v0, v5}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    .line 44
    sget-object v4, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    invoke-virtual {v4, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->validateAd(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    const-string v2, "SPInterstitialAdsProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad is available from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getProviderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v2, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    sget-object v3, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v2, v0, v3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    .line 49
    sget-object v2, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    sget-object v3, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v2, v1, v3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    goto :goto_1

    .line 52
    :cond_1
    const-string v4, "SPInterstitialAdsProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No ad available from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getProviderType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v4, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    sget-object v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationNoFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v4, v0, v5}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    .line 38
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 58
    :cond_2
    const-string v4, "SPInterstitialAdsProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getProviderType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " is not integrated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v4, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    sget-object v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->NotIntegrated:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-virtual {v4, v0, v5}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    goto :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdsProcessor;->doInBackground([Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)V
    .locals 1
    .param p1, "result"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .prologue
    .line 70
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    invoke-virtual {v0, p1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->availableAd(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)V

    .line 71
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdsProcessor;->onPostExecute(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)V

    return-void
.end method
