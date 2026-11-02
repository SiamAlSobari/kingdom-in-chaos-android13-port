.class public Lcom/sponsorpay/publisher/SponsorPayPublisher;
.super Ljava/lang/Object;
.source "SponsorPayPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;
    }
.end annotation


# static fields
.field public static final PLACEMENT_KEY:Ljava/lang/String; = "placement_id"

.field public static final PREFERENCES_FILENAME:Ljava/lang/String; = "SponsorPayPublisherState"

.field private static sUIStrings:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayNotificationForSuccessfullCoinRequest(Z)V
    .locals 0
    .param p0, "shouldShowNotification"    # Z

    .prologue
    .line 557
    invoke-static {p0}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->shouldShowToastNotification(Z)V

    .line 558
    return-void
.end method

.method public static getIntentForInterstitialActivity(Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    .prologue
    .line 789
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "credentialsToken":Ljava/lang/String;
    const/4 v1, 0x0

    .line 791
    .local v1, "placementId":Ljava/lang/String;
    invoke-static {v0, p0, p1, v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static getIntentForInterstitialActivity(Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/lang/String;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;
    .param p2, "placementId"    # Ljava/lang/String;

    .prologue
    .line 811
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "credentialsToken":Ljava/lang/String;
    invoke-static {v0, p0, p1, p2}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;)Z
    .locals 2
    .param p0, "credentialsToken"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;

    .prologue
    .line 832
    const/4 v0, 0x0

    .line 833
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/lang/String;)Z
    .locals 1
    .param p0, "credentialsToken"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;
    .param p3, "placementId"    # Ljava/lang/String;

    .prologue
    .line 853
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/util/Map;)Z
    .locals 1
    .param p0, "credentialsToken"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 877
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForInterstitialActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 3
    .param p0, "credentialsToken"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;
    .param p4, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 901
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    .line 902
    .local v2, "interstitialClient":Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;
    invoke-virtual {v2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->canRequestAds()Z

    move-result v0

    .line 903
    .local v0, "canRequestAds":Z
    if-eqz v0, :cond_0

    .line 905
    invoke-static {p3, p4}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->setParameterInMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p3

    .line 907
    invoke-static {p0}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    .line 908
    .local v1, "credentials":Lcom/sponsorpay/credentials/SPCredentials;
    invoke-virtual {v2, p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setRequestListener(Lcom/sponsorpay/publisher/interstitial/SPInterstitialRequestListener;)V

    .line 909
    invoke-virtual {v2, p3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setCustomParameters(Ljava/util/Map;)Z

    .line 910
    invoke-virtual {v2, v1, p1}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->requestAds(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;)Z

    .line 912
    .end local v1    # "credentials":Lcom/sponsorpay/credentials/SPCredentials;
    :cond_0
    return v0
.end method

.method public static getIntentForMBEActivity(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;

    .prologue
    const/4 v3, 0x0

    .line 579
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .local v0, "credentialsToken":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    .line 580
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)Z

    move-result v1

    return v1
.end method

.method public static getIntentForMBEActivity(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;
    .param p2, "vcsListener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    .prologue
    const/4 v3, 0x0

    .line 625
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .local v0, "credentialsToken":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    move-object v6, v3

    move-object v7, v3

    .line 626
    invoke-static/range {v0 .. v7}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getIntentForMBEActivity(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;
    .param p2, "vcsListener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    .param p3, "currencyId"    # Ljava/lang/String;
    .param p4, "placementId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 651
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .local v0, "credentialsToken":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 652
    invoke-static/range {v0 .. v7}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getIntentForMBEActivity(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;
    .param p2, "placementId"    # Ljava/lang/String;

    .prologue
    .line 603
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "credentialsToken":Ljava/lang/String;
    invoke-static {v0, p0, p1, p2}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;)Z
    .locals 8
    .param p0, "credentialsToken"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;

    .prologue
    const/4 v3, 0x0

    .line 673
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;)Z
    .locals 8
    .param p0, "credentialsToken"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;
    .param p3, "placementId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 695
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)Z
    .locals 8
    .param p0, "credentialsToken"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;
    .param p3, "currencyName"    # Ljava/lang/String;
    .param p5, "vcsListener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p4, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 724
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIntentForMBEActivity(Ljava/lang/String;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;Ljava/lang/String;Ljava/util/Map;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "credentialsToken"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;
    .param p3, "currencyName"    # Ljava/lang/String;
    .param p5, "vcsListener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    .param p6, "currencyId"    # Ljava/lang/String;
    .param p7, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 752
    .local p4, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->INSTANCE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;

    .line 753
    .local v0, "brandEngageClient":Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;
    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->canRequestOffers()Z

    move-result v1

    .line 754
    .local v1, "canRequestOffers":Z
    if-eqz v1, :cond_0

    .line 755
    invoke-static {p4, p7}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->setParameterInMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    .line 757
    invoke-static {p0}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v2

    .line 758
    .local v2, "credentials":Lcom/sponsorpay/credentials/SPCredentials;
    invoke-virtual {v0, p3}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setCurrencyName(Ljava/lang/String;)Z

    .line 759
    invoke-virtual {v0, p4}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setParametersForRequest(Ljava/util/Map;)Z

    .line 760
    invoke-virtual {v0, p5}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setCurrencyListener(Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)Z

    .line 761
    invoke-virtual {v0, p6}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;->setCurrencyId(Ljava/lang/String;)Z

    .line 763
    new-instance v3, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;

    invoke-direct {v3, v2, p1, v0, p2}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;-><init>(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/SPBrandEngageClient;Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequestListener;)V

    .line 764
    .local v3, "request":Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;
    invoke-virtual {v3}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;->askForOffers()V

    .line 767
    .end local v2    # "credentials":Lcom/sponsorpay/credentials/SPCredentials;
    .end local v3    # "request":Lcom/sponsorpay/publisher/mbe/SPBrandEngageRequest;
    :cond_0
    return v1
.end method

.method public static getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/Boolean;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldStayOpen"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .local v0, "credentialsToken":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    .line 180
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldStayOpen"    # Ljava/lang/Boolean;
    .param p2, "placementId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 211
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .local v0, "credentialsToken":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    .line 212
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldStayOpen"    # Ljava/lang/Boolean;
    .param p2, "currencyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 249
    .local p3, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "credentialsToken":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 250
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldStayOpen"    # Ljava/lang/Boolean;
    .param p2, "currencyName"    # Ljava/lang/String;
    .param p4, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 289
    .local p3, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .local v0, "credentialsToken":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 290
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;
    .locals 6
    .param p0, "credentialsToken"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shouldStayOpen"    # Ljava/lang/Boolean;
    .param p3, "currencyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 328
    .line 329
    .local p4, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 328
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentForOfferWallActivity(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "credentialsToken"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shouldStayOpen"    # Ljava/lang/Boolean;
    .param p3, "currencyName"    # Ljava/lang/String;
    .param p5, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 367
    .local p4, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sponsorpay/publisher/ofw/SPOfferWallActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sponsorpay/utils/HostInfo;->isDeviceSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    invoke-static {p4, p5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->setParameterInMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    .end local p4    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast p4, Ljava/util/HashMap;

    .line 371
    .restart local p4    # "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/sponsorpay/SponsorPay;->getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    .line 373
    .local v0, "credentials":Lcom/sponsorpay/credentials/SPCredentials;
    const-string v2, "EXTRA_CREDENTIALS_TOKEN_KEY"

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v2, "EXTRA_SHOULD_REMAIN_OPEN_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 375
    const-string v2, "EXTRA_CURRENCY_NAME_KEY"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v2, "EXTRA_KEY_VALUES_MAP"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 379
    .end local v0    # "credentials":Lcom/sponsorpay/credentials/SPCredentials;
    :cond_0
    return-object v1
.end method

.method public static getUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "identifier"    # Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    .prologue
    .line 87
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->initUIStrings()V

    .line 91
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static initUIStrings()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    .line 56
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_DIALOG_TITLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->DISMISS_ERROR_DIALOG:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Dismiss"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->GENERIC_ERROR:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "An error happened when performing this operation"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "An error happened when loading the offer wall"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_LOADING_OFFERWALL_NO_INTERNET_CONNECTION:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    .line 61
    const-string v2, "An error happened when loading the offer wall (no internet connection)"

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_INTERSTITIAL:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->LOADING_OFFERWALL:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Loading..."

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->ERROR_PLAY_STORE_UNAVAILABLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    .line 65
    const-string v2, "You don\'t have the Google Play Store application on your device to complete App Install offers."

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_REWARD_NOTIFICATION:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Thanks! Your reward will be paid out shortly"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->VCS_COINS_NOTIFICATION:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Congratulations! You\'ve earned %.0f %s!"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->VCS_DEFAULT_CURRENCY:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "coins"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_TITLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    .line 72
    const-string v2, "We\'re sorry, something went wrong. Please try again."

    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_MESSAGE_OFFLINE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    .line 74
    const-string v2, "Your Internet connection has been lost. Please try again later."

    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_ERROR_DIALOG_BUTTON_TITLE_DISMISS:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, "Dismiss"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->MBE_FORFEIT_DIALOG_TITLE:Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public static requestNewCoins(Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->requestNewCoins(Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public static requestNewCoins(Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    .param p2, "customCurrency"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 444
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .local v0, "credentialsToken":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    .line 445
    invoke-static/range {v0 .. v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->requestNewCoins(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public static requestNewCoins(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currencyId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->requestNewCoins(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public static requestNewCoins(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currencyId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    .param p3, "customCurrency"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 473
    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v0

    .local v0, "credentialsToken":Ljava/lang/String;
    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, v3

    move-object v6, p3

    .line 474
    invoke-static/range {v0 .. v6}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->requestNewCoins(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public static requestNewCoins(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p0, "credentialsToken"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    .param p3, "transactionId"    # Ljava/lang/String;
    .param p4, "currencyId"    # Ljava/lang/String;
    .param p6, "customCurrency"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 542
    .local p5, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;

    invoke-direct {v0, p1, p0, p2}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;)V

    .line 543
    .local v0, "vcc":Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;
    invoke-virtual {v0, p5}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->setCustomParameters(Ljava/util/Map;)Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;

    .line 544
    invoke-virtual {v0, p6}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->setCurrency(Ljava/lang/String;)Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;

    .line 545
    invoke-virtual {v0, p3, p4}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;->fetchDeltaOfCoinsForCurrentUserSinceTransactionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public static requestNewCoins(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .param p0, "credentialsToken"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;
    .param p3, "transactionId"    # Ljava/lang/String;
    .param p5, "customCurrency"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 505
    .local p4, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->requestNewCoins(Ljava/lang/String;Landroid/content/Context;Lcom/sponsorpay/publisher/currency/SPCurrencyServerListener;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public static setCustomUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;ILandroid/content/Context;)V
    .locals 1
    .param p0, "identifier"    # Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;
    .param p1, "message"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->setCustomUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static setCustomUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;Ljava/lang/String;)V
    .locals 1
    .param p0, "identifier"    # Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->initUIStrings()V

    .line 107
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/SponsorPayPublisher;->sUIStrings:Ljava/util/EnumMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public static setCustomUIStrings(Ljava/util/EnumMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "messages":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->values()[Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 123
    return-void

    .line 118
    :cond_0
    aget-object v0, v3, v2

    .line 119
    .local v0, "condition":Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;
    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->setCustomUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;Ljava/lang/String;)V

    .line 118
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public static setCustomUIStrings(Ljava/util/EnumMap;Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "messages":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;->values()[Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 146
    return-void

    .line 141
    :cond_0
    aget-object v0, v3, v2

    .line 142
    .local v0, "condition":Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;
    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->setCustomUIString(Lcom/sponsorpay/publisher/SponsorPayPublisher$UIStringIdentifier;ILandroid/content/Context;)V

    .line 141
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private static setParameterInMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 916
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 917
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 920
    .restart local p0    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    const-string p1, ""

    .line 923
    :cond_1
    const-string v0, "placement_id"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    return-object p0
.end method
