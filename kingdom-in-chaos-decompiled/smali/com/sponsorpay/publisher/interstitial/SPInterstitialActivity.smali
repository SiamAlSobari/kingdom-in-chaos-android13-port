.class public Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;
.super Landroid/app/Activity;
.source "SPInterstitialActivity.java"

# interfaces
.implements Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;


# static fields
.field public static final SP_AD_STATUS:Ljava/lang/String; = "AD_STATUS"

.field public static final SP_ERROR_MESSAGE:Ljava/lang/String; = "ERROR_MESSAGE"


# instance fields
.field private mActivityListener:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;->mActivityListener:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;->mActivityListener:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;

    invoke-interface {v0}, Lcom/sponsorpay/mediation/SPMediationUserActivityListener;->notifyOnBackPressed()V

    .line 85
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;->requestWindowFeature(I)Z

    .line 38
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->setAdStateListener(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdListener;)V

    .line 39
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->showInterstitial(Landroid/app/Activity;)Z

    .line 40
    return-void
.end method

.method public onSPInterstitialAdClosed(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;)V
    .locals 2
    .param p1, "reason"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AD_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 52
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;->setResult(ILandroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;->finish()V

    .line 54
    return-void
.end method

.method public onSPInterstitialAdError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "AD_STATUS"

    sget-object v2, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    const-string v1, "ERROR_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;->setResult(ILandroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;->finish()V

    .line 63
    return-void
.end method

.method public onSPInterstitialAdShown()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;->mActivityListener:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;->mActivityListener:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;

    invoke-interface {v0}, Lcom/sponsorpay/mediation/SPMediationUserActivityListener;->notifyOnHomePressed()V

    .line 76
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 77
    return-void
.end method

.method public setMarketPlaceInterstitialListener(Lcom/sponsorpay/mediation/SPMediationUserActivityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sponsorpay/mediation/SPMediationUserActivityListener;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;->mActivityListener:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;

    if-nez v0, :cond_0

    .line 67
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;->mActivityListener:Lcom/sponsorpay/mediation/SPMediationUserActivityListener;

    .line 69
    :cond_0
    return-void
.end method
